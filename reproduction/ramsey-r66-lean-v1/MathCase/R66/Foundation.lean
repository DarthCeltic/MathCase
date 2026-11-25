import Mathlib.Combinatorics.SimpleGraph.Basic
import Mathlib.Combinatorics.SimpleGraph.Clique
import Mathlib.Data.Bool.Basic
import Mathlib.Data.Finset.Card
import Mathlib.Data.Finset.Fold
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Field.ZMod
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.FinCases

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace MathCase.RamseyR66V2

instance fact_prime_101 : Fact (Nat.Prime 101) := ⟨by decide⟩

abbrev Z101 := ZMod 101
def quadraticResidueMask : Nat := 1550432784880709368503235994226

def qrBit (z : Z101) : Bool :=
  Nat.testBit quadraticResidueMask z.val

theorem qrBit_neg (z : Z101) : qrBit (-z) = qrBit z := by
  decide +revert

def paleyGraph : SimpleGraph Z101 where
  Adj x y := x ≠ y ∧ qrBit (y - x) = true
  symm.symm x y h := by
    change x ≠ y ∧ qrBit (y - x) = true at h
    refine ⟨Ne.symm h.1, ?_⟩
    have hneg := qrBit_neg (y - x)
    simpa only [neg_sub] using hneg.trans h.2
  loopless.irrefl x h := by
    exact h.1 rfl

instance paleyGraph_decidableRel : DecidableRel paleyGraph.Adj := by
  intro x y
  change Decidable (x ≠ y ∧ qrBit (y - x) = true)
  infer_instance

def shift (c : Z101) : Z101 ≃ Z101 where
  toFun x := x + c
  invFun x := x - c
  left_inv := by intro x; simp
  right_inv := by intro x; simp

theorem shift_preserves_adj (c x y : Z101) :
    paleyGraph.Adj (shift c x) (shift c y) ↔ paleyGraph.Adj x y := by
  change (x + c ≠ y + c ∧ qrBit ((y + c) - (x + c)) = true) ↔
    (x ≠ y ∧ qrBit (y - x) = true)
  constructor
  · rintro ⟨hne, hsq⟩
    refine ⟨?_, ?_⟩
    · intro hxy
      apply hne
      simpa [hxy]
    · simpa using hsq
  · rintro ⟨hne, hsq⟩
    refine ⟨?_, ?_⟩
    · intro hxy
      apply hne
      exact add_right_cancel hxy
    · simpa using hsq

def foldBoolAnd (a b : Bool) : Bool := a && b

instance foldBoolAnd_commutative : Std.Commutative foldBoolAnd := ⟨by
  intro a b
  simp [foldBoolAnd, Bool.and_comm]
⟩

instance foldBoolAnd_associative : Std.Associative foldBoolAnd := ⟨by
  intro a b c
  cases a <;> cases b <;> cases c <;> rfl
⟩

theorem foldBoolAnd_eq_true_iff {α : Type*} [DecidableEq α]
    (s : Finset α) (f : α → Bool) :
    s.fold foldBoolAnd true f = true ↔ ∀ x ∈ s, f x = true := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    simp [Finset.fold_insert ha, foldBoolAnd, Bool.and_eq_true, ih]

def commonNeighborFinset {α : Type*} [Fintype α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj] (a b : α) : Finset α :=
  Finset.univ.filter (fun x => G.Adj a x ∧ G.Adj b x)

def noCliqueOnQuad {α : Type*} [Fintype α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj] (t : Finset α) : Bool :=
  decide (¬ G.IsClique (t : Set α))

def noK6AtEdge {α : Type*} [Fintype α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj] (a b : α) : Bool :=
  if G.Adj a b then
    (Finset.powersetCard 4 (commonNeighborFinset G a b)).fold foldBoolAnd true
      (noCliqueOnQuad G)
  else true

