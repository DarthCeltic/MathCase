package main

import (
	"testing"
	"time"

	"github.com/DarthCeltic/MathCase/internal/solver"
)

func TestM4ProofExecutionStatusSeparatesStartedAndUncertainRuns(t *testing.T) {
	started := time.Date(2026, time.October, 20, 22, 0, 0, 0, time.UTC)
	finished := started.Add(time.Second)
	cases := []struct {
		name     string
		exitCode *int
		start    time.Time
		finish   time.Time
		want     string
	}{
		{name: "Lean pass", exitCode: intPointer(0), start: started, finish: finished, want: "STARTED"},
		{name: "Lean proof rejection", exitCode: intPointer(1), start: started, finish: finished, want: "STARTED"},
		{name: "Docker startup failure", exitCode: intPointer(125), start: started, finish: finished, want: "NOT_STARTED"},
		{name: "missing exit code", start: started, finish: finished, want: "UNKNOWN"},
		{name: "no launch timestamps", exitCode: intPointer(0), want: "NOT_STARTED"},
		{name: "container termination", exitCode: intPointer(137), start: started, finish: finished, want: "UNKNOWN"},
	}
	for _, test := range cases {
		t.Run(test.name, func(t *testing.T) {
			got := m4ProofExecutionStatus(solver.LeanSandboxExecution{
				ExitCode: test.exitCode, StartedAtUTC: test.start, FinishedAtUTC: test.finish,
			})
			if got != test.want {
				t.Fatalf("m4ProofExecutionStatus() = %q, want %q", got, test.want)
			}
		})
	}
}

func intPointer(value int) *int { return &value }
