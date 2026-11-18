# Pinned image and build context

## Recorded image

The recorded runs used image sha256:ec3377f34aaf0b83502e6755d5403ca36382adb99e4c7ab1470d42a1ac5abdc7. A local Docker inspection on 2026-11-14 returned tag mathcase/lean-snapshot:8f587bf452930d3f-20261028T115132.541195800Z and an empty RepoDigests array. An anonymous docker manifest inspect returned authentication required. No image pull was attempted. The captured result is evidence/image-registry-check/anonymous-manifest-inspect.json.

The original MathlibSnapshot.Dockerfile still cannot recreate the recorded image from this package. It requires the builder/lean_snapshot_inventory executable, complete dependency checkouts and build outputs, and verified base and Git-tool images. Apt package versions are not pinned. The Dockerfile is a recipe source, not evidence of a rebuild.

## Lake fallback context

Status: PREPARED, NOT EXECUTED.

The package now contains project/lean-toolchain, project/lakefile.toml, and project/lake-manifest.json copied byte-for-byte from the tracked proofs/first-rung project. The Lake manifest pins Lean 4.33.1 and Mathlib v4.33.1 at commit 0df444a360eaa60ab8c11dca51a86af692955474, matching the recorded shard replay. It also pins the nine Git dependencies to exact commits.

The staged tools/replay_pinned_shards_lake.py has a no-Lean plan check that validates all 229 source/receipt bindings and the Lake pins. Its execution mode requires the preinstalled Lean toolchain, all nine package checkouts at the pinned revisions, and the prebuilt Mathlib.Data.Nat.Prime.Basic OLEAN. It never runs lake update or downloads dependencies. During Lean invocations it blocks Git network protocols, caps each module at 180 seconds and total time at 7,200 seconds, stops on the first failure, and writes outputs and receipts only to a new caller-selected directory outside the candidate.

This fallback context does not include Mathlib source, dependency checkouts, or compiled OLEAN files. An independent operator must obtain the public dependencies and Mathlib cache before an offline replay. The fallback has not been compiled, so matching the recorded per-module OLEAN hashes is unverified. The original Docker image has not been rebuilt and the package does not claim that it has.

On 2026-11-17, an owner-local preflight using an existing project with byte-identical metadata passed: Lean 4.33.1 was installed, all nine dependencies matched their locked commits, and the imported Mathlib OLEAN was present. The check invoked no Lean or Lake command. This is local input readiness, not a fresh public checkout or a proof replay. The candidate's own project directory still lacks those dependencies; its fail-closed preflight records that state without invoking Lean.

The original M20 composition run remains a separate historical record: its 133 intermediate modules and final theorem used cached, hash-matched M20 shard outputs and did not replay the 229 shards. On 2026-11-18, two later owner-local source runs compiled 229 shard inputs plus all 134 composition modules from source, with no MathCase OLEAN reuse. Both phases agreed on all 363 source/output hashes and all 23 axiom-group results; the first Docker wrapper returned 124 after its run-status recorded completion, and the second returned 0. The public replay note reports the historical OLEAN-hash differences and the remaining stranger-reproduction blocker.
