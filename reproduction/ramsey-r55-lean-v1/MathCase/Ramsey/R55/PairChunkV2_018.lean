import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_4_25_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_25_fwd
@[simp] theorem pairC_4_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_25_fwd

@[simp] theorem pairG_4_26_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_26_fwd
@[simp] theorem pairC_4_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_26_fwd

@[simp] theorem pairG_4_28_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_28_fwd
@[simp] theorem pairC_4_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_28_fwd

@[simp] theorem pairG_4_29_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_29_fwd
@[simp] theorem pairC_4_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_29_fwd

@[simp] theorem pairG_4_30_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_30_fwd
@[simp] theorem pairC_4_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_30_fwd

@[simp] theorem pairG_4_31_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_31_fwd
@[simp] theorem pairC_4_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_31_fwd

@[simp] theorem pairG_4_37_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_37_fwd
@[simp] theorem pairC_4_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_37_fwd

@[simp] theorem pairG_5_6_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_6_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_6_rev : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_6_fwd
@[simp] theorem pairC_5_6_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_6_fwd

@[simp] theorem pairG_5_8_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_8_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_8_rev : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_8_fwd
@[simp] theorem pairC_5_8_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_8_fwd

@[simp] theorem pairG_5_15_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_15_fwd
@[simp] theorem pairC_5_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_15_fwd

@[simp] theorem pairG_5_21_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_21_fwd
@[simp] theorem pairC_5_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_21_fwd

@[simp] theorem pairG_5_22_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_22_fwd
@[simp] theorem pairC_5_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_22_fwd

@[simp] theorem pairG_5_23_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_23_fwd
@[simp] theorem pairC_5_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_23_fwd

@[simp] theorem pairG_5_24_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_24_fwd
@[simp] theorem pairC_5_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_24_fwd

@[simp] theorem pairG_5_26_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_26_fwd
@[simp] theorem pairC_5_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_26_fwd

@[simp] theorem pairG_5_27_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_27_fwd
@[simp] theorem pairC_5_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_27_fwd

@[simp] theorem pairG_5_29_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_29_fwd
@[simp] theorem pairC_5_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_29_fwd

@[simp] theorem pairG_5_30_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_30_fwd
@[simp] theorem pairC_5_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_30_fwd

@[simp] theorem pairG_5_31_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_31_fwd
@[simp] theorem pairC_5_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_31_fwd

@[simp] theorem pairG_5_32_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_32_fwd
@[simp] theorem pairC_5_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_32_fwd

@[simp] theorem pairG_5_38_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_38_fwd
@[simp] theorem pairC_5_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_38_fwd

@[simp] theorem pairG_6_7_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_7_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_7_rev : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_7_fwd
@[simp] theorem pairC_6_7_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_7_fwd

@[simp] theorem pairG_6_13_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_13_fwd
@[simp] theorem pairC_6_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_13_fwd

@[simp] theorem pairG_6_16_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_16_fwd
@[simp] theorem pairC_6_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_16_fwd

@[simp] theorem pairG_6_23_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_23_fwd
@[simp] theorem pairC_6_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_23_fwd

@[simp] theorem pairG_6_25_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_25_fwd
@[simp] theorem pairC_6_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_25_fwd

@[simp] theorem pairG_6_27_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_27_fwd
@[simp] theorem pairC_6_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_27_fwd

@[simp] theorem pairG_6_30_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_30_fwd
@[simp] theorem pairC_6_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_30_fwd

@[simp] theorem pairG_6_31_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_31_fwd
@[simp] theorem pairC_6_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_31_fwd

@[simp] theorem pairG_6_32_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_32_fwd
@[simp] theorem pairC_6_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_32_fwd

@[simp] theorem pairG_6_33_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_33_fwd
@[simp] theorem pairC_6_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_33_fwd

@[simp] theorem pairG_6_39_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_39_fwd
@[simp] theorem pairC_6_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_39_fwd

end MathCase.RamseyR55
