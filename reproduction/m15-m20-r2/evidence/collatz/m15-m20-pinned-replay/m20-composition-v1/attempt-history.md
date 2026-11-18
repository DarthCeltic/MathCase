# M20 composition history

The three failed composition attempts and earlier resource stop remain preserved. The later chunked composition is separate and does not erase them.

## Failed attempts

| Attempt | Result | Source SHA-256 | Result record SHA-256 |
|---|---|---|---|
| m20-aggregate-composition-r1-20261113 | Lean rejected the product-pair construction: a proof has sort Prop, while the attempted pair constructor expected Type. | 031cf01e2e650bae13b87e195f00c03a2978683d4afe1beffd3e16e6b536c9f2 | 1458cd3c4b2cc277a406b25c420f941b486ee4288b89d0d8c2183b46589ed912 |
| m20-aggregate-composition-r2-20261113 | The final exact tactic was nested under the last let binding; Lean reported function-expected and unsolved-goal errors. | 950c6a2eac4d08657025596ee9de59aae890bd3f2cdffbe7f7acaae5bf930e98 | d8fee8bbab29f4f7de2aca2d7124984aa3ab73517bc86c5fd3573c1bc26aba98 |
| m20-aggregate-composition-r3-20261113 | Lean reached the fixed 200000-heartbeat limit during definitional equality; no theorem was accepted. | a65f766b73d4e6341d5831b6f93ca434bc376c316c7f8f3bea36fcac89f2de7a | ad2366e6dd6fec9c02a76a520c00dd1570801a8cf83f57b4939ab6961646ff1e |

Attempt r3 reached Lean's fixed 200000 heartbeat ceiling during definitional equality. Its preserved output includes Lean's note about set_option maxHeartbeats. Lean did not accept the theorem; sorryAx text printed after failed elaboration is not proof evidence.

## Earlier 2 GiB stop

An earlier all-at-once attempt was operator-stopped at the fixed 2 GiB cap after 132 shards. It exited 137; Docker did not report an OOM kill. Its stop receipt is included byte-for-byte. The raw Docker command is represented by hashes because it contains local workstation mounts.

## Later chunked composition

Composition v1 compiled 133 intermediates plus the final theorem, with 134 exits zero, using cached M20 shard OLEANs whose source and OLEAN hashes matched the earlier replay. It did not replay the 229 shards. No M4 gate changed.

The exported source, output, exit-code, and result files are byte-preserved and hash-bound. Original start/preflight bytes remain owner-local; their hashes are in attempt-history.json.
