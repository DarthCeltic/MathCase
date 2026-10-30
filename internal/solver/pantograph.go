package solver

import (
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const pantographPlanSchema = "mathcase-pantograph-plan-v1"

// TacticPlan is a bounded local tactic sequence for a specific formal target.
// It proposes a proof candidate; Cascade still requires independent Lean
// verification before the result can pass.
type TacticPlan struct {
	SchemaVersion string   `json:"schema_version"`
	ProblemID     string   `json:"problem_id"`
	CandidateID   string   `json:"candidate_id"`
	Statement     string   `json:"statement"`
	Tactics       []string `json:"tactics"`
}

func ReadTacticPlan(path string) (TacticPlan, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return TacticPlan{}, fmt.Errorf("solver: read tactic plan: %w", err)
	}
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	var plan TacticPlan
	if err := decoder.Decode(&plan); err != nil {
		return TacticPlan{}, fmt.Errorf("solver: decode tactic plan: %w", err)
	}
	if err := decoder.Decode(new(any)); !errors.Is(err, io.EOF) {
		return TacticPlan{}, errors.New("solver: tactic plan contains trailing JSON")
	}
	if err := plan.Validate(); err != nil {
		return TacticPlan{}, err
	}
	return plan, nil
}

func (p TacticPlan) Validate() error {
	if p.SchemaVersion != pantographPlanSchema {
		return fmt.Errorf("solver: unsupported tactic plan schema %q", p.SchemaVersion)
	}
	if err := state.ValidateIdentifier("tactic plan problem ID", p.ProblemID); err != nil {
		return err
	}
	if err := state.ValidateIdentifier("tactic plan candidate ID", p.CandidateID); err != nil {
		return err
	}
	if strings.TrimSpace(p.Statement) == "" || len(p.Statement) > 64*1024 || strings.ContainsRune(p.Statement, '\x00') {
		return errors.New("solver: tactic plan statement is missing or invalid")
	}
	if len(p.Tactics) == 0 || len(p.Tactics) > 64 {
		return errors.New("solver: tactic plan must contain between 1 and 64 tactics")
	}
	for _, tactic := range p.Tactics {
		if strings.TrimSpace(tactic) == "" || len(tactic) > 512 || strings.ContainsAny(tactic, "\x00\r\n") {
			return errors.New("solver: each tactic must be nonempty single-line text within the local limit")
		}
	}
	return nil
}

// PantographTacticSolver replays one preconfigured local plan through the
// pinned R0b Pantograph bridge. It makes no provider calls and is not a tactic
// search procedure.
type PantographTacticSolver struct {
	PythonExecutable string
	DockerExecutable string
	SandboxImage     string
	ProjectRoot      string
	Plan             TacticPlan
	Timeout          time.Duration
}

func (p PantographTacticSolver) Stage() domain.SolverStage { return domain.SolverStageS0 }
func (p PantographTacticSolver) ProviderID() string        { return "" }
func (p PantographTacticSolver) ModelID() string           { return "pantograph-local-replay" }
func (p PantographTacticSolver) Local() bool               { return true }
func (p PantographTacticSolver) MaxCostMicros() (int64, bool) {
	return 0, true
}

func (p PantographTacticSolver) Solve(ctx context.Context, problem domain.MathProblem) (Proposal, error) {
	if ctx == nil {
		return Proposal{}, errors.New("solver: context is required for Pantograph replay")
	}
	if (p.PythonExecutable == "" && p.SandboxImage == "") || p.ProjectRoot == "" {
		return Proposal{}, errors.New("solver: a Python executable or pinned sandbox image, and project root, are required for Pantograph replay")
	}
	if err := p.Plan.Validate(); err != nil {
		return Proposal{}, err
	}
	if p.Plan.ProblemID != problem.ID || p.Plan.Statement != problem.LeanStatement {
		return Proposal{}, errors.New("solver: Pantograph tactic plan does not match the requested problem and statement")
	}
	root, err := filepath.Abs(p.ProjectRoot)
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: resolve MathCase project root: %w", err)
	}
	script := filepath.Join(root, "scripts", "pantograph_replay.py")
	if info, err := os.Stat(script); err != nil || info.IsDir() {
		return Proposal{}, errors.New("solver: local Pantograph replay bridge is unavailable")
	}
	request, err := json.Marshal(struct {
		Statement string   `json:"statement"`
		Tactics   []string `json:"tactics"`
	}{Statement: p.Plan.Statement, Tactics: append([]string(nil), p.Plan.Tactics...)})
	if err != nil {
		return Proposal{}, fmt.Errorf("solver: encode Pantograph replay request: %w", err)
	}
	limit := p.Timeout
	if limit <= 0 {
		limit = 120 * time.Second
	}
	var process localProcessResult
	if p.SandboxImage != "" {
		process, err = runPantographContainerProcess(ctx, p.DockerExecutable, p.SandboxImage, root, script, request, limit, maxSearchOutputBytes)
	} else {
		process, err = runLocalPythonProcess(ctx, p.PythonExecutable, root, script, request, limit, maxSearchOutputBytes)
	}
	proposal := Proposal{}
	if process.Trace.SchemaVersion != "" {
		proposal.LocalProcessTrace = &process.Trace
	}
	if err != nil {
		return proposal, fmt.Errorf("solver: local Pantograph replay process failed: %w", err)
	}
	if process.Err != nil {
		return proposal, process.Err
	}
	var response struct {
		Status          string                  `json:"status"`
		Proof           string                  `json:"proof"`
		ErrorClass      string                  `json:"error_class,omitempty"`
		RuntimeIdentity *domain.RuntimeIdentity `json:"runtime_identity,omitempty"`
	}
	decoder := json.NewDecoder(bytes.NewReader(process.Stdout))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&response); err != nil {
		return proposal, errors.New("solver: local Pantograph replay returned invalid JSON")
	}
	if err := decoder.Decode(new(any)); !errors.Is(err, io.EOF) {
		return proposal, errors.New("solver: local Pantograph replay returned trailing data")
	}
	if response.RuntimeIdentity == nil {
		return proposal, errors.New("solver: local Pantograph replay omitted its runtime identity")
	}
	if err := response.RuntimeIdentity.Validate(); err != nil || response.RuntimeIdentity.RuntimeKind != "pantograph-replay" {
		return proposal, errors.New("solver: local Pantograph replay returned an invalid runtime identity")
	}
	proposal.LocalProcessTrace.RuntimeIdentity = response.RuntimeIdentity
	if err := proposal.LocalProcessTrace.Validate(); err != nil {
		return proposal, fmt.Errorf("solver: local Pantograph replay process trace is invalid: %w", err)
	}
	switch response.Status {
	case "solved":
		if !strings.HasPrefix(strings.TrimSpace(response.Proof), "by\n") {
			return proposal, errors.New("solver: local Pantograph replay omitted the proof candidate")
		}
		proposal.CandidateID = p.Plan.CandidateID
		proposal.Proof = response.Proof
		return proposal, nil
	case "unsolved":
		if response.Proof != "" {
			return proposal, errors.New("solver: unsolved Pantograph replay returned a proof candidate")
		}
		proposal.CandidateID = p.Plan.CandidateID
		return proposal, nil
	default:
		return proposal, errors.New("solver: local Pantograph replay returned an unknown status")
	}
}
