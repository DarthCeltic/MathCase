import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_12_30_fwd : noK5AtEdge exoo42Witness (⟨12, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_12_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨12, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_12_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_12_30_fwd
@[simp] theorem pairC_12_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨12, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_12_30_fwd

@[simp] theorem pairG_13_29_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_29_fwd
@[simp] theorem pairC_13_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_29_fwd

@[simp] theorem pairG_13_35_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_35_fwd
@[simp] theorem pairC_13_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_35_fwd

@[simp] theorem pairG_13_40_fwd : noK5AtEdge exoo42Witness (⟨13, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_13_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨13, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_13_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_13_40_fwd
@[simp] theorem pairC_13_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨13, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_13_40_fwd

@[simp] theorem pairG_14_33_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_33_fwd
@[simp] theorem pairC_14_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_33_fwd

@[simp] theorem pairG_14_38_fwd : noK5AtEdge exoo42Witness (⟨14, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_14_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨14, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_14_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_14_38_fwd
@[simp] theorem pairC_14_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨14, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_14_38_fwd

@[simp] theorem pairG_15_40_fwd : noK5AtEdge exoo42Witness (⟨15, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_15_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨15, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_15_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_15_40_fwd
@[simp] theorem pairC_15_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨15, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_15_40_fwd

@[simp] theorem pairG_16_33_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_33_fwd
@[simp] theorem pairC_16_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_33_fwd

@[simp] theorem pairG_17_35_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_35_fwd
@[simp] theorem pairC_17_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_35_fwd

@[simp] theorem pairG_18_37_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_37_fwd
@[simp] theorem pairC_18_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_37_fwd

@[simp] theorem pairG_19_29_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_29_fwd
@[simp] theorem pairC_19_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_29_fwd

@[simp] theorem pairG_19_35_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_35_fwd
@[simp] theorem pairC_19_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_35_fwd

@[simp] theorem pairG_19_40_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_40_fwd
@[simp] theorem pairC_19_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_40_fwd

@[simp] theorem pairG_20_25_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_25_fwd
@[simp] theorem pairC_20_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_25_fwd

@[simp] theorem pairG_20_30_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_30_fwd
@[simp] theorem pairC_20_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_30_fwd

@[simp] theorem pairG_21_22_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_22_fwd
@[simp] theorem pairC_21_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_22_fwd

@[simp] theorem pairG_21_26_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_26_fwd
@[simp] theorem pairC_21_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_26_fwd

@[simp] theorem pairG_22_32_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_32_fwd
@[simp] theorem pairC_22_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_32_fwd

@[simp] theorem pairG_22_40_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_40_fwd
@[simp] theorem pairC_22_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_40_fwd

@[simp] theorem pairG_24_40_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_40_fwd
@[simp] theorem pairC_24_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_40_fwd

@[simp] theorem pairG_26_31_fwd : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_26_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_26_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_26_31_fwd
@[simp] theorem pairC_26_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_26_31_fwd

@[simp] theorem pairG_28_29_fwd : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_28_29_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨29, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_28_29_rev : noK5AtEdge exoo42Witness (⟨29, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_28_29_fwd
@[simp] theorem pairC_28_29_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨29, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_28_29_fwd

@[simp] theorem pairG_30_31_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_31_fwd
@[simp] theorem pairC_30_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_31_fwd

@[simp] theorem pairG_30_40_fwd : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_30_40_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨40, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_30_40_rev : noK5AtEdge exoo42Witness (⟨40, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_30_40_fwd
@[simp] theorem pairC_30_40_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨40, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_30_40_fwd

@[simp] theorem pairG_31_32_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_32_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨32, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_32_rev : noK5AtEdge exoo42Witness (⟨32, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_32_fwd
@[simp] theorem pairC_31_32_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨32, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_32_fwd

@[simp] theorem pairG_31_36_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_36_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨36, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_36_rev : noK5AtEdge exoo42Witness (⟨36, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_36_fwd
@[simp] theorem pairC_31_36_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨36, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_36_fwd

@[simp] theorem pairG_31_41_fwd : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_31_41_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨41, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_31_41_rev : noK5AtEdge exoo42Witness (⟨41, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_31_41_fwd
@[simp] theorem pairC_31_41_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨41, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_31_41_fwd

@[simp] theorem pairG_34_37_fwd : noK5AtEdge exoo42Witness (⟨34, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_34_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨34, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_34_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_34_37_fwd
@[simp] theorem pairC_34_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨34, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_34_37_fwd

@[simp] theorem pairG_38_39_fwd : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_38_39_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨39, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_38_39_rev : noK5AtEdge exoo42Witness (⟨39, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_38_39_fwd
@[simp] theorem pairC_38_39_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨39, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_38_39_fwd

end MathCase.RamseyR55
