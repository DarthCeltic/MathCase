import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_1_34_fwd : noK5AtEdge exoo42Witness (⟨1, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_1_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨1, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_1_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_1_34_fwd
@[simp] theorem pairC_1_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨1, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_1_34_fwd

@[simp] theorem pairG_2_3_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_3_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_3_rev : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_3_fwd
@[simp] theorem pairC_2_3_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_3_fwd

@[simp] theorem pairG_2_5_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_5_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_5_rev : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_5_fwd
@[simp] theorem pairC_2_5_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_5_fwd

@[simp] theorem pairG_2_8_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_8_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_8_rev : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_8_fwd
@[simp] theorem pairC_2_8_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_8_fwd

@[simp] theorem pairG_2_10_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_10_fwd
@[simp] theorem pairC_2_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_10_fwd

@[simp] theorem pairG_2_12_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_12_fwd
@[simp] theorem pairC_2_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_12_fwd

@[simp] theorem pairG_2_18_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_18_fwd
@[simp] theorem pairC_2_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_18_fwd

@[simp] theorem pairG_2_19_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_19_fwd
@[simp] theorem pairC_2_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_19_fwd

@[simp] theorem pairG_2_20_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_20_fwd
@[simp] theorem pairC_2_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_20_fwd

@[simp] theorem pairG_2_21_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_21_fwd
@[simp] theorem pairC_2_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_21_fwd

@[simp] theorem pairG_2_23_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_23_fwd
@[simp] theorem pairC_2_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_23_fwd

@[simp] theorem pairG_2_26_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_26_fwd
@[simp] theorem pairC_2_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_26_fwd

@[simp] theorem pairG_2_27_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_27_fwd
@[simp] theorem pairC_2_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_27_fwd

@[simp] theorem pairG_2_28_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_28_fwd
@[simp] theorem pairC_2_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_28_fwd

@[simp] theorem pairG_2_29_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_29_fwd
@[simp] theorem pairC_2_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_29_fwd

@[simp] theorem pairG_2_35_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_35_fwd
@[simp] theorem pairC_2_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_35_fwd

@[simp] theorem pairG_2_37_fwd : noK5AtEdge exoo42Witness (⟨2, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_2_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨2, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_2_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_2_37_fwd
@[simp] theorem pairC_2_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨2, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_2_37_fwd

@[simp] theorem pairG_3_13_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_13_fwd
@[simp] theorem pairC_3_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_13_fwd

@[simp] theorem pairG_3_19_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_19_fwd
@[simp] theorem pairC_3_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_19_fwd

@[simp] theorem pairG_3_20_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_20_fwd
@[simp] theorem pairC_3_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_20_fwd

@[simp] theorem pairG_3_21_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_21_fwd
@[simp] theorem pairC_3_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_21_fwd

@[simp] theorem pairG_3_22_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_22_fwd
@[simp] theorem pairC_3_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_22_fwd

@[simp] theorem pairG_3_24_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_24_fwd
@[simp] theorem pairC_3_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_24_fwd

@[simp] theorem pairG_3_28_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_28_fwd
@[simp] theorem pairC_3_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_28_fwd

@[simp] theorem pairG_3_29_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_29_fwd
@[simp] theorem pairC_3_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_29_fwd

@[simp] theorem pairG_3_30_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_30_fwd
@[simp] theorem pairC_3_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_30_fwd

@[simp] theorem pairG_3_36_fwd : noK5AtEdge exoo42Witness (⟨3, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_3_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨3, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_3_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_3_36_fwd
@[simp] theorem pairC_3_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨3, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_3_36_fwd

@[simp] theorem pairG_4_7_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_7_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_7_rev : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_7_fwd
@[simp] theorem pairC_4_7_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_7_fwd

@[simp] theorem pairG_4_14_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_14_fwd
@[simp] theorem pairC_4_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_14_fwd

@[simp] theorem pairG_4_20_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_20_fwd
@[simp] theorem pairC_4_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_20_fwd

@[simp] theorem pairG_4_21_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_21_fwd
@[simp] theorem pairC_4_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_21_fwd

@[simp] theorem pairG_4_22_fwd : noK5AtEdge exoo42Witness (⟨4, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_4_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨4, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_4_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_4_22_fwd
@[simp] theorem pairC_4_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨4, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_4_22_fwd

end MathCase.RamseyR55
