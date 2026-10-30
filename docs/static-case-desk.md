# Static saved Case Desk

The hosted Case Desk uses the same public frontend as the Python preview. An additive export supplies six immutable saved JSON views and twelve exact GET routes for the three included cases. It does not run a model, search, Lean, or a backend API. Arithmetic examples run locally in the browser.

From the source checkout, export into a separate directory:

```sh
python scripts/export_public_case_desk.py --output /path/to/static-site
node scripts/test_static_case_desk.cjs /path/to/static-site
```

The exporter reads only the 70-file `public-case-desk.json` profile. Each source hash is checked before export. It copies the selected public assets and evidence, including sixteen byte-identical historical path aliases so direct downloads work. It adds the fixture transport before the existing public profile and records every generated file hash in `ui/prototype/static-case-manifest.json`. A separate clean temporary profile supplies the derived views, so unrelated files in a developer checkout cannot enter them.

Serve the directory with an ordinary static server and open `/ui/prototype/index.html`. The initial case is the exact arithmetic counterexample. Saved history, proof receipts, parent-child links, reading steps, and visual styles remain interactive. New drafts, provider requests, proof reruns, research, and writes are unavailable. The transport refuses unknown routes, external requests, and writes, and verifies fetched evidence bytes against the manifest.

By default the existing output homepage is untouched. `--default-workbench` instead writes a small homepage launcher, preserves the source reader as `/reader.html`, and links to it from Case Desk. This option changes only the output directory; the source homepage remains the lightweight reader. This option also validates and copies the reader's exact `saved-demo/site-manifest.json` inventory, including its script, styles, data, evidence, and branding, so an empty output directory is self-contained. It derives the output reader manifest for the new homepage, reader, and launcher script. The source reader manifest stays unchanged. The export manifest identifies this option and hashes all its generated files. Deploy that manifest with all its listed paths, including the historical aliases under `data/local`.

Proofs and receipts retain their original bytes and historical execution fields. The export's timestamp comes from the latest included saved run; opening the hosted page creates no new execution evidence. The source manifest digest identifies the exact input profile even when an export is prepared from an uncommitted checkout.
