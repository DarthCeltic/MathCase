import Init

structure State where
  len : Nat := 0
  h : Nat := 0
  c : Nat := 0
  deriving Repr

def prependBit (bit : Bool) (s : State) : State :=
  { len := s.len + 1,
    h := s.h + if bit then 1 else 0,
    c := 2 * s.c + if bit then 3 ^ s.h else 0 }

def scanBits (mask : Nat) : Nat → State → State
  | 0, s => s
  | j + 1, s => scanBits mask j (prependBit (mask.testBit j) s)

def scanMask (mask : Nat) : State := scanBits mask 23 {}

def powMod (a m : Nat) : Nat → Nat
  | 0 => 1 % m
  | n + 1 => (a * powMod a m n) % m

def residueFor (s : State) : Nat :=
  let m := 2 ^ 23
  (m - ((s.c * powMod 5592405 m s.h) % m)) % m

def leastStart (r : Nat) : Nat := if r < 3 then r + 2^23 else r

def checkMask (mask : Nat) : Bool :=
  let s := scanMask mask
  if s.h ≤ 14 then decide ((2^23 - 3^s.h) * leastStart (residueFor s) > s.c) else true

def rangeAll : Nat → Nat → Bool
  | _, 0 => true
  | start, count + 1 => checkMask start && rangeAll (start + 1) count

#eval scanMask 2796195
#eval residueFor (scanMask 2796195)
#eval checkMask 2796195
example : (3 * 5592405) % 8388608 = 1 := by decide
set_option maxRecDepth 200000 in
example : rangeAll 0 4096 = true := by decide
