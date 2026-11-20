import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_12_39_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_39_fwd
@[simp] theorem pairC_12_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_39_fwd

@[simp] theorem pairG_13_14_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_14_fwd
@[simp] theorem pairC_13_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_14_fwd

@[simp] theorem pairG_13_20_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_20_fwd
@[simp] theorem pairC_13_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_20_fwd

@[simp] theorem pairG_13_23_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_23_fwd
@[simp] theorem pairC_13_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_23_fwd

@[simp] theorem pairG_13_30_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_30_fwd
@[simp] theorem pairC_13_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_30_fwd

@[simp] theorem pairG_13_31_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_31_fwd
@[simp] theorem pairC_13_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_31_fwd

@[simp] theorem pairG_13_32_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_32_fwd
@[simp] theorem pairC_13_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_32_fwd

@[simp] theorem pairG_13_34_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_34_fwd
@[simp] theorem pairC_13_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_34_fwd

@[simp] theorem pairG_13_37_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_37_fwd
@[simp] theorem pairC_13_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_37_fwd

@[simp] theorem pairG_13_38_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_38_fwd
@[simp] theorem pairC_13_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_38_fwd

@[simp] theorem pairG_13_39_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_39_fwd
@[simp] theorem pairC_13_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_39_fwd

@[simp] theorem pairG_14_15_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_15_fwd
@[simp] theorem pairC_14_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_15_fwd

@[simp] theorem pairG_14_24_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_24_fwd
@[simp] theorem pairC_14_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_24_fwd

@[simp] theorem pairG_14_30_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_30_fwd
@[simp] theorem pairC_14_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_30_fwd

@[simp] theorem pairG_14_31_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_31_fwd
@[simp] theorem pairC_14_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_31_fwd

@[simp] theorem pairG_14_32_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_32_fwd
@[simp] theorem pairC_14_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_32_fwd

@[simp] theorem pairG_14_35_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_35_fwd
@[simp] theorem pairC_14_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_35_fwd

@[simp] theorem pairG_14_36_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_36_fwd
@[simp] theorem pairC_14_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_36_fwd

@[simp] theorem pairG_14_39_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_39_fwd
@[simp] theorem pairC_14_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_39_fwd

@[simp] theorem pairG_14_40_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_40_fwd
@[simp] theorem pairC_14_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_40_fwd

@[simp] theorem pairG_14_41_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_41_fwd
@[simp] theorem pairC_14_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_41_fwd

@[simp] theorem pairG_15_16_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_16_fwd
@[simp] theorem pairC_15_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_16_fwd

@[simp] theorem pairG_15_22_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_22_fwd
@[simp] theorem pairC_15_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_22_fwd

@[simp] theorem pairG_15_25_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_25_fwd
@[simp] theorem pairC_15_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_25_fwd

@[simp] theorem pairG_15_31_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_31_fwd
@[simp] theorem pairC_15_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_31_fwd

@[simp] theorem pairG_15_32_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_32_fwd
@[simp] theorem pairC_15_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_32_fwd

@[simp] theorem pairG_15_33_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_33_fwd
@[simp] theorem pairC_15_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_33_fwd

@[simp] theorem pairG_15_34_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_34_fwd
@[simp] theorem pairC_15_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_34_fwd

@[simp] theorem pairG_15_36_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_36_fwd
@[simp] theorem pairC_15_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_36_fwd

@[simp] theorem pairG_15_37_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_37_fwd
@[simp] theorem pairC_15_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_37_fwd

@[simp] theorem pairG_15_39_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_39_fwd
@[simp] theorem pairC_15_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_39_fwd

@[simp] theorem pairG_15_41_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_41_fwd
@[simp] theorem pairC_15_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_41_fwd

end MathCase.RamseyR55
