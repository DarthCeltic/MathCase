package domain

import "testing"

func TestSearchMetricsValidateAcceptsBoundedTerminalReasons(t *testing.T) {
	tests := []struct {
		name    string
		metrics SearchMetrics
	}{
		{
			name: "solved",
			metrics: SearchMetrics{
				Engine: "pantograph-local-bfs-v2", NodesExpanded: 2, TacticAttempts: 18, MaxDepth: 2, StopReason: "solved",
			},
		},
		{
			name: "frontier exhausted",
			metrics: SearchMetrics{
				Engine: "pantograph-local-bfs-v2", NodesExpanded: 3, TacticAttempts: 9, MaxDepth: 1, StopReason: "frontier_exhausted",
			},
		},
		{
			name: "branch limit",
			metrics: SearchMetrics{
				Engine: "pantograph-local-bfs-v2", NodesExpanded: 2, TacticAttempts: 20, MaxDepth: 1, StopReason: "branch_limit",
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			t.Parallel()
			if err := tt.metrics.Validate(); err != nil {
				t.Errorf("SearchMetrics.Validate(%#v) = %v, want nil", tt.metrics, err)
			}
		})
	}
}

func TestSearchMetricsValidateRejectsInvalidData(t *testing.T) {
	tests := []struct {
		name    string
		metrics SearchMetrics
	}{
		{
			name:    "missing engine",
			metrics: SearchMetrics{NodesExpanded: 1, TacticAttempts: 1, StopReason: "solved"},
		},
		{
			name:    "negative counter",
			metrics: SearchMetrics{Engine: "pantograph-local-bfs-v2", NodesExpanded: -1, StopReason: "solved"},
		},
		{
			name:    "unknown stop reason",
			metrics: SearchMetrics{Engine: "pantograph-local-bfs-v2", StopReason: "maybe"},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			t.Parallel()
			if err := tt.metrics.Validate(); err == nil {
				t.Errorf("SearchMetrics.Validate(%#v) = nil, want validation error", tt.metrics)
			}
		})
	}
}