theorem commonNeighborFinset_map {α : Type*} [Fintype α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj] (e : α ≃ α)
    (hAdj : ∀ x y, G.Adj (e x) (e y) ↔ G.Adj x y) (a b : α) :
    (commonNeighborFinset G a b).map e.toEmbedding =
      commonNeighborFinset G (e a) (e b) := by
  classical
  ext z
  constructor
  · intro hz
    rcases Finset.mem_map.mp hz with ⟨x, hx, rfl⟩
    simp only [commonNeighborFinset, Finset.mem_filter, Finset.mem_univ, true_and] at hx ⊢
    exact ⟨(hAdj a x).mpr hx.1, (hAdj b x).mpr hx.2⟩
  · intro hz
    simp only [commonNeighborFinset, Finset.mem_filter, Finset.mem_univ, true_and] at hz
    apply Finset.mem_map.mpr
    refine ⟨e.symm z, ?_, e.apply_symm_apply z⟩
    simp only [commonNeighborFinset, Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · exact (hAdj a (e.symm z)).mp (by simpa using hz.1)
    · exact (hAdj b (e.symm z)).mp (by simpa using hz.2)

theorem map_eq_self_of_preserves_adj {α : Type*} [DecidableEq α]
    (G : SimpleGraph α) (e : α ≃ α)
    (hAdj : ∀ x y, G.Adj (e x) (e y) ↔ G.Adj x y) :
    G.map e.toEmbedding = G := by
  ext x y
  rw [SimpleGraph.map_adj]
  constructor
  · rintro ⟨x', y', hxy, rfl, rfl⟩
    exact (hAdj x' y').mpr hxy
  · intro hxy
    refine ⟨e.symm x, e.symm y, ?_, e.apply_symm_apply x, e.apply_symm_apply y⟩
    exact (hAdj (e.symm x) (e.symm y)).mp (by simpa using hxy)

theorem noCliqueOnQuad_map {α : Type*} [Fintype α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj] (e : α ≃ α)
    (hAdj : ∀ x y, G.Adj (e x) (e y) ↔ G.Adj x y) (t : Finset α) :
    noCliqueOnQuad G (t.map e.toEmbedding) = noCliqueOnQuad G t := by
  have hMap := map_eq_self_of_preserves_adj G e hAdj
  have hClique : G.IsClique (t.map e.toEmbedding) ↔ G.IsClique t := by
    have hIso : (G.map e.toEmbedding).IsClique (t.map e.toEmbedding) ↔ G.IsClique t := by
      rw [Finset.coe_map]
      exact SimpleGraph.isClique_map_image_iff
    constructor
    · intro h
      exact hIso.mp (hMap.symm ▸ h)
    · intro h
      exact hMap ▸ hIso.mpr h
  unfold noCliqueOnQuad
  exact Bool.decide_congr (not_congr hClique)

theorem noK6AtEdge_map {α : Type*} [Fintype α] [DecidableEq α]
    (G : SimpleGraph α) [DecidableRel G.Adj] (e : α ≃ α)
    (hAdj : ∀ x y, G.Adj (e x) (e y) ↔ G.Adj x y) (a b : α) :
    noK6AtEdge G (e a) (e b) = noK6AtEdge G a b := by
  by_cases hab : G.Adj a b
  · have heab : G.Adj (e a) (e b) := (hAdj a b).mpr hab
    simp only [noK6AtEdge, if_pos hab, if_pos heab]
    rw [← commonNeighborFinset_map G e hAdj a b]
    rw [Finset.powersetCard_map]
    rw [Finset.fold_map]
    apply Finset.fold_congr
    intro t ht
    exact noCliqueOnQuad_map G e hAdj t
  · have heab : ¬ G.Adj (e a) (e b) := by
      intro h
      exact hab ((hAdj a b).mp h)
    simp [noK6AtEdge, hab, heab]

theorem cliqueFree_of_noK4_common_neighbors {α : Type*} [Fintype α] [DecidableEq α]
    {G : SimpleGraph α} [DecidableRel G.Adj]
    (hCheck : ∀ a b : α, noK6AtEdge G a b = true) : G.CliqueFree 6 := by
  classical
  intro s hClique
  have hCardS : s.card = 6 := hClique.card_eq
  have hPairwise : (s : Set α).Pairwise G.Adj := G.isClique_iff.mp hClique.isClique
  have hCardSpos : 0 < s.card := by rw [hCardS]; decide
  have hNonempty : s.Nonempty := Finset.card_pos.mp hCardSpos
  obtain ⟨a, ha⟩ := hNonempty
  have haSet : a ∈ (s : Set α) := by simpa using ha
  let s1 := s.erase a
  have hCardS1 : s1.card = 5 := by
    dsimp [s1]
    rw [Finset.card_erase_of_mem ha]
    simpa [hCardS]
  have hCardS1pos : 0 < s1.card := by rw [hCardS1]; decide
  have hNonemptyS1 : s1.Nonempty := Finset.card_pos.mp hCardS1pos
  obtain ⟨b, hb⟩ := hNonemptyS1
  have hbErase : b ≠ a ∧ b ∈ s := by simpa [s1] using (Finset.mem_erase.mp hb)
  have hbSet : b ∈ (s : Set α) := by simpa using hbErase.2
  have hNeAB : a ≠ b := by
    intro hEq
    exact hbErase.1 hEq.symm
  have hAdjAB : G.Adj a b := hPairwise haSet hbSet hNeAB
  let t := s1.erase b
  have hCardT : t.card = 4 := by
    dsimp [t]
    rw [Finset.card_erase_of_mem hb]
    simpa [hCardS1]
  have htSubsetS : t ⊆ s := by
    intro x hx
    have hxB := Finset.mem_erase.mp hx
    have hxA : x ≠ a ∧ x ∈ s := by simpa [s1] using hxB.2
    exact hxA.2
  have htSubsetCommon : t ⊆ commonNeighborFinset G a b := by
    intro x hx
    have hxB := Finset.mem_erase.mp hx
    have hxA : x ≠ a ∧ x ∈ s := by simpa [s1] using hxB.2
    have hxSet : x ∈ (s : Set α) := by simpa using hxA.2
    have hNeAX : a ≠ x := by
      intro hEq
      exact hxA.1 hEq.symm
    have hNeBX : b ≠ x := by
      intro hEq
      exact hxB.1 hEq.symm
    have hAdjAX : G.Adj a x := hPairwise haSet hxSet hNeAX
    have hAdjBX : G.Adj b x := hPairwise hbSet hxSet hNeBX
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ x, ⟨hAdjAX, hAdjBX⟩⟩
  have htMem : t ∈ Finset.powersetCard 4 (commonNeighborFinset G a b) :=
    Finset.mem_powersetCard.mpr ⟨htSubsetCommon, hCardT⟩
  have hFold :
      (Finset.powersetCard 4 (commonNeighborFinset G a b)).fold foldBoolAnd true
        (noCliqueOnQuad G) = true := by
    simpa [noK6AtEdge, hAdjAB] using hCheck a b
  have hSubsets :=
    (foldBoolAnd_eq_true_iff (Finset.powersetCard 4 (commonNeighborFinset G a b))
      (noCliqueOnQuad G)).mp hFold
  have hNoQuad : decide (¬ G.IsClique (t : Set α)) = true := by
    simpa [noCliqueOnQuad] using hSubsets t htMem
  have htClique : G.IsClique (t : Set α) :=
    SimpleGraph.IsClique.subset (by
      intro x hx
      have hxFin : x ∈ t := by simpa using hx
      exact htSubsetS hxFin) hClique.isClique
  exact (of_decide_eq_true hNoQuad) htClique

theorem qrBit_mul_eq (c z : Z101) (hc : c ≠ 0) (hz : z ≠ 0) :
    qrBit (c * z) = decide (qrBit c = qrBit z) := by
  decide +revert

theorem qrBit_mul_same (c z : Z101) (hc : c ≠ 0) (hz : z ≠ 0)
    (hcqr : qrBit c = true) : qrBit (c * z) = qrBit z := by
  rw [qrBit_mul_eq c z hc hz]
  simp [hcqr]

def normalizeEquiv (a c : Z101) (hc : c ≠ 0) : Z101 ≃ Z101 where
  toFun x := c * (x - a)
  invFun x := c⁻¹ * x + a
  left_inv x := by
    change c⁻¹ * (c * (x - a)) + a = x
    rw [← mul_assoc, inv_mul_cancel₀ hc]
    simp
  right_inv x := by
    change c * (c⁻¹ * x + a - a) = x
    rw [add_sub_cancel_right, ← mul_assoc, mul_inv_cancel₀ hc]
    simp

theorem normalize_diff (a c : Z101) (hc : c ≠ 0) (x y : Z101) :
    normalizeEquiv a c hc y - normalizeEquiv a c hc x = c * (y - x) := by
  change c * (y - a) - c * (x - a) = c * (y - x)
  rw [← mul_sub, sub_sub_sub_cancel_right]

theorem normalize_preserves_adj (a c : Z101) (hc : c ≠ 0)
    (hcqr : qrBit c = true) (x y : Z101) :
    paleyGraph.Adj (normalizeEquiv a c hc x) (normalizeEquiv a c hc y) ↔
      paleyGraph.Adj x y := by
  by_cases hxy : x = y
  · subst y
    change (normalizeEquiv a c hc x ≠ normalizeEquiv a c hc x ∧ _ = true) ↔
      (x ≠ x ∧ _ = true)
    simp
  · have hne : normalizeEquiv a c hc x ≠ normalizeEquiv a c hc y := by
      intro h
      exact hxy ((normalizeEquiv a c hc).injective h)
    have hz : y - x ≠ 0 := sub_ne_zero.mpr (Ne.symm hxy)
    have hmul := qrBit_mul_same c (y - x) hc hz hcqr
    change (normalizeEquiv a c hc x ≠ normalizeEquiv a c hc y ∧
      qrBit (normalizeEquiv a c hc y - normalizeEquiv a c hc x) = true) ↔
      (x ≠ y ∧ qrBit (y - x) = true)
    rw [normalize_diff a c hc x y, hmul]
    simp [hxy, hne]

theorem normalize_swaps_image_adj (a c : Z101) (hc : c ≠ 0)
    (hcnqr : qrBit c = false) (x y : Z101) :
    paleyGraph.Adj x y ↔
      paleyGraphᶜ.Adj (normalizeEquiv a c hc x) (normalizeEquiv a c hc y) := by
  by_cases hxy : x = y
  · subst y
    change (x ≠ x ∧ qrBit (x - x) = true) ↔
      paleyGraphᶜ.Adj (normalizeEquiv a c hc x) (normalizeEquiv a c hc x)
    simp
  · have hne : normalizeEquiv a c hc x ≠ normalizeEquiv a c hc y := by
      intro h
      exact hxy ((normalizeEquiv a c hc).injective h)
    have hz : y - x ≠ 0 := sub_ne_zero.mpr (Ne.symm hxy)
    have hmul : qrBit (c * (y - x)) = !(qrBit (y - x)) := by
      rw [qrBit_mul_eq c (y - x) hc hz]
      simp [hcnqr]
    change (x ≠ y ∧ qrBit (y - x) = true) ↔
      (normalizeEquiv a c hc x ≠ normalizeEquiv a c hc y ∧
        ¬ (normalizeEquiv a c hc x ≠ normalizeEquiv a c hc y ∧
          qrBit (normalizeEquiv a c hc y - normalizeEquiv a c hc x) = true))
    rw [normalize_diff a c hc x y, hmul]
    simp [hxy, hne]

end MathCase.RamseyR66V2
