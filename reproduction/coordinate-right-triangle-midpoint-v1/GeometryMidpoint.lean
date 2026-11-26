import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

def sqDist (p q : ℝ × ℝ) : ℝ :=
  (p.1 - q.1) ^ 2 + (p.2 - q.2) ^ 2

theorem right_triangle_hypotenuse_midpoint_equidistant
    (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    sqDist (a / 2, b / 2) (0, 0) = sqDist (a / 2, b / 2) (a, 0) ∧
    sqDist (a / 2, b / 2) (a, 0) = sqDist (a / 2, b / 2) (0, b) := by
  constructor <;> simp [sqDist] <;> ring
