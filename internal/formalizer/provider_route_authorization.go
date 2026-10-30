package formalizer

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/state"
)

const (
	ProviderRouteAuthorizationSchemaVersion = "mathcase-formalizer-provider-route-authorization-v1"
	ProviderRouteAuthorizationMaxBytes      = 256 << 10
)

// ProviderRouteAuthorizationRecord is an owner-decision record for one exact
// formalization item and one provider route. It is deliberately separate from
// item-level rights clearance: neither record substitutes for the other.
// The decision reference is an audit pointer, not a cryptographic signature.
type ProviderRouteAuthorizationRecord struct {
	SchemaVersion                     string `json:"schema_version"`
	AuthorizationID                   string `json:"authorization_id"`
	DecisionReference                 string `json:"decision_reference"`
	AuthorizedAtUTC                   string `json:"authorized_at_utc"`
	ExpiresAtUTC                      string `json:"expires_at_utc"`
	ProviderID                        string `json:"provider_id"`
	AccountProfile                    string `json:"account_profile"`
	ProtocolID                        string `json:"protocol_id"`
	Endpoint                          string `json:"endpoint"`
	ModelID                           string `json:"model_id"`
	Operation                         string `json:"operation"`
	ProblemID                         string `json:"problem_id"`
	CatalogSnapshotSHA256             string `json:"catalog_snapshot_sha256"`
	StatementSHA256                   string `json:"statement_sha256"`
	MaxCallCostMicros                 int64  `json:"max_call_cost_micros"`
	MaxOutputTokens                   int    `json:"max_output_tokens"`
	InputPriceMicrosPerMillionTokens  int64  `json:"input_price_micros_per_million_tokens"`
	OutputPriceMicrosPerMillionTokens int64  `json:"output_price_micros_per_million_tokens"`
}

// ProviderRouteAuthorization pins the exact local record bytes used at launch.
// A path/hash proves which bytes were consumed; it does not authenticate the
// person or process that created the owner-decision record.
type ProviderRouteAuthorization struct {
	Path   string
	Bytes  []byte
	SHA256 string
	Record ProviderRouteAuthorizationRecord
}

// ProviderRouteAuthorizationReceipt is the compact launch record embedded in
// a formalizer result. The exact authorization bytes live in the durable
// artifact and are reopened by its typed reader.
type ProviderRouteAuthorizationReceipt struct {
	AuthorizationID                   string `json:"authorization_id"`
	Path                              string `json:"path"`
	SHA256                            string `json:"sha256"`
	AccountProfile                    string `json:"account_profile"`
	CallCeilingMicros                 int64  `json:"call_ceiling_micros"`
	MaxOutputTokens                   int    `json:"max_output_tokens"`
	InputPriceMicrosPerMillionTokens  int64  `json:"input_price_micros_per_million_tokens"`
	OutputPriceMicrosPerMillionTokens int64  `json:"output_price_micros_per_million_tokens"`
}

// ProviderRouteBinding is the concrete route and call envelope selected for
// one invocation. Endpoint must already be resolved from protocol/base URL/model.
type ProviderRouteBinding struct {
	ProviderID        string
	AccountProfile    string
	ProtocolID        string
	Endpoint          string
	ModelID           string
	CallCeilingMicros int64
	MaxOutputTokens   int
	Price             budget.Price
}

// LoadProviderRouteAuthorization reads one bounded, regular local file and
// returns typed evidence. The caller must still validate it against the exact
// request and launch route before resolving credentials or dispatching.
func LoadProviderRouteAuthorization(path string) (ProviderRouteAuthorization, error) {
	if strings.TrimSpace(path) == "" || !filepath.IsAbs(path) || strings.HasPrefix(path, `\\`) || strings.ContainsAny(path, "\x00\r\n") {
		return ProviderRouteAuthorization{}, errors.New("formalizer: route authorization path must be an absolute local path")
	}
	info, err := os.Lstat(path)
	if err != nil {
		return ProviderRouteAuthorization{}, fmt.Errorf("formalizer: inspect route authorization: %w", err)
	}
	if info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() <= 0 || info.Size() > ProviderRouteAuthorizationMaxBytes {
		return ProviderRouteAuthorization{}, errors.New("formalizer: route authorization must be a bounded regular file")
	}
	file, err := os.Open(path)
	if err != nil {
		return ProviderRouteAuthorization{}, fmt.Errorf("formalizer: open route authorization: %w", err)
	}
	defer file.Close()
	data, err := io.ReadAll(io.LimitReader(file, ProviderRouteAuthorizationMaxBytes+1))
	if err != nil {
		return ProviderRouteAuthorization{}, fmt.Errorf("formalizer: read route authorization: %w", err)
	}
	if len(data) == 0 || len(data) > ProviderRouteAuthorizationMaxBytes {
		return ProviderRouteAuthorization{}, errors.New("formalizer: route authorization is empty or exceeds its size limit")
	}
	record, err := decodeProviderRouteAuthorization(data)
	if err != nil {
		return ProviderRouteAuthorization{}, err
	}
	return ProviderRouteAuthorization{Path: path, Bytes: append([]byte(nil), data...), SHA256: digestBytes(data), Record: record}, nil
}

