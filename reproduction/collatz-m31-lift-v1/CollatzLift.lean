import Lean

def collatzStep (n : Nat) : Nat :=
  if n % 2 = 0 then n / 2 else 3 * n + 1

def collatzIter : Nat → Nat → Nat
  | n, 0 => n
  | n, d + 1 => collatzIter (collatzStep n) d

def collatzOddInputs : Nat → Nat → Nat
  | _, 0 => 0
  | n, d + 1 => (if n % 2 = 1 then 1 else 0) + collatzOddInputs (collatzStep n) d

theorem collatzStep_even {n : Nat} (h : n % 2 = 0) : collatzStep n = n / 2 := by
  simp [collatzStep, h]

theorem collatzStep_odd {n : Nat} (h : n % 2 = 1) : collatzStep n = 3 * n + 1 := by
  have hn : n % 2 ≠ 0 := by omega
  simp [collatzStep, hn]

theorem collatz_iterate_pow2_lift (n k d : Nat) :
    collatzIter (n + 2 ^ d * k) d = collatzIter n d + 6 ^ (collatzOddInputs n d) * k := by
  induction d generalizing n k with
  | zero => simp [collatzIter, collatzOddInputs]
  | succ d ih =>
      simp only [collatzIter, collatzOddInputs]
      have hpow : 2 ^ (d + 1) * k = 2 * (2 ^ d * k) := by
        calc
          2 ^ (d + 1) * k = (2 ^ d * 2) * k := by rw [Nat.pow_succ]
          _ = (2 * 2 ^ d) * k := by rw [Nat.mul_comm (2 ^ d) 2]
          _ = 2 * (2 ^ d * k) := by rw [Nat.mul_assoc]
      rcases Nat.mod_two_eq_zero_or_one n with he | ho
      · let q : Nat := n / 2
        let p : Nat := 2 ^ d * k
        have hn : n = 2 * q := by dsimp [q]; omega
        have hlift : n + 2 ^ (d + 1) * k = 2 * (q + p) := by
          calc
            n + 2 ^ (d + 1) * k = 2 * q + 2 * p := by rw [hn, hpow]
            _ = 2 * (q + p) := by rw [Nat.mul_add]
        have hmod : (n + 2 ^ (d + 1) * k) % 2 = 0 := by rw [hlift]; omega
        have hdiv : (2 * (q + p)) / 2 = q + p := by omega
        have hstep : collatzStep (n + 2 ^ (d + 1) * k) = collatzStep n + 2 ^ d * k := by
          rw [collatzStep_even hmod, collatzStep_even he, hlift, hdiv]
        rw [hstep]
        have hif : (if n % 2 = 1 then 1 else 0) = 0 := by simp [he]
        rw [hif, Nat.zero_add, collatzStep_even he]
        simpa [q, p] using ih q k
      · let q : Nat := n / 2
        let p : Nat := 2 ^ d * k
        have hn : n = 2 * q + 1 := by dsimp [q]; omega
        have hlift : n + 2 ^ (d + 1) * k = 2 * (q + p) + 1 := by
          calc
            n + 2 ^ (d + 1) * k = (2 * q + 1) + 2 * p := by rw [hn, hpow]
            _ = 2 * (q + p) + 1 := by rw [Nat.mul_add]; omega
        have hmod : (n + 2 ^ (d + 1) * k) % 2 = 1 := by rw [hlift]; omega
        have hstep : collatzStep (n + 2 ^ (d + 1) * k) = collatzStep n + 2 ^ d * (6 * k) := by
          rw [collatzStep_odd hmod, hlift, collatzStep_odd ho, hn]
          have h6 : 6 * p = 2 ^ d * (6 * k) := by
            dsimp [p]
            calc
              6 * (2 ^ d * k) = (6 * 2 ^ d) * k := by rw [← Nat.mul_assoc]
              _ = (2 ^ d * 6) * k := by rw [Nat.mul_comm 6 (2 ^ d)]
              _ = 2 ^ d * (6 * k) := by rw [Nat.mul_assoc]
          change 3 * (2 * (q + p) + 1) + 1 = (3 * (2 * q + 1) + 1) + 2 ^ d * (6 * k)
          simp only [Nat.mul_add]
          rw [← h6]
          omega
        rw [hstep]
        have hif : (if n % 2 = 1 then 1 else 0) = 1 := by simp [ho]
        rw [hif]
        have h := ih (collatzStep n) (6 * k)
        simpa [Nat.add_comm, Nat.pow_succ, Nat.mul_assoc, Nat.mul_left_comm, Nat.mul_comm] using h

theorem collatz_lifted_strict_descent (n d : Nat)
    (hdrop : collatzIter n d < n)
    (hslope : 6 ^ (collatzOddInputs n d) < 2 ^ d) :
    ∀ k : Nat, collatzIter (n + 2 ^ d * k) d < n + 2 ^ d * k := by
  intro k
  rw [collatz_iterate_pow2_lift]
  have hmult : 6 ^ (collatzOddInputs n d) * k ≤ 2 ^ d * k := Nat.mul_le_mul_right k (Nat.le_of_lt hslope)
  omega
#print axioms collatz_iterate_pow2_lift
#print axioms collatz_lifted_strict_descent
