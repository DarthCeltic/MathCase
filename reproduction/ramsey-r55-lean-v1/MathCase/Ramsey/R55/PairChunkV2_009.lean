import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_18_24_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_24_fwd
@[simp] theorem pairC_18_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_24_fwd

@[simp] theorem pairG_18_27_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_27_fwd
@[simp] theorem pairC_18_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_27_fwd

@[simp] theorem pairG_18_30_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_30_fwd
@[simp] theorem pairC_18_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_30_fwd

@[simp] theorem pairG_19_23_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_23_fwd
@[simp] theorem pairC_19_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_23_fwd

@[simp] theorem pairG_19_31_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_31_fwd
@[simp] theorem pairC_19_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_31_fwd

@[simp] theorem pairG_19_32_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_32_fwd
@[simp] theorem pairC_19_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_32_fwd

@[simp] theorem pairG_19_33_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_33_fwd
@[simp] theorem pairC_19_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_33_fwd

@[simp] theorem pairG_19_34_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_34_fwd
@[simp] theorem pairC_19_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_34_fwd

@[simp] theorem pairG_20_35_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_35_fwd
@[simp] theorem pairC_20_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_35_fwd

@[simp] theorem pairG_21_29_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_29_fwd
@[simp] theorem pairC_21_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_29_fwd

@[simp] theorem pairG_21_33_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_33_fwd
@[simp] theorem pairC_21_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_33_fwd

@[simp] theorem pairG_21_35_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_35_fwd
@[simp] theorem pairC_21_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_35_fwd

@[simp] theorem pairG_21_36_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_36_fwd
@[simp] theorem pairC_21_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_36_fwd

@[simp] theorem pairG_22_28_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_28_fwd
@[simp] theorem pairC_22_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_28_fwd

@[simp] theorem pairG_22_34_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_34_fwd
@[simp] theorem pairC_22_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_34_fwd

@[simp] theorem pairG_22_35_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_35_fwd
@[simp] theorem pairC_22_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_35_fwd

@[simp] theorem pairG_22_36_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_36_fwd
@[simp] theorem pairC_22_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_36_fwd

@[simp] theorem pairG_22_37_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_37_fwd
@[simp] theorem pairC_22_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_37_fwd

@[simp] theorem pairG_23_29_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_29_fwd
@[simp] theorem pairC_23_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_29_fwd

@[simp] theorem pairG_23_36_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_36_fwd
@[simp] theorem pairC_23_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_36_fwd

@[simp] theorem pairG_23_37_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_37_fwd
@[simp] theorem pairC_23_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_37_fwd

@[simp] theorem pairG_24_30_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_30_fwd
@[simp] theorem pairC_24_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_30_fwd

@[simp] theorem pairG_24_39_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_39_fwd
@[simp] theorem pairC_24_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_39_fwd

@[simp] theorem pairG_25_34_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_34_fwd
@[simp] theorem pairC_25_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_34_fwd

@[simp] theorem pairG_25_37_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_37_fwd
@[simp] theorem pairC_25_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_37_fwd

@[simp] theorem pairG_25_39_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_39_fwd
@[simp] theorem pairC_25_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_39_fwd

@[simp] theorem pairG_25_40_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_40_fwd
@[simp] theorem pairC_25_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_40_fwd

@[simp] theorem pairG_26_39_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_39_fwd
@[simp] theorem pairC_26_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_39_fwd

@[simp] theorem pairG_26_41_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_41_fwd
@[simp] theorem pairC_26_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_41_fwd

@[simp] theorem pairG_27_36_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_36_fwd
@[simp] theorem pairC_27_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_36_fwd

@[simp] theorem pairG_27_40_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_40_fwd
@[simp] theorem pairC_27_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_40_fwd

@[simp] theorem pairG_27_41_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_41_fwd
@[simp] theorem pairC_27_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_41_fwd

end MathCase.RamseyR55
