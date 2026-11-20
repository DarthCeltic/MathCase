import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_19_37_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_37_fwd
@[simp] theorem pairC_19_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_37_fwd

@[simp] theorem pairG_19_38_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_38_fwd
@[simp] theorem pairC_19_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_38_fwd

@[simp] theorem pairG_19_41_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_41_fwd
@[simp] theorem pairC_19_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_41_fwd

@[simp] theorem pairG_20_21_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_21_fwd
@[simp] theorem pairC_20_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_21_fwd

@[simp] theorem pairG_20_32_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_32_fwd
@[simp] theorem pairC_20_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_32_fwd

@[simp] theorem pairG_20_36_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_36_fwd
@[simp] theorem pairC_20_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_36_fwd

@[simp] theorem pairG_20_37_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_37_fwd
@[simp] theorem pairC_20_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_37_fwd

@[simp] theorem pairG_20_38_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_38_fwd
@[simp] theorem pairC_20_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_38_fwd

@[simp] theorem pairG_20_39_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_39_fwd
@[simp] theorem pairC_20_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_39_fwd

@[simp] theorem pairG_20_41_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_41_fwd
@[simp] theorem pairC_20_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_41_fwd

@[simp] theorem pairG_21_24_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_24_fwd
@[simp] theorem pairC_21_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_24_fwd

@[simp] theorem pairG_21_25_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_25_fwd
@[simp] theorem pairC_21_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_25_fwd

@[simp] theorem pairG_21_28_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_28_fwd
@[simp] theorem pairC_21_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_28_fwd

@[simp] theorem pairG_21_31_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_31_fwd
@[simp] theorem pairC_21_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_31_fwd

@[simp] theorem pairG_21_37_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_37_fwd
@[simp] theorem pairC_21_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_37_fwd

@[simp] theorem pairG_21_38_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_38_fwd
@[simp] theorem pairC_21_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_38_fwd

@[simp] theorem pairG_21_39_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_39_fwd
@[simp] theorem pairC_21_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_39_fwd

@[simp] theorem pairG_21_40_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_40_fwd
@[simp] theorem pairC_21_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_40_fwd

@[simp] theorem pairG_22_23_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_23_fwd
@[simp] theorem pairC_22_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_23_fwd

@[simp] theorem pairG_22_25_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_25_fwd
@[simp] theorem pairC_22_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_25_fwd

@[simp] theorem pairG_22_27_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_27_fwd
@[simp] theorem pairC_22_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_27_fwd

@[simp] theorem pairG_22_29_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_29_fwd
@[simp] theorem pairC_22_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_29_fwd

@[simp] theorem pairG_22_38_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_38_fwd
@[simp] theorem pairC_22_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_38_fwd

@[simp] theorem pairG_22_39_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_39_fwd
@[simp] theorem pairC_22_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_39_fwd

@[simp] theorem pairG_22_41_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_41_fwd
@[simp] theorem pairC_22_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_41_fwd

@[simp] theorem pairG_23_24_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_24_fwd
@[simp] theorem pairC_23_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_24_fwd

@[simp] theorem pairG_23_33_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_33_fwd
@[simp] theorem pairC_23_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_33_fwd

@[simp] theorem pairG_23_39_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_39_fwd
@[simp] theorem pairC_23_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_39_fwd

@[simp] theorem pairG_23_40_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_40_fwd
@[simp] theorem pairC_23_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_40_fwd

@[simp] theorem pairG_23_41_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_41_fwd
@[simp] theorem pairC_23_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_41_fwd

@[simp] theorem pairG_24_25_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_25_fwd
@[simp] theorem pairC_24_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_25_fwd

@[simp] theorem pairG_24_31_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_31_fwd
@[simp] theorem pairC_24_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_31_fwd

end MathCase.RamseyR55
