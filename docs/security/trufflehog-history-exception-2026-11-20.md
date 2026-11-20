# Narrow TruffleHog full-history exception — 2026-11-20

The owner approved a documented exception at 06:40 ET on Nov 20, 2026. It covers exactly two unverified `URI` detector findings (`DetectorType` 17) in negative-test fixtures in commit `61a318b2a84b37a802c5fcb2121ff7cd3ce9ebca`. The historical fixture values are not reproduced here. Both use reserved example domains to exercise rejection of URL userinfo; inspection found no credential or live service endpoint.

The source was corrected in `0acdee0b59cd51a6e52e3fb80ad11a7e267f2f99` by constructing the test inputs with Go `net/url`. Both exact focused tests passed with `GOPROXY=off` and `GOSUMDB=off`; `gofmt` and `git diff --check` were clean. The two finding identities, file/line, historical file hashes, Git blob IDs, raw-value hashes, source hashes, commands, and approval scope are in the adjacent machine-readable manifest. No raw scanner values are published.

## Scan behavior

The original full-history scan exited 183 with two unverified findings, zero verified findings, and zero scanner errors. Its JSONL SHA-256 is recorded in the manifest; raw JSONL remains owner-local. Current-tree TruffleHog scans after the source correction returned zero findings. The source fix does not erase the historical blobs.

History was not rewritten, and the scanner was not weakened. Continue running the same full-history scanner with `--fail-on-scan-errors --fail`. Its nonzero result is acceptable only when the exact output is then checked by `scripts/verify_trufflehog_history_exceptions.py`, which pins the manifest hash in code and requires an exact match of detector, verification state, commit, file, line, and raw-value hash. Any new, changed, missing, verified, malformed, or scanner-error result fails closed and blocks publication.

The exception grants no general suppression and does not change future scan policy.
