import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_0_2_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_2_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_2_rev : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_2_fwd
@[simp] theorem pairC_0_2_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_2_fwd

@[simp] theorem pairG_1_3_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_3_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_3_rev : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_3_fwd
@[simp] theorem pairC_1_3_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_3_fwd

@[simp] theorem pairG_2_25_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_25_fwd
@[simp] theorem pairC_2_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_25_fwd

@[simp] theorem pairG_4_13_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_13_fwd
@[simp] theorem pairC_4_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_13_fwd

@[simp] theorem pairG_6_15_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_15_fwd
@[simp] theorem pairC_6_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_15_fwd

@[simp] theorem pairG_6_40_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_40_fwd
@[simp] theorem pairC_6_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_40_fwd

@[simp] theorem pairG_7_9_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_9_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_9_rev : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_9_fwd
@[simp] theorem pairC_7_9_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_9_fwd

@[simp] theorem pairG_8_28_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_28_fwd
@[simp] theorem pairC_8_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_28_fwd

@[simp] theorem pairG_10_12_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_12_fwd
@[simp] theorem pairC_10_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_12_fwd

@[simp] theorem pairG_11_34_fwd : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_11_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_11_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_11_34_fwd
@[simp] theorem pairC_11_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_11_34_fwd

@[simp] theorem pairG_15_24_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_24_fwd
@[simp] theorem pairC_15_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_24_fwd

@[simp] theorem pairG_16_18_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_18_fwd
@[simp] theorem pairC_16_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_18_fwd

@[simp] theorem pairG_17_37_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_37_fwd
@[simp] theorem pairC_17_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_37_fwd

@[simp] theorem pairG_18_20_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_20_fwd
@[simp] theorem pairC_18_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_20_fwd

@[simp] theorem pairG_25_27_fwd : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_25_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_25_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_25_27_fwd
@[simp] theorem pairC_25_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_25_27_fwd

@[simp] theorem pairG_27_29_fwd : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_27_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_27_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_27_29_fwd
@[simp] theorem pairC_27_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_27_29_fwd

@[simp] theorem pairG_32_41_fwd : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_32_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_32_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_32_41_fwd
@[simp] theorem pairC_32_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_32_41_fwd

@[simp] theorem pairG_33_35_fwd : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_33_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_33_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_33_35_fwd
@[simp] theorem pairC_33_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_33_35_fwd

@[simp] theorem pairG_34_36_fwd : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_34_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_34_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_34_36_fwd
@[simp] theorem pairC_34_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_34_36_fwd

@[simp] theorem pairG_35_37_fwd : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_35_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_35_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_35_37_fwd
@[simp] theorem pairC_35_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_35_37_fwd

@[simp] theorem pairG_36_38_fwd : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_36_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_36_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_36_38_fwd
@[simp] theorem pairC_36_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_36_38_fwd

@[simp] theorem pairG_0_11_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_11_fwd
@[simp] theorem pairC_0_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_11_fwd

@[simp] theorem pairG_0_20_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_20_fwd
@[simp] theorem pairC_0_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_20_fwd

@[simp] theorem pairG_0_23_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_23_fwd
@[simp] theorem pairC_0_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_23_fwd

@[simp] theorem pairG_0_32_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_32_fwd
@[simp] theorem pairC_0_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_32_fwd

@[simp] theorem pairG_0_41_fwd : noK5AtEdge exoo42Witness (⟨0, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_0_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨0, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_0_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_0_41_fwd
@[simp] theorem pairC_0_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨0, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_0_41_fwd

@[simp] theorem pairG_1_12_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_12_fwd
@[simp] theorem pairC_1_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_12_fwd

@[simp] theorem pairG_1_21_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_21_fwd
@[simp] theorem pairC_1_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_21_fwd

@[simp] theorem pairG_1_31_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_31_fwd
@[simp] theorem pairC_1_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_31_fwd

@[simp] theorem pairG_1_33_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_33_fwd
@[simp] theorem pairC_1_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_33_fwd

@[simp] theorem pairG_2_4_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_4_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_4_rev : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_4_fwd
@[simp] theorem pairC_2_4_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_4_fwd

@[simp] theorem pairG_2_13_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_13_fwd
@[simp] theorem pairC_2_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_13_fwd

end MathCase.RamseyR55
