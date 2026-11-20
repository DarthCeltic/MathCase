import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_24_34_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_34_fwd
@[simp] theorem pairC_24_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_34_fwd

@[simp] theorem pairG_24_41_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_41_fwd
@[simp] theorem pairC_24_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_41_fwd

@[simp] theorem pairG_25_28_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_28_fwd
@[simp] theorem pairC_25_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_28_fwd

@[simp] theorem pairG_25_30_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_30_fwd
@[simp] theorem pairC_25_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_30_fwd

@[simp] theorem pairG_25_33_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_33_fwd
@[simp] theorem pairC_25_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_33_fwd

@[simp] theorem pairG_25_35_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_35_fwd
@[simp] theorem pairC_25_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_35_fwd

@[simp] theorem pairG_25_41_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_41_fwd
@[simp] theorem pairC_25_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_41_fwd

@[simp] theorem pairG_26_36_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_36_fwd
@[simp] theorem pairC_26_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_36_fwd

@[simp] theorem pairG_27_30_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_30_fwd
@[simp] theorem pairC_27_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_30_fwd

@[simp] theorem pairG_27_31_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_31_fwd
@[simp] theorem pairC_27_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_31_fwd

@[simp] theorem pairG_27_32_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_32_fwd
@[simp] theorem pairC_27_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_32_fwd

@[simp] theorem pairG_27_37_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_37_fwd
@[simp] theorem pairC_27_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_37_fwd

@[simp] theorem pairG_28_31_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_31_fwd
@[simp] theorem pairC_28_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_31_fwd

@[simp] theorem pairG_28_33_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_33_fwd
@[simp] theorem pairC_28_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_33_fwd

@[simp] theorem pairG_28_35_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_35_fwd
@[simp] theorem pairC_28_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_35_fwd

@[simp] theorem pairG_28_38_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_38_fwd
@[simp] theorem pairC_28_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_38_fwd

@[simp] theorem pairG_28_40_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_40_fwd
@[simp] theorem pairC_28_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_40_fwd

@[simp] theorem pairG_29_30_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_30_fwd
@[simp] theorem pairC_29_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_30_fwd

@[simp] theorem pairG_29_34_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_34_fwd
@[simp] theorem pairC_29_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_34_fwd

@[simp] theorem pairG_29_39_fwd : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_29_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_29_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_29_39_fwd
@[simp] theorem pairC_29_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_29_39_fwd

@[simp] theorem pairG_30_35_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_35_fwd
@[simp] theorem pairC_30_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_35_fwd

@[simp] theorem pairG_31_34_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_34_fwd
@[simp] theorem pairC_31_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_34_fwd

@[simp] theorem pairG_31_35_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_35_fwd
@[simp] theorem pairC_31_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_35_fwd

@[simp] theorem pairG_31_37_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_37_fwd
@[simp] theorem pairC_31_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_37_fwd

@[simp] theorem pairG_32_33_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_33_fwd
@[simp] theorem pairC_32_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_33_fwd

@[simp] theorem pairG_32_35_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_35_fwd
@[simp] theorem pairC_32_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_35_fwd

@[simp] theorem pairG_32_37_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_37_fwd
@[simp] theorem pairC_32_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_37_fwd

@[simp] theorem pairG_33_34_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_34_fwd
@[simp] theorem pairC_33_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_34_fwd

@[simp] theorem pairG_33_36_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_36_fwd
@[simp] theorem pairC_33_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_36_fwd

@[simp] theorem pairG_33_37_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_37_fwd
@[simp] theorem pairC_33_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_37_fwd

@[simp] theorem pairG_33_38_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_38_fwd
@[simp] theorem pairC_33_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_38_fwd

@[simp] theorem pairG_34_38_fwd : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_34_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_34_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_34_38_fwd
@[simp] theorem pairC_34_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_34_38_fwd

end MathCase.RamseyR55
