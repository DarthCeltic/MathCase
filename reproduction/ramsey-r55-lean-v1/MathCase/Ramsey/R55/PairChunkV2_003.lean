import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_21_34_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_34_fwd
@[simp] theorem pairC_21_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_34_fwd

@[simp] theorem pairG_21_41_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_41_fwd
@[simp] theorem pairC_21_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_41_fwd

@[simp] theorem pairG_22_31_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_31_fwd
@[simp] theorem pairC_22_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_31_fwd

@[simp] theorem pairG_22_33_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_33_fwd
@[simp] theorem pairC_22_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_33_fwd

@[simp] theorem pairG_23_25_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_25_fwd
@[simp] theorem pairC_23_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_25_fwd

@[simp] theorem pairG_23_32_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_32_fwd
@[simp] theorem pairC_23_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_32_fwd

@[simp] theorem pairG_24_26_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_26_fwd
@[simp] theorem pairC_24_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_26_fwd

@[simp] theorem pairG_24_33_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_33_fwd
@[simp] theorem pairC_24_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_33_fwd

@[simp] theorem pairG_24_35_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_35_fwd
@[simp] theorem pairC_24_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_35_fwd

@[simp] theorem pairG_26_28_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_28_fwd
@[simp] theorem pairC_26_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_28_fwd

@[simp] theorem pairG_26_37_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_37_fwd
@[simp] theorem pairC_26_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_37_fwd

@[simp] theorem pairG_28_39_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_39_fwd
@[simp] theorem pairC_28_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_39_fwd

@[simp] theorem pairG_29_31_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_31_fwd
@[simp] theorem pairC_29_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_31_fwd

@[simp] theorem pairG_29_38_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_38_fwd
@[simp] theorem pairC_29_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_38_fwd

@[simp] theorem pairG_29_40_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_40_fwd
@[simp] theorem pairC_29_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_40_fwd

@[simp] theorem pairG_30_32_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_32_fwd
@[simp] theorem pairC_30_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_32_fwd

@[simp] theorem pairG_30_39_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_39_fwd
@[simp] theorem pairC_30_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_39_fwd

@[simp] theorem pairG_30_41_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_41_fwd
@[simp] theorem pairC_30_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_41_fwd

@[simp] theorem pairG_31_40_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_40_fwd
@[simp] theorem pairC_31_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_40_fwd

@[simp] theorem pairG_32_34_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_34_fwd
@[simp] theorem pairC_32_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_34_fwd

@[simp] theorem pairG_37_39_fwd : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_37_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_37_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_37_39_fwd
@[simp] theorem pairC_37_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_37_39_fwd

@[simp] theorem pairG_38_40_fwd : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_38_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_38_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_38_40_fwd
@[simp] theorem pairC_38_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_38_40_fwd

@[simp] theorem pairG_39_41_fwd : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_39_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_39_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_39_41_fwd
@[simp] theorem pairC_39_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_39_41_fwd

@[simp] theorem pairG_0_9_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_9_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_9_rev : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_9_fwd
@[simp] theorem pairC_0_9_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_9_fwd

@[simp] theorem pairG_0_34_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_34_fwd
@[simp] theorem pairC_0_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_34_fwd

@[simp] theorem pairG_1_10_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_10_fwd
@[simp] theorem pairC_1_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_10_fwd

@[simp] theorem pairG_1_24_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_24_fwd
@[simp] theorem pairC_1_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_24_fwd

@[simp] theorem pairG_1_35_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_35_fwd
@[simp] theorem pairC_1_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_35_fwd

@[simp] theorem pairG_2_11_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_11_fwd
@[simp] theorem pairC_2_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_11_fwd

@[simp] theorem pairG_2_31_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_31_fwd
@[simp] theorem pairC_2_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_31_fwd

@[simp] theorem pairG_2_32_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_32_fwd
@[simp] theorem pairC_2_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_32_fwd

@[simp] theorem pairG_2_34_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_34_fwd
@[simp] theorem pairC_2_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_34_fwd

end MathCase.RamseyR55
