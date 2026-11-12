# MathCase research-system roadmap

MathCase already has useful parts: a read-only case desk, provider and search routes, bounded local computation, Lean checking, saved receipts, and a few reuse experiments. The missing piece is a dependable research loop that can select a well-defined target, generate and challenge ideas, execute bounded experiments, turn a promising pattern into a proof obligation, check it, preserve every failure, and produce a reviewable dossier.

## Build order

### 1. Make evidence a first-class object

- Give every run an immutable case ID, statement digest, source-policy version, toolchain image, resource budget, and input/output hashes.
- Keep proposed, computed, Lean-checked, independently replayed, human-reviewed, and novel as separate statuses.
- Make a failed attempt append-only and ensure later retries reference it rather than replacing it.
- Add one offline verifier per artifact family. A release verifier should check hashes and schemas without implicitly claiming mathematical correctness.

### 2. Add a bounded research controller

- Model a problem as a queue of typed obligations: exact statement, known reductions, examples, candidate lemmas, proof targets, and review tasks.
- Run a small fixed set of roles: proposer, adversarial checker, experiment designer, formalization worker, and evidence auditor. Keep one writer for each checkout.
- Put explicit wall-clock, CPU, memory, disk, and provider-spend ceilings on every run. Add pause/resume checkpoints and a kill-safe state record.
- Require a stop condition: theorem checked, counterexample found, budget exhausted, or human decision required. No open-ended search loop.

### 3. Turn computation into theorem discovery responsibly

- Require candidate generators to emit a conjecture plus its finite domain, assumptions, counterexample search, and proposed proof route.
- Hold back reproducible validation inputs. Separate discovery data from the fixed evaluation set.
- For residue work, compare exact formulas and class coverage, then ask Lean to verify the general parameterized statement. Keep sample success separate from universal proof.
- For Collatz, pursue the M31 unresolved structure only under a preregistered hypothesis budget; report both positive and failed hypotheses.

### 4. Build a proof and knowledge graph

- Store lemmas with exact Lean statement, dependencies, assumptions, axiom report, source digest, and accepted use scope.
- Search this graph before starting duplicate work. Transfer a lemma only when its type and hypotheses unify exactly.
- Measure transfer against a same-budget no-example baseline. A reused formula is not evidence that a model learned a method.
- Provide explicit provenance for every copied proof fragment, generated lemma, and source text.

### 5. Add problem-family lanes beyond Collatz

- Egyptian–Straus: extend disjoint ranges only when the independent identity checker and candidate-definition audit agree; prioritize theorem families over larger finite totals.
- Elementary number theory: state a precise theorem, search known Mathlib lemmas first, and use small Lean calibration targets before a new dossier.
- Other open problems: maintain a queue with source citations, exact conjecture version, known partial results, counterexample checks, and a measurable next experiment. Do not label a target open until a literature review supports it.
- External proof reports: record publisher, paper version, authorship, and independent formalization status. Keep them clearly separate from MathCase-generated results.

### 6. Turn checked mathematics into credible public work

- Publish source, exact inputs, build instructions, known failure receipts, and the verifier for each result.
- Use a fresh public checkout and pinned offline toolchain for release acceptance. Report source hash, theorem hash, axioms, resources, and exact command.
- Request independent statement and proof review before describing a result as novel, solving an open problem, or suitable for a research letter.
- Keep the private archive and public source edition separate where receipts contain machine paths or uncleared provenance.

## First execution sequence

1. Review and merge the current Math Results showcase branch after inspecting its exact diff.
2. Create a small, pinned Lean project for the released M15–M20 sources and replay the individual shards only, with the existing one-CPU and memory ceilings.
3. Publish a public replay receipt for the successful shards; keep the M20 aggregate failure explicit.
4. Finish the fixed Collatz structure sample report, including negative outcomes and the three-hypothesis cap.
5. Run one preregistered transfer comparison with a held-out theorem and equal token/time budgets.
6. Choose one additional number-theory target only after a concise prior-literature and exact-statement dossier exists.

## Current operating limits

This roadmap is a design document, not a claim that these features exist. The current release adds no provider/search calls, spends $0, and does not restart paused automation. The square-root-of-2 child remains M0 unassessed and storage/computation only. The M7 pilot remains on hold. A human remains responsible for statement fidelity, source scope, novelty, and any public research claim.
