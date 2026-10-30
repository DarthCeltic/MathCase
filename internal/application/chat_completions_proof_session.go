package application

import (
	"fmt"
	"time"

	"github.com/DarthCeltic/MathCase/internal/budget"
	"github.com/DarthCeltic/MathCase/internal/domain"
	"github.com/DarthCeltic/MathCase/internal/provider"
	"github.com/DarthCeltic/MathCase/internal/solver"
)

// ProviderProofSessionConfig composes one explicit provider protocol with the
// durable, clearance-bound solver session. The route is installed at S0 and
// S1 so a verifier rejection can receive one separately-budgeted correction
// call through Cascade.
type ProviderProofSessionConfig struct {
	ProtocolID string
	// MaxProviderCalls bounds the number of paid proposal calls in this run.
	// Zero retains the historical two-stage cascade.
	MaxProviderCalls      int
	CostJournalPath       string
	BudgetLimits          budget.Limits
	Provider              solver.ProviderProofSolverTransportConfig
	Verifier              solver.ProofVerifier
	Toolchain             string
	ExternalAuthorization *ExternalSolverAuthorization
	Now                   func() time.Time
}

// ChatCompletionsProofSessionConfig keeps the original configuration name as
// a source-compatible alias. Set ProtocolID to select another supported
// adapter, or use ProviderProofSessionConfig in new code.
type ChatCompletionsProofSessionConfig = ProviderProofSessionConfig

// OpenChatCompletionsProofSession creates a two-stage proof route over the
// shared Chat Completions protocol. Each stage is still independently charged
// and verified, and OpenSolverSession refuses it without the exact owner grant
// and item-level statement clearance.
func OpenChatCompletionsProofSession(config ChatCompletionsProofSessionConfig) (*SolverSession, error) {
	config.ProtocolID = provider.ProtocolChatCompletions
	return OpenProviderProofSession(config)
}

// OpenAnthropicMessagesProofSession installs the native Messages adapter at
// both cascade stages while reusing the same session, cost journal, item
// clearance, and independent verifier boundaries.
func OpenAnthropicMessagesProofSession(config ChatCompletionsProofSessionConfig) (*SolverSession, error) {
	config.ProtocolID = provider.ProtocolAnthropicMessages
	return OpenProviderProofSession(config)
}

// OpenProviderProofSession creates the shared two-stage M4 route for an
// explicitly selected protocol adapter. Owner authorization and item-level
// clearance are still checked by OpenSolverSession before a call can run.
func OpenProviderProofSession(config ProviderProofSessionConfig) (*SolverSession, error) {
	if config.MaxProviderCalls == 0 {
		config.MaxProviderCalls = 2
	}
	if config.MaxProviderCalls < 1 || config.MaxProviderCalls > 2 {
		return nil, fmt.Errorf("provider proof session: max provider calls must be between 1 and 2")
	}
	firstConfig := config.Provider
	firstConfig.Stage = domain.SolverStageS0
	first, err := solver.NewProviderProofSolverForProtocolFromEnvironment(config.ProtocolID, firstConfig)
	if err != nil {
		return nil, err
	}
	correctionConfig := config.Provider
	correctionConfig.Stage = domain.SolverStageS1
	correction, err := solver.NewProviderProofSolverForProtocolFromEnvironment(config.ProtocolID, correctionConfig)
	if err != nil {
		return nil, err
	}
	return composeProviderProofSession(config, first, correction)
}

func composeProviderProofSession(config ProviderProofSessionConfig, first, correction solver.Solver) (*SolverSession, error) {
	costJournalPath, err := prepareLocalCostJournalPath(config.CostJournalPath)
	if err != nil {
		return nil, err
	}
	solvers := []solver.Solver{first, correction}
	if config.MaxProviderCalls == 1 {
		solvers = solvers[:1]
	}
	return OpenSolverSession(SolverSessionConfig{
		CostJournalPath:       costJournalPath,
		BudgetLimits:          config.BudgetLimits,
		Solvers:               solvers,
		Verifier:              config.Verifier,
		Toolchain:             config.Toolchain,
		ExternalAuthorization: config.ExternalAuthorization,
		Now:                   config.Now,
	})
}
