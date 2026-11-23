import SymbolicFamilies

/- The two definitions below match the public M20Shard001 source declarations.
This smoke test is intentionally standalone: it checks their definitions
and two exact target statements, without importing the 363-module build. -/
namespace CollatzM20Shard001

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

open MathCase.CollatzAffineTrace (familyEndpoint m20Family_descent m20Iterate)

theorem iterator_bridge (n t : Nat) : iterate n t = m20Iterate n t := rfl

theorem row239 : ∀ k : Nat,
    iterate (1048576 * k + 239) 32 = 531441 * k + 122 ∧
    531441 * k + 122 < 1048576 * k + 239 := by
  intro k
  rw [iterator_bridge]
  exact m20Family_descent (t := 32) (s := 1048576) (r := 239)
    (u := 531441) (v := 122) (by decide) (by decide) (by decide) k

theorem row487 : ∀ k : Nat,
    iterate (1048576 * k + 487) 32 = 531441 * k + 248 ∧
    531441 * k + 248 < 1048576 * k + 487 := by
  intro k
  rw [iterator_bridge]
  exact m20Family_descent (t := 32) (s := 1048576) (r := 487)
    (u := 531441) (v := 248) (by decide) (by decide) (by decide) k

/- A perturbed endpoint fails the same finite guard, and a starting
family with mixed parity requires a split before any symbolic step. -/
example : familyEndpoint 32 1048576 239 ≠ some (531441,123) := by decide
example : familyEndpoint 1 1 2 = none := by decide
example : familyEndpoint 32 1048576 487 = some (531441,248) := by decide

#print axioms MathCase.CollatzAffineTrace.familyEndpoint_exact
#print axioms MathCase.CollatzAffineTrace.m20Family_descent
#print axioms iterator_bridge
#print axioms row239
#print axioms row487

end CollatzM20Shard001
