# Frozen study workflow v1

The visitor/study-lab.html page is a local-only accounting tool. It does not run an experiment, call a model/provider/search service, or invoke Lean.

## Manifest

Use schema mathcase-frozen-study-v1 with:

- a stable study_id, evidence_class, and UTC frozen_at_utc;
- exact protocol_text and matching SHA-256;
- shared per-target limits and pinned Lean/worker snapshot hashes;
- exactly two arms: library with a pinned library hash and baseline with a null library hash;
- one to 100 held-out cases, each with unique case/problem IDs, exact statement text and hash, and source packet hash.

The tool verifies these internal bindings and requires shared limits for both arms. The manifest SHA-256 binds the exact bytes selected for a report. The page displays this digest and can export a small binding record for the operator to carry into run envelopes. It is not a signature and does not prove the manifest predates every run.

## Run envelope

New scored inputs use mathcase-lab-run-envelope-v2 and include `study_manifest_sha256` equal to the SHA-256 of the exact manifest file bytes selected in the page. Each envelope binds one `study_id`, `case_id`, and arm to an embedded mathcase-provider-solve-v1 run record. The run's problem ID, Lean statement, and statement hash must match the manifest. The exported binding record contains this digest so an operator can copy it into each new envelope.

Legacy mathcase-lab-run-envelope-v1 files and v2 files bound to a different manifest remain visible as descriptive records, but are excluded from matched scoring. This prevents a same-ID edit, such as changing a time budget, from making old runs appear to belong to the revised study.

The planned denominator is cases x arms. Byte-identical files are listed as duplicates and ignored. Different files for the same case-arm slot, or a repeated run ID, make the affected slot conflicting; the tool does not pick a winner. Missing, rejected and conflicting inputs remain visible in the report.

The report calls an outcome a reported pass only when the imported v2 run is bound to the exact manifest and says solved=true with a PASS attempt containing a proof-hash field. This is a bounded data-accounting rule, not a Lean replay, authenticated receipt, statistical conclusion, or claim that the library helped.

## Evidence boundary

The shipped template is explicitly synthetic and contains elementary identities only. Do not use it as a benchmark result. The page processes files in the browser, caps input at 100 files / 16 MiB each / 32 MiB total, and makes no network requests.
