# Does the saved Collatz case help a model write the proof?

Two fresh Codex agents each received one attempt to write a Lean predictor for an arbitrary affine family and prove its soundness. Both used the same configured model settings. Neither used tools, compiler feedback or test rows during generation. The control received the ordinary Collatz rule and iterator definitions. The second agent also received the interface to the saved MathCase affine-trace library and the coefficient updates used by its certificate generator.

| Check | Control | With saved context |
| --- | ---: | ---: |
| Public rows withheld by 16-step parity prefix | 681 / 681 | 681 / 681 |
| Prespecified residues outside the table | 4,096 / 4,096 | 4,096 / 4,096 |
| Boundary cases including mixed parity and zero steps | 96 / 96 | 96 / 96 |
| Lean proof of the exact soundness statement | Passed | Passed |

Both agents returned byte-identical predictor definitions and different soundness proofs. Both proofs use only `propext` and `Quot.sound`. This comparison found no advantage on the task. One pair, a historically public table and a perfect control score cannot estimate the average effect of MathCase on harder problems. The exact backend snapshot, token usage and Codex credit cost were unavailable. There were no third-party inference API calls.

## Replay

Install Python 3 and the pinned Lean 4.33.1 toolchain. Run `python replay_pilot.py` from this folder. Use `--lean` to select an explicit compiler or `--receipt result.json` to save the new scores. The runner compiles each original response in a fresh temporary directory, checks the exact proposition and executes its predictor on all 4,873 examples. Some inputs require the predictor to decline. The run needs no additional Lean packages.

There are 1,971 reference and 681 withheld published rows. Whole groups with the same initial 16-step ordinary parity pattern are assigned together. These held-back rows were historically public. The outside and boundary inputs are separate checks. The table and affine-trace library come from [the pinned public MathCase release](https://github.com/DarthCeltic/DarthCeltic.github.io/tree/558625c51c3a083826681222728ae0b296906da7/evidence/collatz). The four arm input files preserve the original predictor and proof text.
