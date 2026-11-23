import Init
set_option maxRecDepth 16384
set_option maxHeartbeats 5000000

namespace MathCase.VdwControl

/-- Check every start and every positive common difference fitting in the given row. -/
def hasMonoTriple (row : List Bool) : Bool :=
  (List.range row.length).any fun a =>
    (List.range row.length).any fun gap =>
      let d := gap + 1
      a+2*d < row.length && row[a]? == row[a+d]? && row[a]? == row[a+2*d]?

theorem eight_escapes :
    hasMonoTriple [false,false,true,true,false,false,true,true] = false := by decide

theorem nine_forces : ∀ a b c d e f g h i : Bool,
    hasMonoTriple [a,b,c,d,e,f,g,h,i] = true := by decide

end MathCase.VdwControl
#print axioms MathCase.VdwControl.eight_escapes
#print axioms MathCase.VdwControl.nine_forces
