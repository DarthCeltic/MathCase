package solver

import (
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"regexp"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
)

const (
	z3SMTEngine           = "z3-python-smtlib-v1"
	defaultSMTTimeout     = 10 * time.Second
	maxSMTTimeout         = 30 * time.Second
	maxSMTRequestBytes    = 128 << 10
	maxSMTOutputBytes     = 16 << 10
	maxSMTBinders         = 64
	maxSMTModelValueBytes = 128
)

var (
	smtBinderNamePattern = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_]*$`)
	smtNatValuePattern   = regexp.MustCompile(`^(0|[1-9][0-9]*)$`)
	smtIntValuePattern   = regexp.MustCompile(`^(0|-?[1-9][0-9]*)$`)
)

type SMTBinder struct {
	Name     string `json:"name"`
	LeanType string `json:"lean_type"`
}

type SMTSearchReceipt struct {
	EvidenceID           string                    `json:"evidence_id"`
	Engine               string                    `json:"engine"`
	Status               string                    `json:"status"`
	QuerySHA256          string                    `json:"query_sha256"`
	SolverVersion        string                    `json:"solver_version,omitempty"`
	TimeoutMilliseconds  int64                     `json:"timeout_milliseconds"`
	ModelBindings        []SMTModelBinding         `json:"model_bindings,omitempty"`
	CounterexampleValues map[string]string         `json:"counterexample_values,omitempty"`
	Summary              string                    `json:"summary"`
	ExecutionTrace       *domain.LocalProcessTrace `json:"execution_trace,omitempty"`
}

// SMTModelBinding preserves how a generated solver symbol maps back to the
// Lean local used to construct the query. CounterexampleValues remain keyed by
// solver symbol so the raw SMT receipt can be independently reopened.
type SMTModelBinding struct {
	LeanName string `json:"lean_name"`
	Symbol   string `json:"symbol"`
	LeanType string `json:"lean_type"`
}

type z3SMTRequest struct {
	SchemaVersion string      `json:"schema_version"`
	TimeoutMS     int64       `json:"timeout_ms"`
	SMTLIB        string      `json:"smtlib"`
	Binders       []SMTBinder `json:"binders"`
}

type z3SMTResponse struct {
	SchemaVersion        string                  `json:"schema_version"`
	Engine               string                  `json:"engine"`
	Status               string                  `json:"status"`
	QuerySHA256          string                  `json:"query_sha256"`
	SolverVersion        string                  `json:"solver_version"`
	CounterexampleValues map[string]string       `json:"counterexample_values"`
	Summary              string                  `json:"summary"`
	RuntimeIdentity      *domain.RuntimeIdentity `json:"runtime_identity,omitempty"`
}

// Z3SMTSearchSolver invokes the optional local z3-solver Python package in a
// bounded child process. It accepts only generated SMT-LIB and never invokes a
// shell. Every SAT model still needs a Lean kernel proof before it is a
// counterexample receipt.
type Z3SMTSearchSolver struct {
	PythonExecutable string
	BridgePath       string
	ProjectRoot      string
	Timeout          time.Duration
}

func (s Z3SMTSearchSolver) Search(ctx context.Context, smtlib string, binders []SMTBinder) (SMTSearchReceipt, error) {
	if ctx == nil {
		return SMTSearchReceipt{}, errors.New("solver: context is required for SMT search")
	}
	if s.PythonExecutable == "" || s.BridgePath == "" || s.ProjectRoot == "" {
		return SMTSearchReceipt{}, errors.New("solver: Python executable, SMT bridge, and MathCase root are required for SMT search")
	}
	if strings.TrimSpace(smtlib) == "" || len(smtlib) > maxSMTRequestBytes {
		return SMTSearchReceipt{}, errors.New("solver: generated SMT-LIB is empty or exceeds the request limit")
	}
	if err := validateSMTBinders(binders); err != nil {
		return SMTSearchReceipt{}, err
	}
	root, err := filepath.Abs(s.ProjectRoot)
	if err != nil {
		return SMTSearchReceipt{}, fmt.Errorf("solver: resolve MathCase root for SMT bridge: %w", err)
	}
	root, err = filepath.EvalSymlinks(root)
	if err != nil {
		return SMTSearchReceipt{}, fmt.Errorf("solver: resolve MathCase root for SMT bridge: %w", err)
	}
	bridge, err := filepath.Abs(s.BridgePath)
	if err != nil {
		return SMTSearchReceipt{}, fmt.Errorf("solver: resolve SMT bridge: %w", err)
	}
	bridge, err = filepath.EvalSymlinks(bridge)
	if err != nil {
		return SMTSearchReceipt{}, errors.New("solver: local SMT bridge is unavailable")
	}
	relative, err := filepath.Rel(root, bridge)
	if err != nil || relative == ".." || strings.HasPrefix(relative, ".."+string(os.PathSeparator)) {
		return SMTSearchReceipt{}, errors.New("solver: SMT bridge must remain inside the MathCase project root")
	}
	info, err := os.Stat(bridge)
	if err != nil || info.IsDir() {
		return SMTSearchReceipt{}, errors.New("solver: local SMT bridge is unavailable")
	}
	timeout := s.Timeout
	if timeout <= 0 {
		timeout = defaultSMTTimeout
	}
	if timeout > maxSMTTimeout {
		return SMTSearchReceipt{}, fmt.Errorf("solver: SMT timeout must not exceed %s", maxSMTTimeout)
	}
	digest := sha256.Sum256([]byte(smtlib))
	queryDigest := hex.EncodeToString(digest[:])
	receipt := SMTSearchReceipt{
		EvidenceID:          "m2-smt-" + queryDigest,
		Engine:              z3SMTEngine,
		Status:              "INCOMPLETE",
		QuerySHA256:         queryDigest,
		TimeoutMilliseconds: timeout.Milliseconds(),
		Summary:             "SMT search has not completed.",
	}
	requestBytes, err := json.Marshal(z3SMTRequest{
		SchemaVersion: "mathcase-z3-smt-request-v1",
		TimeoutMS:     timeout.Milliseconds(),
		SMTLIB:        smtlib,
		Binders:       append([]SMTBinder(nil), binders...),
	})
	if err != nil {
		return receipt, fmt.Errorf("solver: encode SMT request: %w", err)
	}
	if len(requestBytes) > maxSMTRequestBytes {
		return receipt, errors.New("solver: SMT request exceeds the local input limit")
	}
	process, err := runLocalPythonProcess(ctx, s.PythonExecutable, root, bridge, requestBytes, timeout, maxSMTOutputBytes)
	if err != nil {
		return receipt, err
	}
	receipt.ExecutionTrace = &process.Trace
	if process.Err != nil {
		if process.Trace.Termination == "TIMED_OUT" {
			receipt.Status = "TIMEOUT"
			receipt.Summary = "The bounded local SMT search exceeded its time limit."
		} else if process.Trace.Termination == "OUTPUT_LIMIT" {
			receipt.Status = "ERROR"
			receipt.Summary = "The local SMT bridge exceeded the output capture limit."
		} else if process.Trace.Termination == "CANCELLED" {
			receipt.Status = "ERROR"
			receipt.Summary = "The local SMT bridge was cancelled."
		} else {
			receipt.Status = "ERROR"
			receipt.Summary = "The local SMT bridge process failed."
		}
		return receipt, nil
	}
	var response z3SMTResponse
	decoder := json.NewDecoder(bytes.NewReader(process.Stdout))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&response); err != nil {
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT bridge returned an invalid receipt."
		return receipt, nil
	}
	if err := decoder.Decode(new(any)); !errors.Is(err, io.EOF) {
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT bridge returned trailing output."
		return receipt, nil
	}
	if response.RuntimeIdentity == nil || response.RuntimeIdentity.Validate() != nil || response.RuntimeIdentity.RuntimeKind != "z3-smt" {
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT bridge omitted or misbound its runtime identity."
		return receipt, nil
	}
	if response.Status != "UNAVAILABLE" && (!response.RuntimeIdentity.HasPackage("z3-solver") || !response.RuntimeIdentity.HasArtifactRole("z3_module_tree")) {
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT bridge omitted the installed Z3 runtime artifacts."
		return receipt, nil
	}
	receipt.ExecutionTrace.RuntimeIdentity = response.RuntimeIdentity
	if err := receipt.ExecutionTrace.Validate(); err != nil {
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT runtime trace failed validation."
		return receipt, nil
	}
	if response.SchemaVersion != "mathcase-z3-smt-response-v1" || response.Engine != z3SMTEngine || response.QuerySHA256 != queryDigest {
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT response did not bind to the submitted query."
		return receipt, nil
	}
	receipt.SolverVersion = response.SolverVersion
	receipt.Summary = response.Summary
	switch response.Status {
	case "SAT", "UNSAT", "UNKNOWN", "UNAVAILABLE", "ERROR":
		receipt.Status = response.Status
	default:
		receipt.Status = "ERROR"
		receipt.Summary = "The local SMT bridge returned an unsupported status."
		return receipt, nil
	}
	if receipt.Status == "SAT" {
		if err := validateSMTModel(response.CounterexampleValues, binders); err != nil {
			receipt.Status = "MODEL_INVALID"
			receipt.Summary = "The local SMT model did not match the query binders."
			return receipt, nil
		}
		receipt.CounterexampleValues = response.CounterexampleValues
	}
	return receipt, nil
}

func validateSMTBinders(binders []SMTBinder) error {
	if len(binders) > maxSMTBinders {
		return errors.New("solver: SMT binder count exceeds the local limit")
	}
	seen := make(map[string]struct{}, len(binders))
	for _, binder := range binders {
		if !smtBinderNamePattern.MatchString(binder.Name) {
			return fmt.Errorf("solver: SMT binder name %q is outside the simple identifier syntax", binder.Name)
		}
		switch binder.LeanType {
		case "Nat", "Int", "Bool":
		default:
			return fmt.Errorf("solver: unsupported SMT binder type %q", binder.LeanType)
		}
		if _, exists := seen[binder.Name]; exists {
			return fmt.Errorf("solver: duplicate SMT binder %q", binder.Name)
		}
		seen[binder.Name] = struct{}{}
	}
	return nil
}

func validateSMTModel(values map[string]string, binders []SMTBinder) error {
	if len(values) != len(binders) {
		return errors.New("model variable count does not match the query")
	}
	for _, binder := range binders {
		value, exists := values[binder.Name]
		if !exists || len(value) == 0 || len(value) > maxSMTModelValueBytes {
			return errors.New("model value is missing or outside the size limit")
		}
		valid := false
		switch binder.LeanType {
		case "Nat":
			valid = smtNatValuePattern.MatchString(value)
		case "Int":
			valid = smtIntValuePattern.MatchString(value)
		case "Bool":
			valid = value == "true" || value == "false"
		}
		if !valid {
			return errors.New("model value does not match the declared Lean type")
		}
	}
	return nil
}
