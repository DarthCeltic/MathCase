import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_2_22_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_22_fwd
@[simp] theorem pairC_2_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_22_fwd

@[simp] theorem pairG_3_5_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_5_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_5_rev : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_5_fwd
@[simp] theorem pairC_3_5_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_5_fwd

@[simp] theorem pairG_3_12_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_12_fwd
@[simp] theorem pairC_3_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_12_fwd

@[simp] theorem pairG_3_23_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_23_fwd
@[simp] theorem pairC_3_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_23_fwd

@[simp] theorem pairG_3_26_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_26_fwd
@[simp] theorem pairC_3_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_26_fwd

@[simp] theorem pairG_3_35_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_35_fwd
@[simp] theorem pairC_3_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_35_fwd

@[simp] theorem pairG_4_6_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_6_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_6_rev : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_6_fwd
@[simp] theorem pairC_4_6_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_6_fwd

@[simp] theorem pairG_4_15_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_15_fwd
@[simp] theorem pairC_4_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_15_fwd

@[simp] theorem pairG_4_24_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_24_fwd
@[simp] theorem pairC_4_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_24_fwd

@[simp] theorem pairG_4_27_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_27_fwd
@[simp] theorem pairC_4_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_27_fwd

@[simp] theorem pairG_4_38_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_38_fwd
@[simp] theorem pairC_4_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_38_fwd

@[simp] theorem pairG_5_7_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_7_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_7_rev : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_7_fwd
@[simp] theorem pairC_5_7_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_7_fwd

@[simp] theorem pairG_5_14_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_14_fwd
@[simp] theorem pairC_5_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_14_fwd

@[simp] theorem pairG_5_25_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_25_fwd
@[simp] theorem pairC_5_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_25_fwd

@[simp] theorem pairG_5_28_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_28_fwd
@[simp] theorem pairC_5_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_28_fwd

@[simp] theorem pairG_5_39_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_39_fwd
@[simp] theorem pairC_5_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_39_fwd

@[simp] theorem pairG_6_8_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_8_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_8_rev : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_8_fwd
@[simp] theorem pairC_6_8_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_8_fwd

@[simp] theorem pairG_6_17_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_17_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_17_rev : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_17_fwd
@[simp] theorem pairC_6_17_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_17_fwd

@[simp] theorem pairG_6_38_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_38_fwd
@[simp] theorem pairC_6_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_38_fwd

@[simp] theorem pairG_7_27_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_27_fwd
@[simp] theorem pairC_7_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_27_fwd

@[simp] theorem pairG_7_30_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_30_fwd
@[simp] theorem pairC_7_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_30_fwd

@[simp] theorem pairG_7_41_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_41_fwd
@[simp] theorem pairC_7_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_41_fwd

@[simp] theorem pairG_8_10_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_10_fwd
@[simp] theorem pairC_8_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_10_fwd

@[simp] theorem pairG_8_19_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_19_fwd
@[simp] theorem pairC_8_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_19_fwd

@[simp] theorem pairG_8_21_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_21_fwd
@[simp] theorem pairC_8_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_21_fwd

@[simp] theorem pairG_8_31_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_31_fwd
@[simp] theorem pairC_8_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_31_fwd

@[simp] theorem pairG_8_40_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_40_fwd
@[simp] theorem pairC_8_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_40_fwd

@[simp] theorem pairG_9_11_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_11_fwd
@[simp] theorem pairC_9_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_11_fwd

@[simp] theorem pairG_9_20_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_20_fwd
@[simp] theorem pairC_9_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_20_fwd

@[simp] theorem pairG_9_32_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_32_fwd
@[simp] theorem pairC_9_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_32_fwd

@[simp] theorem pairG_9_41_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_41_fwd
@[simp] theorem pairC_9_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_41_fwd

@[simp] theorem pairG_10_21_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_21_fwd
@[simp] theorem pairC_10_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_21_fwd

end MathCase.RamseyR55
