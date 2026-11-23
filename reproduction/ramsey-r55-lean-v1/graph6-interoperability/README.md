# A checked 42-vertex Ramsey construction

## In plain language

A known 42-vertex two-coloring of the complete graph has no monochromatic clique on five vertices. In Ramsey-number language, this gives the established lower bound `R(5,5) ≥ 43`.

The pinned formal target at FormalConjectures snapshot `b576d527b271b936f9e61c0e367c302d7386bc80` is:

```lean
∃ G : SimpleGraph (Fin 42), G.CliqueFree 5 ∧ (Gᶜ).CliqueFree 5
```

The English statement used on the site is: “There is a simple graph on 42 vertices with no clique of size five and no independent set of size five.” The graph and its complement represent the two colors. Ryan reviewed this statement (M0 YES, packet SHA-256 `3866a0a6be46bd580c52b0677b1bc9c096ce75038d3941bb77ec795dc77f50cb`). The exact target is `∃ G : SimpleGraph (Fin 42), G.CliqueFree 5 ∧ (Gᶜ).CliqueFree 5`.

The interoperable [graph6 witness](exoo42.g6) has SHA-256 `a7db2ac21e14b3652629d0cfc1c47bf7b65f355e1f2fcf9048a075622c5ba75a`. Its 435 edges agree with all 42 neighbor masks in the Lean source. A standard decoder and exhaustive check of 850,668 five-vertex subsets yield zero cliques of size five in either color.

Run `python check_exoo42_graph6.py` for the standard-library Python check. Pass `--lean-source path/to/FoundationV4.lean` to compare all adjacency masks. The browser verifier uses the same [published graph6 ordering](https://users.cecs.anu.edu.au/~bdm/data/formats.txt). Neither finite checker runs Lean.

The separate graph6 browser check verifies this known finite construction. The Lean formalization is now published at [the MathCase R(5,5) source and receipt bundle](https://github.com/DarthCeltic/MathCase/tree/main/reproduction/ramsey-r55-lean-v1): 27 chunk receipts and a final composition receipt, with axioms `[propext, Classical.choice, Quot.sound]`. The original run used a warm local cache; fresh-checkout replay, independent review, and M4 acceptance remain open.

## Files and literature

The original generation and verification script, `check_exoo42.py`, used a row-major upper-triangle encoding for both its writer and its decoder. Its original bytes, hashes and receipt are retained for historical reproduction in `exoo42-derived.graph6` and `exoo42-verification-receipt.json`. Reading those historical bytes with a standard graph6 decoder produces a different graph; its vertices 0, 2, 6, 15 and 19 form a clique. Use `exoo42.g6` for interchange. The corrected standard file decodes to the original Lean adjacency rows. A different supplied certificate had an unrelated 41-versus-42 vertex-count error; that failure is retained in `graph6-order-mismatch-receipt.json`. [Format correction record](graph6-correction.json).

Prior-work check: the cited paper [Study of Exoo's Lower Bound for Ramsey number R(5,5)](https://arxiv.org/abs/2212.12630) describes and studies this known lower-bound construction. This is enough to reject a novelty claim for the construction reproduced here; no broad literature search is claimed. The FormalConjectures target is pinned to snapshot `b576d527b271b936f9e61c0e367c302d7386bc80`; see its exact [pinned source file](https://github.com/google-deepmind/formal-conjectures/blob/b576d527b271b936f9e61c0e367c302d7386bc80/FormalConjectures/Wikipedia/RamseyNumbers.lean).
