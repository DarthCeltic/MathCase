# Check a proposed 208-number coloring

Use this small offline checker to test your own proposed five-color assignment of the numbers 1 through 208. It checks every pair of distinct addends `a < b` with `a + b <= 208`; a violation is a same-color triple `a, b, a+b`.

## Try it

Python 3.10+ is enough; there are no third-party packages or network calls.

Save a JSON file with 208 integers from 1 through 5, in number order. For example, the file may be a bare JSON array, or an object with one `colors_1_to_208` array. Then run:

```sh
python -B verify_candidate.py my-coloring.json
```

The checker examines all 10,712 distinct-addend triples and prints every conflict. Exit status `0` means this supplied assignment passed this finite check; status `1` means conflicts were found; status `2` means the input was malformed. A pass would exhibit a witness for the lower bound WS(5) ≥ 208. A conflict rules out that particular assignment.

## Check the recorded search result

A 60-second local search tried 18,522 moves starting from a coloring with one forbidden sum. Its best assignment still colors 4, 8 and 12 alike. The recorded first run and an accidental repeat used the same seed. Only the first counts here. [Run record](adaptive-run.json)

From this directory, run the checker on the [saved coloring](../../research/frontier-2026-11/weak-schur-5/repair-radius-three-v1/candidate.json). The checker reads the colors and recomputes every sum, ignoring any verdict already in the file.

```sh
python -B verify_candidate.py ../../research/frontier-2026-11/weak-schur-5/repair-radius-three-v1/candidate.json
```

It returns exit code 1 and a single conflict in color 3.

## Test the checker

```sh
python -B -m unittest -v
```

Tests cover the complete triple count, the rule that addends must be distinct, a deliberate `1+2=3` conflict, and malformed candidate inputs. The suite does not claim a valid 208-coloring is known.
