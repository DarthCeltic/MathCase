import MathCase.Ramsey.R55.FoundationV4
set_option maxRecDepth 30000
set_option maxHeartbeats 0
namespace MathCase.RamseyR55

@[simp] theorem pairG_16_22_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_22_fwd
@[simp] theorem pairC_16_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_22_fwd

@[simp] theorem pairG_16_23_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_23_fwd
@[simp] theorem pairC_16_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_23_fwd

@[simp] theorem pairG_16_28_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_28_fwd
@[simp] theorem pairC_16_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_28_fwd

@[simp] theorem pairG_16_37_fwd : noK5AtEdge exoo42Witness (⟨16, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_16_37_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨16, by decide⟩ : Fin 42) (⟨37, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_16_37_rev : noK5AtEdge exoo42Witness (⟨37, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_16_37_fwd
@[simp] theorem pairC_16_37_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨37, by decide⟩ : Fin 42) (⟨16, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_16_37_fwd

@[simp] theorem pairG_17_18_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_18_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_18_rev : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_18_fwd
@[simp] theorem pairC_17_18_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_18_fwd

@[simp] theorem pairG_17_25_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_25_fwd
@[simp] theorem pairC_17_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_25_fwd

@[simp] theorem pairG_17_38_fwd : noK5AtEdge exoo42Witness (⟨17, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_17_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨17, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_17_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_17_38_fwd
@[simp] theorem pairC_17_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨17, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_17_38_fwd

@[simp] theorem pairG_18_19_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_19_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_19_rev : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_19_fwd
@[simp] theorem pairC_18_19_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_19_fwd

@[simp] theorem pairG_18_22_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_22_fwd
@[simp] theorem pairC_18_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_22_fwd

@[simp] theorem pairG_18_25_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_25_fwd
@[simp] theorem pairC_18_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_25_fwd

@[simp] theorem pairG_18_26_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_26_fwd
@[simp] theorem pairC_18_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_26_fwd

@[simp] theorem pairG_18_33_fwd : noK5AtEdge exoo42Witness (⟨18, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_18_33_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨18, by decide⟩ : Fin 42) (⟨33, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_18_33_rev : noK5AtEdge exoo42Witness (⟨33, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_18_33_fwd
@[simp] theorem pairC_18_33_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨33, by decide⟩ : Fin 42) (⟨18, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_18_33_fwd

@[simp] theorem pairG_19_22_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_22_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_22_rev : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_22_fwd
@[simp] theorem pairC_19_22_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_22_fwd

@[simp] theorem pairG_19_25_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_25_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨25, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_25_rev : noK5AtEdge exoo42Witness (⟨25, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_25_fwd
@[simp] theorem pairC_19_25_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨25, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_25_fwd

@[simp] theorem pairG_19_27_fwd : noK5AtEdge exoo42Witness (⟨19, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_19_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨19, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_19_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_19_27_fwd
@[simp] theorem pairC_19_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨19, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_19_27_fwd

@[simp] theorem pairG_20_23_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_23_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_23_rev : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_23_fwd
@[simp] theorem pairC_20_23_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_23_fwd

@[simp] theorem pairG_20_24_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_24_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_24_rev : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_24_fwd
@[simp] theorem pairC_20_24_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_24_fwd

@[simp] theorem pairG_20_26_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_26_fwd
@[simp] theorem pairC_20_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_26_fwd

@[simp] theorem pairG_20_27_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_27_fwd
@[simp] theorem pairC_20_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_27_fwd

@[simp] theorem pairG_20_28_fwd : noK5AtEdge exoo42Witness (⟨20, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_20_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨20, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_20_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_20_28_fwd
@[simp] theorem pairC_20_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨20, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_20_28_fwd

@[simp] theorem pairG_21_27_fwd : noK5AtEdge exoo42Witness (⟨21, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_21_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨21, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_21_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_21_27_fwd
@[simp] theorem pairC_21_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨21, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_21_27_fwd

@[simp] theorem pairG_22_26_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_26_fwd
@[simp] theorem pairC_22_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_26_fwd

@[simp] theorem pairG_22_30_fwd : noK5AtEdge exoo42Witness (⟨22, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_22_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨22, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_22_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_22_30_fwd
@[simp] theorem pairC_22_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨22, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_22_30_fwd

@[simp] theorem pairG_23_26_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_26_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨26, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_26_rev : noK5AtEdge exoo42Witness (⟨26, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_26_fwd
@[simp] theorem pairC_23_26_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨26, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_26_fwd

@[simp] theorem pairG_23_27_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_27_fwd
@[simp] theorem pairC_23_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_27_fwd

@[simp] theorem pairG_23_28_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_28_fwd
@[simp] theorem pairC_23_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_28_fwd

@[simp] theorem pairG_23_30_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_30_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨30, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_30_rev : noK5AtEdge exoo42Witness (⟨30, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_30_fwd
@[simp] theorem pairC_23_30_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨30, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_30_fwd

@[simp] theorem pairG_23_31_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_31_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨31, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_31_rev : noK5AtEdge exoo42Witness (⟨31, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_31_fwd
@[simp] theorem pairC_23_31_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨31, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_31_fwd

@[simp] theorem pairG_23_35_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_35_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨35, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_35_rev : noK5AtEdge exoo42Witness (⟨35, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_35_fwd
@[simp] theorem pairC_23_35_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨35, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_35_fwd

@[simp] theorem pairG_23_38_fwd : noK5AtEdge exoo42Witness (⟨23, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_23_38_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨23, by decide⟩ : Fin 42) (⟨38, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_23_38_rev : noK5AtEdge exoo42Witness (⟨38, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_23_38_fwd
@[simp] theorem pairC_23_38_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨38, by decide⟩ : Fin 42) (⟨23, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_23_38_fwd

@[simp] theorem pairG_24_27_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_27_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨27, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_27_rev : noK5AtEdge exoo42Witness (⟨27, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_27_fwd
@[simp] theorem pairC_24_27_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨27, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_27_fwd

@[simp] theorem pairG_24_28_fwd : noK5AtEdge exoo42Witness (⟨24, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairC_24_28_fwd : noK5AtEdge (exoo42Witnessᶜ) (⟨24, by decide⟩ : Fin 42) (⟨28, by decide⟩ : Fin 42) = true := by decide
@[simp] theorem pairG_24_28_rev : noK5AtEdge exoo42Witness (⟨28, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairG_24_28_fwd
@[simp] theorem pairC_24_28_rev : noK5AtEdge (exoo42Witnessᶜ) (⟨28, by decide⟩ : Fin 42) (⟨24, by decide⟩ : Fin 42) = true := by
  rw [noK5AtEdge_comm]
  exact pairC_24_28_fwd

end MathCase.RamseyR55
