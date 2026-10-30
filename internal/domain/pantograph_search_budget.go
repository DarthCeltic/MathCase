package domain

import (
	"errors"
	"math"
)

const PantographSearchBudgetSchemaV1 = "mathcase-pantograph-search-budget-v1"

// PantographSearchBudgetProfile records the bounded phase contract for one
// ordinary Pantograph search request. HostProcessNanos is the process deadline
// captured by LocalProcessTrace; RequestTotalNanos also includes Docker cleanup.
// TacticCallNanos is a nested cap inside SearchNanos, not an additive phase.
type PantographSearchBudgetProfile struct {
	SchemaVersion           string `json:"schema_version"`
	RequestTotalNanos       int64  `json:"request_total_nanos"`
	DockerSetupNanos        int64  `json:"docker_setup_nanos"`
	LeanToolchainProbeNanos int64  `json:"lean_toolchain_probe_nanos"`
	LeanEnvironmentNanos    int64  `json:"lean_environment_nanos"`
	PantographStartupNanos  int64  `json:"pantograph_startup_nanos"`
	InitialGoalNanos        int64  `json:"initial_goal_nanos"`
	SearchNanos             int64  `json:"search_nanos"`
	TacticCallNanos         int64  `json:"tactic_call_nanos"`
	RuntimeIdentityNanos    int64  `json:"runtime_identity_nanos"`
	PythonCleanupGraceNanos int64  `json:"python_cleanup_grace_nanos"`
	LaunchMarginNanos       int64  `json:"launch_margin_nanos"`
	UnallocatedNanos        int64  `json:"unallocated_nanos"`
	HostProcessNanos        int64  `json:"host_process_nanos"`
	DockerCleanupGraceNanos int64  `json:"docker_cleanup_grace_nanos"`
}

// Validate ensures the outer process and total request ceilings contain every
// declared phase without silently shortening a child budget.
func (p PantographSearchBudgetProfile) Validate() error {
	if p.SchemaVersion != PantographSearchBudgetSchemaV1 {
		return errors.New("Pantograph search budget: unsupported schema")
	}
	if p.RequestTotalNanos <= 0 || p.HostProcessNanos <= 0 || p.LeanToolchainProbeNanos <= 0 || p.LeanEnvironmentNanos <= 0 ||
		p.PantographStartupNanos <= 0 || p.InitialGoalNanos <= 0 || p.SearchNanos <= 0 ||
		p.TacticCallNanos <= 0 || p.RuntimeIdentityNanos <= 0 || p.PythonCleanupGraceNanos <= 0 || p.LaunchMarginNanos <= 0 ||
		p.DockerSetupNanos < 0 || p.DockerCleanupGraceNanos < 0 || p.UnallocatedNanos < 0 {
		return errors.New("Pantograph search budget: required phase budgets are missing or negative")
	}
	if p.TacticCallNanos > p.SearchNanos {
		return errors.New("Pantograph search budget: one tactic call exceeds the whole search budget")
	}
	hostProcess, ok := checkedBudgetSum(
		p.DockerSetupNanos,
		p.LeanToolchainProbeNanos,
		p.LeanEnvironmentNanos,
		p.PantographStartupNanos,
		p.InitialGoalNanos,
		p.SearchNanos,
		p.PythonCleanupGraceNanos,
		p.RuntimeIdentityNanos,
		p.LaunchMarginNanos,
		p.UnallocatedNanos,
	)
	if !ok || hostProcess != p.HostProcessNanos {
		return errors.New("Pantograph search budget: host process deadline does not contain the declared phases")
	}
	total, ok := checkedBudgetSum(p.HostProcessNanos, p.DockerCleanupGraceNanos)
	if !ok || total != p.RequestTotalNanos {
		return errors.New("Pantograph search budget: request deadline does not contain host cleanup")
	}
	return nil
}

func checkedBudgetSum(values ...int64) (int64, bool) {
	var total int64
	for _, value := range values {
		if value < 0 || total > math.MaxInt64-value {
			return 0, false
		}
		total += value
	}
	return total, true
}
