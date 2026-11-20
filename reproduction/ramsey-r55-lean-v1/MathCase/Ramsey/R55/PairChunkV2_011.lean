import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_1_41_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_41_fwd
@[simp] theorem pairC_1_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_41_fwd

@[simp] theorem pairG_2_9_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_9_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_9_rev : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_9_fwd
@[simp] theorem pairC_2_9_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_9_fwd

@[simp] theorem pairG_2_14_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_14_fwd
@[simp] theorem pairC_2_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_14_fwd

@[simp] theorem pairG_2_24_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_24_fwd
@[simp] theorem pairC_2_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_24_fwd

@[simp] theorem pairG_2_33_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_33_fwd
@[simp] theorem pairC_2_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_33_fwd

@[simp] theorem pairG_2_38_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_38_fwd
@[simp] theorem pairC_2_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_38_fwd

@[simp] theorem pairG_2_39_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_39_fwd
@[simp] theorem pairC_2_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_39_fwd

@[simp] theorem pairG_2_40_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_40_fwd
@[simp] theorem pairC_2_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_40_fwd

@[simp] theorem pairG_2_41_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_41_fwd
@[simp] theorem pairC_2_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_41_fwd

@[simp] theorem pairG_3_6_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_6_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_6_rev : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_6_fwd
@[simp] theorem pairC_3_6_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_6_fwd

@[simp] theorem pairG_3_7_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_7_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_7_rev : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_7_fwd
@[simp] theorem pairC_3_7_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_7_fwd

@[simp] theorem pairG_3_10_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_10_fwd
@[simp] theorem pairC_3_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_10_fwd

@[simp] theorem pairG_3_11_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_11_fwd
@[simp] theorem pairC_3_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_11_fwd

@[simp] theorem pairG_3_15_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_15_fwd
@[simp] theorem pairC_3_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_15_fwd

@[simp] theorem pairG_3_18_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_18_fwd
@[simp] theorem pairC_3_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_18_fwd

@[simp] theorem pairG_3_25_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_25_fwd
@[simp] theorem pairC_3_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_25_fwd

@[simp] theorem pairG_3_31_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_31_fwd
@[simp] theorem pairC_3_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_31_fwd

@[simp] theorem pairG_3_34_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_34_fwd
@[simp] theorem pairC_3_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_34_fwd

@[simp] theorem pairG_3_38_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_38_fwd
@[simp] theorem pairC_3_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_38_fwd

@[simp] theorem pairG_3_39_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_39_fwd
@[simp] theorem pairC_3_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_39_fwd

@[simp] theorem pairG_3_41_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_41_fwd
@[simp] theorem pairC_3_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_41_fwd

@[simp] theorem pairG_4_8_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_8_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_8_rev : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_8_fwd
@[simp] theorem pairC_4_8_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_8_fwd

@[simp] theorem pairG_4_9_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_9_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_9_rev : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_9_fwd
@[simp] theorem pairC_4_9_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_9_fwd

@[simp] theorem pairG_4_10_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_10_fwd
@[simp] theorem pairC_4_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_10_fwd

@[simp] theorem pairG_4_11_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_11_fwd
@[simp] theorem pairC_4_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_11_fwd

@[simp] theorem pairG_4_16_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_16_fwd
@[simp] theorem pairC_4_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_16_fwd

@[simp] theorem pairG_4_35_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_35_fwd
@[simp] theorem pairC_4_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_35_fwd

@[simp] theorem pairG_4_40_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_40_fwd
@[simp] theorem pairC_4_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_40_fwd

@[simp] theorem pairG_5_10_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_10_fwd
@[simp] theorem pairC_5_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_10_fwd

@[simp] theorem pairG_5_12_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_12_fwd
@[simp] theorem pairC_5_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_12_fwd

@[simp] theorem pairG_5_17_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_17_fwd
@[simp] theorem pairC_5_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_17_fwd

@[simp] theorem pairG_5_33_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_33_fwd
@[simp] theorem pairC_5_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_33_fwd

end MathCase.RamseyR55
