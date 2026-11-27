import Std
import PrimeBand
open MathCase.PrimeBand

theorem sample_triple : UnderCap 71 (5*71) 20 284 355 := by
  unfold UnderCap Represents
  decide

theorem false_stronger_floor : Not ((6*71 : Int) <= 355) := by
  decide
