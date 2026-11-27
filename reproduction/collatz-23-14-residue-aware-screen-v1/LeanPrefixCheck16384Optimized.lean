import Init

structure State where
  len : Nat := 0
  h : Nat := 0
  c : Nat := 0
  threePow : Nat := 1
  deriving Repr

def prependBit (bit : Bool) (s : State) : State :=
  { len := s.len + 1,
    h := s.h + if bit then 1 else 0,
    c := 2 * s.c + if bit then s.threePow else 0,
    threePow := if bit then 3 * s.threePow else s.threePow }

def scanBits (mask : Nat) : Nat → State → State
  | 0, s => s
  | j + 1, s => scanBits mask j (prependBit (mask.testBit j) s)

def scanMask (mask : Nat) : State := scanBits mask 23 {}

def threePow (h : Nat) : Nat :=
  match h with
  | 0 => 1 | 1 => 3 | 2 => 9 | 3 => 27 | 4 => 81
  | 5 => 243 | 6 => 729 | 7 => 2187 | 8 => 6561
  | 9 => 19683 | 10 => 59049 | 11 => 177147 | 12 => 531441
  | 13 => 1594323 | 14 => 4782969 | _ => 0

def invThreePow (h : Nat) : Nat :=
  match h with
  | 0 => 1 | 1 => 2796203 | 2 => 6524473 | 3 => 4971027 | 4 => 1657009
  | 5 => 3348539 | 6 => 6708585 | 7 => 2236195 | 8 => 3541601
  | 9 => 6772939 | 10 => 5053849 | 11 => 4480819 | 12 => 4289809
  | 13 => 4226139 | 14 => 1408713 | _ => 0

def residueFor (s : State) : Nat :=
  let m := 2 ^ 23
  (m - ((s.c * invThreePow s.h) % m)) % m

def leastStart (r : Nat) : Nat := if r < 3 then r + 2^23 else r

def checkMask (mask : Nat) : Bool :=
  let s := scanMask mask
  if s.h ≤ 14 then decide ((2^23 - threePow s.h) * leastStart (residueFor s) > s.c) else true

def rangeAll : Nat → Nat → Bool
  | _, 0 => true
  | start, count + 1 => checkMask start && rangeAll (start + 1) count

set_option maxRecDepth 200000 in
set_option maxHeartbeats 100000000 in
theorem prefix_check_16384_optimized : rangeAll 0 16384 = true := by decide

#print axioms prefix_check_16384_optimized
#eval residueFor (scanMask 2796195)
#eval checkMask 2796195
