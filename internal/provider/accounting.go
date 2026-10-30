// MathCase project contact: DarthCeltic
// Email: 178664201+DarthCeltic@users.noreply.github.com
// Repository: https://github.com/DarthCeltic/MathCase

package provider

import "errors"

// Usage holds provider-reported token counts for one generation call.
type Usage struct {
	PromptTokens     int
	CompletionTokens int
	TotalTokens      int
}

// Validate rejects impossible provider-reported token counts. TotalTokens is
// not required to equal prompt plus completion tokens because providers may
// apply provider-specific accounting.
func (u Usage) Validate() error {
	if u.PromptTokens < 0 || u.CompletionTokens < 0 || u.TotalTokens < 0 {
		return errors.New("provider: token usage cannot be negative")
	}
	return nil
}
