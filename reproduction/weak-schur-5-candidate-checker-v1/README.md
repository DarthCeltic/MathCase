# Check a proposed 208-number coloring

Use this small offline checker to test your own proposed five-color assignment of the numbers 1 through 208. It checks every pair of distinct addends `a < b` with `a + b <= 208`; a violation is a same-color triple `a, b, a+b`.

## Try it

Python 3.10+ is enough; there are no third-party packages or network calls.

Save a JSON file with 208 integers from 1 through 5, in number order. For example, the file may be a bare JSON array, or an object with one `colors_1_to_208` array. Then run:

```sh
python -B verify_candidate.py my-coloring.json
```

The checker examines all 10,712 distinct-addend triples and prints every conflict. Exit status `0` means this supplied assignment passed this finite check; status `1` means conflicts were found; status `2` means the input was malformed. A pass would validate only those 208 entries, not a general theorem or any wider mathematical bound. A passing assignment would be a candidate for independent review.

## Test the checker

```sh
python -B -m unittest -v
```

Tests cover the complete triple count, the rule that addends must be distinct, a deliberate `1+2=3` conflict, and malformed candidate inputs. The suite does not claim a valid 208-coloring is known.
