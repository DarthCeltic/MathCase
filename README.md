# MathCase

MathCase lets you test a mathematical claim, inspect a proof that Lean checked, and reuse it in a second problem.

**[Try the six-dot puzzle](https://darthceltic.github.io/mathcase/)** in your browser. Color the lines red or blue and see whether three dots form a triangle of one color. For a proof example, [open the saved attempt Lean rejected and the correction it accepted](https://darthceltic.github.io/mathcase/reader.html?scope=public#case/hero-prime-divisibility-r1).

[Browse all cases](https://darthceltic.github.io/mathcase/cases.html) for more puzzles, checked proofs, and instructions for repeating the checks. The [aiXiv subject map](research/subjects/README.md) matches 155 listed categories to MathCase cases, supporting artifacts, and proposals; its evidence labels describe MathCase work, not aiXiv submissions.

[Open MathCase and start a case](https://darthceltic.github.io/mathcase/visitor/) · [Explore saved proofs](https://darthceltic.github.io/mathcase/#case-desk) · [Open in GitHub Codespaces](https://codespaces.new/DarthCeltic/MathCase?quickstart=1) · [Watch the 2:57 film](https://youtu.be/-zTEJr35Q2k) · [Download the source ZIP](https://github.com/DarthCeltic/MathCase/archive/refs/heads/main.zip)

## Work on your own proof

Open the [visitor workbench](https://darthceltic.github.io/mathcase/visitor/) and start with the worked 4-and-2 counterexample. It saves your cases in this browser. Choose **Open Lean editor below** to load the source, plus an exact-target check when you have filled in its proposition and theorem name, into the embedded public Lean editor. Press the editor's own **Run** control to see Lean's output on the same page. A collapsed **Prefer a separate window?** option is available if you want it. The public editor chooses its own Lean/Mathlib version, which may differ from MathCase's pinned Lean 4.33.1 local checker, and it does not create a MathCase receipt. You can also copy the case for your own model, download the Lean file, or export the full case packet.

If the embedded editor says **No connection to Lean** or stays on **Updating…**, the online checker has not checked the proof. **Reconnect from draft** reloads the code currently in the workbench; copy any edits from the embedded editor back first. If the hosted worker still cannot connect, use the pinned local-check instructions below the editor. The online editor follows its own release, so its Lean/Mathlib version can differ from MathCase’s pinned Lean 4.33.1 check.

The stronger local check uses the exported case packet. It asks the pinned Lean compiler to prove the exact proposition from the named declaration, prints the theorem's axiom dependencies, and writes a receipt binding the plain claim, target, source, and generated check. The hashes preserve which bytes were checked; a human still needs to verify that the English claim matches the Lean proposition. To run this locally with Lean 4.33.1 installed, use:

```sh
python scripts/check_visitor_case.py --case-packet MyCase.mathcase.json --receipt MyCase.receipt.json
```

From the visitor workbench, **Save the whole claim** downloads the packet and **Load checker receipt** compares it with the current browser draft. The imported record remains visitor-supplied evidence, not a MathCase signature. To run the same command through the public case launcher, use `python scripts/run_public_case.py visitor --case-packet MyCase.mathcase.json`.

The older source-only command remains available: `python scripts/check_visitor_case.py MyCase.lean --receipt MyCase.receipt.json`. It checks whether Lean accepts that source, but it does not bind a displayed claim or target and it does not report axioms. For a source that imports Mathlib, provide `--lake-project PATH` for an already prepared local Lean 4.33.1 project with its manifest and dependencies present. The checker does not install Lean, update Lake, or fetch packages. A Codespace can install the pinned Lean Core toolchain; it does not include Mathlib by default. GitHub may charge for Codespaces usage under the account's plan. To keep a proof and receipt in Git, [fork MathCase](https://github.com/DarthCeltic/MathCase/fork), use a Codespace on your fork, and commit the files there.

MathCase makes a mathematical claim inspectable from first example through formal proof and reuse. In the [public saved-case walkthrough](https://darthceltic.github.io/mathcase/#case-desk), test why `4 ∣ n² → 4 ∣ n` fails at `n = 2` and inspect a recorded NVIDIA Nemotron proposal and Lean rejection for the corrected prime-divisor theorem. The local Case Desk also shows how the saved √2 infinite-descent case uses that checked parent lemma. The separate Tavily card is labeled as a saved source-search result; it did not feed that prime proof.

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
3. Open **History**: inspect the rejected attempt and the correction Lean accepted, then expand the exact proof and receipts.
4. Choose **Build on it: √2**, inspect the compiled child, and follow its link back to the exact checked parent.

These are saved executions. The public Case Desk rejects writes and new model/search requests. Independent meaning and exposition review remain pending. Reading position, ink and board style are browser preferences; proof records remain unchanged. See [the Case Desk guide](docs/public-case-desk.md) for evidence checks and fork development.

The [public homepage](https://darthceltic.github.io/mathcase/) offers both **Make a case** and **Open a saved case**. To open the counterexample directly, use the [saved case reader](https://darthceltic.github.io/mathcase/reader.html?scope=public#case/hero-composite-counterexample-r1). To export it for your own static host, follow [the static Case Desk guide](docs/static-case-desk.md). The source checkout also retains the lightweight reader at its root: run `python -m http.server 8000` and open `http://127.0.0.1:8000/`.

## Public math results and reproduction

See the [research roadmap](docs/MATHCASE_RESEARCH_ROADMAP.md) for the current demonstrated scope, open limits, and next measurable milestones.

### A bounded Collatz proof you can rerun

For every start `n ≥ 3`, if at most 14 of its first 23 accelerated Collatz steps begin on an odd number, an ordinary iterate is below `n` by step 37. Lean checked the exact count: **7,507,638 of 8,388,608** residue classes modulo `2^23` meet that condition. This is a bounded first-drop theorem and a demonstration of proof checking; it is not a new Collatz discovery and does not prove that every sequence reaches 1.

The package now includes a separate 23/14-only source runner and a recorded pass from an anonymous public clone at MathCase commit `343e9e9`. From the repository root, with Lean 4.33.1 available, use the normal case action:

```sh
python -B scripts/run_public_case.py collatz-parity-envelope-23-14 --lean PATH_TO_LEAN_4_33_1
```

A fresh public checkout passed this command on Windows in 14.251 seconds using the official Lean 4.33.1 distribution. See the [recorded run](reproduction/collatz-parity-envelopes-2026-11-v1/README.md#reproduce-the-reviewed-2314-proof) and the [plain-language worked example](https://darthceltic.github.io/mathcase/work.html#collatz-23-of-14).

The [case catalog](reproduction/CASE_CATALOG.md) documents local commands. They are runnable routes, not a count of independently established results. Finite parity-class percentages are counts for a stated modulus and horizon; they do not measure the share of Collatz trajectories that converge or imply progress toward convergence. The [public reproduction index](reproduction/README.md) separates recorded Lean checks from arithmetic checks and external source-identity checks.

Additional source audits, small worked examples for upstream results, exploratory finite searches, and records whose independent replay remains open are collected in [Diagnostics and lab notes](docs/diagnostics/README.md). Their original source files, records, and URLs remain available. The proof library is an optional reference, not a substitute for replaying a theorem.

The 2,652-family M20 result and its replay status remain documented in [MathCase results and limits](docs/MATH_RESULTS.md) and the [reproduction index](reproduction/README.md). Two runner-bound full source replays completed on Nov. 26: a Linux-container run and a separate native Windows run, each compiling 363 modules and completing 23 axiom groups over 4,262 declarations. A Nov. 27 Windows attempt also preserves a status-publication failure and a run-local recovery of all 386 stages; it is supplemental evidence because it reused its own completed outputs. The native run matched all 363 Nov. 18 Phase 2 output hashes; its same-host artifact audit passed. A clean public-clone replay is also recorded in the [2026-11-28 receipt](reproduction/m20-public-source-replay-v1/runs/2026-11-28-clean-stranger-r1/README.md). The remaining open item is an actually independent reviewer run; the native replay was not recorded as OS-level network-isolated. See the [native Windows receipt](reproduction/m20-public-source-replay-v1/runs/2026-11-26-native-windows-r1/README.md) and [the preserved failure/recovery record](reproduction/m20-public-source-replay-v1/runs/2026-11-27-windows-recovery-r1/README.md).

A new finite bridge audit checks that every one of those 2,652 listed rows satisfies the separately Lean-checked 12-of-20 parity condition and reaches its recorded base endpoint by both step conventions. It combines with that broader theorem but does not replace or complete the historical 363-module replay. See the [bridge explanation and command](reproduction/collatz-m20-twelve-of-twenty-bridge-v1/README.md).

The [case catalog](reproduction/CASE_CATALOG.md) separates visitor examples, exact Lean replays, finite arithmetic checks, and external source checks. Each runner ID names an action, not a proved theorem. The bounded research tracks have a separate [frontier evidence package](research/frontier-2026-11/README.md), runner, and [plain-language page](https://darthceltic.github.io/mathcase/frontier.html); a completed bounded search can still return `UNKNOWN` and does not prove impossibility.

For a compact human review route, use the [independent-review checklist](reproduction/INDEPENDENT_REVIEW_CHECKLIST.md). It names the commands, controls, exact claim boundaries, and evidence to preserve for the main public cases.

The public [R(5,5) Lean bundle](reproduction/ramsey-r55-lean-v1/README.md) records a known lower-bound witness compiled with a warm cache; a fresh-checkout rebuild remains unverified. The public repository also documents its narrowly scoped historical scanner exceptions and fail-closed future-finding gate.

## Self-host a classroom (local prototype)

The browser-based [classroom file handoff](https://darthceltic.github.io/mathcase/visitor/classroom.html) needs no server. If you want local accounts and assignments stored on your own machine, install Go and run `go run ./cmd/mathcase classroom-serve`. It binds to `127.0.0.1:55136` by default and prints the path to a one-time teacher setup token; open that file locally to create the first teacher account. The service stores password hashes, assignments, and submissions under your user configuration directory. Keep that directory private. For the full setup and security limits, see [the self-hosted classroom guide](docs/private-classroom-service.md).

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
