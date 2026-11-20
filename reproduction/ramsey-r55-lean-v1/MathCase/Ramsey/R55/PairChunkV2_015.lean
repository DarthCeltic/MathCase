import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_24_29_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_29_fwd
@[simp] theorem pairC_24_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_29_fwd

@[simp] theorem pairG_24_36_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_36_fwd
@[simp] theorem pairC_24_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_36_fwd

@[simp] theorem pairG_25_26_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_26_fwd
@[simp] theorem pairC_25_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_26_fwd

@[simp] theorem pairG_25_29_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_29_fwd
@[simp] theorem pairC_25_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_29_fwd

@[simp] theorem pairG_25_31_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_31_fwd
@[simp] theorem pairC_25_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_31_fwd

@[simp] theorem pairG_25_32_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_32_fwd
@[simp] theorem pairC_25_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_32_fwd

@[simp] theorem pairG_26_27_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_27_fwd
@[simp] theorem pairC_26_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_27_fwd

@[simp] theorem pairG_26_29_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_29_fwd
@[simp] theorem pairC_26_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_29_fwd

@[simp] theorem pairG_26_30_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_30_fwd
@[simp] theorem pairC_26_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_30_fwd

@[simp] theorem pairG_26_32_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_32_fwd
@[simp] theorem pairC_26_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_32_fwd

@[simp] theorem pairG_26_33_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_33_fwd
@[simp] theorem pairC_26_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_33_fwd

@[simp] theorem pairG_26_34_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_34_fwd
@[simp] theorem pairC_26_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_34_fwd

@[simp] theorem pairG_26_38_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_38_fwd
@[simp] theorem pairC_26_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_38_fwd

@[simp] theorem pairG_26_40_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_40_fwd
@[simp] theorem pairC_26_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_40_fwd

@[simp] theorem pairG_27_28_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_28_fwd
@[simp] theorem pairC_27_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_28_fwd

@[simp] theorem pairG_27_33_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_33_fwd
@[simp] theorem pairC_27_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_33_fwd

@[simp] theorem pairG_27_34_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_34_fwd
@[simp] theorem pairC_27_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_34_fwd

@[simp] theorem pairG_27_35_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_35_fwd
@[simp] theorem pairC_27_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_35_fwd

@[simp] theorem pairG_27_39_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_39_fwd
@[simp] theorem pairC_27_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_39_fwd

@[simp] theorem pairG_28_32_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_32_fwd
@[simp] theorem pairC_28_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_32_fwd

@[simp] theorem pairG_28_34_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_34_fwd
@[simp] theorem pairC_28_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_34_fwd

@[simp] theorem pairG_28_36_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_36_fwd
@[simp] theorem pairC_28_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_36_fwd

@[simp] theorem pairG_29_32_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_32_fwd
@[simp] theorem pairC_29_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_32_fwd

@[simp] theorem pairG_29_36_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_36_fwd
@[simp] theorem pairC_29_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_36_fwd

@[simp] theorem pairG_29_37_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_37_fwd
@[simp] theorem pairC_29_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_37_fwd

@[simp] theorem pairG_29_41_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_41_fwd
@[simp] theorem pairC_29_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_41_fwd

@[simp] theorem pairG_30_33_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_33_fwd
@[simp] theorem pairC_30_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_33_fwd

@[simp] theorem pairG_30_34_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_34_fwd
@[simp] theorem pairC_30_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_34_fwd

@[simp] theorem pairG_30_36_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_36_fwd
@[simp] theorem pairC_30_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_36_fwd

@[simp] theorem pairG_30_37_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_37_fwd
@[simp] theorem pairC_30_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_37_fwd

@[simp] theorem pairG_31_38_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_38_fwd
@[simp] theorem pairC_31_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_38_fwd

@[simp] theorem pairG_31_39_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_39_fwd
@[simp] theorem pairC_31_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_39_fwd

end MathCase.RamseyR55
