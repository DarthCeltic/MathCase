import MathCase.R66.Foundation
import MathCase.R66.Rows.Representative
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace MathCase.RamseyR66V2

theorem map_adj_iff_of_equiv {α β : Type*} (G : SimpleGraph α) (e : α ≃ β)
    (x y : β) :
    (G.map e.toEmbedding).Adj x y ↔ G.Adj (e.symm x) (e.symm y) := by
  rw [SimpleGraph.map_adj]
  constructor
  · rintro ⟨u, v, hAdj, hux, hvy⟩
    have hu : u = e.symm x := by simpa using congrArg e.symm hux
    have hv : v = e.symm y := by simpa using congrArg e.symm hvy
    subst u
    subst v
    exact hAdj
  · intro hAdj
    exact ⟨e.symm x, e.symm y, hAdj, e.apply_symm_apply x, e.apply_symm_apply y⟩

theorem allGraphChecks : ∀ a b : Z101, noK6AtEdge paleyGraph a b = true := by
  intro a b
  by_cases hab : paleyGraph.Adj a b
  · change a ≠ b ∧ qrBit (b - a) = true at hab
    let d : Z101 := b - a
    have hd : d ≠ 0 := by
      dsimp [d]
      exact sub_ne_zero.mpr (Ne.symm hab.1)
    let c : Z101 := d⁻¹
    have hc : c ≠ 0 := by
      dsimp [c]
      exact inv_ne_zero hd
    have hcd : c * d = 1 := by
      dsimp [c]
      exact inv_mul_cancel₀ hd
    have hdqr : qrBit d = true := by
      dsimp [d]
      exact hab.2
    have hcqr : qrBit c = true := by
      have hmul := qrBit_mul_eq c d hc hd
      rw [hcd] at hmul
      rw [show qrBit 1 = true by decide] at hmul
      cases hcb : qrBit c with
      | false => simp [hcb, hdqr] at hmul
      | true => rfl
    let e := normalizeEquiv a c hc
    have hea : e a = 0 := by simp [e, normalizeEquiv]
    have heb : e b = 1 := by
      change c * (b - a) = 1
      simpa [d] using hcd
    have hAdj : ∀ x y, paleyGraph.Adj (e x) (e y) ↔ paleyGraph.Adj x y := by
      intro x y
      exact normalize_preserves_adj a c hc hcqr x y
    have hMap := noK6AtEdge_map paleyGraph e hAdj a b
    rw [hea, heb] at hMap
    exact hMap.symm.trans representativeCheck
  · simp [noK6AtEdge, hab]

theorem paleyGraph_cliqueFree : paleyGraph.CliqueFree 6 :=
  cliqueFree_of_noK4_common_neighbors allGraphChecks

def complementScale : Z101 := 2

theorem complementScale_ne : complementScale ≠ 0 := by decide
theorem complementScale_nqr : qrBit complementScale = false := by decide

theorem paleyGraph_complement_map :
    paleyGraph.map (normalizeEquiv 0 complementScale complementScale_ne).toEmbedding =
      paleyGraphᶜ := by
  let e := normalizeEquiv 0 complementScale complementScale_ne
  ext x y
  rw [map_adj_iff_of_equiv paleyGraph e x y]
  constructor
  · intro hAdj
    have hEx : normalizeEquiv 0 complementScale complementScale_ne (e.symm x) = x := by
      change e (e.symm x) = x
      exact e.apply_symm_apply x
    have hEy : normalizeEquiv 0 complementScale complementScale_ne (e.symm y) = y := by
      change e (e.symm y) = y
      exact e.apply_symm_apply y
    have hSwap := normalize_swaps_image_adj 0 complementScale complementScale_ne
      complementScale_nqr (e.symm x) (e.symm y)
    rw [hEx, hEy] at hSwap
    exact hSwap.mp hAdj
  · intro hAdj
    have hEx : normalizeEquiv 0 complementScale complementScale_ne (e.symm x) = x := by
      change e (e.symm x) = x
      exact e.apply_symm_apply x
    have hEy : normalizeEquiv 0 complementScale complementScale_ne (e.symm y) = y := by
      change e (e.symm y) = y
      exact e.apply_symm_apply y
    have hSwap := normalize_swaps_image_adj 0 complementScale complementScale_ne
      complementScale_nqr (e.symm x) (e.symm y)
    rw [hEx, hEy] at hSwap
    refine hSwap.mpr hAdj

theorem paleyGraph_compl_cliqueFree : paleyGraphᶜ.CliqueFree 6 := by
  rw [← paleyGraph_complement_map]
  rw [SimpleGraph.cliqueFree_map_iff]
  exact paleyGraph_cliqueFree

def finIso : Z101 ≃ Fin 101 := (ZMod.finEquiv 101).symm
def paleyFin : SimpleGraph (Fin 101) := paleyGraph.map finIso.toEmbedding

theorem paleyFin_compl_eq : paleyFinᶜ = paleyGraphᶜ.map finIso.toEmbedding := by
  ext x y
  change (x ≠ y ∧ ¬ paleyFin.Adj x y) ↔
    (paleyGraphᶜ.map finIso.toEmbedding).Adj x y
  rw [show paleyFin = paleyGraph.map finIso.toEmbedding from rfl,
    map_adj_iff_of_equiv paleyGraph finIso x y,
    map_adj_iff_of_equiv paleyGraphᶜ finIso x y,
    SimpleGraph.compl_adj]
  have hne : x ≠ y ↔ finIso.symm x ≠ finIso.symm y := by
    constructor
    · intro h hxy
      apply h
      exact congrArg finIso hxy
    · intro h hxy
      apply h
      exact congrArg finIso.symm hxy
  exact and_congr hne Iff.rfl

theorem ramsey_number_six_six_lower_bound_candidate :
    ∃ G : SimpleGraph (Fin 101), G.CliqueFree 6 ∧ (Gᶜ).CliqueFree 6 := by
  refine ⟨paleyFin, ?_, ?_⟩
  · change (paleyGraph.map finIso.toEmbedding).CliqueFree 6
    letI : Nonempty Z101 := ⟨0⟩
    exact (SimpleGraph.cliqueFree_map_iff (f := finIso.toEmbedding)).mpr paleyGraph_cliqueFree
  · rw [paleyFin_compl_eq]
    letI : Nonempty Z101 := ⟨0⟩
    exact (SimpleGraph.cliqueFree_map_iff (f := finIso.toEmbedding)).mpr paleyGraph_compl_cliqueFree
#print axioms ramsey_number_six_six_lower_bound_candidate
end MathCase.RamseyR66V2
