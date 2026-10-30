# MathCase

**Question an AI proof. Check it in Lean. Build on what holds.**

[Open the no-key demo](https://darthceltic.github.io/) · [Watch the 2:57 film](https://youtu.be/-zTEJr35Q2k) · [Download the source ZIP](https://github.com/DarthCeltic/MathCase/archive/refs/heads/main.zip)

MathCase makes a mathematical claim inspectable from first example through formal proof and reuse. In the [no-key saved-case demo](https://darthceltic.github.io/), test why `4 ∣ n² → 4 ∣ n` fails at `n = 2`, inspect a recorded NVIDIA Nemotron proposal and Lean rejection for the corrected prime-divisor theorem, then follow the checked parent lemma into a √2 infinite-descent child. The separate Tavily card is labeled as a saved source-search result; it did not feed that prime proof.

This repository includes the actual Case Desk frontend and Python backend used to read the saved proof story, plus the forkable Go CLI/provider core, a bounded BYOK Tavily command, a read-only MCP connector, and selected Lean examples. The Case Desk opens without an API key or paid call. Its public profile exposes three saved cases; new provider work is a separate explicit CLI action.

## Open the Case Desk — Python only

Install Python 3.11 or later. Clone this repository, or download the source ZIP above and extract it. Open a terminal in the extracted `MathCase-main` folder (or your clone), then run:

```sh
python -B scripts/start_public_case_desk.py
```

Open [the local Case Desk](http://127.0.0.1:55135/ui/prototype/index.html). No package install, API key, Go, Lean, model request, or compilation is needed to read these saved cases. The launcher removes inherited provider keys from the server environment. Use `--port 8000` if the default port is occupied.

Try this short path:

1. Open **Counterexample** and test `d = 4, n = 2`.
2. Open **Prime lemma**, choose **Chalkboard**, and follow the mathematical steps.
3. Open **History**: inspect the actual S0 Lean rejection and S1 corrected proof, then expand the exact proof and receipts.
4. Choose **Build on it: √2**, inspect the compiled child, and follow its link back to the exact checked parent.

These are saved executions. The public Case Desk rejects writes and new model/search requests. Independent meaning and exposition review remain pending. Reading position, ink and board style are browser preferences; proof records remain unchanged. See [the Case Desk guide](docs/public-case-desk.md) for evidence checks and fork development.

The [hosted saved Case Desk](https://darthceltic.github.io/) uses this same frontend with immutable saved records. It opens directly on the counterexample and keeps a **Simple reader** fallback. To export it for your own static host, follow [the static Case Desk guide](docs/static-case-desk.md). The source checkout also retains the lightweight reader at its root: run `python -m http.server 8000` and open `http://127.0.0.1:8000/`.

## Optional CLI and Lean setup

Requirements: Go 1.27 or later, Lean 4.33.1 via `elan`/`lake`, and PowerShell 7 on Windows:

```powershell
.\scripts\setup-public.ps1
```

This builds `bin/mathcase.exe` and runs the separate local R0b Lean proof with its axiom audit. It does not contact a model provider, Tavily, or any paid service.

An [optional Collatz descent appendix](docs/collatz-descent.md) includes agent-authored Lean proofs covering 7,825 of 8,192 residue classes within 21 steps, a separate 96-step family, and a fresh DeepSeek proof that passed unchanged after receiving a checked worked example. It records all fifteen provider-call outcomes and $0.473748 in provider cost. These are partial descent results, not full Collatz convergence or a novelty claim, and are separate from the saved Case Desk story.

The CLI is also available directly with `go run ./cmd/mathcase`. Use `go run ./cmd/mathcase solve-provider -h` to inspect the BYOK command. Provider dispatch is a separate explicit action and requires user-supplied authorization, item-level input clearance, price ceilings, a pinned Lean verification environment, and an API key in an environment variable. No key, grant, provider profile, corpus, or private run archive is included here. A route can use an OpenAI-compatible endpoint such as Nebius when the user supplies its exact endpoint, model, key variable, authorization, and clearance. Dispatch was not used for this release check.

To run the optional read-only Python connector, create a Python 3.11+ virtual environment, install `requirements-mcp.txt`, then run `python -m mathcase.connect.mcp_server`. It exposes only overview, system-map, and R0b receipt reads.

### Optional Tavily search (BYOK)

The separate Python command searches one operator-supplied, single-line math statement. From the repository root, with Python 3.11+:

```powershell
$env:TAVILY_API_KEY = Read-Host "Tavily API key" -MaskInput
python -m mathcase.tavily --statement-file .\my-statement.txt
Remove-Item Env:TAVILY_API_KEY
```

The statement file is your own UTF-8 file. `--statement "..."` also works for short public statements. The command sends the exact trimmed statement as one Tavily `basic` search, limited to 400 characters, six results, an eight-second timeout, and a one-megabyte response. It requests credit usage and refuses output unless Tavily confirms one credit. The output is bounded JSON on stdout with a statement SHA-256, provider request ID, credit count, URLs, snippets, and an untrusted-reference boundary. It does not write a result file or save the key. Redirect stdout yourself only if you intend to keep the returned snippets and URLs.

This command does not check your plan or remaining balance before dispatch. A basic search consumes one Tavily credit under [Tavily's current pricing](https://docs.tavily.com/documentation/api-credits); timeouts and transport failures may leave usage uncertain, so do not retry blindly. Tavily results are leads for manual source review, not proof or novelty evidence. This command is independent of the static demo, the MCP connector, and Go proof workflows.

## What the demo shows

The site presents three saved cases: a checked arithmetic counterexample, a known prime-divisibility theorem checked in Lean, and a √2 child compilation reusing the saved parent theorem. Opening the site makes no model, Lean, or Tavily call. The separate Tavily panel shows a saved summary and six title-and-URL source cards, without search excerpts; those results were not used to generate or verify the proof. Nebius supplied historical proof candidates in the saved prime example; Lean's kernel and axiom audit determined the saved check result.

The saved examples demonstrate these specific records. They do not establish novel mathematics, broad problem-solving ability, measured model performance, independent exposition review, or corpus clearance. The root `NOTICE` covers the static Case Desk subset; `SOURCE_NOTICE.md` covers the additional source-edition files, including the connector. `saved-demo/site-manifest.json` records the saved demo file hashes.

## Public-edition scope

This repository includes the real Case Desk frontend and backend with a bounded public read-only profile, MathCase's Go solver and provider orchestration code, Python routing primitives, the standalone BYOK Tavily command, the read-only MCP connector, provider and authorization schemas, and a Lean-core local proof. The public profile selects three saved cases through an explicit file/route manifest. Campaign data and endpoints, private corpora and source catalogs, unrelated machine-local receipts, and uncleared explanation/dossier JSON remain excluded. There is no bundled training or evaluation dataset.

The provider integration supports explicit OpenAI Chat Completions, Anthropic Messages, and Google Gemini request protocols. Compatible endpoints may be configured by the user. The public edition has no automatic provider selection or fallback. The Python model router is an injected-adapter foundation; the Tavily command is a separate research route. See `docs/public-edition.md` for the support and evidence boundaries.

## License

MathCase-authored source and proofs are licensed under Apache-2.0 except where `NOTICE` or a file-specific term says otherwise. Go, Python, Lean, and other dependencies retain their own licenses. No external corpus or third-party excerpt is bundled in this source edition.
