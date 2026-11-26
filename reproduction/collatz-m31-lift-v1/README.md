# 860 listed Collatz progressions with a proved first drop

For each of 860 listed starting-number patterns, Lean checked that every number in that pattern becomes smaller after a stated finite number of ordinary Collatz steps.

Each pattern has the form `r + 2^d * k`, for every natural number `k`. The package lists the residue `r`, step count `d`, exact endpoint and odd-input count for each row. The checked step counts range from 52 to 207.

More precisely, for each row `(r,d)` in `family-certificate.json`, the checked conclusion is `T^d(r + 2^d*k) < r + 2^d*k` for every natural number `k`.

## Why checking one row covers infinitely many starts

The shared Lean proof shows that after `d` steps,

```text
T^d(r + 2^d*k) = T^d(r) + 6^a*k,
```

where `a` counts the odd inputs during the first `d` steps from `r`. For each listed row, the endpoint is below `r` and `6^a < 2^d`. Those two inequalities imply that the same strict decrease holds for every `k` in that row's progression.

This is a finite list of 860 progressions. It is not a claim about every starting number, does not prove Collatz convergence, and makes no novelty claim. The rows were selected from an earlier bounded sample; the selection inputs and a full comparison against other listed families are not included here, so that selection process is not independently reproduced by this bundle. The statement has not received an owner M0 review, and no M4 status is claimed.

## What was checked

- Lean 4.33.1 compiled the shared lift lemma from source and then all 860 row declarations. Both stages exited 0; the core OLEAN was not reused. Each stage had a 180-second limit, the core stage took 157 seconds, and total runtime was 191 seconds.
- The axiom output for the shared lemmas and the family declarations was `[propext, Quot.sound]`; no `sorryAx` appears in the successful output.
- A separate arithmetic receipt reports all 860 row calculations and the `k = 0, 1, 2` controls passed. This public bundle includes the Lean source, raw successful output, Lean receipt, arithmetic certificate, and the separate arithmetic-verification receipt. Its small checker recomputes each listed representative path and its slope margin; it does not replace Lean's all-`k` proof.
- Attempts 04–07 remain recorded in the private research archive. In brief: an elaboration failure, a container setup failure, a recursion-depth failure whose rejected output contained `sorryAx`, and a passing CRLF-era run that failed byte binding against the normalized Git source. Attempt 08 is the fresh LF-source replay. The failed outputs are not used as proof evidence and have not been rewritten.

## Check the included arithmetic and evidence bindings

From the repository root:

```sh
python reproduction/collatz-m31-lift-v1/scripts/verify_m31_lift.py
python -m unittest discover -s reproduction/collatz-m31-lift-v1/tests -v
```

The first command checks the committed evidence hashes, receipt bindings, axiom output, and every row's Collatz arithmetic. The tests include a deliberately altered-endpoint control, which must be rejected. Neither command runs Lean.

## Rebuild the Lean result

The recorded replay used the local image `mathcase/lean-snapshot:8f587bf452930d3f-20261028T133835.253176900Z` with one CPU, 2 GiB memory, and networking disabled. The image's public registry availability has not been verified, so this is not yet a stranger-reproducible container replay. If you already have that exact image, run from this directory:

```sh
docker run --rm --network none --cpus 1 --memory 2g \
  --mount "type=bind,source=$PWD,target=/work" --workdir /work \
  mathcase/lean-snapshot:8f587bf452930d3f-20261028T133835.253176900Z \
  sh /work/scripts/replay_families.sh /work
```

The image used for the recorded run had ID `sha256:85fd103e179ef59ee41e8b0b8ac4216ca5034d423bf2fff127254c410ec119cd`. The exact Lean version was 4.33.1, commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`. The recorded receipt binds the source and output hashes. A clean rebuild from a publicly obtainable image or documented image build remains open.

## Files

- `CollatzLift.lean` — the proved power-of-two lift and strict-descent lemmas.
- `LiftedFamilies.lean` — the exact arithmetic facts and all-`k` declarations for the 860 rows.
- `family-certificate.json` — the 860 row values and arithmetic summary.
- `evidence/lean-replay/` — attempt-08 receipt and successful raw Lean output.
- `evidence/independent-verification-v3.json` — separate arithmetic and hash-binding receipt. It contains hashes for upstream selection inputs that are not part of this public bundle.
- `scripts/verify_m31_lift.py` — small standard-library arithmetic and evidence verifier.
- `scripts/replay_families.sh` — bounded source compilation script used inside the recorded container.
