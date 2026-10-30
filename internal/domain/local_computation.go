package domain

import (
	"errors"
	"fmt"
	"math/big"
	"regexp"
)

const (
	LocalComputationTwoCongruenceToolID      = "two-congruence"
	LocalComputationTwoCongruenceToolVersion = "v1"
	LocalComputationTwoCongruenceInputLimit  = 100
)

var localComputationIntegerPattern = regexp.MustCompile(`^-?(0|[1-9][0-9]*)$`)
var localComputationNaturalPattern = regexp.MustCompile(`^(0|[1-9][0-9]*)$`)

// LocalComputationSpec binds a finite arithmetic tool to the exact inputs in
// the admitted M0 problem. Editing inputs requires a new case identity.
type LocalComputationSpec struct {
	ToolID string            `json:"tool_id"`
	Inputs map[string]string `json:"inputs"`
}

func (spec LocalComputationSpec) Validate() error {
	if spec.ToolID != LocalComputationTwoCongruenceToolID {
		return fmt.Errorf("local computation: unsupported tool %q", spec.ToolID)
	}
	if len(spec.Inputs) != 4 {
		return errors.New("local computation: two-congruence inputs require exactly two residues and two moduli")
	}
	for _, key := range []string{"residue1", "residue2"} {
		value := spec.Inputs[key]
		if !localComputationIntegerPattern.MatchString(value) || digitCount(value) > LocalComputationTwoCongruenceInputLimit {
			return fmt.Errorf("local computation: %s must be a canonical signed integer of at most %d digits", key, LocalComputationTwoCongruenceInputLimit)
		}
		parsed, ok := new(big.Int).SetString(value, 10)
		if !ok || parsed.String() != value {
			return fmt.Errorf("local computation: %s is not a decimal integer", key)
		}
	}
	for _, key := range []string{"modulus1", "modulus2"} {
		value := spec.Inputs[key]
		if !localComputationNaturalPattern.MatchString(value) || digitCount(value) > LocalComputationTwoCongruenceInputLimit {
			return fmt.Errorf("local computation: %s must be a canonical positive integer of at most %d digits", key, LocalComputationTwoCongruenceInputLimit)
		}
		modulus, ok := new(big.Int).SetString(value, 10)
		if !ok || modulus.Sign() <= 0 {
			return fmt.Errorf("local computation: %s must be greater than zero", key)
		}
	}
	for key := range spec.Inputs {
		if key != "residue1" && key != "modulus1" && key != "residue2" && key != "modulus2" {
			return fmt.Errorf("local computation: unsupported input %q", key)
		}
	}
	return nil
}

func digitCount(value string) int {
	if len(value) > 0 && value[0] == '-' {
		return len(value) - 1
	}
	return len(value)
}
