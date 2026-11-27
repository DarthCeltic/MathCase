from __future__ import annotations

import math
import unittest

from joint_density import joint_density, validate_joint


def direct_site_enumeration(width: int, height: int) -> list[list[int]]:
    """Independent brute-force oracle over site assignments, not row stacks."""
    n = width * height
    table = [[0] * (n + 1) for _ in range(2 * n + 1)]
    for state in range(1 << n):
        up = state.bit_count()
        broken = 0
        for row in range(height):
            for col in range(width):
                i = row * width + col
                right = row * width + ((col + 1) % width)
                down = ((row + 1) % height) * width + col
                broken += ((state >> i) ^ (state >> right)) & 1
                broken += ((state >> i) ^ (state >> down)) & 1
        table[broken][up] += 1
    return table


class JointDensityTests(unittest.TestCase):
    def test_small_rectangle_matches_independent_site_enumeration(self) -> None:
        expected = direct_site_enumeration(3, 6)
        actual = joint_density(3, 6)
        self.assertEqual(actual, expected)
        self.assertTrue(all(validate_joint(actual, 3, 6).values()))

    def test_spin_flip_symmetry_and_binomial_marginal(self) -> None:
        table = joint_density(3, 4)
        n = 12
        self.assertTrue(all(validate_joint(table, 3, 4).values()))
        self.assertEqual([sum(table[b][u] for b in range(25)) for u in range(n + 1)],
                         [math.comb(n, u) for u in range(n + 1)])

    def test_damaged_count_table_is_rejected(self) -> None:
        table = joint_density(3, 4)
        damaged = [row[:] for row in table]
        damaged[4][5] += 1
        checks = validate_joint(damaged, 3, 4)
        self.assertFalse(all(checks.values()))


if __name__ == "__main__":
    unittest.main()
