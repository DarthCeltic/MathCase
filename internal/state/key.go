// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package state

import (
	"errors"
	"fmt"
)

// MaxIdentifierBytes bounds identities used in maps, references, and evidence
// joins. It is deliberately separate from payload and artifact limits.
const MaxIdentifierBytes = 128

// ValidateIdentifier accepts the canonical identifier alphabet shared by
// persisted case/evidence identities and executor metadata. Keeping these
// values ASCII and route-safe prevents whitespace, control characters, path
// separators, and visually ambiguous non-ASCII values from changing the
// meaning of a lookup or evidence join.
func ValidateIdentifier(name, value string) error {
	if name == "" {
		name = "identifier"
	}
	if value == "" {
		return fmt.Errorf("state: %s is required", name)
	}
	if len(value) > MaxIdentifierBytes {
		return fmt.Errorf("state: %s exceeds %d bytes", name, MaxIdentifierBytes)
	}
	for index := 0; index < len(value); index++ {
		character := value[index]
		if (character >= 'a' && character <= 'z') ||
			(character >= 'A' && character <= 'Z') ||
			(character >= '0' && character <= '9') ||
			character == '.' || character == '_' || character == '-' {
			continue
		}
		return errors.New("state: " + name + " contains a non-canonical character")
	}
	return nil
}
