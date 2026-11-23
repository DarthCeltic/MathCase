# Rebuild the prime lemma and its square-root-of-two child

This replay compiles the two public Lean sources for the October 28 MathCase parent/child case. The first file proves that a prime dividing a square divides its base. The second imports that newly compiled lemma, uses it at the prime two in the infinite-descent proof, and establishes the irrationality of the real square root of two.

## Run from the public MathCase checkout

Install Python 3, Git, and Lean/Lake 4.33.1. With elan installed, the pinned toolchain can be installed with `elan toolchain install leanprover/lean4:v4.33.1`. From the repository root, invoke this script at its published location. Supply a persistent directory for the official Mathlib source and dependency cache. The first run needs network access and disk space for those dependencies.

```sh
python PATH/verify_prime_sqrt2.py --bootstrap ../mathcase-mathlib-4.33.1 --output prime-sqrt2-replay.json
```

Replace `PATH` with the script directory. For later local runs, use the same directory without a network fetch:

```sh
python PATH/verify_prime_sqrt2.py --mathlib ../mathcase-mathlib-4.33.1 --output prime-sqrt2-replay.json
```

The runner verifies the Mathlib revision `0df444a360eaa60ab8c11dca51a86af692955474`, locked dependency revisions, and the historical SHA-256 of both source files. It puts only the parent and child sources in a temporary directory. It builds a new parent module, then a new child module; the source checkout's historical compiled examples never enter the search path.

A separate file constrains the imported declarations to the expected formal types and prints their axiom dependencies. A negative control drops the primality requirement and must be rejected. The JSON records source and output hashes, compiler version, dependency revisions, timings and observed axioms. Output object hashes can differ from historical files across platforms. This is a public mathematical-source replay of a known theorem. The October campaign's qualification receipts and any human review of the explanation are separate.


This command does not record a new M0 review, grant proof-use rights, create a standard M4 receipt, or promote a dossier gate. It is a source replay of a known theorem.
