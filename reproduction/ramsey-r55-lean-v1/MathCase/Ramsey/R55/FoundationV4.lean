import Mathlib

/-!
Staged finite Ramsey certificate for the owner-reviewed R(5,5) lower-bound statement.
Adjacency is encoded by 42 row bitmasks derived from the pinned Exoo(42) graph6 witness.
Pinned graph6 SHA-256: 0d855016014ce4c2fbfcdba270683086a351b4a1e59afd611cc53e9b15109da7
This is a same-target repair candidate; prior failed receipts remain untouched.
-/

namespace MathCase.RamseyR55
def neighborMask (i : Fin 42) : Nat :=
  match i.val with
  | 0 => 2280274621574
  | 1 => 162502732045
  | 2 => 325005464091
  | 3 => 650010928166
  | 4 => 1300021856324
  | 5 => 2600043712648
  | 6 => 802040914192
  | 7 => 1604081828641
  | 8 => 3208163657410
  | 9 => 2018280803716
  | 10 => 4034414123785
  | 11 => 3675076703762
  | 12 => 2952106888229
  | 13 => 1506167261259
  | 14 => 3012334522519
  | 15 => 1626622533934
  | 16 => 3253245198941
  | 17 => 2108443952314
  | 18 => 4216887904629
  | 19 => 4035729298154
  | 20 => 3673412085205
  | 21 => 2948777659307
  | 22 => 1499500418903
  | 23 => 2998996643503
  | 24 => 1599980330334
  | 25 => 3199977437885
  | 26 => 2001908364666
  | 27 => 4003816729333
  | 28 => 3609586947562
  | 29 => 2820053642197
  | 30 => 1243671386027
  | 31 => 2488416512855
  | 32 => 570196582062
  | 33 => 1153278066013
  | 34 => 2315146066618
  | 35 => 232245622132
  | 36 => 464491244265
  | 37 => 928982488530
  | 38 => 1308209163172
  | 39 => 2341540419400
  | 40 => 285034327696
  | 41 => 570068655393
  | _ => 0
theorem neighborBit_comm :
    ∀ x y : Fin 42, Nat.testBit (neighborMask x) y.val = Nat.testBit (neighborMask y) x.val := by
  decide +revert

def exoo42Witness : SimpleGraph (Fin 42) where
  Adj x y := x.val ≠ y.val ∧ Nat.testBit (neighborMask x) y.val = true
  symm.symm _x _y h := by
    refine ⟨h.1.symm, ?_⟩
    rw [← neighborBit_comm _x _y]
    exact h.2
  loopless.irrefl _x h := h.1 rfl

instance exoo42Witness_decidableRel : DecidableRel exoo42Witness.Adj := by
  intro x y
  change Decidable (x.val ≠ y.val ∧ Nat.testBit (neighborMask x) y.val = true)
  infer_instance

instance exoo42Complement_decidableRel : DecidableRel exoo42Witnessᶜ.Adj := by
  intro x y
  rw [SimpleGraph.compl_adj]
  infer_instance

def foldBoolAnd (a b : Bool) : Bool := a && b

instance foldBoolAnd_commutative : Std.Commutative foldBoolAnd := ⟨by
  intro a b
  simp [foldBoolAnd, Bool.and_comm]
⟩

instance foldBoolAnd_associative : Std.Associative foldBoolAnd := ⟨by
  intro a b c
  cases a <;> cases b <;> cases c <;> rfl
⟩

theorem foldBoolAnd_eq_true_iff {α : Type} [DecidableEq α]
    (s : Finset α) (f : α → Bool) :
    s.fold foldBoolAnd true f = true ↔ ∀ x ∈ s, f x = true := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih => simp [Finset.fold_insert ha, foldBoolAnd, Bool.and_eq_true, ih]
def commonNeighborFinset (G : SimpleGraph (Fin 42))
    [DecidableRel G.Adj] (a b : Fin 42) : Finset (Fin 42) :=
  Finset.univ.filter (fun x => G.Adj a x ∧ G.Adj b x)

def noCliqueOnTriple (G : SimpleGraph (Fin 42))
    [DecidableRel G.Adj] (t : Finset (Fin 42)) : Bool :=
  decide (¬ G.IsClique t)

def noK5AtEdge (G : SimpleGraph (Fin 42)) [DecidableRel G.Adj]
    (a b : Fin 42) : Bool :=
  if G.Adj a b then
    (Finset.powersetCard 3 (commonNeighborFinset G a b)).fold foldBoolAnd true
      (noCliqueOnTriple G)
  else true