// Validate checks static route, price, and call-envelope bindings. It does not
// validate target-specific fields; use ValidateForRequest before dispatch.
func (a ProviderRouteAuthorization) Validate(binding ProviderRouteBinding, at time.Time) error {
	if err := a.validateBytesAndPath(); err != nil {
		return err
	}
	record, err := decodeProviderRouteAuthorization(a.Bytes)
	if err != nil {
		return err
	}
	if record != a.Record {
		return errors.New("formalizer: typed route authorization differs from its exact bytes")
	}
	if err := validateProviderRouteRecord(record, binding, at); err != nil {
		return err
	}
	return nil
}

// ValidateForRequest additionally binds the grant to one exact M0 target and
// the NL-to-Lean operation. It must run before API-key lookup and dispatch.
func (a ProviderRouteAuthorization) ValidateForRequest(binding ProviderRouteBinding, request Request, at time.Time) error {
	if err := a.Validate(binding, at); err != nil {
		return err
	}
	return validateProviderRouteTarget(a.Record, request, at)
}

func validateProviderRouteTarget(record ProviderRouteAuthorizationRecord, request Request, at time.Time) error {
	if err := request.Validate(); err != nil {
		return err
	}
	if record.Operation != "NL_TO_LEAN_FORMALIZATION" || record.ProblemID != request.ProblemID ||
		record.CatalogSnapshotSHA256 != request.Source.CatalogSnapshotSHA256 ||
		record.StatementSHA256 != digestText(request.Source.Statement) {
		return errors.New("formalizer: route authorization does not cover this exact item, statement, snapshot, and operation")
	}
	issued, err := parseUTCRecordTime(record.AuthorizedAtUTC)
	if err != nil || at.Before(issued) {
		return errors.New("formalizer: route authorization was not active at the recorded launch time")
	}
	return nil
}

func (a ProviderRouteAuthorization) Receipt(binding ProviderRouteBinding) ProviderRouteAuthorizationReceipt {
	return ProviderRouteAuthorizationReceipt{
		AuthorizationID: a.Record.AuthorizationID, Path: a.Path, SHA256: a.SHA256,
		AccountProfile: binding.AccountProfile,
		CallCeilingMicros: binding.CallCeilingMicros, MaxOutputTokens: binding.MaxOutputTokens,
		InputPriceMicrosPerMillionTokens:  binding.Price.InputPerMillionMicros,
		OutputPriceMicrosPerMillionTokens: binding.Price.OutputPerMillionMicros,
	}
}

func (a ProviderRouteAuthorization) validateBytesAndPath() error {
	if strings.TrimSpace(a.Path) == "" || !filepath.IsAbs(a.Path) || strings.HasPrefix(a.Path, `\\`) || strings.ContainsAny(a.Path, "\x00\r\n") {
		return errors.New("formalizer: route authorization evidence path is invalid")
	}
	if len(a.Bytes) == 0 || len(a.Bytes) > ProviderRouteAuthorizationMaxBytes || !validSHA256(a.SHA256) || digestBytes(a.Bytes) != a.SHA256 {
		return errors.New("formalizer: route authorization bytes do not match their SHA-256")
	}
	info, err := os.Lstat(a.Path)
	if err != nil || info.Mode()&os.ModeSymlink != 0 || !info.Mode().IsRegular() || info.Size() <= 0 || info.Size() > ProviderRouteAuthorizationMaxBytes {
		return errors.New("formalizer: route authorization path is no longer a regular local file")
	}
	file, err := os.Open(a.Path)
	if err != nil {
		return errors.New("formalizer: route authorization file cannot be reopened")
	}
	diskBytes, readErr := io.ReadAll(io.LimitReader(file, ProviderRouteAuthorizationMaxBytes+1))
	closeErr := file.Close()
	if readErr != nil || closeErr != nil || len(diskBytes) > ProviderRouteAuthorizationMaxBytes || !bytes.Equal(diskBytes, a.Bytes) {
		return errors.New("formalizer: route authorization file changed after it was loaded")
	}
	return nil
}

