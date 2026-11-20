import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_0_28_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_28_fwd
@[simp] theorem pairC_0_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_28_fwd

@[simp] theorem pairG_0_30_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_30_fwd
@[simp] theorem pairC_0_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_30_fwd

@[simp] theorem pairG_0_39_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_39_fwd
@[simp] theorem pairC_0_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_39_fwd

@[simp] theorem pairG_1_5_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_5_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_5_rev : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_5_fwd
@[simp] theorem pairC_1_5_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_5_fwd

@[simp] theorem pairG_1_7_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_7_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_7_rev : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_7_fwd
@[simp] theorem pairC_1_7_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_7_fwd

@[simp] theorem pairG_1_14_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_14_fwd
@[simp] theorem pairC_1_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_14_fwd

@[simp] theorem pairG_1_16_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_16_fwd
@[simp] theorem pairC_1_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_16_fwd

@[simp] theorem pairG_1_29_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_29_fwd
@[simp] theorem pairC_1_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_29_fwd

@[simp] theorem pairG_1_30_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_30_fwd
@[simp] theorem pairC_1_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_30_fwd

@[simp] theorem pairG_1_38_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_38_fwd
@[simp] theorem pairC_1_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_38_fwd

@[simp] theorem pairG_1_40_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_40_fwd
@[simp] theorem pairC_1_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_40_fwd

@[simp] theorem pairG_2_6_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_6_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_6_rev : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_6_fwd
@[simp] theorem pairC_2_6_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_6_fwd

@[simp] theorem pairG_2_15_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_15_fwd
@[simp] theorem pairC_2_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_15_fwd

@[simp] theorem pairG_2_16_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_16_fwd
@[simp] theorem pairC_2_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_16_fwd

@[simp] theorem pairG_2_17_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_17_fwd
@[simp] theorem pairC_2_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_17_fwd

@[simp] theorem pairG_2_30_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_30_fwd
@[simp] theorem pairC_2_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_30_fwd

@[simp] theorem pairG_2_36_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_36_fwd
@[simp] theorem pairC_2_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_36_fwd

@[simp] theorem pairG_3_9_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_9_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_9_rev : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_9_fwd
@[simp] theorem pairC_3_9_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_9_fwd

@[simp] theorem pairG_3_16_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_16_fwd
@[simp] theorem pairC_3_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_16_fwd

@[simp] theorem pairG_3_17_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_17_fwd
@[simp] theorem pairC_3_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_17_fwd

@[simp] theorem pairG_3_32_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_32_fwd
@[simp] theorem pairC_3_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_32_fwd

@[simp] theorem pairG_3_33_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_33_fwd
@[simp] theorem pairC_3_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_33_fwd

@[simp] theorem pairG_3_37_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_37_fwd
@[simp] theorem pairC_3_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_37_fwd

@[simp] theorem pairG_3_40_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_40_fwd
@[simp] theorem pairC_3_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_40_fwd

@[simp] theorem pairG_4_17_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_17_fwd
@[simp] theorem pairC_4_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_17_fwd

@[simp] theorem pairG_4_18_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_18_fwd
@[simp] theorem pairC_4_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_18_fwd

@[simp] theorem pairG_4_19_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_19_fwd
@[simp] theorem pairC_4_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_19_fwd

@[simp] theorem pairG_4_32_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_32_fwd
@[simp] theorem pairC_4_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_32_fwd

@[simp] theorem pairG_4_33_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_33_fwd
@[simp] theorem pairC_4_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_33_fwd

@[simp] theorem pairG_4_34_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_34_fwd
@[simp] theorem pairC_4_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_34_fwd

@[simp] theorem pairG_4_39_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_39_fwd
@[simp] theorem pairC_4_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_39_fwd

@[simp] theorem pairG_4_41_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_41_fwd
@[simp] theorem pairC_4_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_41_fwd

end MathCase.RamseyR55
