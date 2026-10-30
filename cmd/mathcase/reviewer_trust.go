package main

import (
	"errors"
	"strings"

	"github.com/DarthCeltic/MathCase/internal/gateaudit"
)

func loadReviewerVerifier(path, evidenceRoot string) (gateaudit.ReviewerIdentityVerifier, string, error) {
	if strings.TrimSpace(path) == "" {
		return nil, "", nil
	}
	if strings.TrimSpace(evidenceRoot) == "" {
		return nil, "", errors.New("gate evidence root is required with a reviewer trust registry")
	}
	registry, digest, err := gateaudit.LoadReviewerTrustRegistry(path)
	if err != nil {
		return nil, "", err
	}
	return registry.Verifier(evidenceRoot), digest, nil
}
