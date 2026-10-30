# Public Case Desk

Run `python -B scripts/start_public_case_desk.py` from the repository root with Python 3.11+. Open `http://127.0.0.1:55135/ui/prototype/index.html`. The server binds to loopback only; `--port 8000` selects another port. Stop it with Ctrl+C.

This is the ordinary Case Desk frontend and Python evidence reader with an explicit public profile. It exposes three saved cases: an exact arithmetic counterexample, the prime-divisibility model proof and its two actual attempts, and the compiled square-root-of-two child. No API key, package installation, Go build, Lean installation or compilation is required for reading them.

## A short walkthrough

1. Open **Counterexample**, expand **Test a value**, and check divisor `4`, number `2`. Try `9` and `3` to inspect another arithmetic counterexample.
2. Open **Prime lemma** and use **Chalkboard**, **Paper**, **Next step**, and **Previous work** to inspect the proof story.
3. Open **History**. S0 is the actual rejected candidate; S1 is the corrected passing candidate. Expand each attempt's request, response and Lean receipts. **All saved run records & exact formal proof** contains the exact accepted proof and digest.
4. Open **Build on it: √2**. The child imports the captured parent module and applies its theorem at `p = 2`. Follow its parent link to reopen the exact saved prime run.

The counterexample is a separately authored local illustration, not a failed model response. The historical prime proof and the child reuse demonstrate these specific known results; they do not establish novel mathematics or general problem-solving performance. The child has a compilation record, not a separate standard M4 child receipt. Meaning and exposition review remain pending. Omitted explanation drafts are not replaced by invented historical evidence.

## Evidence and read-only boundaries

`public-case-desk.json` explicitly lists allowed files, hashes, and HTTP routes. Startup verifies all listed file hashes. File responses recheck their manifest digest. Historical `data/local/...` URLs are virtual aliases to selected packaged evidence; no private local directory is bundled. The server refuses other files, cases, runs, API endpoints, and all POST writes. The launcher passes a minimal environment without inherited provider keys or Python injection settings. Opening the application never starts Lean warmup or provider dispatch.

The public hero manifest preserves original proof and receipt bytes while excluding the separate Tavily excerpt. It is distinct from the private package's manifest. Existing artifact hashes and historical workflow fields remain intact. Those fields describe the archived run, not a current permission to train, dispatch a model, or publish additional source material. The displayed Tavily summary is source-free and separate from the prime proof.

Board style, ink and reading position are local browser preferences. The public profile does not save review notes, accept new problems, dispatch providers, search, mutate a queue or compile proofs. Those menus are unavailable. New provider work uses the separately documented Go CLI; new searches use the separate BYOK Tavily command.

## Verify or modify a fork

Run `python -B scripts/test_public_case_desk.py` for the focused evidence, route-exclusion, write-refusal and environment checks. This makes local HTTP requests only.

After intentional source edits, run `python -B scripts/refresh_public_case_desk_manifest.py`, review its hash-only manifest diff, and rerun the focused checks. The refresh command does not add files or routes and does not rewrite the separately pinned proof-package manifest. To add an artifact, review its rights and provenance before adding it explicitly. Keep original saved receipts byte-for-byte; the scoped Git attributes preserve their original line endings.

The public runtime uses the Python standard library. Go, Lean and provider configuration are optional, separate setup paths described in the root README.
