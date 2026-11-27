import Init

structure State where
  len : Nat := 0
  h : Nat := 0
  c : Nat := 0
  r : Nat := 0
  deriving Repr

def prependBit (bit : Bool) (s : State) : State :=
  let modulus := 2 ^ (s.len + 1)
  let h' := s.h + if bit then 1 else 0
  let c' := 2 * s.c + if bit then 3 ^ s.h else 0
  let r' := if bit then (2 * s.r + modulus - 1) % modulus else 2 * s.r
  { len := s.len + 1, h := h', c := c', r := r' }

def scanBits (mask : Nat) : Nat → State → State
  | 0, s => s
  | j + 1, s => scanBits mask j (prependBit (mask.testBit j) s)

def scanMask (mask : Nat) : State := scanBits mask 23 {}

def leastStart (r : Nat) : Nat := if r < 3 then r + 2^23 else r

def checkMask (mask : Nat) : Bool :=
  let s := scanMask mask
  if s.h ≤ 14 then decide ((2^23 - 3^s.h) * leastStart s.r > s.c) else true

def rangeAll : Nat → Nat → Bool
  | _, 0 => true
  | start, count + 1 => checkMask start && rangeAll (start + 1) count

#eval scanMask 2796195
#eval checkMask 2796195
example : rangeAll 0 4096 = true := by decide
