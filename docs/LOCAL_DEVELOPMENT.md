The setup command builds the Go CLI and runs the local Lean proof. No key or external provider is used.

Run `go run ./cmd/mathcase` for CLI usage. Provider dispatch requires the explicit `solve-provider --dispatch` flag plus local owner authorization, item clearance, cost limits, and a pinned Lean verifier. The static site uses root paths and is intended for a root-domain site; a project subpath needs a base-path change.
