# M20 family composition v1

**Recorded result: PASS_COMPOSED_AGGREGATE_CANDIDATE.** The finite target contains 2,652 listed families. A bounded run compiled 133 intermediate modules and the final theorem; all 134 outputs report exit code zero. It used one CPU, disabled network, stayed under 2 GiB, and was not OOM-killed.

Ryan's M0 decision is YES for statement fidelity only. Packet SHA-256: 06c8da8e9da0605d4dbeb8b554337c5b530ebdf47dc9dadd6af9e6c74268cf1a. No M4 or downstream gate changed.

The original target source hash is 4b480752687cc2fea5554f20e4198d990e4c30ebe50a01b5813eb517dde469bf. The final composition source hash is 8e8fb280df93829c988a360b01276def73e7e5cbd8c9ce8eca70987d5733d3e5; theorem CollatzM20CompositionV1.all_scanned_m20_families_descend_composed_v1; target type hash d2292e71742f24e692c1336693e8323898a693b8c4a8f1972adb2223b2d8b27e. The final OLEAN hash is 0f7e39e10f452f85ecfff8c7314efaf3d0bb64d7af498e3829eafc31198dee40. The included outputs/final-stdout.txt is the exact hash-bound axiom report; its SHA-256 is f994f79628c292788d0bd64e95192c60257f3fc8d13cf9e53a32df0575b04fbc. The accepted theorem's reported axioms are propext and Quot.sound; sorryAx was not reported.

Only the exact 2,652 listed finite affine statements are covered: for each listed residue r and coefficient q, and each natural k, the source-defined map sends 1,048,576*k+r after 32 steps to 531,441*k+q with a strict decrease. This proves no global Collatz convergence, complete residue coverage, or novelty.

This run reused cached M20 shard OLEANs. It did not replay the 229 shards. Cached source and OLEAN hashes matched earlier receipts. The image was sha256:ec3377f34aaf0b83502e6755d5403ca36382adb99e4c7ab1470d42a1ac5abdc7; public pullability and exact rebuild inputs are not established. This is not clean-room reproduction or an M4 receipt.

Three failed composition attempts, including the 200000-heartbeat timeout, and the separate earlier 2 GiB operator stop are in attempt-history.md. The derived public manifest references private raw run-manifest SHA-256 a11a1aaa113234527eeba65721a50e333cb68c17c826f6cbf56cd484aae434c6 but binds only exported files. Local OLEAN binaries and workstation paths are not included.

To check the exported archive's internal file, source, receipt, and composition bindings without Lean, run from the package root: `python -B tools/verify_m20_composition_bundle.py`. A pass means the archived bindings agree with one another; it does not replay Lean, validate OLEAN bytes that are not present, or turn the recorded candidate into a fresh-checkout proof replay.