func validateProviderRouteRecord(record ProviderRouteAuthorizationRecord, binding ProviderRouteBinding, at time.Time) error {
	if record.SchemaVersion != ProviderRouteAuthorizationSchemaVersion {
		return errors.New("formalizer: unsupported provider-route authorization schema")
	}
	for name, value := range map[string]string{
		"authorization ID": record.AuthorizationID,
		"provider ID":      record.ProviderID,
		"problem ID":       record.ProblemID,
	} {
		if err := state.ValidateIdentifier(name, value); err != nil {
			return err
		}
	}
	if record.ModelID == "" || strings.TrimSpace(record.ModelID) != record.ModelID || len(record.ModelID) > 256 || strings.ContainsAny(record.ModelID, "\x00\r\n") {
		return errors.New("formalizer: route authorization model ID is invalid")
	}
	if strings.TrimSpace(record.AccountProfile) == "" || len(record.AccountProfile) > 200 || strings.ContainsAny(record.AccountProfile, "\x00\r\n") {
		return errors.New("formalizer: route authorization account profile is invalid")
	}
	if strings.TrimSpace(record.DecisionReference) == "" || len(record.DecisionReference) > 512 || strings.ContainsAny(record.DecisionReference, "\x00\r\n") {
		return errors.New("formalizer: route authorization must cite a bounded owner-decision reference")
	}
	if record.Operation != "NL_TO_LEAN_FORMALIZATION" || !provider.IsProofCompletionProtocol(record.ProtocolID) {
		return errors.New("formalizer: route authorization names an unsupported protocol or operation")
	}
	if record.Endpoint == "" || len(record.Endpoint) > 2048 || strings.ContainsAny(record.Endpoint, "\x00\r\n") {
		return errors.New("formalizer: route authorization endpoint is invalid")
	}
	if !validSHA256(record.CatalogSnapshotSHA256) || !validSHA256(record.StatementSHA256) {
		return errors.New("formalizer: route authorization must pin the M0 snapshot and exact statement")
	}
	if record.MaxCallCostMicros <= 0 || record.MaxOutputTokens <= 0 || record.MaxOutputTokens > 1_000_000 ||
		record.InputPriceMicrosPerMillionTokens < 0 || record.OutputPriceMicrosPerMillionTokens < 0 {
		return errors.New("formalizer: route authorization cost or token bounds are invalid")
	}
	issued, err := parseUTCRecordTime(record.AuthorizedAtUTC)
	if err != nil {
		return fmt.Errorf("formalizer: route authorization issue time: %w", err)
	}
	expires, err := parseUTCRecordTime(record.ExpiresAtUTC)
	if err != nil || !expires.After(issued) {
		return errors.New("formalizer: route authorization expiry is invalid")
	}
	if at.IsZero() || at.Before(issued) || !at.Before(expires) {
		return errors.New("formalizer: route authorization is not active at dispatch time")
	}
	if record.ProviderID != binding.ProviderID || record.AccountProfile != binding.AccountProfile || record.ProtocolID != binding.ProtocolID || record.Endpoint != binding.Endpoint || record.ModelID != binding.ModelID {
		return errors.New("formalizer: provider, account profile, protocol, endpoint, or model differs from the owner route authorization")
	}
	if binding.CallCeilingMicros <= 0 || binding.CallCeilingMicros > record.MaxCallCostMicros ||
		binding.MaxOutputTokens <= 0 || binding.MaxOutputTokens > record.MaxOutputTokens {
		return errors.New("formalizer: call ceiling or output-token limit exceeds the owner route authorization")
	}
	if !binding.Price.Known || binding.Price.InputPerMillionMicros != record.InputPriceMicrosPerMillionTokens ||
		binding.Price.OutputPerMillionMicros != record.OutputPriceMicrosPerMillionTokens {
		return errors.New("formalizer: model price differs from the owner route authorization")
	}
	return nil
}

func decodeProviderRouteAuthorization(data []byte) (ProviderRouteAuthorizationRecord, error) {
	var record ProviderRouteAuthorizationRecord
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&record); err != nil {
		return record, fmt.Errorf("formalizer: decode provider-route authorization: %w", err)
	}
	var trailing any
	if err := decoder.Decode(&trailing); !errors.Is(err, io.EOF) {
		if err != nil {
			return record, fmt.Errorf("formalizer: decode provider-route authorization trailing bytes: %w", err)
		}
		return record, errors.New("formalizer: provider-route authorization contains multiple JSON values")
	}
	return record, nil
}

func parseUTCRecordTime(value string) (time.Time, error) {
	parsed, err := time.Parse(time.RFC3339Nano, value)
	if err != nil || !strings.HasSuffix(value, "Z") {
		return time.Time{}, errors.New("timestamp must be RFC3339 UTC ending in Z")
	}
	return parsed.UTC(), nil
}
