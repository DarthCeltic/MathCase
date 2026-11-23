import itertools
import unittest

import vdw


class ColoringTests(unittest.TestCase):
    def test_known_witnesses_and_controls(self):
        for name, n, aps, corrupted in (("2-7", 3703, 1140833, 22), ("5-3", 170, 7140, 6)):
            record = vdw.baseline(name)
            self.assertEqual(record["implied_lower_bound_inclusive"], n + 1)
            for check in record["baseline_checks"].values():
                self.assertEqual((check["progressions_examined"], check["monochromatic"]), (aps, 0))
            for check in record["negative_control"]["checks"].values():
                self.assertEqual(check["monochromatic"], corrupted)

    def test_last_possible_progression(self):
        points = (0, 1, 0, 1, 0)
        for check in (vdw.enumerate_check(points, 3), vdw.bitset_check(points, 3, 2)):
            self.assertEqual(check["monochromatic"], 1)
            self.assertEqual(check["first"], {"a": 1, "d": 2, "color": 0})
        with self.assertRaises(ValueError):
            vdw.validate_shape([0, 2], vdw.Case(2, 3, 2))
        with self.assertRaises(ValueError):
            vdw.validate_shape([0], vdw.Case(2, 3, 2))

    def test_repair_agrees_with_brute_force_including_nontrivial_repairs(self):
        valid = [s for s in itertools.product(range(2), repeat=6)
                 if not vdw.enumerate_check(s, 3)["monochromatic"]]
        recovered = False
        for old, side, end_color, radius in itertools.product(valid, ["left", "right"], range(2), [0, 1, 2]):
            expected = False
            for candidate in itertools.product(range(2), repeat=6):
                if sum(a != b for a, b in zip(old, candidate)) > radius:
                    continue
                trial = (end_color,) + candidate if side == "left" else candidate + (end_color,)
                if not vdw.enumerate_check(trial, 3)["monochromatic"]:
                    expected = True
                    break
            report = vdw.repair(old, vdw.Case(2, 3, len(old)), side, end_color, radius, 500)
            self.assertEqual(report["status"] == "EXTENSION_FOUND", expected)
            fixed_word = (end_color,) + old if side == "left" else old + (end_color,)
            if expected and vdw.enumerate_check(fixed_word, 3)["monochromatic"]:
                recovered = True
        self.assertTrue(recovered)

    def test_search_limit_has_distinct_status(self):
        case = vdw.CASES["5-3"]
        report = vdw.repair(vdw.witness("5-3"), case, "right", 0, 3, 1)
        self.assertEqual(report["status"], "NODE_LIMIT_REACHED")


if __name__ == "__main__":
    unittest.main()
