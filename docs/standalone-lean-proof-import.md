# Standalone Lean proof import

`verify-imported-proof` checks one operator-supplied Lean `by` proof term against the exact informal and Lean statements in a MathCase problem JSON file. It uses only the selected local Lake project, an explicitly supplied qualified Lean snapshot, an immutable Docker image, and the local Lean verifier. It does not fetch a Grimoire lesson or call a model/provider.

The intake is intentionally narrower than a whole-file importer. It accepts a proof term such as `by\n  exact And.intro hA hB`; it does not execute imported Lean commands, macros, or arbitrary source files. The verifier wraps the term in MathCase's fixed theorem declaration and applies its normal proof-term validation and axiom audit.

## Run one local check

```powershell
mathcase verify-imported-proof `
  --problem .\problem.json `
  --catalog-snapshot .\data\local\catalog\m0-snapshot.json `
  --proof-term .\candidate-proof.txt `
  --lean-project .\proofs\r0b `
  --lean-snapshot-manifest C:\path\to\qualified-snapshot.json `
  --lean-image sha256:... `
  --imports Init `
  --receipt-root C:\MathCase-local\receipts `
  --packet-output C:\MathCase-local\imports\candidate.packet.json `
  --source-label "Lean Grimoire tutorial 1.1"
```

Both snapshots must already exist. The M0 catalog must contain the exact problem and formal statement, a passed human statement audit, and source records already cleared for local proof attempts, derivatives, and local storage. The command only reopens those existing permissions; it does not create or widen them. In particular, a storage/computation-only source is refused before Docker or Lean runs. The Lean snapshot must be qualified for the selected project, image, toolchain, and imports. This command does not build or refresh a Lean snapshot. A rejected proof or failed local preflight still produces a packet when the inputs were read and verification was attempted; any Lean receipt already written remains in the receipt root. A packet without a matching, reopened execution-bound Lean receipt cannot be marked verified.

The packet binds the exact problem JSON, formal/informal statement digest, M0 catalog snapshot, statement-audit evidence ID, raw proof-term bytes, and (when available) Lean receipt bytes. It records one local verification request only. Its source-use status is read from the pinned M0 catalog; the operation does not grant rights. Novelty and any broader human review remain unassessed. The input M0 label is recorded as an input label and is never changed by this command.

## Attach a verified candidate to an intake dossier

```powershell
mathcase dossier-attach-imported-proof `
  --dossier .\case-intake.json `
  --packet C:\MathCase-local\imports\candidate.packet.json `
  --catalog-snapshot .\data\local\catalog\m0-snapshot.json `
  --receipt-root C:\MathCase-local\receipts `
  --artifact-root C:\MathCase-local\case-artifacts `
  --output C:\MathCase-local\revisions\candidate-import-r1.json
```

Attachment reopens the exact M0 catalog, packet, and passed Lean receipt against the dossier's problem and source-use permissions. It preserves copies of the packet and receipt by content-addressed path and writes a new dossier revision without overwriting its parent. The revision labels the import `CANDIDATE_ONLY_NOT_ATTACHED_M4`. It does not create solver attempts, set the dossier's M4 receipt, pass V1/V2, change M0 or V3–V7, establish novelty, grant proof-use rights, or sign/publish the dossier. The path is only for a dossier with no existing M4 receipt or prior imported candidate; queue-originated first-proof attachment continues to use its separate fully qualified route.

## What a public demonstration still needs

For a Lean Grimoire playtest, first obtain the exact target statement and proof term, then complete the source's M0 rights review and use only permissions already recorded in the catalog. Run this path only against snapshots already qualified for the target and its imports. Publish a small review packet with the exact source/statement/proof digests, pinned toolchain identity, a passing case and a deliberately failing case, and an independent human statement review. Present it as **imported-proof verification**, not autonomous discovery or a solution to an open problem. Do not publish lesson text or infer broader reuse permission from a local check.
