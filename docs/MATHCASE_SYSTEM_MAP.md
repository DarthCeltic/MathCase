# MathCase public edition map

This forkable source snapshot combines the MathCase Go command-line workbench, a read-only Python MCP connector, a Lean-core proof example, and a static saved-case site.

The Go command is an explicit workflow runner. It includes source-catalog validation, local solver and Lean-verification orchestration, optional user-authorized provider dispatch, retrieval, evidence handling, and review/gate commands. Each workflow has its own inputs and evidence requirements; a successful command does not qualify unrelated workflows.

The Python MCP connector exposes only a fixed read-only overview, this map, and the R0b proof receipt. It cannot invoke a model, modify files, or run Lean. The separate Python routing foundation requires an injected provider adapter and rejects unconfigured routes by default.

The static site contains three selected saved cases and a source-free summary of a separate Tavily search. Opening it performs no network request and no computation. The historical prime proof candidate came from Nebius Token Factory; Lean's kernel and configured axiom audit are the verification boundary. The Tavily search was not part of that proof context.

The local setup command builds the Go CLI and recompiles the Lean-core `Nat.add_assoc` proof, with an axiom audit. It makes no paid or provider calls. The local proof is a known theorem reconstruction, not a novelty claim.

This edition excludes the full local Case Desk preview UI/backend, experimental campaign records, source catalogs and corpora, uncleared explanation/dossier records, and local run archives. It does not claim those materials were reviewed or cleared.
