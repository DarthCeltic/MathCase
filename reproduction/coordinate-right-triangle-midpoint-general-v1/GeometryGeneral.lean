import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

noncomputable section

def mcSquaredDistance (P Q : ℝ × ℝ) : ℝ :=
  (P.1 - Q.1) ^ 2 + (P.2 - Q.2) ^ 2

def mcMidpoint (B C : ℝ × ℝ) : ℝ × ℝ :=
  ((B.1 + C.1) / 2, (B.2 + C.2) / 2)

theorem midpoint_perpendicular_equidistant
    (A B C : ℝ × ℝ)
    (hperp : (B.1 - A.1) * (C.1 - A.1) +
             (B.2 - A.2) * (C.2 - A.2) = 0) :
    mcSquaredDistance (mcMidpoint B C) A =
      mcSquaredDistance (mcMidpoint B C) B ∧
    mcSquaredDistance (mcMidpoint B C) B =
      mcSquaredDistance (mcMidpoint B C) C := by
  constructor
  · have hsum :
        mcSquaredDistance (mcMidpoint B C) A =
          mcSquaredDistance (mcMidpoint B C) B +
            ((B.1 - A.1) * (C.1 - A.1) +
             (B.2 - A.2) * (C.2 - A.2)) := by
      dsimp [mcSquaredDistance, mcMidpoint]
      ring
    rw [hperp] at hsum
    simpa using hsum
  · dsimp [mcSquaredDistance, mcMidpoint]
    ring
