package solver

import (
	"fmt"
	"os"

	"github.com/DarthCeltic/MathCase/internal/state"
)

const queueRunContainerLabel = "mathcase.queue_run"

func queueRunContainerLabelArgs() ([]string, error) {
	runID := os.Getenv("MATHCASE_QUEUE_RUN_ID")
	if runID == "" {
		return nil, nil
	}
	if err := state.ValidateIdentifier("queue run ID", runID); err != nil {
		return nil, fmt.Errorf("solver: invalid queue run identity for container label: %w", err)
	}
	return []string{"--label", queueRunContainerLabel + "=" + runID}, nil
}
