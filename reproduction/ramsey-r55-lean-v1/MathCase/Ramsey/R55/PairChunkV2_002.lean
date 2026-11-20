import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_10_30_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_30_fwd
@[simp] theorem pairC_10_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_30_fwd

@[simp] theorem pairG_11_22_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_22_fwd
@[simp] theorem pairC_11_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_22_fwd

@[simp] theorem pairG_11_31_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_31_fwd
@[simp] theorem pairC_11_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_31_fwd

@[simp] theorem pairG_12_14_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_14_fwd
@[simp] theorem pairC_12_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_14_fwd

@[simp] theorem pairG_12_21_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_21_fwd
@[simp] theorem pairC_12_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_21_fwd

@[simp] theorem pairG_12_23_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_23_fwd
@[simp] theorem pairC_12_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_23_fwd

@[simp] theorem pairG_13_22_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_22_fwd
@[simp] theorem pairC_13_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_22_fwd

@[simp] theorem pairG_13_24_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_24_fwd
@[simp] theorem pairC_13_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_24_fwd

@[simp] theorem pairG_13_33_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_33_fwd
@[simp] theorem pairC_13_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_33_fwd

@[simp] theorem pairG_13_36_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_36_fwd
@[simp] theorem pairC_13_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_36_fwd

@[simp] theorem pairG_14_16_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_16_fwd
@[simp] theorem pairC_14_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_16_fwd

@[simp] theorem pairG_14_23_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_23_fwd
@[simp] theorem pairC_14_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_23_fwd

@[simp] theorem pairG_14_34_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_34_fwd
@[simp] theorem pairC_14_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_34_fwd

@[simp] theorem pairG_14_37_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_37_fwd
@[simp] theorem pairC_14_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_37_fwd

@[simp] theorem pairG_15_26_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_26_fwd
@[simp] theorem pairC_15_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_26_fwd

@[simp] theorem pairG_15_38_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_38_fwd
@[simp] theorem pairC_15_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_38_fwd

@[simp] theorem pairG_16_36_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_36_fwd
@[simp] theorem pairC_16_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_36_fwd

@[simp] theorem pairG_16_39_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_39_fwd
@[simp] theorem pairC_16_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_39_fwd

@[simp] theorem pairG_17_19_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_19_fwd
@[simp] theorem pairC_17_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_19_fwd

@[simp] theorem pairG_17_28_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_28_fwd
@[simp] theorem pairC_17_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_28_fwd

@[simp] theorem pairG_18_29_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_29_fwd
@[simp] theorem pairC_18_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_29_fwd

@[simp] theorem pairG_18_31_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_31_fwd
@[simp] theorem pairC_18_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_31_fwd

@[simp] theorem pairG_18_38_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_38_fwd
@[simp] theorem pairC_18_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_38_fwd

@[simp] theorem pairG_18_41_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_41_fwd
@[simp] theorem pairC_18_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_41_fwd

@[simp] theorem pairG_19_21_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_21_fwd
@[simp] theorem pairC_19_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_21_fwd

@[simp] theorem pairG_19_30_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_30_fwd
@[simp] theorem pairC_19_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_30_fwd

@[simp] theorem pairG_19_39_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_39_fwd
@[simp] theorem pairC_19_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_39_fwd

@[simp] theorem pairG_20_22_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_22_fwd
@[simp] theorem pairC_20_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_22_fwd

@[simp] theorem pairG_20_31_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_31_fwd
@[simp] theorem pairC_20_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_31_fwd

@[simp] theorem pairG_21_23_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_23_fwd
@[simp] theorem pairC_21_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_23_fwd

@[simp] theorem pairG_21_30_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_30_fwd
@[simp] theorem pairC_21_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_30_fwd

@[simp] theorem pairG_21_32_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_32_fwd
@[simp] theorem pairC_21_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_32_fwd

end MathCase.RamseyR55
