-- Local composition test: checked M29 and M31 families yield a new affine
-- descent family. This is finite-family evidence, not a global Collatz proof.
import Mathlib.Data.Nat.Prime.Basic
import M29Residue167
import M31Residue223

namespace MathCase.CollatzAffineTrace.m29M31Transfer

open MathCase.CollatzAffineTrace

theorem iterate_add (n a b : Nat) :
    iterate n (a + b) = iterate (iterate n a) b := by
  induction a generalizing n with
  | zero => simp [iterate]
  | succ a ih =>
      rw [Nat.succ_add, iterate_succ, iterate_succ]
      exact ih (collatzStep n)

theorem transferredDescent (j : Nat) :
    iterate (1152921504606846976 * j + 910336561797660839) 97 =
        450283905890997363 * j + 355540165643292179 ∧
      450283905890997363 * j + 355540165643292179 <
        1152921504606846976 * j + 910336561797660839 := by
  let k : Nat := 2147483648 * j + 1695633981
  let t : Nat := 387420489 * j + 305903771
  have hStartCoeff :
      1152921504606846976 = 536870912 * 2147483648 := by decide
  have hStartConst :
      910336561797660839 = 536870912 * 1695633981 + 167 := by decide
  have hStart :
      1152921504606846976 * j + 910336561797660839 = 536870912 * k + 167 := by
    dsimp [k]
    simp only [Nat.mul_add, ← Nat.mul_assoc, Nat.add_assoc, hStartCoeff, hStartConst]
  have hBridgeCoeff :
      387420489 * 2147483648 = 2147483648 * 387420489 := Nat.mul_comm _ _
  have hBridgeConst :
      387420489 * 1695633981 + 122 = 2147483648 * 305903771 + 223 := by decide
  have hBridge :
      387420489 * k + 122 = 2147483648 * t + 223 := by
    dsimp [k, t]
    simp only [Nat.mul_add, ← Nat.mul_assoc, Nat.add_assoc, hBridgeCoeff, hBridgeConst]
  have hEndpointCoeff :
      1162261467 * 387420489 = 450283905890997363 := by decide
  have hEndpointConst :
      1162261467 * 305903771 + 122 = 355540165643292179 := by decide
  have hEndpoint :
      1162261467 * t + 122 = 450283905890997363 * j + 355540165643292179 := by
    dsimp [t]
    simp only [Nat.mul_add, ← Nat.mul_assoc, Nat.add_assoc, hEndpointCoeff, hEndpointConst]
  have hM29 := MathCase.CollatzAffineTrace.m29Residue167.universalDescent k
  have hM31 := MathCase.CollatzAffineTrace.m31Residue223.universalDescent t
  rcases hM29 with ⟨hM29eq, hM29lt⟩
  rcases hM31 with ⟨hM31eq, hM31lt⟩
  constructor
  · change
      iterate (1152921504606846976 * j + 910336561797660839) (47 + 50) = _
    calc
      iterate (1152921504606846976 * j + 910336561797660839) (47 + 50) =
          iterate (iterate (1152921504606846976 * j + 910336561797660839) 47) 50 :=
        iterate_add _ _ _
      _ = iterate (387420489 * k + 122) 50 := by rw [hStart, hM29eq]
      _ = iterate (2147483648 * t + 223) 50 := by rw [hBridge]
      _ = 1162261467 * t + 122 := hM31eq
      _ = 450283905890997363 * j + 355540165643292179 := hEndpoint
  · calc
      450283905890997363 * j + 355540165643292179 = 1162261467 * t + 122 :=
        hEndpoint.symm
      _ < 2147483648 * t + 223 := hM31lt
      _ = 387420489 * k + 122 := hBridge.symm
      _ < 536870912 * k + 167 := hM29lt
      _ = 1152921504606846976 * j + 910336561797660839 := hStart.symm

end MathCase.CollatzAffineTrace.m29M31Transfer

#print axioms MathCase.CollatzAffineTrace.m29M31Transfer.transferredDescent
