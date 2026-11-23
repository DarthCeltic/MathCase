import Lean

namespace ErdosStraus28kPlus21CandidateV1

def nOf (k : Nat) : Nat := 28 * k + 21
def firstDen (k : Nat) : Nat := 7 * k + 7
def tailScale (k : Nat) : Nat := nOf k * (k + 1)

theorem four_first_den_relation (k : Nat) :
    4 * firstDen k = nOf k + 7 := by
  dsimp [firstDen, nOf]
  omega

theorem seven_tail_relation (k : Nat) :
    7 * tailScale k = nOf k * firstDen k := by
  have hq : 7 * (k + 1) = firstDen k := by
    dsimp [firstDen]
    simp [Nat.mul_add]
  dsimp [tailScale]
  calc
    7 * (nOf k * (k + 1)) = (7 * nOf k) * (k + 1) := by
      rw [Nat.mul_assoc]
    _ = (nOf k * 7) * (k + 1) := by
      rw [Nat.mul_comm 7 (nOf k)]
    _ = nOf k * (7 * (k + 1)) := Nat.mul_assoc _ _ _
    _ = nOf k * firstDen k := by rw [hq]

theorem common_denominator_from_relations (n Q t : Nat)
    (h4 : 4 * Q = n + 7) (h7 : 7 * t = n * Q) :
    4 * Q * t * (t + 1) =
      n * (t * (t + 1) + Q * t + Q) := by
  have hbase : 4 * Q * t = n * (t + Q) := by
    calc
      4 * Q * t = (n + 7) * t := by rw [h4]
      _ = n * t + 7 * t := Nat.add_mul _ _ _
      _ = n * t + n * Q := by rw [h7]
      _ = n * (t + Q) := by rw [Nat.mul_add]
  have hscaled := congrArg (fun x : Nat => x * (t + 1)) hbase
  have hinner : (t + Q) * (t + 1) =
      t * (t + 1) + Q * t + Q := by
    calc
      (t + Q) * (t + 1) = t * (t + 1) + Q * (t + 1) :=
        Nat.add_mul _ _ _
      _ = t * (t + 1) + (Q * t + Q) := by
        simp [Nat.mul_add, Nat.mul_one]
      _ = t * (t + 1) + Q * t + Q := by rw [Nat.add_assoc]
  calc
    4 * Q * t * (t + 1) = (n * (t + Q)) * (t + 1) := hscaled
    _ = n * ((t + Q) * (t + 1)) := by rw [Nat.mul_assoc]
    _ = n * (t * (t + 1) + Q * t + Q) := by rw [hinner]

theorem common_denominator_identity (k : Nat) :
    4 * firstDen k * tailScale k * (tailScale k + 1) =
      nOf k *
        (tailScale k * (tailScale k + 1) +
          firstDen k * tailScale k + firstDen k) := by
  exact common_denominator_from_relations
    (nOf k) (firstDen k) (tailScale k)
    (four_first_den_relation k) (seven_tail_relation k)

theorem first_denominator_positive (k : Nat) : 0 < firstDen k := by
  dsimp [firstDen]
  omega

theorem first_lt_second (k : Nat) :
    firstDen k < tailScale k + 1 := by
  have hn : 7 < nOf k := by
    dsimp [nOf]
    omega
  have hk : 0 < k + 1 := Nat.zero_lt_succ k
  have hmul : 7 * (k + 1) < nOf k * (k + 1) :=
    (Nat.mul_lt_mul_right hk).2 hn
  have hfirst : firstDen k < tailScale k := by
    simpa [firstDen, tailScale, Nat.mul_add, Nat.mul_one] using hmul
  exact Nat.lt_trans hfirst (Nat.lt_succ_self (tailScale k))

theorem second_lt_third (k : Nat) :
    tailScale k + 1 < tailScale k * (tailScale k + 1) := by
  have hq : 1 < firstDen k := by
    dsimp [firstDen]
    omega
  have hfirst : firstDen k < tailScale k := by
    have hn : 7 < nOf k := by
      dsimp [nOf]
      omega
    have hk : 0 < k + 1 := Nat.zero_lt_succ k
    have hmul : 7 * (k + 1) < nOf k * (k + 1) :=
      (Nat.mul_lt_mul_right hk).2 hn
    simpa [firstDen, tailScale, Nat.mul_add, Nat.mul_one] using hmul
  have ht : 1 < tailScale k := Nat.lt_trans hq hfirst
  have htp : 0 < tailScale k + 1 := Nat.zero_lt_succ (tailScale k)
  have hmul :
      1 * (tailScale k + 1) <
        tailScale k * (tailScale k + 1) :=
    (Nat.mul_lt_mul_right htp).2 ht
  simpa [Nat.one_mul] using hmul

theorem reviewed_target (k : Nat) :
    4 * firstDen k * tailScale k * (tailScale k + 1) =
        nOf k *
          (tailScale k * (tailScale k + 1) +
            firstDen k * tailScale k + firstDen k)
      ∧ 0 < firstDen k
      ∧ firstDen k < tailScale k + 1
      ∧ tailScale k + 1 < tailScale k * (tailScale k + 1) := by
  exact ⟨common_denominator_identity k,
    first_denominator_positive k,
    first_lt_second k,
    second_lt_third k⟩

end ErdosStraus28kPlus21CandidateV1

#print axioms ErdosStraus28kPlus21CandidateV1.reviewed_target