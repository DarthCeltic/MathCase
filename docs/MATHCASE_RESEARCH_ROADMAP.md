# MathCase research roadmap

**Build a tool mathematicians can inspect, reproduce, and use on their own questions.** The current evidence is strongest as a disciplined verification and evidence pipeline; broad autonomous discovery has not yet been demonstrated.

## Current checkpoint

- The public Case Desk opens without a key and shows saved proof attempts and Lean checks.
- The public reproduction bundle contains M15–M20 sources, receipts, a hash-bound exact-statement graph, and bounded Erdős–Straus records.
- A Nov 18 two-phase source replay compiles all 363 M15–M20 modules from source with no MathCase OLEAN reuse. The phases agree on their per-module outputs and axiom checks. Phase 1's Docker wrapper exit 124 is preserved; Phase 2 exits 0.
- The current public replay is not a clean-room stranger reproduction: the image is not anonymously pullable and the complete image build context is missing.
- No new theorem has received independent review. There is no frozen ErdosBench result and no measured library-versus-baseline transfer result.

## Next work, in order

1. **Make one clean-room replay possible.** Publish a complete pinned build recipe or a pullable image, then have an independent operator reproduce the 363-module result from a fresh checkout. Keep the original phase-1 exit 124 and historical OLEAN hash mismatch in the record.
2. **Prepare an independent review packet.** Give a reviewer the plain theorem, exact Lean statement, finite scope, source links, both replay records, and the limits. Ryan handles any request for review in his own words.
3. **Choose one finite-structure target.** Pin an exact public Formal Conjectures revision; compare the target statement to its English wording and check nearby prior work before any attempt. Preserve the candidate list and selection reason.
4. **Turn Erdős–Straus computation toward proof.** Work from existing denominator-offset records; do not extend the range as the headline. Search for one exact identity family or a useful general criterion, and keep every pattern labeled conjectural until it has a proof and prior-work check.
5. **Test transfer only when the measurement is valid.** The 11 locked evaluation bundles remain closed. A future benchmark needs a fixed target set, equal budgets, a same-snapshot library arm and baseline arm, and reviewed statements. The model-based comparison remains staged; no model calls are running and external cost is $0.
6. **Keep the research UI actionable.** Build a timeline, evidence explorer, coefficient calculator, and a readable roadmap. Every result needs a clickable way to inspect the source or receipt; no status shorthand without an explanation.

## Guardrails

No public statement should imply global Collatz convergence, a solved Erdős–Straus conjecture, novelty, independent review, M4 promotion, or measured autonomous research. Keep the 11 locked benchmark bundles closed. Do not publish Tao/Grimoire wording, mined Zulip material, licensed/uncleared corpora, Signal Table material, Daine-credited files, credentials, or workstation paths. Model/API calls are not running. External spend remains $0.
