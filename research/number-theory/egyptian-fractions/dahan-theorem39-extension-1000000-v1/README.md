# Dahan Theorem 3.9 finite replay — 1,000,000 primes

**Plain result:** an exact integer-arithmetic replay of Dahan's Theorem 3.9
succeeded on the first **1,000,000** eligible primes with `n ≡ 1 (mod 24)`.
Every generated row passed a separately run divisor, congruence,
reconstruction, and Egyptian-fraction identity audit.

This is a finite replay of a published criterion. It is not an asymptotic
bound, a proof of the Erdős–Straus conjecture, or a novelty or priority claim.

## Receipt

- eligible rows: `1,000,000 / 1,000,000`
- failures: `0`
- first `n`: `73`
- last `n`: `141,724,897`
- coprime pair bound: `u,a <= 40`
- maximum minimal depth: `14`
- mean minimal depth: `1.487999`
- depth distribution: `557,697` at depth 1; `402,235` at depth 2;
  `35,736` at depth 3; `3,162` at depth 4; `1,089` at depth 5;
  `56` at depth 6; `18` at depth 7; `4` at depth 8; `1` at depth 9;
  `2` at depth 14
- elapsed time: `489.853 s` generation; `232.876 s` independent audit
- generated-result digest: `a710dda9ae1f5ee6885c0aacdf936056990afca8eec9dcde814ecdc16489c0c3`
- compact receipt digest: `ca484fbbd44d597fb45e24f6703cab3b3309ce475f53bcdc3c18bcc562c4badb`
- external calls and spend: `0` and `$0`

The 134 MB generated row file is not duplicated in Git. The compact receipt
binds its SHA-256, counts, depth distribution, source commit, and independent
audit result. The original generated file and logs remain in the private run
folder for restoration if a reviewer needs the full rows.

## Reproduce

From a MathCase checkout:

```powershell
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-1000000-v1/check_theorem39_extended.py --count 1000000 --pair-bound 40 --output full-result.json
python -B research/number-theory/egyptian-fractions/dahan-theorem39-extension-1000000-v1/audit_extended.py full-result.json
```

The first command should report `1000000` successes and `0` failures. The
second command independently rechecks every generated row and should report
`status: PASS`. The source, compact receipt, and audit summary hashes are
listed in `SHA256SUMS`.
