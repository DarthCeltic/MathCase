import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_34_39_fwd : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_34_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_34_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_34_39_fwd
@[simp] theorem pairC_34_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_34_39_fwd

@[simp] theorem pairG_36_39_fwd : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_36_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_36_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_36_39_fwd
@[simp] theorem pairC_36_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_36_39_fwd

@[simp] theorem pairG_36_41_fwd : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_36_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_36_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_36_41_fwd
@[simp] theorem pairC_36_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_36_41_fwd

@[simp] theorem pairG_37_38_fwd : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_37_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_37_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_37_38_fwd
@[simp] theorem pairC_37_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_37_38_fwd

@[simp] theorem pairG_38_41_fwd : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_38_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_38_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_38_41_fwd
@[simp] theorem pairC_38_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_38_41_fwd

@[simp] theorem pairG_39_40_fwd : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_39_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_39_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_39_40_fwd
@[simp] theorem pairC_39_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_39_40_fwd

@[simp] theorem pairG_40_41_fwd : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_40_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_40_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_40_41_fwd
@[simp] theorem pairC_40_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_40_41_fwd

@[simp] theorem pairG_0_10_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_10_fwd
@[simp] theorem pairC_0_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_10_fwd

@[simp] theorem pairG_1_11_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_11_fwd
@[simp] theorem pairC_1_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_11_fwd

@[simp] theorem pairG_1_17_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_17_fwd
@[simp] theorem pairC_1_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_17_fwd

@[simp] theorem pairG_1_19_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_19_fwd
@[simp] theorem pairC_1_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_19_fwd

@[simp] theorem pairG_1_26_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_26_fwd
@[simp] theorem pairC_1_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_26_fwd

@[simp] theorem pairG_1_28_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_28_fwd
@[simp] theorem pairC_1_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_28_fwd

@[simp] theorem pairG_2_7_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_7_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_7_rev : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_7_fwd
@[simp] theorem pairC_2_7_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_7_fwd

@[simp] theorem pairG_3_4_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_4_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_4_rev : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_4_fwd
@[simp] theorem pairC_3_4_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_4_fwd

@[simp] theorem pairG_3_8_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_8_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_8_rev : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_8_fwd
@[simp] theorem pairC_3_8_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_8_fwd

@[simp] theorem pairG_3_27_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_27_fwd
@[simp] theorem pairC_3_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_27_fwd

@[simp] theorem pairG_4_5_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_5_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_5_rev : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_5_fwd
@[simp] theorem pairC_4_5_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_5_fwd

@[simp] theorem pairG_4_23_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_23_fwd
@[simp] theorem pairC_4_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_23_fwd

@[simp] theorem pairG_6_22_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_22_fwd
@[simp] theorem pairC_6_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_22_fwd

@[simp] theorem pairG_6_24_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_24_fwd
@[simp] theorem pairC_6_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_24_fwd

@[simp] theorem pairG_6_28_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_28_fwd
@[simp] theorem pairC_6_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_28_fwd

@[simp] theorem pairG_7_33_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_33_fwd
@[simp] theorem pairC_7_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_33_fwd

@[simp] theorem pairG_8_25_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_25_fwd
@[simp] theorem pairC_8_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_25_fwd

@[simp] theorem pairG_8_27_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_27_fwd
@[simp] theorem pairC_8_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_27_fwd

@[simp] theorem pairG_8_34_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_34_fwd
@[simp] theorem pairC_8_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_34_fwd

@[simp] theorem pairG_9_19_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_19_fwd
@[simp] theorem pairC_9_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_19_fwd

@[simp] theorem pairG_11_12_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_12_fwd
@[simp] theorem pairC_11_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_12_fwd

@[simp] theorem pairG_11_21_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_21_fwd
@[simp] theorem pairC_11_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_21_fwd

@[simp] theorem pairG_11_29_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_29_fwd
@[simp] theorem pairC_11_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_29_fwd

@[simp] theorem pairG_12_22_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_22_fwd
@[simp] theorem pairC_12_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_22_fwd

@[simp] theorem pairG_12_28_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_28_fwd
@[simp] theorem pairC_12_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_28_fwd

end MathCase.RamseyR55
