import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_7_8_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_8_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_8_rev : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_8_fwd
@[simp] theorem pairC_7_8_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_8_fwd

@[simp] theorem pairG_7_17_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_17_fwd
@[simp] theorem pairC_7_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_17_fwd

@[simp] theorem pairG_7_23_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_23_fwd
@[simp] theorem pairC_7_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_23_fwd

@[simp] theorem pairG_7_24_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_24_fwd
@[simp] theorem pairC_7_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_24_fwd

@[simp] theorem pairG_7_25_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_25_fwd
@[simp] theorem pairC_7_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_25_fwd

@[simp] theorem pairG_7_26_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_26_fwd
@[simp] theorem pairC_7_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_26_fwd

@[simp] theorem pairG_7_29_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_29_fwd
@[simp] theorem pairC_7_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_29_fwd

@[simp] theorem pairG_7_31_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_31_fwd
@[simp] theorem pairC_7_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_31_fwd

@[simp] theorem pairG_7_32_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_32_fwd
@[simp] theorem pairC_7_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_32_fwd

@[simp] theorem pairG_7_34_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_34_fwd
@[simp] theorem pairC_7_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_34_fwd

@[simp] theorem pairG_7_40_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_40_fwd
@[simp] theorem pairC_7_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_40_fwd

@[simp] theorem pairG_8_11_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_11_fwd
@[simp] theorem pairC_8_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_11_fwd

@[simp] theorem pairG_8_16_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_16_fwd
@[simp] theorem pairC_8_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_16_fwd

@[simp] theorem pairG_8_18_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_18_fwd
@[simp] theorem pairC_8_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_18_fwd

@[simp] theorem pairG_8_24_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_24_fwd
@[simp] theorem pairC_8_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_24_fwd

@[simp] theorem pairG_8_26_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_26_fwd
@[simp] theorem pairC_8_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_26_fwd

@[simp] theorem pairG_8_32_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_32_fwd
@[simp] theorem pairC_8_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_32_fwd

@[simp] theorem pairG_8_33_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_33_fwd
@[simp] theorem pairC_8_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_33_fwd

@[simp] theorem pairG_8_35_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_35_fwd
@[simp] theorem pairC_8_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_35_fwd

@[simp] theorem pairG_8_41_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_41_fwd
@[simp] theorem pairC_8_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_41_fwd

@[simp] theorem pairG_9_10_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_10_fwd
@[simp] theorem pairC_9_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_10_fwd

@[simp] theorem pairG_9_25_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_25_fwd
@[simp] theorem pairC_9_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_25_fwd

@[simp] theorem pairG_9_26_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_26_fwd
@[simp] theorem pairC_9_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_26_fwd

@[simp] theorem pairG_9_27_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_27_fwd
@[simp] theorem pairC_9_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_27_fwd

@[simp] theorem pairG_9_28_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_28_fwd
@[simp] theorem pairC_9_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_28_fwd

@[simp] theorem pairG_9_30_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_30_fwd
@[simp] theorem pairC_9_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_30_fwd

@[simp] theorem pairG_9_33_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_33_fwd
@[simp] theorem pairC_9_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_33_fwd

@[simp] theorem pairG_9_34_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_34_fwd
@[simp] theorem pairC_9_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_34_fwd

@[simp] theorem pairG_9_35_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_35_fwd
@[simp] theorem pairC_9_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_35_fwd

@[simp] theorem pairG_9_36_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_36_fwd
@[simp] theorem pairC_9_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_36_fwd

@[simp] theorem pairG_9_40_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_40_fwd
@[simp] theorem pairC_9_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_40_fwd

@[simp] theorem pairG_10_11_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_11_fwd
@[simp] theorem pairC_10_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_11_fwd

end MathCase.RamseyR55
