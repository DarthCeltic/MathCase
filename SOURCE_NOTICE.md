# MathCase public edition source notice

Copyright 2026 DarthCeltic (Ryan).

MathCase-authored Go, Python, Lean, configuration, and documentation files in this repository are licensed under Apache-2.0 as provided in `LICENSE`, except where a file-specific notice or third-party term applies.

The read-only MCP connector in `mathcase/connect/` adapts the connector and projection patterns from ARGUS, Copyright 2026 DarthCeltic, licensed under Apache-2.0. Source reference: ARGUS commit `d93a68e1f19e19344b129d450e3a5e6fdc7f3f24`, files `argus/connect/mcp_server.py` and `argus/connect/projection.py`.

The actual Case Desk source and selected saved evidence are inventoried by `public-case-desk.json`; its original proof/receipt bytes are preserved. Historical workflow fields remain byte-preserved in the saved evidence. The static site at the repository root has its own `NOTICE` and hashed file list in `saved-demo/site-manifest.json`. Its Tavily panel contains a saved summary and six title-and-URL source locators, without search excerpts. No raw search excerpts, model weights, API credentials, provider account records, or external corpus are included in this source edition.

The optional `proofs/collatz/` files include separately agent-authored formalizations of elementary, restricted Collatz descent. They also include an exact rejected model-proposed Lean source for lineage and a later agent-repaired version that passed a saved Lean check; the original model result remains rejected. This appendix is separate from the saved Case Desk cases and carries no full-convergence or novelty claim.

Dependencies are not vendored. Their licenses and notices remain applicable when installed or redistributed.
