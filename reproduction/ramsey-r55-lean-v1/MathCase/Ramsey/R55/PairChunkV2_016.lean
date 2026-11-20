import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_32_36_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_36_fwd
@[simp] theorem pairC_32_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_36_fwd

@[simp] theorem pairG_32_39_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_39_fwd
@[simp] theorem pairC_32_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_39_fwd

@[simp] theorem pairG_33_39_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_39_fwd
@[simp] theorem pairC_33_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_39_fwd

@[simp] theorem pairG_33_40_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_40_fwd
@[simp] theorem pairC_33_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_40_fwd

@[simp] theorem pairG_34_35_fwd : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_34_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_34_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_34_35_fwd
@[simp] theorem pairC_34_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_34_35_fwd

@[simp] theorem pairG_34_41_fwd : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_34_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_34_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_34_41_fwd
@[simp] theorem pairC_34_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_34_41_fwd

@[simp] theorem pairG_35_36_fwd : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_35_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_35_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_35_36_fwd
@[simp] theorem pairC_35_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_35_36_fwd

@[simp] theorem pairG_35_38_fwd : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_35_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_35_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_35_38_fwd
@[simp] theorem pairC_35_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_35_38_fwd

@[simp] theorem pairG_35_40_fwd : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_35_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_35_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_35_40_fwd
@[simp] theorem pairC_35_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_35_40_fwd

@[simp] theorem pairG_36_37_fwd : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_36_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_36_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_36_37_fwd
@[simp] theorem pairC_36_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_36_37_fwd

@[simp] theorem pairG_37_40_fwd : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_37_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_37_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_37_40_fwd
@[simp] theorem pairC_37_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_37_40_fwd

@[simp] theorem pairG_37_41_fwd : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_37_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_37_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_37_41_fwd
@[simp] theorem pairC_37_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_37_41_fwd

@[simp] theorem pairG_0_1_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_1_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_1_rev : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_1_fwd
@[simp] theorem pairC_0_1_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_1_fwd

@[simp] theorem pairG_0_12_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_12_fwd
@[simp] theorem pairC_0_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_12_fwd

@[simp] theorem pairG_0_16_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_16_fwd
@[simp] theorem pairC_0_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_16_fwd

@[simp] theorem pairG_0_17_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_17_fwd
@[simp] theorem pairC_0_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_17_fwd

@[simp] theorem pairG_0_18_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_18_fwd
@[simp] theorem pairC_0_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_18_fwd

@[simp] theorem pairG_0_19_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_19_fwd
@[simp] theorem pairC_0_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_19_fwd

@[simp] theorem pairG_0_22_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_22_fwd
@[simp] theorem pairC_0_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_22_fwd

@[simp] theorem pairG_0_24_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_24_fwd
@[simp] theorem pairC_0_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_24_fwd

@[simp] theorem pairG_0_25_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_25_fwd
@[simp] theorem pairC_0_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_25_fwd

@[simp] theorem pairG_0_26_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_26_fwd
@[simp] theorem pairC_0_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_26_fwd

@[simp] theorem pairG_0_27_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_27_fwd
@[simp] theorem pairC_0_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_27_fwd

@[simp] theorem pairG_0_33_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_33_fwd
@[simp] theorem pairC_0_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_33_fwd

@[simp] theorem pairG_0_38_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_38_fwd
@[simp] theorem pairC_0_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_38_fwd

@[simp] theorem pairG_1_13_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_13_fwd
@[simp] theorem pairC_1_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_13_fwd

@[simp] theorem pairG_1_18_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_18_fwd
@[simp] theorem pairC_1_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_18_fwd

@[simp] theorem pairG_1_20_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_20_fwd
@[simp] theorem pairC_1_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_20_fwd

@[simp] theorem pairG_1_22_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_22_fwd
@[simp] theorem pairC_1_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_22_fwd

@[simp] theorem pairG_1_23_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_23_fwd
@[simp] theorem pairC_1_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_23_fwd

@[simp] theorem pairG_1_25_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_25_fwd
@[simp] theorem pairC_1_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_25_fwd

@[simp] theorem pairG_1_27_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_27_fwd
@[simp] theorem pairC_1_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_27_fwd

end MathCase.RamseyR55
