package domain

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
)

// ProblemStatementDigest identifies the exact informal and Lean statements
// attached to one problem. Titles and source metadata are excluded so edits to
// those fields do not change the mathematical target identity.
func ProblemStatementDigest(problemID, statement, leanStatement string) (string, error) {
	payload := struct {
		ProblemID     string `json:"problem_id"`
		Statement     string `json:"statement"`
		LeanStatement string `json:"lean_statement"`
	}{ProblemID: problemID, Statement: statement, LeanStatement: leanStatement}
	data, err := json.Marshal(payload)
	if err != nil {
		return "", err
	}
	digest := sha256.Sum256(data)
	return hex.EncodeToString(digest[:]), nil
}
