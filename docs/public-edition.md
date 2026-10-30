# Public edition support and limits

## Included routes

- **Static saved demo:** root `index.html` loads only included data and assets. It is read-only and makes no outbound requests.
- **Go CLI:** `go run ./cmd/mathcase` exposes the source workflows listed by its usage output. Provider dispatch requires explicit flags and owner/item authorization files supplied by the operator.
- **Python connector:** `python -m mathcase.connect.mcp_server` exposes a fixed read-only MCP surface. It does not dispatch provider or proof work.
- **Tavily BYOK search:** `python -m mathcase.tavily --statement-file PATH` dispatches one bounded basic search for the operator's exact statement when `TAVILY_API_KEY` is set. It returns bounded JSON on stdout and does not persist a key or result. It does not check account balance or plan before dispatch.
- **Local Lean proof:** `proofs/r0b/MathCaseR0b.lean` rebuilds the known theorem `Nat.add_assoc` using Lean core only. `lake build` compiles the proof; `lake env lean MathCaseR0b.lean` also prints the axiom report.
- **BYOK provider protocol adapters:** Go code supports OpenAI Chat Completions, Anthropic Messages, and Google Gemini request formats. Nebius can be used only if the operator supplies a compatible endpoint and exact model identity.

## Evidence roles

- **Nebius:** historical candidate generator for the prime-divisibility example. Its saved answer is not the proof verdict.
- **Lean:** checks the exact formal statement and proof under the recorded toolchain. The included static demo preserves the limited historical result; the local setup independently rebuilds the separate R0b core-only example.
- **Tavily:** the site shows a bounded, source-free summary of a separate historical search. The standalone public adapter can perform new, operator-initiated searches; it does not recreate that saved record or feed proof verification. Returned snippets are untrusted source leads, not proof or novelty evidence.

## Excluded functionality and data

The full local Case Desk backend, campaign browser/endpoints, private corpus, prize catalog, campaign results, machine-specific receipts, and uncleared draft/dossier records are not included. The public source does not represent that these materials were reviewed or cleared. The included static demo is a saved-record reader, not the full local Case Desk or a live proof/search service.

Provider dispatch is possible only when the operator supplies a problem, an owner authorization, item-level input clearance, a bounded cost policy, and a pinned Lean verifier. Keys belong in environment variables. Review each provider's current terms and the source-specific rights of any theorem before dispatching.
