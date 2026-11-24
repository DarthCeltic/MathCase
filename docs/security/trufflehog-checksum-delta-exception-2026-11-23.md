# Narrow TruffleHog checksum exception — Nov 23, 2026

Ryan authorized a narrow exception for exactly **114 SHA-256 receipt and manifest matches** in seven events from a local Git-history delta scan. This documents that decision; it does not change the scanner or permit future detections.

The scanner exited **1** because it reported seven high-entropy events. A fresh local rerun preserved the raw output in the owner-local archive and reproduced the same seven events and 114 matches. The redacted, path-relative classification below contains no matched values or workstation paths. Every match was a 64-character hexadecimal value bound either to a checksum/manifest field in its triggering commit blob or to an exact added/removed line in that commit's diff.

| Commit | Public file | Matches | Binding source |
|---|---|---:|---|
| 737e5808 | reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/ATTEMPT-BINDING.json | 8 | event_commit_blob, event_commit_diff_added_or_removed_line |
| 737e5808 | reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/bundle-manifest.json | 19 | event_commit_blob, event_commit_diff_added_or_removed_line |
| 737e5808 | reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/evidence/replay-receipt.json | 32 | event_commit_blob, event_commit_diff_added_or_removed_line |
| febd9f39 | reproduction/README.md | 1 | event_commit_blob |
| febd9f39 | reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/ATTEMPT-BINDING.json | 8 | event_commit_blob |
| febd9f39 | reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/bundle-manifest.json | 12 | event_commit_blob |
| febd9f39 | reproduction/collatz-at-most-seventeen-of-twenty-seven-v1/evidence/replay-receipt.json | 34 | event_commit_blob |

The exception is limited to these seven event records, their two listed commits, and these files. No URI, credential, token, or other detector result is covered. No history was rewritten and no scanner behavior was changed. The independent full-history scan remains governed by the separate exact two-finding URI exception in [the Nov 20 record](trufflehog-history-exception-2026-11-20.md); any new, changed, malformed, or otherwise unapproved finding still blocks release.

The machine-readable record is [here](trufflehog-checksum-delta-exception-2026-11-23.json). The raw scan output and full triage receipts are retained locally; this public projection omits the matched checksum values.
