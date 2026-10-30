# MathCase public edition

MathCase is a provenance-first mathematics workbench. This public edition contains the forkable Go CLI, a read-only Python MCP connector, selected authored Lean examples, and a static three-case saved-proof demo at the site root.

## Quick setup

Requirements: Go 1.27 or later, Lean 4.33.1 via `elan`/`lake`, and PowerShell 7 on Windows. From the repository root:

```powershell
.\scripts\setup-public.ps1
```

This builds `bin/mathcase.exe` and runs the local R0b Lean proof with its axiom audit. It does not contact a model provider, Tavily, or any paid service. To open the read-only demo, run `python -m http.server 8000` from the repository root and open `http://127.0.0.1:8000/`.

The CLI is also available directly with `go run ./cmd/mathcase`. Use `go run ./cmd/mathcase solve-provider -h` to inspect the BYOK command. Provider dispatch is a separate explicit action and requires user-supplied authorization, item-level input clearance, price ceilings, a pinned Lean verification environment, and an API key in an environment variable. No key, grant, provider profile, corpus, or private run archive is included here. A route can use an OpenAI-compatible endpoint such as Nebius when the user supplies its exact endpoint, model, key variable, authorization, and clearance. Dispatch was not used for this release check.

To run the optional read-only Python connector, create a Python 3.11+ virtual environment, install `requirements-mcp.txt`, then run `python -m mathcase.connect.mcp_server`. It exposes only overview, system-map, and R0b receipt reads.

## What the demo shows

The site presents three saved cases: a checked arithmetic counterexample, a known prime-divisibility theorem checked in Lean, and a √2 child compilation reusing the saved parent theorem. Opening the site makes no model, Lean, or Tavily call. The displayed Tavily record is a separate source-free summary; it was not used to generate or verify the proof. Nebius supplied historical proof candidates in the saved prime example; Lean's kernel and axiom audit determined the saved check result.

The saved examples demonstrate these specific records. They do not establish novel mathematics, broad problem-solving ability, measured model performance, independent exposition review, or corpus clearance. Read `SOURCE_NOTICE.md` for source attribution; the site `NOTICE` and `saved-demo/site-manifest.json` cover the saved demo and its file hashes.

## Public-edition scope

This repository is a scoped, forkable app foundation. It includes MathCase's explicit Go solver and provider orchestration code, Python routing primitives, the read-only MCP connector, provider and authorization schemas, and a Lean-core local proof. The monolithic local Case Desk preview backend and its campaign UI are not included. Experimental campaign records, private local corpora, source catalogs, machine-local receipts, and uncleared explanation/dossier JSON are excluded. There is no bundled training or evaluation dataset.

The provider integration supports explicit OpenAI Chat Completions, Anthropic Messages, and Google Gemini request protocols. Compatible endpoints may be configured by the user. The public edition has no automatic provider selection or fallback. The Python router is an injected-adapter foundation; this repository does not ship a Tavily API adapter. See `docs/public-edition.md` for the support and evidence boundaries.

## License

MathCase-authored source and proofs are licensed under Apache-2.0 except where `NOTICE` or a file-specific term says otherwise. Go, Python, Lean, and other dependencies retain their own licenses. No external corpus or third-party excerpt is bundled in this source edition.
