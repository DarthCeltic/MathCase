# Public snapshot scope

This is a scoped source snapshot, not the complete private MathCase checkout. The included product is the Go CLI and its internal packages, the read-only Python MCP connector/router, a standalone BYOK Tavily search command, public provider authorization schemas, a Lean-core R0b proof, and a static saved-case site. The static site has its own hashed file inventory at `saved-demo/site-manifest.json`.

The following tracked private/uncleared payloads are excluded:

- `ui/prototype/data/campaign-experimental-results.json`
- `ui/prototype/data/nat-add-assoc-explanation-drafts.json`
- `ui/prototype/data/nat-add-assoc-explanation-drafts-r4.json`
- `proofs/first-rung/evidence/prime-sqrt2-model-reuse-r2/explanation-draft-r1.json`
- `proofs/first-rung/evidence/sqrt2-equivalence-r2/explanation-drafts-r2.json`
- `proofs/first-rung/evidence/sqrt2-unified-r1/explanation-drafts-r1.json`
- `ui/prototype/sqrt2-infinite-descent-dossier.json`
- `ui/prototype/sqrt2-math-case-dossier-r2.json`
- `ui/prototype/sqrt2-math-case-dossier.json`

The snapshot also omits the full monolithic local Case Desk UI and preview backend, local campaign evidence routes, ignored/local run archives, raw corpus and source catalogs, prize catalog, and ProofWiki search excerpts. The three-case static site is a separately derived read-only view; it contains a source-free Tavily summary and selected proof records. This scope does not assert clearance for the omitted material.

This snapshot begins with a new Git root commit. It does not carry the private repository's prior commit history.
