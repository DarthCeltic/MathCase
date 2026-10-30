package domain

import "testing"

func TestLocalComputationSpecUsesCanonicalBoundedIntegers(t *testing.T) {
	valid := LocalComputationSpec{
		ToolID: LocalComputationTwoCongruenceToolID,
		Inputs: map[string]string{"residue1": "1", "modulus1": "6", "residue2": "4", "modulus2": "9"},
	}
	if err := valid.Validate(); err != nil {
		t.Fatalf("valid two-congruence spec rejected: %v", err)
	}
	tests := []struct {
		name   string
		mutate func(*LocalComputationSpec)
	}{
		{name: "zero modulus", mutate: func(spec *LocalComputationSpec) { spec.Inputs["modulus1"] = "0" }},
		{name: "negative modulus", mutate: func(spec *LocalComputationSpec) { spec.Inputs["modulus2"] = "-9" }},
		{name: "leading zero", mutate: func(spec *LocalComputationSpec) { spec.Inputs["residue1"] = "01" }},
		{name: "negative zero", mutate: func(spec *LocalComputationSpec) { spec.Inputs["residue2"] = "-0" }},
		{name: "extra input", mutate: func(spec *LocalComputationSpec) { spec.Inputs["unbounded"] = "1" }},
		{name: "missing input", mutate: func(spec *LocalComputationSpec) { delete(spec.Inputs, "residue2") }},
		{name: "unsupported tool", mutate: func(spec *LocalComputationSpec) { spec.ToolID = "provider-solver" }},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			candidate := LocalComputationSpec{ToolID: valid.ToolID, Inputs: make(map[string]string, len(valid.Inputs))}
			for key, value := range valid.Inputs {
				candidate.Inputs[key] = value
			}
			test.mutate(&candidate)
			if err := candidate.Validate(); err == nil {
				t.Fatal("invalid M0 arithmetic spec was accepted")
			}
		})
	}
}
