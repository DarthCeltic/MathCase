import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_5_9_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_9_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_9_rev : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_9_fwd
@[simp] theorem pairC_5_9_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_9_fwd

@[simp] theorem pairG_5_11_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_11_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨11, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_11_rev : noK5AtEdge exoo42Witness (⟨11, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_11_fwd
@[simp] theorem pairC_5_11_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨11, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_11_fwd

@[simp] theorem pairG_5_18_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_18_fwd
@[simp] theorem pairC_5_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_18_fwd

@[simp] theorem pairG_5_19_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_19_fwd
@[simp] theorem pairC_5_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_19_fwd

@[simp] theorem pairG_5_20_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_20_fwd
@[simp] theorem pairC_5_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_20_fwd

@[simp] theorem pairG_5_34_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_34_fwd
@[simp] theorem pairC_5_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_34_fwd

@[simp] theorem pairG_5_35_fwd : noK5AtEdge exoo42Witness (⟨5, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_5_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨5, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_5_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_5_35_fwd
@[simp] theorem pairC_5_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨5, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_5_35_fwd

@[simp] theorem pairG_6_10_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_10_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_10_rev : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_10_fwd
@[simp] theorem pairC_6_10_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_10_fwd

@[simp] theorem pairG_6_12_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_12_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_12_rev : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_12_fwd
@[simp] theorem pairC_6_12_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_12_fwd

@[simp] theorem pairG_6_21_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_21_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_21_rev : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_21_fwd
@[simp] theorem pairC_6_21_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_21_fwd

@[simp] theorem pairG_6_34_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_34_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_34_rev : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_34_fwd
@[simp] theorem pairC_6_34_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_34_fwd

@[simp] theorem pairG_6_36_fwd : noK5AtEdge exoo42Witness (⟨6, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_6_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨6, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_6_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_6_36_fwd
@[simp] theorem pairC_6_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨6, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_6_36_fwd

@[simp] theorem pairG_7_13_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_13_fwd
@[simp] theorem pairC_7_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_13_fwd

@[simp] theorem pairG_7_22_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_22_fwd
@[simp] theorem pairC_7_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_22_fwd

@[simp] theorem pairG_7_35_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_35_fwd
@[simp] theorem pairC_7_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_35_fwd

@[simp] theorem pairG_7_36_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_36_fwd
@[simp] theorem pairC_7_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_36_fwd

@[simp] theorem pairG_7_38_fwd : noK5AtEdge exoo42Witness (⟨7, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_7_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨7, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_7_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_7_38_fwd
@[simp] theorem pairC_7_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨7, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_7_38_fwd

@[simp] theorem pairG_8_20_fwd : noK5AtEdge exoo42Witness (⟨8, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_8_20_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨8, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_8_20_rev : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_8_20_fwd
@[simp] theorem pairC_8_20_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨8, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_8_20_fwd

@[simp] theorem pairG_9_13_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_13_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_13_rev : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_13_fwd
@[simp] theorem pairC_9_13_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_13_fwd

@[simp] theorem pairG_9_15_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_15_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_15_rev : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_15_fwd
@[simp] theorem pairC_9_15_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_15_fwd

@[simp] theorem pairG_9_22_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_22_fwd
@[simp] theorem pairC_9_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_22_fwd

@[simp] theorem pairG_9_23_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_23_fwd
@[simp] theorem pairC_9_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_23_fwd

@[simp] theorem pairG_9_24_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_24_fwd
@[simp] theorem pairC_9_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_24_fwd

@[simp] theorem pairG_9_37_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_37_fwd
@[simp] theorem pairC_9_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_37_fwd

@[simp] theorem pairG_9_38_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_38_fwd
@[simp] theorem pairC_9_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_38_fwd

@[simp] theorem pairG_9_39_fwd : noK5AtEdge exoo42Witness (⟨9, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_9_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨9, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_9_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_9_39_fwd
@[simp] theorem pairC_9_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨9, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_9_39_fwd

@[simp] theorem pairG_10_14_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_14_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_14_rev : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_14_fwd
@[simp] theorem pairC_10_14_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_14_fwd

@[simp] theorem pairG_10_16_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_16_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_16_rev : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_16_fwd
@[simp] theorem pairC_10_16_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_16_fwd

@[simp] theorem pairG_10_23_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_23_fwd
@[simp] theorem pairC_10_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_23_fwd

@[simp] theorem pairG_10_25_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_25_fwd
@[simp] theorem pairC_10_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_25_fwd

@[simp] theorem pairG_10_39_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_39_fwd
@[simp] theorem pairC_10_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_39_fwd

@[simp] theorem pairG_10_40_fwd : noK5AtEdge exoo42Witness (⟨10, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_10_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨10, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_10_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_10_40_fwd
@[simp] theorem pairC_10_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨10, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_10_40_fwd

end MathCase.RamseyR55
