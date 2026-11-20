import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_11_15_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_15_fwd
@[simp] theorem pairC_11_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_15_fwd

@[simp] theorem pairG_11_24_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_24_fwd
@[simp] theorem pairC_11_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_24_fwd

@[simp] theorem pairG_11_26_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_26_fwd
@[simp] theorem pairC_11_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_26_fwd

@[simp] theorem pairG_11_39_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_39_fwd
@[simp] theorem pairC_11_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_39_fwd

@[simp] theorem pairG_11_41_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_41_fwd
@[simp] theorem pairC_11_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_41_fwd

@[simp] theorem pairG_12_16_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_16_fwd
@[simp] theorem pairC_12_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_16_fwd

@[simp] theorem pairG_12_18_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_18_fwd
@[simp] theorem pairC_12_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_18_fwd

@[simp] theorem pairG_12_27_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_27_fwd
@[simp] theorem pairC_12_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_27_fwd

@[simp] theorem pairG_12_40_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_40_fwd
@[simp] theorem pairC_12_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_40_fwd

@[simp] theorem pairG_12_41_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_41_fwd
@[simp] theorem pairC_12_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_41_fwd

@[simp] theorem pairG_13_17_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_17_fwd
@[simp] theorem pairC_13_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_17_fwd

@[simp] theorem pairG_13_19_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_19_fwd
@[simp] theorem pairC_13_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_19_fwd

@[simp] theorem pairG_13_21_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_21_fwd
@[simp] theorem pairC_13_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_21_fwd

@[simp] theorem pairG_13_27_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_27_fwd
@[simp] theorem pairC_13_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_27_fwd

@[simp] theorem pairG_13_28_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_28_fwd
@[simp] theorem pairC_13_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_28_fwd

@[simp] theorem pairG_13_41_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_41_fwd
@[simp] theorem pairC_13_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_41_fwd

@[simp] theorem pairG_14_20_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_20_fwd
@[simp] theorem pairC_14_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_20_fwd

@[simp] theorem pairG_14_27_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_27_fwd
@[simp] theorem pairC_14_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_27_fwd

@[simp] theorem pairG_14_28_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_28_fwd
@[simp] theorem pairC_14_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_28_fwd

@[simp] theorem pairG_14_29_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_29_fwd
@[simp] theorem pairC_14_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_29_fwd

@[simp] theorem pairG_15_19_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_19_fwd
@[simp] theorem pairC_15_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_19_fwd

@[simp] theorem pairG_15_21_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_21_fwd
@[simp] theorem pairC_15_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_21_fwd

@[simp] theorem pairG_15_30_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_30_fwd
@[simp] theorem pairC_15_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_30_fwd

@[simp] theorem pairG_16_24_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_24_fwd
@[simp] theorem pairC_16_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_24_fwd

@[simp] theorem pairG_16_25_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_25_fwd
@[simp] theorem pairC_16_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_25_fwd

@[simp] theorem pairG_16_29_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_29_fwd
@[simp] theorem pairC_16_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_29_fwd

@[simp] theorem pairG_16_30_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_30_fwd
@[simp] theorem pairC_16_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_30_fwd

@[simp] theorem pairG_16_31_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_31_fwd
@[simp] theorem pairC_16_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_31_fwd

@[simp] theorem pairG_17_23_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_23_fwd
@[simp] theorem pairC_17_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_23_fwd

@[simp] theorem pairG_17_30_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_30_fwd
@[simp] theorem pairC_17_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_30_fwd

@[simp] theorem pairG_17_31_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_31_fwd
@[simp] theorem pairC_17_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_31_fwd

@[simp] theorem pairG_17_32_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_32_fwd
@[simp] theorem pairC_17_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_32_fwd

end MathCase.RamseyR55