theorem commonNeighborFinset_comm (G : SimpleGraph (Fin 42)) [DecidableRel G.Adj] (a b : Fin 42) :
    commonNeighborFinset G a b = commonNeighborFinset G b a := by
  ext x
  simp only [commonNeighborFinset, Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨hax, hbx⟩
    exact ⟨hbx, hax⟩
  · rintro ⟨hbx, hax⟩
    exact ⟨hax, hbx⟩

theorem noK5AtEdge_comm (G : SimpleGraph (Fin 42)) [DecidableRel G.Adj] (a b : Fin 42) :
    noK5AtEdge G a b = noK5AtEdge G b a := by
  by_cases h : G.Adj a b
  · have h' : G.Adj b a := (G.adj_comm a b).mp h
    simp [noK5AtEdge, h, h', commonNeighborFinset_comm]
  · have h' : ¬ G.Adj b a := by
      intro hab
      exact h ((G.adj_comm b a).mp hab)
    simp [noK5AtEdge, h, h']
@[simp] theorem noK5AtEdge_self (G : SimpleGraph (Fin 42)) [DecidableRel G.Adj] (a : Fin 42) :
    noK5AtEdge G a a = true := by
  simp [noK5AtEdge]
theorem cliqueFree_of_noTriangle_common_neighbors
    {G : SimpleGraph (Fin 42)} [DecidableRel G.Adj]
    (hCheck : ∀ a b : Fin 42, noK5AtEdge G a b = true) :
    G.CliqueFree 5 := by
  intro s hClique
  have hCardS : s.card = 5 := hClique.card_eq
  have hPairwise : (s : Set (Fin 42)).Pairwise G.Adj := G.isClique_iff.mp hClique.isClique
  have hNonempty : s.Nonempty := Finset.card_pos.mp (by omega)
  obtain ⟨a, ha⟩ := hNonempty
  have haSet : (a : Fin 42) ∈ (s : Set (Fin 42)) := by simpa using ha
  let s1 := s.erase a
  have hCardS1 : s1.card = 4 := by
    dsimp [s1]
    rw [Finset.card_erase_of_mem ha]
    omega
  have hNonemptyS1 : s1.Nonempty := Finset.card_pos.mp (by omega)
  obtain ⟨b, hb⟩ := hNonemptyS1
  have hbErase : b ≠ a ∧ b ∈ s := by simpa [s1] using (Finset.mem_erase.mp hb)
  have hbSet : (b : Fin 42) ∈ (s : Set (Fin 42)) := by simpa using hbErase.2
  have hNeAB : a ≠ b := by
    intro hEq
    exact hbErase.1 hEq.symm
  have hAdjAB : G.Adj a b := hPairwise haSet hbSet hNeAB
  let t := s1.erase b
  have hCardT : t.card = 3 := by
    dsimp [t]
    rw [Finset.card_erase_of_mem hb]
    omega
  have htSubsetS : t ⊆ s := by
    intro x hx
    have hxB := Finset.mem_erase.mp hx
    have hxA : x ≠ a ∧ x ∈ s := by simpa [s1] using hxB.2
    exact hxA.2
  have htSubsetCommon : t ⊆ commonNeighborFinset G a b := by
    intro x hx
    have hxB := Finset.mem_erase.mp hx
    have hxA : x ≠ a ∧ x ∈ s := by simpa [s1] using hxB.2
    have hxSet : (x : Fin 42) ∈ (s : Set (Fin 42)) := by simpa using hxA.2
    have hNeAX : a ≠ x := by
      intro hEq
      exact hxA.1 hEq.symm
    have hNeBX : b ≠ x := by
      intro hEq
      exact hxB.1 hEq.symm
    have hAdjAX : G.Adj a x := hPairwise haSet hxSet hNeAX
    have hAdjBX : G.Adj b x := hPairwise hbSet hxSet hNeBX
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ x, ⟨hAdjAX, hAdjBX⟩⟩
  have htMem : t ∈ Finset.powersetCard 3 (commonNeighborFinset G a b) :=
    Finset.mem_powersetCard.mpr ⟨htSubsetCommon, hCardT⟩
  have hFold :
      (Finset.powersetCard 3 (commonNeighborFinset G a b)).fold foldBoolAnd true
        (noCliqueOnTriple G) = true := by
    simpa [noK5AtEdge, hAdjAB] using hCheck a b
  have hSubsets :=
    (foldBoolAnd_eq_true_iff (Finset.powersetCard 3 (commonNeighborFinset G a b))
      (noCliqueOnTriple G)).mp hFold
  have hNoTriangle : decide (¬ G.IsClique t) = true := by
    simpa [noCliqueOnTriple] using hSubsets t htMem
  have htClique : G.IsClique (t : Set (Fin 42)) := by
    exact SimpleGraph.IsClique.subset (by
      intro x hx
      have hxFin : x ∈ t := by simpa using hx
      have hxS := htSubsetS hxFin
      simpa using hxS) hClique.isClique
  exact (of_decide_eq_true hNoTriangle) htClique

end MathCase.RamseyR55
