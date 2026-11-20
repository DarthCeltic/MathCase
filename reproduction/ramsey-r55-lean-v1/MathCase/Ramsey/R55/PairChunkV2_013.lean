import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_10_15_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_15_fwd
@[simp] theorem pairC_10_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_15_fwd

@[simp] theorem pairG_10_22_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_22_fwd
@[simp] theorem pairC_10_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_22_fwd

@[simp] theorem pairG_10_24_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_24_fwd
@[simp] theorem pairC_10_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_24_fwd

@[simp] theorem pairG_10_38_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_38_fwd
@[simp] theorem pairC_10_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_38_fwd

@[simp] theorem pairG_11_14_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_14_fwd
@[simp] theorem pairC_11_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_14_fwd

@[simp] theorem pairG_11_17_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_17_fwd
@[simp] theorem pairC_11_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_17_fwd

@[simp] theorem pairG_11_18_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_18_fwd
@[simp] theorem pairC_11_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_18_fwd

@[simp] theorem pairG_11_19_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_19_fwd
@[simp] theorem pairC_11_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_19_fwd

@[simp] theorem pairG_11_23_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_23_fwd
@[simp] theorem pairC_11_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_23_fwd

@[simp] theorem pairG_11_33_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_33_fwd
@[simp] theorem pairC_11_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_33_fwd

@[simp] theorem pairG_11_40_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_40_fwd
@[simp] theorem pairC_11_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_40_fwd

@[simp] theorem pairG_12_15_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_15_fwd
@[simp] theorem pairC_12_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_15_fwd

@[simp] theorem pairG_12_20_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_20_fwd
@[simp] theorem pairC_12_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_20_fwd

@[simp] theorem pairG_12_24_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_24_fwd
@[simp] theorem pairC_12_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_24_fwd

@[simp] theorem pairG_12_26_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_26_fwd
@[simp] theorem pairC_12_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_26_fwd

@[simp] theorem pairG_12_34_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_34_fwd
@[simp] theorem pairC_12_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_34_fwd

@[simp] theorem pairG_13_16_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_16_fwd
@[simp] theorem pairC_13_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_16_fwd

@[simp] theorem pairG_13_18_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_18_fwd
@[simp] theorem pairC_13_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_18_fwd

@[simp] theorem pairG_13_25_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_25_fwd
@[simp] theorem pairC_13_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_25_fwd

@[simp] theorem pairG_13_26_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_26_fwd
@[simp] theorem pairC_13_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_26_fwd

@[simp] theorem pairG_14_17_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_17_fwd
@[simp] theorem pairC_14_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_17_fwd

@[simp] theorem pairG_14_18_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_18_fwd
@[simp] theorem pairC_14_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_18_fwd

@[simp] theorem pairG_14_19_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_19_fwd
@[simp] theorem pairC_14_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_19_fwd

@[simp] theorem pairG_14_21_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_21_fwd
@[simp] theorem pairC_14_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_21_fwd

@[simp] theorem pairG_14_26_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_26_fwd
@[simp] theorem pairC_14_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_26_fwd

@[simp] theorem pairG_15_18_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_18_fwd
@[simp] theorem pairC_15_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_18_fwd

@[simp] theorem pairG_15_20_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_20_fwd
@[simp] theorem pairC_15_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_20_fwd

@[simp] theorem pairG_15_27_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_27_fwd
@[simp] theorem pairC_15_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_27_fwd

@[simp] theorem pairG_15_28_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_28_fwd
@[simp] theorem pairC_15_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_28_fwd

@[simp] theorem pairG_15_29_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_29_fwd
@[simp] theorem pairC_15_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_29_fwd

@[simp] theorem pairG_16_19_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_19_fwd
@[simp] theorem pairC_16_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_19_fwd

@[simp] theorem pairG_16_20_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_20_fwd
@[simp] theorem pairC_16_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_20_fwd

end MathCase.RamseyR55
