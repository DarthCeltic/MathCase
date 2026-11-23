import CollatzAffineTrace

namespace MathCase.CollatzAffineTrace

/-- Advance an entire linear family while every member has the same parity.
An odd slope makes parity depend on the parameter, so the check declines. -/
def advanceFamily (s r : Nat) : Option (Nat × Nat) :=
  if s % 2 = 0 then
    if r % 2 = 0 then some (s / 2, r / 2)
    else some (3 * s, 3 * r + 1)
  else none

def familyEndpoint : Nat → Nat → Nat → Option (Nat × Nat)
  | 0, s, r => some (s, r)
  | t + 1, s, r => do
    let (s', r') ← advanceFamily s r
    familyEndpoint t s' r'

private theorem even_slope_mul {s : Nat} (hs : s % 2 = 0) (k : Nat) :
    s * k = 2 * ((s / 2) * k) := by
  have eq : s = 2 * (s / 2) := by omega
  exact (congrArg (fun v => v * k) eq).trans (Nat.mul_assoc ..)

theorem advanceFamily_sound {s r : Nat} {next : Nat × Nat}
    (h : advanceFamily s r = some next) :
    ∀ k : Nat, collatzStep (affineValue (s,r) k) = affineValue next k := by
  intro k
  unfold advanceFamily at h
  split at h
  next evenSlope =>
    split at h
    next evenR =>
      cases h
      change collatzStep (s*k+r) = s/2*k + r/2
      unfold collatzStep
      rw [even_slope_mul evenSlope k]
      have evenStart : (2 * (s / 2 * k) + r) % 2 = 0 := by omega
      rw [if_pos evenStart]
      omega
    next oddR =>
      cases h
      change collatzStep (s*k+r) = (3*s)*k + (3*r+1)
      unfold collatzStep
      have oddStart : (s * k + r) % 2 ≠ 0 := by
        rw [even_slope_mul evenSlope k]
        omega
      rw [if_neg oddStart, Nat.mul_add, ← Nat.mul_assoc, Nat.add_assoc]
  next => contradiction

theorem familyEndpoint_trace {t s r : Nat} {finish : Nat × Nat}
    (h : familyEndpoint t s r = some finish) : AffineTrace (s, r) t finish := by
  induction t generalizing s r with
  | zero =>
    simp [familyEndpoint] at h
    subst finish
    exact AffineTrace.done _
  | succ t ih =>
    cases hs : advanceFamily s r with
    | none => simp [familyEndpoint, hs] at h
    | some next =>
      obtain ⟨u, v⟩ := next
      have ht : familyEndpoint t u v = some finish := by
        simpa [familyEndpoint, hs] using h
      exact AffineTrace.step (advanceFamily_sound hs) (ih ht)

theorem familyEndpoint_exact {t s r u v : Nat}
    (h : familyEndpoint t s r = some (u, v)) (k : Nat) :
    iterate (s*k + r) t = u*k + v :=
  affineTrace_exact (familyEndpoint_trace h) k

theorem familyEndpoint_descent {t s r u v : Nat}
    (h : familyEndpoint t s r = some (u, v))
    (hSlope : u ≤ s) (hIntercept : v < r) :
    ∀ k : Nat, iterate (s*k+r) t = u*k+v ∧ u*k+v < s*k+r :=
  affineTraceDescent (familyEndpoint_trace h) hSlope hIntercept

/-- The published M20 slabs use a left-to-right Nat.rec rather than the
tail-recursive iterator in the existing affine-trace library. -/
def m20Iterate (n t : Nat) : Nat :=
  Nat.rec n (fun _ previous => collatzStep previous) t

private theorem m20_successor (t n : Nat) :
    m20Iterate (collatzStep n) t = collatzStep (m20Iterate n t) := by
  induction t with
  | zero => rfl
  | succ t ih => exact congrArg collatzStep ih

theorem iterate_eq_m20Iterate (t n : Nat) : iterate n t = m20Iterate n t := by
  induction t generalizing n with
  | zero => rfl
  | succ t ih =>
    exact (ih (collatzStep n)).trans (m20_successor t n)

theorem m20Family_descent {t s r u v : Nat}
    (h : familyEndpoint t s r = some (u, v))
    (hSlope : u ≤ s) (hIntercept : v < r) (k : Nat) :
    m20Iterate (s*k+r) t = u*k+v ∧ u*k+v < s*k+r := by
  rw [← iterate_eq_m20Iterate]
  exact familyEndpoint_descent h hSlope hIntercept k

end MathCase.CollatzAffineTrace

