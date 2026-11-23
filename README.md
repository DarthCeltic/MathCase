# MathCase

**Question an AI proof. Check it in Lean. Build on what holds.**

[Browse the public case catalog](https://darthceltic.github.io/cases.html) for saved examples, exact local calculations, and reproducible Lean routes, plus a clearly separated external Riemann-source audit.

[Open MathCase and start a case](https://darthceltic.github.io/visitor/) · [Explore saved proofs](https://darthceltic.github.io/#case-desk) · [Open in GitHub Codespaces](https://codespaces.new/DarthCeltic/MathCase?quickstart=1) · [Watch the 2:57 film](https://youtu.be/-zTEJr35Q2k) · [Download the source ZIP](https://github.com/DarthCeltic/MathCase/archive/refs/heads/main.zip)

## Work on your own proof

Open the visitor workbench, write your claim, and edit its Lean source. The workbench saves cases in this browser. Choose **Run in Lean** to send the current source to Lean Playground and inspect its compiler messages inside the page. To ask a model for a proof or a correction, choose **Copy for my AI**, use it with your own model, and paste the proposed source back into the case. You can also download your source or run the pinned compiler in your own workspace.

For a reproducible check, open the Codespaces link above and sign in to GitHub. GitHub provisions a personal development environment using your Codespaces allowance. The first setup downloads Lean 4.33.1. Edit and save the starter in `visitor-examples/MyCase.lean`, or drag in a `.lean` file you downloaded from MathCase. With that file open, use **Terminal → Run Build Task**. The task writes a JSON receipt next to the file. To run the same check from a terminal with the pinned Lean toolchain installed, use:

```sh
python3 scripts/check_visitor_case.py visitor-examples/MyCase.lean --receipt MyCase.receipt.json
```

Download the receipt and import it into the case to compare the checked bytes with the current draft. A compiler receipt records diagnostics, version and source digest. The saved Case Desk examples also include separate historical evidence such as axiom audits. To keep your proof and receipt in Git, [fork MathCase](https://github.com/DarthCeltic/MathCase/fork), open a Codespace on your fork, and commit the files there. To try the Go CLI in the Codespace, run `go run ./cmd/mathcase solve-provider -h` for its provider setup and authorization options. Stop the Codespace from GitHub when you finish.

MathCase makes a mathematical claim inspectable from first example through formal proof and reuse. In the [public saved-case walkthrough](https://darthceltic.github.io/#case-desk), test why `4 ∣ n² → 4 ∣ n` fails at `n = 2` and inspect a recorded NVIDIA Nemotron proposal and Lean rejection for the corrected prime-divisor theorem. The local Case Desk also shows how the saved √2 infinite-descent case uses that checked parent lemma. The separate Tavily card is labeled as a saved source-search result; it did not feed that prime proof.

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

The [public homepage](https://darthceltic.github.io/) offers both **Make a case** and **Open a saved case**. To open the counterexample directly, use the [saved case reader](https://darthceltic.github.io/reader.html?scope=public#case/hero-composite-counterexample-r1). To export it for your own static host, follow [the static Case Desk guide](docs/static-case-desk.md). The source checkout also retains the lightweight reader at its root: run `python -m http.server 8000` and open `http://127.0.0.1:8000/`.

## Public math results and reproduction

The main results are summarized in [MathCase results and limits](docs/MATH_RESULTS.md), with the current [research roadmap](docs/MATHCASE_RESEARCH_ROADMAP.md). The public M20 packet includes the source, 2,652 exact affine-family statements, the source-to-kernel replay hashes, and the preserved watchdog exit. A plain-language entry point is [the reproduction index](reproduction/README.md). The new [12-of-20 parity theorem](reproduction/collatz-twelve-of-twenty-v1/README.md) proves a fixed 32-step descent result for exactly 125,970 residue classes; the separate [compact affine-family replay](reproduction/collatz-affine-family-replay-v1/README.md) rechecks the 2,652 listed rows and a 456-row sample. A [prime-to-√2 source replay](reproduction/prime-sqrt2-source-replay-v1/README.md) gives a local pinned-source route with candidate-only status.

For the local public case runner, use `python scripts/run_public_case.py list` to see ten bounded routes, then pass a case ID such as `collatz`, `ramsey55`, or `prime-sqrt2`. Every invocation writes a new output folder; see the [case catalog and command guide](reproduction/CASE_CATALOG.md). It does not make model or inference calls. The Riemann source route fetches only four pinned public files when selected.

The bounded statement is specific: for 2,652 listed progressions, after 32 Collatz steps the exact affine value is smaller than the start. This is not a proof of Collatz convergence. A separate [R(5,5) Lean bundle](reproduction/ramsey-r55-lean-v1/README.md) formalizes the known lower bound `R(5,5) ≥ 43` with 27 chunk receipts and a final composition; it is candidate evidence from a warm local cache, not a new construction or M4 pass. The [M15–M20 showcase branch](https://github.com/DarthCeltic/MathCase/tree/codex/math-results-showcase-20261112) exposes additional source files; its older status notes are superseded where the Nov 18 replay package gives newer evidence.


The [R(5,5) Lean reproduction bundle](reproduction/ramsey-r55-lean-v1/README.md) contains the exact 29 source files, 27 path-free chunk receipts, a final composition receipt, and pinned Lake metadata. The original result was compiled with a warm local cache; a fresh-checkout rebuild remains unverified. The public repository also carries a narrowly scoped [TruffleHog historical-fixture exception record](docs/security/trufflehog-history-exception-2026-11-20.md); its exact matcher keeps future findings fail-closed.

## Self-host a classroom (local prototype)

The browser-based [classroom file handoff](https://darthceltic.github.io/visitor/classroom.html) needs no server. If you want local accounts and assignments stored on your own machine, install Go and run `go run ./cmd/mathcase classroom-serve`. It binds to `127.0.0.1:55136` by default and prints the path to a one-time teacher setup token; open that file locally to create the first teacher account. The service stores password hashes, assignments, and submissions under your user configuration directory. Keep that directory private. For the full setup and security limits, see [the self-hosted classroom guide](docs/private-classroom-service.md).

This is a local prototype. It does not send data to MathCase, call a model, run Lean, or create proof receipts. Do not expose it directly to the public internet. The file handoff remains the simplest option when separate accounts and shared local storage are not needed.

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
