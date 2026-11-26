import CollatzLift

set_option maxRecDepth 10000

structure RowArithmetic (r d a b : Nat) : Prop where
  odd_inputs : collatzOddInputs r d = a
  endpoint : collatzIter r d = b
  endpoint_below : b < r
  slope_below : 6 ^ a < 2 ^ d

structure LiftedFamily where
  residue : Nat
  steps : Nat
  odd_inputs : Nat
  endpoint : Nat
  arithmetic : RowArithmetic residue steps odd_inputs endpoint
  every_k_descends : ∀ k : Nat, collatzIter (residue + 2 ^ steps * k) steps < residue + 2 ^ steps * k

theorem m31_lift_0001_arithmetic : RowArithmetic 593919 86 33 366557 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0001 : LiftedFamily where
  residue := 593919
  steps := 86
  odd_inputs := 33
  endpoint := 366557
  arithmetic := m31_lift_0001_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 593919 86
    · calc
        collatzIter 593919 86 = 366557 := m31_lift_0001_arithmetic.endpoint
        _ < 593919 := m31_lift_0001_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 593919 86) = 6 ^ 33 := by rw [m31_lift_0001_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0001_arithmetic.slope_below

theorem m31_lift_0002_arithmetic : RowArithmetic 27856895 70 27 24149983 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0002 : LiftedFamily where
  residue := 27856895
  steps := 70
  odd_inputs := 27
  endpoint := 24149983
  arithmetic := m31_lift_0002_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 27856895 70
    · calc
        collatzIter 27856895 70 = 24149983 := m31_lift_0002_arithmetic.endpoint
        _ < 27856895 := m31_lift_0002_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 27856895 70) = 6 ^ 27 := by rw [m31_lift_0002_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0002_arithmetic.slope_below

theorem m31_lift_0003_arithmetic : RowArithmetic 38342655 57 22 35018696 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0003 : LiftedFamily where
  residue := 38342655
  steps := 57
  odd_inputs := 22
  endpoint := 35018696
  arithmetic := m31_lift_0003_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 38342655 57
    · calc
        collatzIter 38342655 57 = 35018696 := m31_lift_0003_arithmetic.endpoint
        _ < 38342655 := m31_lift_0003_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 38342655 57) = 6 ^ 22 := by rw [m31_lift_0003_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0003_arithmetic.slope_below

theorem m31_lift_0004_arithmetic : RowArithmetic 46731263 106 41 46198649 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0004 : LiftedFamily where
  residue := 46731263
  steps := 106
  odd_inputs := 41
  endpoint := 46198649
  arithmetic := m31_lift_0004_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 46731263 106
    · calc
        collatzIter 46731263 106 = 46198649 := m31_lift_0004_arithmetic.endpoint
        _ < 46731263 := m31_lift_0004_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 46731263 106) = 6 ^ 41 := by rw [m31_lift_0004_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0004_arithmetic.slope_below

theorem m31_lift_0005_arithmetic : RowArithmetic 63508479 83 32 52261528 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0005 : LiftedFamily where
  residue := 63508479
  steps := 83
  odd_inputs := 32
  endpoint := 52261528
  arithmetic := m31_lift_0005_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 63508479 83
    · calc
        collatzIter 63508479 83 = 52261528 := m31_lift_0005_arithmetic.endpoint
        _ < 63508479 := m31_lift_0005_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 63508479 83) = 6 ^ 32 := by rw [m31_lift_0005_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0005_arithmetic.slope_below

theorem m31_lift_0006_arithmetic : RowArithmetic 80285695 52 20 65178358 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0006 : LiftedFamily where
  residue := 80285695
  steps := 52
  odd_inputs := 20
  endpoint := 65178358
  arithmetic := m31_lift_0006_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 80285695 52
    · calc
        collatzIter 80285695 52 = 65178358 := m31_lift_0006_arithmetic.endpoint
        _ < 80285695 := m31_lift_0006_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 80285695 52) = 6 ^ 20 := by rw [m31_lift_0006_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0006_arithmetic.slope_below

theorem m31_lift_0007_arithmetic : RowArithmetic 88674303 57 22 80987045 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0007 : LiftedFamily where
  residue := 88674303
  steps := 57
  odd_inputs := 22
  endpoint := 80987045
  arithmetic := m31_lift_0007_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 88674303 57
    · calc
        collatzIter 88674303 57 = 80987045 := m31_lift_0007_arithmetic.endpoint
        _ < 88674303 := m31_lift_0007_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 88674303 57) = 6 ^ 22 := by rw [m31_lift_0007_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0007_arithmetic.slope_below

theorem m31_lift_0008_arithmetic : RowArithmetic 94965759 88 34 87916412 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0008 : LiftedFamily where
  residue := 94965759
  steps := 88
  odd_inputs := 34
  endpoint := 87916412
  arithmetic := m31_lift_0008_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 94965759 88
    · calc
        collatzIter 94965759 88 = 87916412 := m31_lift_0008_arithmetic.endpoint
        _ < 94965759 := m31_lift_0008_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 94965759 88) = 6 ^ 34 := by rw [m31_lift_0008_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0008_arithmetic.slope_below

theorem m31_lift_0009_arithmetic : RowArithmetic 97062911 52 20 78798610 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0009 : LiftedFamily where
  residue := 97062911
  steps := 52
  odd_inputs := 20
  endpoint := 78798610
  arithmetic := m31_lift_0009_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 97062911 52
    · calc
        collatzIter 97062911 52 = 78798610 := m31_lift_0009_arithmetic.endpoint
        _ < 97062911 := m31_lift_0009_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 97062911 52) = 6 ^ 20 := by rw [m31_lift_0009_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0009_arithmetic.slope_below

theorem m31_lift_0010_arithmetic : RowArithmetic 101257215 57 22 92479132 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0010 : LiftedFamily where
  residue := 101257215
  steps := 57
  odd_inputs := 22
  endpoint := 92479132
  arithmetic := m31_lift_0010_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 101257215 57
    · calc
        collatzIter 101257215 57 = 92479132 := m31_lift_0010_arithmetic.endpoint
        _ < 101257215 := m31_lift_0010_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 101257215 57) = 6 ^ 22 := by rw [m31_lift_0010_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0010_arithmetic.slope_below

theorem m31_lift_0011_arithmetic : RowArithmetic 105451519 68 26 60946063 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0011 : LiftedFamily where
  residue := 105451519
  steps := 68
  odd_inputs := 26
  endpoint := 60946063
  arithmetic := m31_lift_0011_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 105451519 68
    · calc
        collatzIter 105451519 68 = 60946063 := m31_lift_0011_arithmetic.endpoint
        _ < 105451519 := m31_lift_0011_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 105451519 68) = 6 ^ 26 := by rw [m31_lift_0011_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0011_arithmetic.slope_below

theorem m31_lift_0012_arithmetic : RowArithmetic 113840127 65 25 87725716 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0012 : LiftedFamily where
  residue := 113840127
  steps := 65
  odd_inputs := 25
  endpoint := 87725716
  arithmetic := m31_lift_0012_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 113840127 65
    · calc
        collatzIter 113840127 65 = 87725716 := m31_lift_0012_arithmetic.endpoint
        _ < 113840127 := m31_lift_0012_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 113840127 65) = 6 ^ 25 := by rw [m31_lift_0012_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0012_arithmetic.slope_below

theorem m31_lift_0013_arithmetic : RowArithmetic 134811647 114 44 112450900 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0013 : LiftedFamily where
  residue := 134811647
  steps := 114
  odd_inputs := 44
  endpoint := 112450900
  arithmetic := m31_lift_0013_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 134811647 114
    · calc
        collatzIter 134811647 114 = 112450900 := m31_lift_0013_arithmetic.endpoint
        _ < 134811647 := m31_lift_0013_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 134811647 114) = 6 ^ 44 := by rw [m31_lift_0013_arithmetic.odd_inputs]
        _ < 2 ^ 114 := m31_lift_0013_arithmetic.slope_below

theorem m31_lift_0014_arithmetic : RowArithmetic 139005951 75 29 135571996 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0014 : LiftedFamily where
  residue := 139005951
  steps := 75
  odd_inputs := 29
  endpoint := 135571996
  arithmetic := m31_lift_0014_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 139005951 75
    · calc
        collatzIter 139005951 75 = 135571996 := m31_lift_0014_arithmetic.endpoint
        _ < 139005951 := m31_lift_0014_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 139005951 75) = 6 ^ 29 := by rw [m31_lift_0014_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0014_arithmetic.slope_below

theorem m31_lift_0015_arithmetic : RowArithmetic 147394559 63 24 75721942 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0015 : LiftedFamily where
  residue := 147394559
  steps := 63
  odd_inputs := 24
  endpoint := 75721942
  arithmetic := m31_lift_0015_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 147394559 63
    · calc
        collatzIter 147394559 63 = 75721942 := m31_lift_0015_arithmetic.endpoint
        _ < 147394559 := m31_lift_0015_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 147394559 63) = 6 ^ 24 := by rw [m31_lift_0015_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0015_arithmetic.slope_below

theorem m31_lift_0016_arithmetic : RowArithmetic 162074623 52 20 131577085 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0016 : LiftedFamily where
  residue := 162074623
  steps := 52
  odd_inputs := 20
  endpoint := 131577085
  arithmetic := m31_lift_0016_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 162074623 52
    · calc
        collatzIter 162074623 52 = 131577085 := m31_lift_0016_arithmetic.endpoint
        _ < 162074623 := m31_lift_0016_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 162074623 52) = 6 ^ 20 := by rw [m31_lift_0016_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0016_arithmetic.slope_below

theorem m31_lift_0017_arithmetic : RowArithmetic 168366079 52 20 136684679 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0017 : LiftedFamily where
  residue := 168366079
  steps := 52
  odd_inputs := 20
  endpoint := 136684679
  arithmetic := m31_lift_0017_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 168366079 52
    · calc
        collatzIter 168366079 52 = 136684679 := m31_lift_0017_arithmetic.endpoint
        _ < 168366079 := m31_lift_0017_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 168366079 52) = 6 ^ 20 := by rw [m31_lift_0017_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0017_arithmetic.slope_below

theorem m31_lift_0018_arithmetic : RowArithmetic 172560383 83 32 142001024 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0018 : LiftedFamily where
  residue := 172560383
  steps := 83
  odd_inputs := 32
  endpoint := 142001024
  arithmetic := m31_lift_0018_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 172560383 83
    · calc
        collatzIter 172560383 83 = 142001024 := m31_lift_0018_arithmetic.endpoint
        _ < 172560383 := m31_lift_0018_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 172560383 83) = 6 ^ 32 := by rw [m31_lift_0018_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0018_arithmetic.slope_below

theorem m31_lift_0019_arithmetic : RowArithmetic 180948991 73 28 117652592 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0019 : LiftedFamily where
  residue := 180948991
  steps := 73
  odd_inputs := 28
  endpoint := 117652592
  arithmetic := m31_lift_0019_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 180948991 73
    · calc
        collatzIter 180948991 73 = 117652592 := m31_lift_0019_arithmetic.endpoint
        _ < 180948991 := m31_lift_0019_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 180948991 73) = 6 ^ 28 := by rw [m31_lift_0019_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0019_arithmetic.slope_below

theorem m31_lift_0020_arithmetic : RowArithmetic 197726207 52 20 160520119 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0020 : LiftedFamily where
  residue := 197726207
  steps := 52
  odd_inputs := 20
  endpoint := 160520119
  arithmetic := m31_lift_0020_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 197726207 52
    · calc
        collatzIter 197726207 52 = 160520119 := m31_lift_0020_arithmetic.endpoint
        _ < 197726207 := m31_lift_0020_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 197726207 52) = 6 ^ 20 := by rw [m31_lift_0020_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0020_arithmetic.slope_below

theorem m31_lift_0021_arithmetic : RowArithmetic 212406271 75 29 207159058 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0021 : LiftedFamily where
  residue := 212406271
  steps := 75
  odd_inputs := 29
  endpoint := 207159058
  arithmetic := m31_lift_0021_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 212406271 75
    · calc
        collatzIter 212406271 75 = 207159058 := m31_lift_0021_arithmetic.endpoint
        _ < 212406271 := m31_lift_0021_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 212406271 75) = 6 ^ 29 := by rw [m31_lift_0021_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0021_arithmetic.slope_below

theorem m31_lift_0022_arithmetic : RowArithmetic 214503423 55 21 130605278 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0022 : LiftedFamily where
  residue := 214503423
  steps := 55
  odd_inputs := 21
  endpoint := 130605278
  arithmetic := m31_lift_0022_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 214503423 55
    · calc
        collatzIter 214503423 55 = 130605278 := m31_lift_0022_arithmetic.endpoint
        _ < 214503423 := m31_lift_0022_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 214503423 55) = 6 ^ 21 := by rw [m31_lift_0022_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0022_arithmetic.slope_below

theorem m31_lift_0023_arithmetic : RowArithmetic 218697727 52 20 177545434 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0023 : LiftedFamily where
  residue := 218697727
  steps := 52
  odd_inputs := 20
  endpoint := 177545434
  arithmetic := m31_lift_0023_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 218697727 52
    · calc
        collatzIter 218697727 52 = 177545434 := m31_lift_0023_arithmetic.endpoint
        _ < 218697727 := m31_lift_0023_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 218697727 52) = 6 ^ 20 := by rw [m31_lift_0023_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0023_arithmetic.slope_below

theorem m31_lift_0024_arithmetic : RowArithmetic 222892031 57 22 203569309 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0024 : LiftedFamily where
  residue := 222892031
  steps := 57
  odd_inputs := 22
  endpoint := 203569309
  arithmetic := m31_lift_0024_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 222892031 57
    · calc
        collatzIter 222892031 57 = 203569309 := m31_lift_0024_arithmetic.endpoint
        _ < 222892031 := m31_lift_0024_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 222892031 57) = 6 ^ 22 := by rw [m31_lift_0024_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0024_arithmetic.slope_below

theorem m31_lift_0025_arithmetic : RowArithmetic 229183487 52 20 186058091 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0025 : LiftedFamily where
  residue := 229183487
  steps := 52
  odd_inputs := 20
  endpoint := 186058091
  arithmetic := m31_lift_0025_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 229183487 52
    · calc
        collatzIter 229183487 52 = 186058091 := m31_lift_0025_arithmetic.endpoint
        _ < 229183487 := m31_lift_0025_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 229183487 52) = 6 ^ 20 := by rw [m31_lift_0025_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0025_arithmetic.slope_below

theorem m31_lift_0026_arithmetic : RowArithmetic 231280639 63 24 118817269 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0026 : LiftedFamily where
  residue := 231280639
  steps := 63
  odd_inputs := 24
  endpoint := 118817269
  arithmetic := m31_lift_0026_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 231280639 63
    · calc
        collatzIter 231280639 63 = 118817269 := m31_lift_0026_arithmetic.endpoint
        _ < 231280639 := m31_lift_0026_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 231280639 63) = 6 ^ 24 := by rw [m31_lift_0026_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0026_arithmetic.slope_below

theorem m31_lift_0027_arithmetic : RowArithmetic 235474943 127 49 186443191 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0027 : LiftedFamily where
  residue := 235474943
  steps := 127
  odd_inputs := 49
  endpoint := 186443191
  arithmetic := m31_lift_0027_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 235474943 127
    · calc
        collatzIter 235474943 127 = 186443191 := m31_lift_0027_arithmetic.endpoint
        _ < 235474943 := m31_lift_0027_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 235474943 127) = 6 ^ 49 := by rw [m31_lift_0027_arithmetic.odd_inputs]
        _ < 2 ^ 127 := m31_lift_0027_arithmetic.slope_below

theorem m31_lift_0028_arithmetic : RowArithmetic 239669247 91 35 166408871 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0028 : LiftedFamily where
  residue := 239669247
  steps := 91
  odd_inputs := 35
  endpoint := 166408871
  arithmetic := m31_lift_0028_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 239669247 91
    · calc
        collatzIter 239669247 91 = 166408871 := m31_lift_0028_arithmetic.endpoint
        _ < 239669247 := m31_lift_0028_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 239669247 91) = 6 ^ 35 := by rw [m31_lift_0028_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0028_arithmetic.slope_below

theorem m31_lift_0029_arithmetic : RowArithmetic 248057855 68 26 143365876 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0029 : LiftedFamily where
  residue := 248057855
  steps := 68
  odd_inputs := 26
  endpoint := 143365876
  arithmetic := m31_lift_0029_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 248057855 68
    · calc
        collatzIter 248057855 68 = 143365876 := m31_lift_0029_arithmetic.endpoint
        _ < 248057855 := m31_lift_0029_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 248057855 68) = 6 ^ 26 := by rw [m31_lift_0029_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0029_arithmetic.slope_below

theorem m31_lift_0030_arithmetic : RowArithmetic 262737919 78 30 192185497 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0030 : LiftedFamily where
  residue := 262737919
  steps := 78
  odd_inputs := 30
  endpoint := 192185497
  arithmetic := m31_lift_0030_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 262737919 78
    · calc
        collatzIter 262737919 78 = 192185497 := m31_lift_0030_arithmetic.endpoint
        _ < 262737919 := m31_lift_0030_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 262737919 78) = 6 ^ 30 := by rw [m31_lift_0030_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0030_arithmetic.slope_below

theorem m31_lift_0031_arithmetic : RowArithmetic 264835071 60 23 181407200 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0031 : LiftedFamily where
  residue := 264835071
  steps := 60
  odd_inputs := 23
  endpoint := 181407200
  arithmetic := m31_lift_0031_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 264835071 60
    · calc
        collatzIter 264835071 60 = 181407200 := m31_lift_0031_arithmetic.endpoint
        _ < 264835071 := m31_lift_0031_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 264835071 60) = 6 ^ 23 := by rw [m31_lift_0031_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0031_arithmetic.slope_below

theorem m31_lift_0032_arithmetic : RowArithmetic 273223679 106 41 270109630 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0032 : LiftedFamily where
  residue := 273223679
  steps := 106
  odd_inputs := 41
  endpoint := 270109630
  arithmetic := m31_lift_0032_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 273223679 106
    · calc
        collatzIter 273223679 106 = 270109630 := m31_lift_0032_arithmetic.endpoint
        _ < 273223679 := m31_lift_0032_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 273223679 106) = 6 ^ 41 := by rw [m31_lift_0032_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0032_arithmetic.slope_below

theorem m31_lift_0033_arithmetic : RowArithmetic 281612287 52 20 228621377 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0033 : LiftedFamily where
  residue := 281612287
  steps := 52
  odd_inputs := 20
  endpoint := 228621377
  arithmetic := m31_lift_0033_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 281612287 52
    · calc
        collatzIter 281612287 52 = 228621377 := m31_lift_0033_arithmetic.endpoint
        _ < 281612287 := m31_lift_0033_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 281612287 52) = 6 ^ 20 := by rw [m31_lift_0033_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0033_arithmetic.slope_below

theorem m31_lift_0034_arithmetic : RowArithmetic 296292351 55 21 180404323 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0034 : LiftedFamily where
  residue := 296292351
  steps := 55
  odd_inputs := 21
  endpoint := 180404323
  arithmetic := m31_lift_0034_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 296292351 55
    · calc
        collatzIter 296292351 55 = 180404323 := m31_lift_0034_arithmetic.endpoint
        _ < 296292351 := m31_lift_0034_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 296292351 55) = 6 ^ 21 := by rw [m31_lift_0034_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0034_arithmetic.slope_below

theorem m31_lift_0035_arithmetic : RowArithmetic 315166719 96 37 246182419 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0035 : LiftedFamily where
  residue := 315166719
  steps := 96
  odd_inputs := 37
  endpoint := 246182419
  arithmetic := m31_lift_0035_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 315166719 96
    · calc
        collatzIter 315166719 96 = 246182419 := m31_lift_0035_arithmetic.endpoint
        _ < 315166719 := m31_lift_0035_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 315166719 96) = 6 ^ 37 := by rw [m31_lift_0035_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0035_arithmetic.slope_below

theorem m31_lift_0036_arithmetic : RowArithmetic 331943935 83 32 273158749 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0036 : LiftedFamily where
  residue := 331943935
  steps := 83
  odd_inputs := 32
  endpoint := 273158749
  arithmetic := m31_lift_0036_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 331943935 83
    · calc
        collatzIter 331943935 83 = 273158749 := m31_lift_0036_arithmetic.endpoint
        _ < 331943935 := m31_lift_0036_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 331943935 83) = 6 ^ 32 := by rw [m31_lift_0036_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0036_arithmetic.slope_below

theorem m31_lift_0037_arithmetic : RowArithmetic 346623999 78 30 253545836 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0037 : LiftedFamily where
  residue := 346623999
  steps := 78
  odd_inputs := 30
  endpoint := 253545836
  arithmetic := m31_lift_0037_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 346623999 78
    · calc
        collatzIter 346623999 78 = 253545836 := m31_lift_0037_arithmetic.endpoint
        _ < 346623999 := m31_lift_0037_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 346623999 78) = 6 ^ 30 := by rw [m31_lift_0037_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0037_arithmetic.slope_below

theorem m31_lift_0038_arithmetic : RowArithmetic 352915455 55 21 214880585 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0038 : LiftedFamily where
  residue := 352915455
  steps := 55
  odd_inputs := 21
  endpoint := 214880585
  arithmetic := m31_lift_0038_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 352915455 55
    · calc
        collatzIter 352915455 55 = 214880585 := m31_lift_0038_arithmetic.endpoint
        _ < 352915455 := m31_lift_0038_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 352915455 55) = 6 ^ 21 := by rw [m31_lift_0038_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0038_arithmetic.slope_below

theorem m31_lift_0039_arithmetic : RowArithmetic 363401215 65 25 280038614 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0039 : LiftedFamily where
  residue := 363401215
  steps := 65
  odd_inputs := 25
  endpoint := 280038614
  arithmetic := m31_lift_0039_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 363401215 65
    · calc
        collatzIter 363401215 65 = 280038614 := m31_lift_0039_arithmetic.endpoint
        _ < 363401215 := m31_lift_0039_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 363401215 65) = 6 ^ 25 := by rw [m31_lift_0039_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0039_arithmetic.slope_below

theorem m31_lift_0040_arithmetic : RowArithmetic 369692671 73 28 240373270 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0040 : LiftedFamily where
  residue := 369692671
  steps := 73
  odd_inputs := 28
  endpoint := 240373270
  arithmetic := m31_lift_0040_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 369692671 73
    · calc
        collatzIter 369692671 73 = 240373270 := m31_lift_0040_arithmetic.endpoint
        _ < 369692671 := m31_lift_0040_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 369692671 73) = 6 ^ 28 := by rw [m31_lift_0040_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0040_arithmetic.slope_below

theorem m31_lift_0041_arithmetic : RowArithmetic 373886975 57 22 341474356 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0041 : LiftedFamily where
  residue := 373886975
  steps := 57
  odd_inputs := 22
  endpoint := 341474356
  arithmetic := m31_lift_0041_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 373886975 57
    · calc
        collatzIter 373886975 57 = 341474356 := m31_lift_0041_arithmetic.endpoint
        _ < 373886975 := m31_lift_0041_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 373886975 57) = 6 ^ 22 := by rw [m31_lift_0041_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0041_arithmetic.slope_below

theorem m31_lift_0042_arithmetic : RowArithmetic 382275583 57 22 349135747 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0042 : LiftedFamily where
  residue := 382275583
  steps := 57
  odd_inputs := 22
  endpoint := 349135747
  arithmetic := m31_lift_0042_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 382275583 57
    · calc
        collatzIter 382275583 57 = 349135747 := m31_lift_0042_arithmetic.endpoint
        _ < 382275583 := m31_lift_0042_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 382275583 57) = 6 ^ 22 := by rw [m31_lift_0042_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0042_arithmetic.slope_below

theorem m31_lift_0043_arithmetic : RowArithmetic 396955647 52 20 322260607 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0043 : LiftedFamily where
  residue := 396955647
  steps := 52
  odd_inputs := 20
  endpoint := 322260607
  arithmetic := m31_lift_0043_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 396955647 52
    · calc
        collatzIter 396955647 52 = 322260607 := m31_lift_0043_arithmetic.endpoint
        _ < 396955647 := m31_lift_0043_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 396955647 52) = 6 ^ 20 := by rw [m31_lift_0043_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0043_arithmetic.slope_below

theorem m31_lift_0044_arithmetic : RowArithmetic 399052799 52 20 323963138 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0044 : LiftedFamily where
  residue := 399052799
  steps := 52
  odd_inputs := 20
  endpoint := 323963138
  arithmetic := m31_lift_0044_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 399052799 52
    · calc
        collatzIter 399052799 52 = 323963138 := m31_lift_0044_arithmetic.endpoint
        _ < 399052799 := m31_lift_0044_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 399052799 52) = 6 ^ 20 := by rw [m31_lift_0044_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0044_arithmetic.slope_below

theorem m31_lift_0045_arithmetic : RowArithmetic 403247103 52 20 327368201 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0045 : LiftedFamily where
  residue := 403247103
  steps := 52
  odd_inputs := 20
  endpoint := 327368201
  arithmetic := m31_lift_0045_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 403247103 52
    · calc
        collatzIter 403247103 52 = 327368201 := m31_lift_0045_arithmetic.endpoint
        _ < 403247103 := m31_lift_0045_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 403247103 52) = 6 ^ 20 := by rw [m31_lift_0045_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0045_arithmetic.slope_below

theorem m31_lift_0046_arithmetic : RowArithmetic 407441407 83 32 335286092 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0046 : LiftedFamily where
  residue := 407441407
  steps := 83
  odd_inputs := 32
  endpoint := 335286092
  arithmetic := m31_lift_0046_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 407441407 83
    · calc
        collatzIter 407441407 83 = 335286092 := m31_lift_0046_arithmetic.endpoint
        _ < 407441407 := m31_lift_0046_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 407441407 83) = 6 ^ 32 := by rw [m31_lift_0046_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0046_arithmetic.slope_below

theorem m31_lift_0047_arithmetic : RowArithmetic 415830015 88 34 384962771 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0047 : LiftedFamily where
  residue := 415830015
  steps := 88
  odd_inputs := 34
  endpoint := 384962771
  arithmetic := m31_lift_0047_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 415830015 88
    · calc
        collatzIter 415830015 88 = 384962771 := m31_lift_0047_arithmetic.endpoint
        _ < 415830015 := m31_lift_0047_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 415830015 88) = 6 ^ 34 := by rw [m31_lift_0047_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0047_arithmetic.slope_below

theorem m31_lift_0048_arithmetic : RowArithmetic 436801535 52 20 354608704 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0048 : LiftedFamily where
  residue := 436801535
  steps := 52
  odd_inputs := 20
  endpoint := 354608704
  arithmetic := m31_lift_0048_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 436801535 52
    · calc
        collatzIter 436801535 52 = 354608704 := m31_lift_0048_arithmetic.endpoint
        _ < 436801535 := m31_lift_0048_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 436801535 52) = 6 ^ 20 := by rw [m31_lift_0048_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0048_arithmetic.slope_below

theorem m31_lift_0049_arithmetic : RowArithmetic 440995839 52 20 358013767 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0049 : LiftedFamily where
  residue := 440995839
  steps := 52
  odd_inputs := 20
  endpoint := 358013767
  arithmetic := m31_lift_0049_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 440995839 52
    · calc
        collatzIter 440995839 52 = 358013767 := m31_lift_0049_arithmetic.endpoint
        _ < 440995839 := m31_lift_0049_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 440995839 52) = 6 ^ 20 := by rw [m31_lift_0049_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0049_arithmetic.slope_below

theorem m31_lift_0050_arithmetic : RowArithmetic 449384447 125 48 237207601 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0050 : LiftedFamily where
  residue := 449384447
  steps := 125
  odd_inputs := 48
  endpoint := 237207601
  arithmetic := m31_lift_0050_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 449384447 125
    · calc
        collatzIter 449384447 125 = 237207601 := m31_lift_0050_arithmetic.endpoint
        _ < 449384447 := m31_lift_0050_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 449384447 125) = 6 ^ 48 := by rw [m31_lift_0050_arithmetic.odd_inputs]
        _ < 2 ^ 125 := m31_lift_0050_arithmetic.slope_below

theorem m31_lift_0051_arithmetic : RowArithmetic 482938879 75 29 471008515 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0051 : LiftedFamily where
  residue := 482938879
  steps := 75
  odd_inputs := 29
  endpoint := 471008515
  arithmetic := m31_lift_0051_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 482938879 75
    · calc
        collatzIter 482938879 75 = 471008515 := m31_lift_0051_arithmetic.endpoint
        _ < 482938879 := m31_lift_0051_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 482938879 75) = 6 ^ 29 := by rw [m31_lift_0051_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0051_arithmetic.slope_below

theorem m31_lift_0052_arithmetic : RowArithmetic 487133183 60 23 333677356 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0052 : LiftedFamily where
  residue := 487133183
  steps := 60
  odd_inputs := 23
  endpoint := 333677356
  arithmetic := m31_lift_0052_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 487133183 60
    · calc
        collatzIter 487133183 60 = 333677356 := m31_lift_0052_arithmetic.endpoint
        _ < 487133183 := m31_lift_0052_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 487133183 60) = 6 ^ 23 := by rw [m31_lift_0052_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0052_arithmetic.slope_below

theorem m31_lift_0053_arithmetic : RowArithmetic 491327487 83 32 404316473 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0053 : LiftedFamily where
  residue := 491327487
  steps := 83
  odd_inputs := 32
  endpoint := 404316473
  arithmetic := m31_lift_0053_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 491327487 83
    · calc
        collatzIter 491327487 83 = 404316473 := m31_lift_0053_arithmetic.endpoint
        _ < 491327487 := m31_lift_0053_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 491327487 83) = 6 ^ 32 := by rw [m31_lift_0053_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0053_arithmetic.slope_below

theorem m31_lift_0054_arithmetic : RowArithmetic 497618943 52 20 403982116 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0054 : LiftedFamily where
  residue := 497618943
  steps := 52
  odd_inputs := 20
  endpoint := 403982116
  arithmetic := m31_lift_0054_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 497618943 52
    · calc
        collatzIter 497618943 52 = 403982116 := m31_lift_0054_arithmetic.endpoint
        _ < 497618943 := m31_lift_0054_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 497618943 52) = 6 ^ 20 := by rw [m31_lift_0054_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0054_arithmetic.slope_below

theorem m31_lift_0055_arithmetic : RowArithmetic 499716095 68 26 288812606 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0055 : LiftedFamily where
  residue := 499716095
  steps := 68
  odd_inputs := 26
  endpoint := 288812606
  arithmetic := m31_lift_0055_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 499716095 68
    · calc
        collatzIter 499716095 68 = 288812606 := m31_lift_0055_arithmetic.endpoint
        _ < 499716095 := m31_lift_0055_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 499716095 68) = 6 ^ 26 := by rw [m31_lift_0055_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0055_arithmetic.slope_below

theorem m31_lift_0056_arithmetic : RowArithmetic 503910399 57 22 460225924 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0056 : LiftedFamily where
  residue := 503910399
  steps := 57
  odd_inputs := 22
  endpoint := 460225924
  arithmetic := m31_lift_0056_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 503910399 57
    · calc
        collatzIter 503910399 57 = 460225924 := m31_lift_0056_arithmetic.endpoint
        _ < 503910399 := m31_lift_0056_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 503910399 57) = 6 ^ 22 := by rw [m31_lift_0056_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0056_arithmetic.slope_below

theorem m31_lift_0057_arithmetic : RowArithmetic 508104703 52 20 412494773 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0057 : LiftedFamily where
  residue := 508104703
  steps := 52
  odd_inputs := 20
  endpoint := 412494773
  arithmetic := m31_lift_0057_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 508104703 52
    · calc
        collatzIter 508104703 52 = 412494773 := m31_lift_0057_arithmetic.endpoint
        _ < 508104703 := m31_lift_0057_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 508104703 52) = 6 ^ 20 := by rw [m31_lift_0057_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0057_arithmetic.slope_below

theorem m31_lift_0058_arithmetic : RowArithmetic 516493311 55 21 314478674 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0058 : LiftedFamily where
  residue := 516493311
  steps := 55
  odd_inputs := 21
  endpoint := 314478674
  arithmetic := m31_lift_0058_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 516493311 55
    · calc
        collatzIter 516493311 55 = 314478674 := m31_lift_0058_arithmetic.endpoint
        _ < 516493311 := m31_lift_0058_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 516493311 55) = 6 ^ 21 := by rw [m31_lift_0058_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0058_arithmetic.slope_below

theorem m31_lift_0059_arithmetic : RowArithmetic 531173375 57 22 485125447 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0059 : LiftedFamily where
  residue := 531173375
  steps := 57
  odd_inputs := 22
  endpoint := 485125447
  arithmetic := m31_lift_0059_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 531173375 57
    · calc
        collatzIter 531173375 57 = 485125447 := m31_lift_0059_arithmetic.endpoint
        _ < 531173375 := m31_lift_0059_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 531173375 57) = 6 ^ 22 := by rw [m31_lift_0059_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0059_arithmetic.slope_below

theorem m31_lift_0060_arithmetic : RowArithmetic 533270527 104 40 351461737 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0060 : LiftedFamily where
  residue := 533270527
  steps := 104
  odd_inputs := 40
  endpoint := 351461737
  arithmetic := m31_lift_0060_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 533270527 104
    · calc
        collatzIter 533270527 104 = 351461737 := m31_lift_0060_arithmetic.endpoint
        _ < 533270527 := m31_lift_0060_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 533270527 104) = 6 ^ 40 := by rw [m31_lift_0060_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0060_arithmetic.slope_below

theorem m31_lift_0061_arithmetic : RowArithmetic 564727807 55 21 343847342 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0061 : LiftedFamily where
  residue := 564727807
  steps := 55
  odd_inputs := 21
  endpoint := 343847342
  arithmetic := m31_lift_0061_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 564727807 55
    · calc
        collatzIter 564727807 55 = 343847342 := m31_lift_0061_arithmetic.endpoint
        _ < 564727807 := m31_lift_0061_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 564727807 55) = 6 ^ 21 := by rw [m31_lift_0061_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0061_arithmetic.slope_below

theorem m31_lift_0062_arithmetic : RowArithmetic 575213567 73 28 374002453 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0062 : LiftedFamily where
  residue := 575213567
  steps := 73
  odd_inputs := 28
  endpoint := 374002453
  arithmetic := m31_lift_0062_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 575213567 73
    · calc
        collatzIter 575213567 73 = 374002453 := m31_lift_0062_arithmetic.endpoint
        _ < 575213567 := m31_lift_0062_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 575213567 73) = 6 ^ 28 := by rw [m31_lift_0062_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0062_arithmetic.slope_below

theorem m31_lift_0063_arithmetic : RowArithmetic 583602175 63 24 299817643 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0063 : LiftedFamily where
  residue := 583602175
  steps := 63
  odd_inputs := 24
  endpoint := 299817643
  arithmetic := m31_lift_0063_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 583602175 63
    · calc
        collatzIter 583602175 63 = 299817643 := m31_lift_0063_arithmetic.endpoint
        _ < 583602175 := m31_lift_0063_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 583602175 63) = 6 ^ 24 := by rw [m31_lift_0063_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0063_arithmetic.slope_below

theorem m31_lift_0064_arithmetic : RowArithmetic 600379391 65 25 462655063 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0064 : LiftedFamily where
  residue := 600379391
  steps := 65
  odd_inputs := 25
  endpoint := 462655063
  arithmetic := m31_lift_0064_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 600379391 65
    · calc
        collatzIter 600379391 65 = 462655063 := m31_lift_0064_arithmetic.endpoint
        _ < 600379391 := m31_lift_0064_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 600379391 65) = 6 ^ 25 := by rw [m31_lift_0064_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0064_arithmetic.slope_below

theorem m31_lift_0065_arithmetic : RowArithmetic 615059455 55 21 374492908 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0065 : LiftedFamily where
  residue := 615059455
  steps := 55
  odd_inputs := 21
  endpoint := 374492908
  arithmetic := m31_lift_0065_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 615059455 55
    · calc
        collatzIter 615059455 55 = 374492908 := m31_lift_0065_arithmetic.endpoint
        _ < 615059455 := m31_lift_0065_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 615059455 55) = 6 ^ 21 := by rw [m31_lift_0065_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0065_arithmetic.slope_below

theorem m31_lift_0066_arithmetic : RowArithmetic 617156607 60 23 422741032 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0066 : LiftedFamily where
  residue := 617156607
  steps := 60
  odd_inputs := 23
  endpoint := 422741032
  arithmetic := m31_lift_0066_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 617156607 60
    · calc
        collatzIter 617156607 60 = 422741032 := m31_lift_0066_arithmetic.endpoint
        _ < 617156607 := m31_lift_0066_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 617156607 60) = 6 ^ 23 := by rw [m31_lift_0066_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0066_arithmetic.slope_below

theorem m31_lift_0067_arithmetic : RowArithmetic 625545215 55 21 380877401 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0067 : LiftedFamily where
  residue := 625545215
  steps := 55
  odd_inputs := 21
  endpoint := 380877401
  arithmetic := m31_lift_0067_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 625545215 55
    · calc
        collatzIter 625545215 55 = 380877401 := m31_lift_0067_arithmetic.endpoint
        _ < 625545215 := m31_lift_0067_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 625545215 55) = 6 ^ 21 := by rw [m31_lift_0067_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0067_arithmetic.slope_below

theorem m31_lift_0068_arithmetic : RowArithmetic 631836671 57 22 577062145 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0068 : LiftedFamily where
  residue := 631836671
  steps := 57
  odd_inputs := 22
  endpoint := 577062145
  arithmetic := m31_lift_0068_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 631836671 57
    · calc
        collatzIter 631836671 57 = 577062145 := m31_lift_0068_arithmetic.endpoint
        _ < 631836671 := m31_lift_0068_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 631836671 57) = 6 ^ 22 := by rw [m31_lift_0068_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0068_arithmetic.slope_below

theorem m31_lift_0069_arithmetic : RowArithmetic 633933823 52 20 514646660 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0069 : LiftedFamily where
  residue := 633933823
  steps := 52
  odd_inputs := 20
  endpoint := 514646660
  arithmetic := m31_lift_0069_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 633933823 52
    · calc
        collatzIter 633933823 52 = 514646660 := m31_lift_0069_arithmetic.endpoint
        _ < 633933823 := m31_lift_0069_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 633933823 52) = 6 ^ 20 := by rw [m31_lift_0069_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0069_arithmetic.slope_below

theorem m31_lift_0070_arithmetic : RowArithmetic 638128127 63 24 327829606 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0070 : LiftedFamily where
  residue := 638128127
  steps := 63
  odd_inputs := 24
  endpoint := 327829606
  arithmetic := m31_lift_0070_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 638128127 63
    · calc
        collatzIter 638128127 63 = 327829606 := m31_lift_0070_arithmetic.endpoint
        _ < 638128127 := m31_lift_0070_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 638128127 63) = 6 ^ 24 := by rw [m31_lift_0070_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0070_arithmetic.slope_below

theorem m31_lift_0071_arithmetic : RowArithmetic 650711039 68 26 376080643 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0071 : LiftedFamily where
  residue := 650711039
  steps := 68
  odd_inputs := 26
  endpoint := 376080643
  arithmetic := m31_lift_0071_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 650711039 68
    · calc
        collatzIter 650711039 68 = 376080643 := m31_lift_0071_arithmetic.endpoint
        _ < 650711039 := m31_lift_0071_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 650711039 68) = 6 ^ 26 := by rw [m31_lift_0071_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0071_arithmetic.slope_below

theorem m31_lift_0072_arithmetic : RowArithmetic 671682559 52 20 545292226 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0072 : LiftedFamily where
  residue := 671682559
  steps := 52
  odd_inputs := 20
  endpoint := 545292226
  arithmetic := m31_lift_0072_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 671682559 52
    · calc
        collatzIter 671682559 52 = 545292226 := m31_lift_0072_arithmetic.endpoint
        _ < 671682559 := m31_lift_0072_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 671682559 52) = 6 ^ 20 := by rw [m31_lift_0072_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0072_arithmetic.slope_below

theorem m31_lift_0073_arithmetic : RowArithmetic 675876863 52 20 548697289 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0073 : LiftedFamily where
  residue := 675876863
  steps := 52
  odd_inputs := 20
  endpoint := 548697289
  arithmetic := m31_lift_0073_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 675876863 52
    · calc
        collatzIter 675876863 52 = 548697289 := m31_lift_0073_arithmetic.endpoint
        _ < 675876863 := m31_lift_0073_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 675876863 52) = 6 ^ 20 := by rw [m31_lift_0073_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0073_arithmetic.slope_below

theorem m31_lift_0074_arithmetic : RowArithmetic 684265471 55 21 416630561 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0074 : LiftedFamily where
  residue := 684265471
  steps := 55
  odd_inputs := 21
  endpoint := 416630561
  arithmetic := m31_lift_0074_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 684265471 55
    · calc
        collatzIter 684265471 55 = 416630561 := m31_lift_0074_arithmetic.endpoint
        _ < 684265471 := m31_lift_0074_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 684265471 55) = 6 ^ 21 := by rw [m31_lift_0074_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0074_arithmetic.slope_below

theorem m31_lift_0075_arithmetic : RowArithmetic 698945535 52 20 567425135 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0075 : LiftedFamily where
  residue := 698945535
  steps := 52
  odd_inputs := 20
  endpoint := 567425135
  arithmetic := m31_lift_0075_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 698945535 52
    · calc
        collatzIter 698945535 52 = 567425135 := m31_lift_0075_arithmetic.endpoint
        _ < 698945535 := m31_lift_0075_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 698945535 52) = 6 ^ 20 := by rw [m31_lift_0075_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0075_arithmetic.slope_below

theorem m31_lift_0076_arithmetic : RowArithmetic 709431295 194 75 649284395 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0076 : LiftedFamily where
  residue := 709431295
  steps := 194
  odd_inputs := 75
  endpoint := 649284395
  arithmetic := m31_lift_0076_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 709431295 194
    · calc
        collatzIter 709431295 194 = 649284395 := m31_lift_0076_arithmetic.endpoint
        _ < 709431295 := m31_lift_0076_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 709431295 194) = 6 ^ 75 := by rw [m31_lift_0076_arithmetic.odd_inputs]
        _ < 2 ^ 194 := m31_lift_0076_arithmetic.slope_below

theorem m31_lift_0077_arithmetic : RowArithmetic 717819903 75 29 700087114 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0077 : LiftedFamily where
  residue := 717819903
  steps := 75
  odd_inputs := 29
  endpoint := 700087114
  arithmetic := m31_lift_0077_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 717819903 75
    · calc
        collatzIter 717819903 75 = 700087114 := m31_lift_0077_arithmetic.endpoint
        _ < 717819903 := m31_lift_0077_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 717819903 75) = 6 ^ 29 := by rw [m31_lift_0077_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0077_arithmetic.slope_below

theorem m31_lift_0078_arithmetic : RowArithmetic 734597119 75 29 716449871 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0078 : LiftedFamily where
  residue := 734597119
  steps := 75
  odd_inputs := 29
  endpoint := 716449871
  arithmetic := m31_lift_0078_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 734597119 75
    · calc
        collatzIter 734597119 75 = 716449871 := m31_lift_0078_arithmetic.endpoint
        _ < 734597119 := m31_lift_0078_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 734597119 75) = 6 ^ 29 := by rw [m31_lift_0078_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0078_arithmetic.slope_below

theorem m31_lift_0079_arithmetic : RowArithmetic 749277183 52 20 608285890 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0079 : LiftedFamily where
  residue := 749277183
  steps := 52
  odd_inputs := 20
  endpoint := 608285890
  arithmetic := m31_lift_0079_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 749277183 52
    · calc
        collatzIter 749277183 52 = 608285890 := m31_lift_0079_arithmetic.endpoint
        _ < 749277183 := m31_lift_0079_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 749277183 52) = 6 ^ 20 := by rw [m31_lift_0079_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0079_arithmetic.slope_below

theorem m31_lift_0080_arithmetic : RowArithmetic 751374335 114 44 626746432 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0080 : LiftedFamily where
  residue := 751374335
  steps := 114
  odd_inputs := 44
  endpoint := 626746432
  arithmetic := m31_lift_0080_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 751374335 114
    · calc
        collatzIter 751374335 114 = 626746432 := m31_lift_0080_arithmetic.endpoint
        _ < 751374335 := m31_lift_0080_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 751374335 114) = 6 ^ 44 := by rw [m31_lift_0080_arithmetic.odd_inputs]
        _ < 2 ^ 114 := m31_lift_0080_arithmetic.slope_below

theorem m31_lift_0081_arithmetic : RowArithmetic 755568639 52 20 613393484 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0081 : LiftedFamily where
  residue := 755568639
  steps := 52
  odd_inputs := 20
  endpoint := 613393484
  arithmetic := m31_lift_0081_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 755568639 52
    · calc
        collatzIter 755568639 52 = 613393484 := m31_lift_0081_arithmetic.endpoint
        _ < 755568639 := m31_lift_0081_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 755568639 52) = 6 ^ 20 := by rw [m31_lift_0081_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0081_arithmetic.slope_below

theorem m31_lift_0082_arithmetic : RowArithmetic 759762943 60 23 520423774 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0082 : LiftedFamily where
  residue := 759762943
  steps := 60
  odd_inputs := 23
  endpoint := 520423774
  arithmetic := m31_lift_0082_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 759762943 60
    · calc
        collatzIter 759762943 60 = 520423774 := m31_lift_0082_arithmetic.endpoint
        _ < 759762943 := m31_lift_0082_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 759762943 60) = 6 ^ 23 := by rw [m31_lift_0082_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0082_arithmetic.slope_below

theorem m31_lift_0083_arithmetic : RowArithmetic 768151551 65 25 591941045 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0083 : LiftedFamily where
  residue := 768151551
  steps := 65
  odd_inputs := 25
  endpoint := 591941045
  arithmetic := m31_lift_0083_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 768151551 65
    · calc
        collatzIter 768151551 65 = 591941045 := m31_lift_0083_arithmetic.endpoint
        _ < 768151551 := m31_lift_0083_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 768151551 65) = 6 ^ 25 := by rw [m31_lift_0083_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0083_arithmetic.slope_below

theorem m31_lift_0084_arithmetic : RowArithmetic 772345855 75 29 753266075 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0084 : LiftedFamily where
  residue := 772345855
  steps := 75
  odd_inputs := 29
  endpoint := 753266075
  arithmetic := m31_lift_0084_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 772345855 75
    · calc
        collatzIter 772345855 75 = 753266075 := m31_lift_0084_arithmetic.endpoint
        _ < 772345855 := m31_lift_0084_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 772345855 75) = 6 ^ 29 := by rw [m31_lift_0084_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0084_arithmetic.slope_below

theorem m31_lift_0085_arithmetic : RowArithmetic 776540159 83 32 639019769 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0085 : LiftedFamily where
  residue := 776540159
  steps := 83
  odd_inputs := 32
  endpoint := 639019769
  arithmetic := m31_lift_0085_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 776540159 83
    · calc
        collatzIter 776540159 83 = 639019769 := m31_lift_0085_arithmetic.endpoint
        _ < 776540159 := m31_lift_0085_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 776540159 83) = 6 ^ 32 := by rw [m31_lift_0085_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0085_arithmetic.slope_below

theorem m31_lift_0086_arithmetic : RowArithmetic 784928767 68 26 453652232 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0086 : LiftedFamily where
  residue := 784928767
  steps := 68
  odd_inputs := 26
  endpoint := 453652232
  arithmetic := m31_lift_0086_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 784928767 68
    · calc
        collatzIter 784928767 68 = 453652232 := m31_lift_0086_arithmetic.endpoint
        _ < 784928767 := m31_lift_0086_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 784928767 68) = 6 ^ 26 := by rw [m31_lift_0086_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0086_arithmetic.slope_below

theorem m31_lift_0087_arithmetic : RowArithmetic 799608831 86 33 493502344 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0087 : LiftedFamily where
  residue := 799608831
  steps := 86
  odd_inputs := 33
  endpoint := 493502344
  arithmetic := m31_lift_0087_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 799608831 86
    · calc
        collatzIter 799608831 86 = 493502344 := m31_lift_0087_arithmetic.endpoint
        _ < 799608831 := m31_lift_0087_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 799608831 86) = 6 ^ 33 := by rw [m31_lift_0087_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0087_arithmetic.slope_below

theorem m31_lift_0088_arithmetic : RowArithmetic 801705983 68 26 463348681 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0088 : LiftedFamily where
  residue := 801705983
  steps := 68
  odd_inputs := 26
  endpoint := 463348681
  arithmetic := m31_lift_0088_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 801705983 68
    · calc
        collatzIter 801705983 68 = 463348681 := m31_lift_0088_arithmetic.endpoint
        _ < 801705983 := m31_lift_0088_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 801705983 68) = 6 ^ 26 := by rw [m31_lift_0088_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0088_arithmetic.slope_below

theorem m31_lift_0089_arithmetic : RowArithmetic 810094591 60 23 554900036 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0089 : LiftedFamily where
  residue := 810094591
  steps := 60
  odd_inputs := 23
  endpoint := 554900036
  arithmetic := m31_lift_0089_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 810094591 60
    · calc
        collatzIter 810094591 60 = 554900036 := m31_lift_0089_arithmetic.endpoint
        _ < 810094591 := m31_lift_0089_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 810094591 60) = 6 ^ 23 := by rw [m31_lift_0089_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0089_arithmetic.slope_below

theorem m31_lift_0090_arithmetic : RowArithmetic 833163263 83 32 685615277 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0090 : LiftedFamily where
  residue := 833163263
  steps := 83
  odd_inputs := 32
  endpoint := 685615277
  arithmetic := m31_lift_0090_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 833163263 83
    · calc
        collatzIter 833163263 83 = 685615277 := m31_lift_0090_arithmetic.endpoint
        _ < 833163263 := m31_lift_0090_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 833163263 83) = 6 ^ 32 := by rw [m31_lift_0090_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0090_arithmetic.slope_below

theorem m31_lift_0091_arithmetic : RowArithmetic 839454719 88 34 777141626 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0091 : LiftedFamily where
  residue := 839454719
  steps := 88
  odd_inputs := 34
  endpoint := 777141626
  arithmetic := m31_lift_0091_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 839454719 88
    · calc
        collatzIter 839454719 88 = 777141626 := m31_lift_0091_arithmetic.endpoint
        _ < 839454719 := m31_lift_0091_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 839454719 88) = 6 ^ 34 := by rw [m31_lift_0091_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0091_arithmetic.slope_below

theorem m31_lift_0092_arithmetic : RowArithmetic 852037631 52 20 691709930 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0092 : LiftedFamily where
  residue := 852037631
  steps := 52
  odd_inputs := 20
  endpoint := 691709930
  arithmetic := m31_lift_0092_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 852037631 52
    · calc
        collatzIter 852037631 52 = 691709930 := m31_lift_0092_arithmetic.endpoint
        _ < 852037631 := m31_lift_0092_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 852037631 52) = 6 ^ 20 := by rw [m31_lift_0092_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0092_arithmetic.slope_below

theorem m31_lift_0093_arithmetic : RowArithmetic 868814847 60 23 595122341 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0093 : LiftedFamily where
  residue := 868814847
  steps := 60
  odd_inputs := 23
  endpoint := 595122341
  arithmetic := m31_lift_0093_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 868814847 60
    · calc
        collatzIter 868814847 60 = 595122341 := m31_lift_0093_arithmetic.endpoint
        _ < 868814847 := m31_lift_0093_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 868814847 60) = 6 ^ 23 := by rw [m31_lift_0093_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0093_arithmetic.slope_below

theorem m31_lift_0094_arithmetic : RowArithmetic 883494911 73 28 574446227 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0094 : LiftedFamily where
  residue := 883494911
  steps := 73
  odd_inputs := 28
  endpoint := 574446227
  arithmetic := m31_lift_0094_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 883494911 73
    · calc
        collatzIter 883494911 73 = 574446227 := m31_lift_0094_arithmetic.endpoint
        _ < 883494911 := m31_lift_0094_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 883494911 73) = 6 ^ 28 := by rw [m31_lift_0094_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0094_arithmetic.slope_below

theorem m31_lift_0095_arithmetic : RowArithmetic 885592063 55 21 539212825 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0095 : LiftedFamily where
  residue := 885592063
  steps := 55
  odd_inputs := 21
  endpoint := 539212825
  arithmetic := m31_lift_0095_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 885592063 55
    · calc
        collatzIter 885592063 55 = 539212825 := m31_lift_0095_arithmetic.endpoint
        _ < 885592063 := m31_lift_0095_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 885592063 55) = 6 ^ 21 := by rw [m31_lift_0095_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0095_arithmetic.slope_below

theorem m31_lift_0096_arithmetic : RowArithmetic 900272127 81 31 493893055 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0096 : LiftedFamily where
  residue := 900272127
  steps := 81
  odd_inputs := 31
  endpoint := 493893055
  arithmetic := m31_lift_0096_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 900272127 81
    · calc
        collatzIter 900272127 81 = 493893055 := m31_lift_0096_arithmetic.endpoint
        _ < 900272127 := m31_lift_0096_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 900272127 81) = 6 ^ 31 := by rw [m31_lift_0096_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0096_arithmetic.slope_below

theorem m31_lift_0097_arithmetic : RowArithmetic 906563583 52 20 735975748 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0097 : LiftedFamily where
  residue := 906563583
  steps := 52
  odd_inputs := 20
  endpoint := 735975748
  arithmetic := m31_lift_0097_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 906563583 52
    · calc
        collatzIter 906563583 52 = 735975748 := m31_lift_0097_arithmetic.endpoint
        _ < 906563583 := m31_lift_0097_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 906563583 52) = 6 ^ 20 := by rw [m31_lift_0097_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0097_arithmetic.slope_below

theorem m31_lift_0098_arithmetic : RowArithmetic 910757887 55 21 554535608 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0098 : LiftedFamily where
  residue := 910757887
  steps := 55
  odd_inputs := 21
  endpoint := 554535608
  arithmetic := m31_lift_0098_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 910757887 55
    · calc
        collatzIter 910757887 55 = 554535608 := m31_lift_0098_arithmetic.endpoint
        _ < 910757887 := m31_lift_0098_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 910757887 55) = 6 ^ 21 := by rw [m31_lift_0098_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0098_arithmetic.slope_below

theorem m31_lift_0099_arithmetic : RowArithmetic 919146495 70 27 796835732 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0099 : LiftedFamily where
  residue := 919146495
  steps := 70
  odd_inputs := 27
  endpoint := 796835732
  arithmetic := m31_lift_0099_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 919146495 70
    · calc
        collatzIter 919146495 70 = 796835732 := m31_lift_0099_arithmetic.endpoint
        _ < 919146495 := m31_lift_0099_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 919146495 70) = 6 ^ 27 := by rw [m31_lift_0099_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0099_arithmetic.slope_below

theorem m31_lift_0100_arithmetic : RowArithmetic 933826559 52 20 758108657 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0100 : LiftedFamily where
  residue := 933826559
  steps := 52
  odd_inputs := 20
  endpoint := 758108657
  arithmetic := m31_lift_0100_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 933826559 52
    · calc
        collatzIter 933826559 52 = 758108657 := m31_lift_0100_arithmetic.endpoint
        _ < 933826559 := m31_lift_0100_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 933826559 52) = 6 ^ 20 := by rw [m31_lift_0100_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0100_arithmetic.slope_below

theorem m31_lift_0101_arithmetic : RowArithmetic 944312319 78 30 690738251 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0101 : LiftedFamily where
  residue := 944312319
  steps := 78
  odd_inputs := 30
  endpoint := 690738251
  arithmetic := m31_lift_0101_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 944312319 78
    · calc
        collatzIter 944312319 78 = 690738251 := m31_lift_0101_arithmetic.endpoint
        _ < 944312319 := m31_lift_0101_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 944312319 78) = 6 ^ 30 := by rw [m31_lift_0101_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0101_arithmetic.slope_below

theorem m31_lift_0102_arithmetic : RowArithmetic 952700927 70 27 825925078 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0102 : LiftedFamily where
  residue := 952700927
  steps := 70
  odd_inputs := 27
  endpoint := 825925078
  arithmetic := m31_lift_0102_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 952700927 70
    · calc
        collatzIter 952700927 70 = 825925078 := m31_lift_0102_arithmetic.endpoint
        _ < 952700927 := m31_lift_0102_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 952700927 70) = 6 ^ 27 := by rw [m31_lift_0102_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0102_arithmetic.slope_below

theorem m31_lift_0103_arithmetic : RowArithmetic 973672447 63 24 500210915 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0103 : LiftedFamily where
  residue := 973672447
  steps := 63
  odd_inputs := 24
  endpoint := 500210915
  arithmetic := m31_lift_0103_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 973672447 63
    · calc
        collatzIter 973672447 63 = 500210915 := m31_lift_0103_arithmetic.endpoint
        _ < 973672447 := m31_lift_0103_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 973672447 63) = 6 ^ 24 := by rw [m31_lift_0103_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0103_arithmetic.slope_below

theorem m31_lift_0104_arithmetic : RowArithmetic 977866751 52 20 793861817 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0104 : LiftedFamily where
  residue := 977866751
  steps := 52
  odd_inputs := 20
  endpoint := 793861817
  arithmetic := m31_lift_0104_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 977866751 52
    · calc
        collatzIter 977866751 52 = 793861817 := m31_lift_0104_arithmetic.endpoint
        _ < 977866751 := m31_lift_0104_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 977866751 52) = 6 ^ 20 := by rw [m31_lift_0104_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0104_arithmetic.slope_below

theorem m31_lift_0105_arithmetic : RowArithmetic 1003032575 75 29 978253984 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0105 : LiftedFamily where
  residue := 1003032575
  steps := 75
  odd_inputs := 29
  endpoint := 978253984
  arithmetic := m31_lift_0105_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1003032575 75
    · calc
        collatzIter 1003032575 75 = 978253984 := m31_lift_0105_arithmetic.endpoint
        _ < 1003032575 := m31_lift_0105_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1003032575 75) = 6 ^ 29 := by rw [m31_lift_0105_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0105_arithmetic.slope_below

theorem m31_lift_0106_arithmetic : RowArithmetic 1019809791 83 32 839207875 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0106 : LiftedFamily where
  residue := 1019809791
  steps := 83
  odd_inputs := 32
  endpoint := 839207875
  arithmetic := m31_lift_0106_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1019809791 83
    · calc
        collatzIter 1019809791 83 = 839207875 := m31_lift_0106_arithmetic.endpoint
        _ < 1019809791 := m31_lift_0106_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1019809791 83) = 6 ^ 32 := by rw [m31_lift_0106_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0106_arithmetic.slope_below

theorem m31_lift_0107_arithmetic : RowArithmetic 1024004095 52 20 831317509 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0107 : LiftedFamily where
  residue := 1024004095
  steps := 52
  odd_inputs := 20
  endpoint := 831317509
  arithmetic := m31_lift_0107_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1024004095 52
    · calc
        collatzIter 1024004095 52 = 831317509 := m31_lift_0107_arithmetic.endpoint
        _ < 1024004095 := m31_lift_0107_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1024004095 52) = 6 ^ 20 := by rw [m31_lift_0107_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0107_arithmetic.slope_below

theorem m31_lift_0108_arithmetic : RowArithmetic 1028198399 52 20 834722572 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0108 : LiftedFamily where
  residue := 1028198399
  steps := 52
  odd_inputs := 20
  endpoint := 834722572
  arithmetic := m31_lift_0108_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1028198399 52
    · calc
        collatzIter 1028198399 52 = 834722572 := m31_lift_0108_arithmetic.endpoint
        _ < 1028198399 := m31_lift_0108_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1028198399 52) = 6 ^ 20 := by rw [m31_lift_0108_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0108_arithmetic.slope_below

theorem m31_lift_0109_arithmetic : RowArithmetic 1034489855 57 22 944808937 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0109 : LiftedFamily where
  residue := 1034489855
  steps := 57
  odd_inputs := 22
  endpoint := 944808937
  arithmetic := m31_lift_0109_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1034489855 57
    · calc
        collatzIter 1034489855 57 = 944808937 := m31_lift_0109_arithmetic.endpoint
        _ < 1034489855 := m31_lift_0109_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1034489855 57) = 6 ^ 22 := by rw [m31_lift_0109_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0109_arithmetic.slope_below

theorem m31_lift_0110_arithmetic : RowArithmetic 1036587007 57 22 946724285 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0110 : LiftedFamily where
  residue := 1036587007
  steps := 57
  odd_inputs := 22
  endpoint := 946724285
  arithmetic := m31_lift_0110_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1036587007 57
    · calc
        collatzIter 1036587007 57 = 946724285 := m31_lift_0110_arithmetic.endpoint
        _ < 1036587007 := m31_lift_0110_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1036587007 57) = 6 ^ 22 := by rw [m31_lift_0110_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0110_arithmetic.slope_below

theorem m31_lift_0111_arithmetic : RowArithmetic 1040781311 68 26 601523074 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0111 : LiftedFamily where
  residue := 1040781311
  steps := 68
  odd_inputs := 26
  endpoint := 601523074
  arithmetic := m31_lift_0111_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1040781311 68
    · calc
        collatzIter 1040781311 68 = 601523074 := m31_lift_0111_arithmetic.endpoint
        _ < 1040781311 := m31_lift_0111_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1040781311 68) = 6 ^ 26 := by rw [m31_lift_0111_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0111_arithmetic.slope_below

theorem m31_lift_0112_arithmetic : RowArithmetic 1044975615 81 31 573277993 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0112 : LiftedFamily where
  residue := 1044975615
  steps := 81
  odd_inputs := 31
  endpoint := 573277993
  arithmetic := m31_lift_0112_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1044975615 81
    · calc
        collatzIter 1044975615 81 = 573277993 := m31_lift_0112_arithmetic.endpoint
        _ < 1044975615 := m31_lift_0112_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1044975615 81) = 6 ^ 31 := by rw [m31_lift_0112_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0112_arithmetic.slope_below

theorem m31_lift_0113_arithmetic : RowArithmetic 1053364223 88 34 975172531 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0113 : LiftedFamily where
  residue := 1053364223
  steps := 88
  odd_inputs := 34
  endpoint := 975172531
  arithmetic := m31_lift_0113_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1053364223 88
    · calc
        collatzIter 1053364223 88 = 975172531 := m31_lift_0113_arithmetic.endpoint
        _ < 1053364223 := m31_lift_0113_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1053364223 88) = 6 ^ 34 := by rw [m31_lift_0113_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0113_arithmetic.slope_below

theorem m31_lift_0114_arithmetic : RowArithmetic 1068044287 88 34 988762888 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0114 : LiftedFamily where
  residue := 1068044287
  steps := 88
  odd_inputs := 34
  endpoint := 988762888
  arithmetic := m31_lift_0114_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1068044287 88
    · calc
        collatzIter 1068044287 88 = 988762888 := m31_lift_0114_arithmetic.endpoint
        _ < 1068044287 := m31_lift_0114_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1068044287 88) = 6 ^ 34 := by rw [m31_lift_0114_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0114_arithmetic.slope_below

theorem m31_lift_0115_arithmetic : RowArithmetic 1070141439 57 22 977369851 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0115 : LiftedFamily where
  residue := 1070141439
  steps := 57
  odd_inputs := 22
  endpoint := 977369851
  arithmetic := m31_lift_0115_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1070141439 57
    · calc
        collatzIter 1070141439 57 = 977369851 := m31_lift_0115_arithmetic.endpoint
        _ < 1070141439 := m31_lift_0115_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1070141439 57) = 6 ^ 22 := by rw [m31_lift_0115_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0115_arithmetic.slope_below

theorem m31_lift_0116_arithmetic : RowArithmetic 1074335743 70 27 931373957 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0116 : LiftedFamily where
  residue := 1074335743
  steps := 70
  odd_inputs := 27
  endpoint := 931373957
  arithmetic := m31_lift_0116_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1074335743 70
    · calc
        collatzIter 1074335743 70 = 931373957 := m31_lift_0116_arithmetic.endpoint
        _ < 1074335743 := m31_lift_0116_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1074335743 70) = 6 ^ 27 := by rw [m31_lift_0116_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0116_arithmetic.slope_below

theorem m31_lift_0117_arithmetic : RowArithmetic 1101598719 65 25 848896934 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0117 : LiftedFamily where
  residue := 1101598719
  steps := 65
  odd_inputs := 25
  endpoint := 848896934
  arithmetic := m31_lift_0117_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1101598719 65
    · calc
        collatzIter 1101598719 65 = 848896934 := m31_lift_0117_arithmetic.endpoint
        _ < 1101598719 := m31_lift_0117_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1101598719 65) = 6 ^ 25 := by rw [m31_lift_0117_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0117_arithmetic.slope_below

theorem m31_lift_0118_arithmetic : RowArithmetic 1120473087 70 27 971371807 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0118 : LiftedFamily where
  residue := 1120473087
  steps := 70
  odd_inputs := 27
  endpoint := 971371807
  arithmetic := m31_lift_0118_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1120473087 70
    · calc
        collatzIter 1120473087 70 = 971371807 := m31_lift_0118_arithmetic.endpoint
        _ < 1120473087 := m31_lift_0118_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1120473087 70) = 6 ^ 27 := by rw [m31_lift_0118_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0118_arithmetic.slope_below

theorem m31_lift_0119_arithmetic : RowArithmetic 1137250303 101 39 999367600 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0119 : LiftedFamily where
  residue := 1137250303
  steps := 101
  odd_inputs := 39
  endpoint := 999367600
  arithmetic := m31_lift_0119_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1137250303 101
    · calc
        collatzIter 1137250303 101 = 999367600 := m31_lift_0119_arithmetic.endpoint
        _ < 1137250303 := m31_lift_0119_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1137250303 101) = 6 ^ 39 := by rw [m31_lift_0119_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0119_arithmetic.slope_below

theorem m31_lift_0120_arithmetic : RowArithmetic 1151930367 70 27 998643070 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0120 : LiftedFamily where
  residue := 1151930367
  steps := 70
  odd_inputs := 27
  endpoint := 998643070
  arithmetic := m31_lift_0120_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1151930367 70
    · calc
        collatzIter 1151930367 70 = 998643070 := m31_lift_0120_arithmetic.endpoint
        _ < 1151930367 := m31_lift_0120_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1151930367 70) = 6 ^ 27 := by rw [m31_lift_0120_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0120_arithmetic.slope_below

theorem m31_lift_0121_arithmetic : RowArithmetic 1154027519 68 26 666974102 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0121 : LiftedFamily where
  residue := 1154027519
  steps := 68
  odd_inputs := 26
  endpoint := 666974102
  arithmetic := m31_lift_0121_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1154027519 68
    · calc
        collatzIter 1154027519 68 = 666974102 := m31_lift_0121_arithmetic.endpoint
        _ < 1154027519 := m31_lift_0121_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1154027519 68) = 6 ^ 26 := by rw [m31_lift_0121_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0121_arithmetic.slope_below

theorem m31_lift_0122_arithmetic : RowArithmetic 1162416127 57 22 1061645158 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0122 : LiftedFamily where
  residue := 1162416127
  steps := 57
  odd_inputs := 22
  endpoint := 1061645158
  arithmetic := m31_lift_0122_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1162416127 57
    · calc
        collatzIter 1162416127 57 = 1061645158 := m31_lift_0122_arithmetic.endpoint
        _ < 1162416127 := m31_lift_0122_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1162416127 57) = 6 ^ 22 := by rw [m31_lift_0122_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0122_arithmetic.slope_below

theorem m31_lift_0123_arithmetic : RowArithmetic 1168707583 55 21 711594134 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0123 : LiftedFamily where
  residue := 1168707583
  steps := 55
  odd_inputs := 21
  endpoint := 711594134
  arithmetic := m31_lift_0123_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1168707583 55
    · calc
        collatzIter 1168707583 55 = 711594134 := m31_lift_0123_arithmetic.endpoint
        _ < 1168707583 := m31_lift_0123_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1168707583 55) = 6 ^ 21 := by rw [m31_lift_0123_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0123_arithmetic.slope_below

theorem m31_lift_0124_arithmetic : RowArithmetic 1174999039 70 27 1018641994 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0124 : LiftedFamily where
  residue := 1174999039
  steps := 70
  odd_inputs := 27
  endpoint := 1018641994
  arithmetic := m31_lift_0124_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1174999039 70
    · calc
        collatzIter 1174999039 70 = 1018641994 := m31_lift_0124_arithmetic.endpoint
        _ < 1174999039 := m31_lift_0124_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1174999039 70) = 6 ^ 27 := by rw [m31_lift_0124_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0124_arithmetic.slope_below

theorem m31_lift_0125_arithmetic : RowArithmetic 1179193343 65 25 908691700 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0125 : LiftedFamily where
  residue := 1179193343
  steps := 65
  odd_inputs := 25
  endpoint := 908691700
  arithmetic := m31_lift_0125_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1179193343 65
    · calc
        collatzIter 1179193343 65 = 908691700 := m31_lift_0125_arithmetic.endpoint
        _ < 1179193343 := m31_lift_0125_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1179193343 65) = 6 ^ 25 := by rw [m31_lift_0125_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0125_arithmetic.slope_below

theorem m31_lift_0126_arithmetic : RowArithmetic 1187581951 55 21 723086221 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0126 : LiftedFamily where
  residue := 1187581951
  steps := 55
  odd_inputs := 21
  endpoint := 723086221
  arithmetic := m31_lift_0126_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1187581951 55
    · calc
        collatzIter 1187581951 55 = 723086221 := m31_lift_0126_arithmetic.endpoint
        _ < 1187581951 := m31_lift_0126_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1187581951 55) = 6 ^ 21 := by rw [m31_lift_0126_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0126_arithmetic.slope_below

theorem m31_lift_0127_arithmetic : RowArithmetic 1208553471 75 29 1178697758 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0127 : LiftedFamily where
  residue := 1208553471
  steps := 75
  odd_inputs := 29
  endpoint := 1178697758
  arithmetic := m31_lift_0127_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1208553471 75
    · calc
        collatzIter 1208553471 75 = 1178697758 := m31_lift_0127_arithmetic.endpoint
        _ < 1208553471 := m31_lift_0127_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1208553471 75) = 6 ^ 29 := by rw [m31_lift_0127_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0127_arithmetic.slope_below

theorem m31_lift_0128_arithmetic : RowArithmetic 1212747775 52 20 984545339 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0128 : LiftedFamily where
  residue := 1212747775
  steps := 52
  odd_inputs := 20
  endpoint := 984545339
  arithmetic := m31_lift_0128_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1212747775 52
    · calc
        collatzIter 1212747775 52 = 984545339 := m31_lift_0128_arithmetic.endpoint
        _ < 1212747775 := m31_lift_0128_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1212747775 52) = 6 ^ 20 := by rw [m31_lift_0128_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0128_arithmetic.slope_below

theorem m31_lift_0129_arithmetic : RowArithmetic 1242107903 57 22 1134428377 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0129 : LiftedFamily where
  residue := 1242107903
  steps := 57
  odd_inputs := 22
  endpoint := 1134428377
  arithmetic := m31_lift_0129_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1242107903 57
    · calc
        collatzIter 1242107903 57 = 1134428377 := m31_lift_0129_arithmetic.endpoint
        _ < 1242107903 := m31_lift_0129_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1242107903 57) = 6 ^ 22 := by rw [m31_lift_0129_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0129_arithmetic.slope_below

theorem m31_lift_0130_arithmetic : RowArithmetic 1246302207 52 20 1011785842 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0130 : LiftedFamily where
  residue := 1246302207
  steps := 52
  odd_inputs := 20
  endpoint := 1011785842
  arithmetic := m31_lift_0130_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1246302207 52
    · calc
        collatzIter 1246302207 52 = 1011785842 := m31_lift_0130_arithmetic.endpoint
        _ < 1246302207 := m31_lift_0130_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1246302207 52) = 6 ^ 20 := by rw [m31_lift_0130_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0130_arithmetic.slope_below

theorem m31_lift_0131_arithmetic : RowArithmetic 1254690815 83 32 1032492943 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0131 : LiftedFamily where
  residue := 1254690815
  steps := 83
  odd_inputs := 32
  endpoint := 1032492943
  arithmetic := m31_lift_0131_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1254690815 83
    · calc
        collatzIter 1254690815 83 = 1032492943 := m31_lift_0131_arithmetic.endpoint
        _ < 1254690815 := m31_lift_0131_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1254690815 83) = 6 ^ 32 := by rw [m31_lift_0131_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0131_arithmetic.slope_below

theorem m31_lift_0132_arithmetic : RowArithmetic 1271468031 57 22 1161243247 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0132 : LiftedFamily where
  residue := 1271468031
  steps := 57
  odd_inputs := 22
  endpoint := 1161243247
  arithmetic := m31_lift_0132_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1271468031 57
    · calc
        collatzIter 1271468031 57 = 1161243247 := m31_lift_0132_arithmetic.endpoint
        _ < 1271468031 := m31_lift_0132_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1271468031 57) = 6 ^ 22 := by rw [m31_lift_0132_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0132_arithmetic.slope_below

theorem m31_lift_0133_arithmetic : RowArithmetic 1286148095 52 20 1044133940 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0133 : LiftedFamily where
  residue := 1286148095
  steps := 52
  odd_inputs := 20
  endpoint := 1044133940
  arithmetic := m31_lift_0133_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1286148095 52
    · calc
        collatzIter 1286148095 52 = 1044133940 := m31_lift_0133_arithmetic.endpoint
        _ < 1286148095 := m31_lift_0133_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1286148095 52) = 6 ^ 20 := by rw [m31_lift_0133_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0133_arithmetic.slope_below

theorem m31_lift_0134_arithmetic : RowArithmetic 1288245247 94 36 670847756 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0134 : LiftedFamily where
  residue := 1288245247
  steps := 94
  odd_inputs := 36
  endpoint := 670847756
  arithmetic := m31_lift_0134_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1288245247 94
    · calc
        collatzIter 1288245247 94 = 670847756 := m31_lift_0134_arithmetic.endpoint
        _ < 1288245247 := m31_lift_0134_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1288245247 94) = 6 ^ 36 := by rw [m31_lift_0134_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0134_arithmetic.slope_below

theorem m31_lift_0135_arithmetic : RowArithmetic 1296633855 65 25 999191887 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0135 : LiftedFamily where
  residue := 1296633855
  steps := 65
  odd_inputs := 25
  endpoint := 999191887
  arithmetic := m31_lift_0135_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1296633855 65
    · calc
        collatzIter 1296633855 65 = 999191887 := m31_lift_0135_arithmetic.endpoint
        _ < 1296633855 := m31_lift_0135_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1296633855 65) = 6 ^ 25 := by rw [m31_lift_0135_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0135_arithmetic.slope_below

theorem m31_lift_0136_arithmetic : RowArithmetic 1302925311 65 25 1004040112 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0136 : LiftedFamily where
  residue := 1302925311
  steps := 65
  odd_inputs := 25
  endpoint := 1004040112
  arithmetic := m31_lift_0136_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1302925311 65
    · calc
        collatzIter 1302925311 65 = 1004040112 := m31_lift_0136_arithmetic.endpoint
        _ < 1302925311 := m31_lift_0136_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1302925311 65) = 6 ^ 25 := by rw [m31_lift_0136_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0136_arithmetic.slope_below

theorem m31_lift_0137_arithmetic : RowArithmetic 1305022463 55 21 794592542 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0137 : LiftedFamily where
  residue := 1305022463
  steps := 55
  odd_inputs := 21
  endpoint := 794592542
  arithmetic := m31_lift_0137_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1305022463 55
    · calc
        collatzIter 1305022463 55 = 794592542 := m31_lift_0137_arithmetic.endpoint
        _ < 1305022463 := m31_lift_0137_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1305022463 55) = 6 ^ 21 := by rw [m31_lift_0137_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0137_arithmetic.slope_below

theorem m31_lift_0138_arithmetic : RowArithmetic 1309216767 94 36 681768578 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0138 : LiftedFamily where
  residue := 1309216767
  steps := 94
  odd_inputs := 36
  endpoint := 681768578
  arithmetic := m31_lift_0138_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1309216767 94
    · calc
        collatzIter 1309216767 94 = 681768578 := m31_lift_0138_arithmetic.endpoint
        _ < 1309216767 := m31_lift_0138_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1309216767 94) = 6 ^ 36 := by rw [m31_lift_0138_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0138_arithmetic.slope_below

theorem m31_lift_0139_arithmetic : RowArithmetic 1313411071 63 24 674746990 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0139 : LiftedFamily where
  residue := 1313411071
  steps := 63
  odd_inputs := 24
  endpoint := 674746990
  arithmetic := m31_lift_0139_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1313411071 63
    · calc
        collatzIter 1313411071 63 = 674746990 := m31_lift_0139_arithmetic.endpoint
        _ < 1313411071 := m31_lift_0139_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1313411071 63) = 6 ^ 24 := by rw [m31_lift_0139_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0139_arithmetic.slope_below

theorem m31_lift_0140_arithmetic : RowArithmetic 1321799679 143 55 745066496 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0140 : LiftedFamily where
  residue := 1321799679
  steps := 143
  odd_inputs := 55
  endpoint := 745066496
  arithmetic := m31_lift_0140_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1321799679 143
    · calc
        collatzIter 1321799679 143 = 745066496 := m31_lift_0140_arithmetic.endpoint
        _ < 1321799679 := m31_lift_0140_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1321799679 143) = 6 ^ 55 := by rw [m31_lift_0140_arithmetic.odd_inputs]
        _ < 2 ^ 143 := m31_lift_0140_arithmetic.slope_below

theorem m31_lift_0141_arithmetic : RowArithmetic 1336479743 55 21 813746021 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0141 : LiftedFamily where
  residue := 1336479743
  steps := 55
  odd_inputs := 21
  endpoint := 813746021
  arithmetic := m31_lift_0141_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1336479743 55
    · calc
        collatzIter 1336479743 55 = 813746021 := m31_lift_0141_arithmetic.endpoint
        _ < 1336479743 := m31_lift_0141_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1336479743 55) = 6 ^ 21 := by rw [m31_lift_0141_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0141_arithmetic.slope_below

theorem m31_lift_0142_arithmetic : RowArithmetic 1355354111 55 21 825238108 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0142 : LiftedFamily where
  residue := 1355354111
  steps := 55
  odd_inputs := 21
  endpoint := 825238108
  arithmetic := m31_lift_0142_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1355354111 55
    · calc
        collatzIter 1355354111 55 = 825238108 := m31_lift_0142_arithmetic.endpoint
        _ < 1355354111 := m31_lift_0142_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1355354111 55) = 6 ^ 21 := by rw [m31_lift_0142_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0142_arithmetic.slope_below

theorem m31_lift_0143_arithmetic : RowArithmetic 1370034175 70 27 1187723818 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0143 : LiftedFamily where
  residue := 1370034175
  steps := 70
  odd_inputs := 27
  endpoint := 1187723818
  arithmetic := m31_lift_0143_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1370034175 70
    · calc
        collatzIter 1370034175 70 = 1187723818 := m31_lift_0143_arithmetic.endpoint
        _ < 1370034175 := m31_lift_0143_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1370034175 70) = 6 ^ 27 := by rw [m31_lift_0143_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0143_arithmetic.slope_below

theorem m31_lift_0144_arithmetic : RowArithmetic 1376325631 52 20 1117342792 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0144 : LiftedFamily where
  residue := 1376325631
  steps := 52
  odd_inputs := 20
  endpoint := 1117342792
  arithmetic := m31_lift_0144_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1376325631 52
    · calc
        collatzIter 1376325631 52 = 1117342792 := m31_lift_0144_arithmetic.endpoint
        _ < 1376325631 := m31_lift_0144_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1376325631 52) = 6 ^ 20 := by rw [m31_lift_0144_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0144_arithmetic.slope_below

theorem m31_lift_0145_arithmetic : RowArithmetic 1388908543 88 34 1285809247 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0145 : LiftedFamily where
  residue := 1388908543
  steps := 88
  odd_inputs := 34
  endpoint := 1285809247
  arithmetic := m31_lift_0145_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1388908543 88
    · calc
        collatzIter 1388908543 88 = 1285809247 := m31_lift_0145_arithmetic.endpoint
        _ < 1388908543 := m31_lift_0145_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1388908543 88) = 6 ^ 34 := by rw [m31_lift_0145_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0145_arithmetic.slope_below

theorem m31_lift_0146_arithmetic : RowArithmetic 1405685759 81 31 771165086 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0146 : LiftedFamily where
  residue := 1405685759
  steps := 81
  odd_inputs := 31
  endpoint := 771165086
  arithmetic := m31_lift_0146_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1405685759 81
    · calc
        collatzIter 1405685759 81 = 771165086 := m31_lift_0146_arithmetic.endpoint
        _ < 1405685759 := m31_lift_0146_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1405685759 81) = 6 ^ 31 := by rw [m31_lift_0146_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0146_arithmetic.slope_below

theorem m31_lift_0147_arithmetic : RowArithmetic 1420365823 60 23 972924710 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0147 : LiftedFamily where
  residue := 1420365823
  steps := 60
  odd_inputs := 23
  endpoint := 972924710
  arithmetic := m31_lift_0147_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1420365823 60
    · calc
        collatzIter 1420365823 60 = 972924710 := m31_lift_0147_arithmetic.endpoint
        _ < 1420365823 := m31_lift_0147_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1420365823 60) = 6 ^ 23 := by rw [m31_lift_0147_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0147_arithmetic.slope_below

theorem m31_lift_0148_arithmetic : RowArithmetic 1422462975 75 29 1387322911 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0148 : LiftedFamily where
  residue := 1422462975
  steps := 75
  odd_inputs := 29
  endpoint := 1387322911
  arithmetic := m31_lift_0148_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1422462975 75
    · calc
        collatzIter 1422462975 75 = 1387322911 := m31_lift_0148_arithmetic.endpoint
        _ < 1422462975 := m31_lift_0148_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1422462975 75) = 6 ^ 29 := by rw [m31_lift_0148_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0148_arithmetic.slope_below

theorem m31_lift_0149_arithmetic : RowArithmetic 1426657279 70 27 1236812089 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0149 : LiftedFamily where
  residue := 1426657279
  steps := 70
  odd_inputs := 27
  endpoint := 1236812089
  arithmetic := m31_lift_0149_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1426657279 70
    · calc
        collatzIter 1426657279 70 = 1236812089 := m31_lift_0149_arithmetic.endpoint
        _ < 1426657279 := m31_lift_0149_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1426657279 70) = 6 ^ 27 := by rw [m31_lift_0149_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0149_arithmetic.slope_below

theorem m31_lift_0150_arithmetic : RowArithmetic 1437143039 88 34 1330463275 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0150 : LiftedFamily where
  residue := 1437143039
  steps := 88
  odd_inputs := 34
  endpoint := 1330463275
  arithmetic := m31_lift_0150_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1437143039 88
    · calc
        collatzIter 1437143039 88 = 1330463275 := m31_lift_0150_arithmetic.endpoint
        _ < 1437143039 := m31_lift_0150_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1437143039 88) = 6 ^ 34 := by rw [m31_lift_0150_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0150_arithmetic.slope_below

theorem m31_lift_0151_arithmetic : RowArithmetic 1443434495 52 20 1171823798 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0151 : LiftedFamily where
  residue := 1443434495
  steps := 52
  odd_inputs := 20
  endpoint := 1171823798
  arithmetic := m31_lift_0151_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1443434495 52
    · calc
        collatzIter 1443434495 52 = 1171823798 := m31_lift_0151_arithmetic.endpoint
        _ < 1443434495 := m31_lift_0151_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1443434495 52) = 6 ^ 20 := by rw [m31_lift_0151_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0151_arithmetic.slope_below

theorem m31_lift_0152_arithmetic : RowArithmetic 1447628799 94 36 753846004 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0152 : LiftedFamily where
  residue := 1447628799
  steps := 94
  odd_inputs := 36
  endpoint := 753846004
  arithmetic := m31_lift_0152_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1447628799 94
    · calc
        collatzIter 1447628799 94 = 753846004 := m31_lift_0152_arithmetic.endpoint
        _ < 1447628799 := m31_lift_0152_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1447628799 94) = 6 ^ 36 := by rw [m31_lift_0152_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0152_arithmetic.slope_below

theorem m31_lift_0153_arithmetic : RowArithmetic 1456017407 68 26 841510177 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0153 : LiftedFamily where
  residue := 1456017407
  steps := 68
  odd_inputs := 26
  endpoint := 841510177
  arithmetic := m31_lift_0153_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1456017407 68
    · calc
        collatzIter 1456017407 68 = 841510177 := m31_lift_0153_arithmetic.endpoint
        _ < 1456017407 := m31_lift_0153_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1456017407 68) = 6 ^ 26 := by rw [m31_lift_0153_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0153_arithmetic.slope_below

theorem m31_lift_0154_arithmetic : RowArithmetic 1472794623 63 24 756628112 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0154 : LiftedFamily where
  residue := 1472794623
  steps := 63
  odd_inputs := 24
  endpoint := 756628112
  arithmetic := m31_lift_0154_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1472794623 63
    · calc
        collatzIter 1472794623 63 = 756628112 := m31_lift_0154_arithmetic.endpoint
        _ < 1472794623 := m31_lift_0154_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1472794623 63) = 6 ^ 24 := by rw [m31_lift_0154_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0154_arithmetic.slope_below

theorem m31_lift_0155_arithmetic : RowArithmetic 1476988927 55 21 899298226 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0155 : LiftedFamily where
  residue := 1476988927
  steps := 55
  odd_inputs := 21
  endpoint := 899298226
  arithmetic := m31_lift_0155_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1476988927 55
    · calc
        collatzIter 1476988927 55 = 899298226 := m31_lift_0155_arithmetic.endpoint
        _ < 1476988927 := m31_lift_0155_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1476988927 55) = 6 ^ 21 := by rw [m31_lift_0155_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0155_arithmetic.slope_below

theorem m31_lift_0156_arithmetic : RowArithmetic 1481183231 52 20 1202469364 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0156 : LiftedFamily where
  residue := 1481183231
  steps := 52
  odd_inputs := 20
  endpoint := 1202469364
  arithmetic := m31_lift_0156_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1481183231 52
    · calc
        collatzIter 1481183231 52 = 1202469364 := m31_lift_0156_arithmetic.endpoint
        _ < 1481183231 := m31_lift_0156_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1481183231 52) = 6 ^ 20 := by rw [m31_lift_0156_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0156_arithmetic.slope_below

theorem m31_lift_0157_arithmetic : RowArithmetic 1489571839 57 22 1360439426 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0157 : LiftedFamily where
  residue := 1489571839
  steps := 57
  odd_inputs := 22
  endpoint := 1360439426
  arithmetic := m31_lift_0157_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1489571839 57
    · calc
        collatzIter 1489571839 57 = 1360439426 := m31_lift_0157_arithmetic.endpoint
        _ < 1489571839 := m31_lift_0157_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1489571839 57) = 6 ^ 22 := by rw [m31_lift_0157_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0157_arithmetic.slope_below

theorem m31_lift_0158_arithmetic : RowArithmetic 1510543359 57 22 1379592905 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0158 : LiftedFamily where
  residue := 1510543359
  steps := 57
  odd_inputs := 22
  endpoint := 1379592905
  arithmetic := m31_lift_0158_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1510543359 57
    · calc
        collatzIter 1510543359 57 = 1379592905 := m31_lift_0158_arithmetic.endpoint
        _ < 1510543359 := m31_lift_0158_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1510543359 57) = 6 ^ 22 := by rw [m31_lift_0158_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0158_arithmetic.slope_below

theorem m31_lift_0159_arithmetic : RowArithmetic 1523126271 57 22 1391084992 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0159 : LiftedFamily where
  residue := 1523126271
  steps := 57
  odd_inputs := 22
  endpoint := 1391084992
  arithmetic := m31_lift_0159_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1523126271 57
    · calc
        collatzIter 1523126271 57 = 1391084992 := m31_lift_0159_arithmetic.endpoint
        _ < 1523126271 := m31_lift_0159_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1523126271 57) = 6 ^ 22 := by rw [m31_lift_0159_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0159_arithmetic.slope_below

theorem m31_lift_0160_arithmetic : RowArithmetic 1539903487 75 29 1501862210 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0160 : LiftedFamily where
  residue := 1539903487
  steps := 75
  odd_inputs := 29
  endpoint := 1501862210
  arithmetic := m31_lift_0160_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1539903487 75
    · calc
        collatzIter 1539903487 75 = 1501862210 := m31_lift_0160_arithmetic.endpoint
        _ < 1539903487 := m31_lift_0160_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1539903487 75) = 6 ^ 29 := by rw [m31_lift_0160_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0160_arithmetic.slope_below

theorem m31_lift_0161_arithmetic : RowArithmetic 1556680703 75 29 1518224966 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0161 : LiftedFamily where
  residue := 1556680703
  steps := 75
  odd_inputs := 29
  endpoint := 1518224966
  arithmetic := m31_lift_0161_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1556680703 75
    · calc
        collatzIter 1556680703 75 = 1518224966 := m31_lift_0161_arithmetic.endpoint
        _ < 1556680703 := m31_lift_0161_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1556680703 75) = 6 ^ 29 := by rw [m31_lift_0161_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0161_arithmetic.slope_below

theorem m31_lift_0162_arithmetic : RowArithmetic 1560875007 75 29 1522315657 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0162 : LiftedFamily where
  residue := 1560875007
  steps := 75
  odd_inputs := 29
  endpoint := 1522315657
  arithmetic := m31_lift_0162_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1560875007 75
    · calc
        collatzIter 1560875007 75 = 1522315657 := m31_lift_0162_arithmetic.endpoint
        _ < 1560875007 := m31_lift_0162_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1560875007 75) = 6 ^ 29 := by rw [m31_lift_0162_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0162_arithmetic.slope_below

theorem m31_lift_0163_arithmetic : RowArithmetic 1565069311 52 20 1270570622 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0163 : LiftedFamily where
  residue := 1565069311
  steps := 52
  odd_inputs := 20
  endpoint := 1270570622
  arithmetic := m31_lift_0163_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1565069311 52
    · calc
        collatzIter 1565069311 52 = 1270570622 := m31_lift_0163_arithmetic.endpoint
        _ < 1565069311 := m31_lift_0163_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1565069311 52) = 6 ^ 20 := by rw [m31_lift_0163_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0163_arithmetic.slope_below

theorem m31_lift_0164_arithmetic : RowArithmetic 1571360767 68 26 908173262 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0164 : LiftedFamily where
  residue := 1571360767
  steps := 68
  odd_inputs := 26
  endpoint := 908173262
  arithmetic := m31_lift_0164_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1571360767 68
    · calc
        collatzIter 1571360767 68 = 908173262 := m31_lift_0164_arithmetic.endpoint
        _ < 1571360767 := m31_lift_0164_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1571360767 68) = 6 ^ 26 := by rw [m31_lift_0164_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0164_arithmetic.slope_below

theorem m31_lift_0165_arithmetic : RowArithmetic 1577652223 83 32 1298259911 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0165 : LiftedFamily where
  residue := 1577652223
  steps := 83
  odd_inputs := 32
  endpoint := 1298259911
  arithmetic := m31_lift_0165_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1577652223 83
    · calc
        collatzIter 1577652223 83 = 1298259911 := m31_lift_0165_arithmetic.endpoint
        _ < 1577652223 := m31_lift_0165_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1577652223 83) = 6 ^ 32 := by rw [m31_lift_0165_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0165_arithmetic.slope_below

theorem m31_lift_0166_arithmetic : RowArithmetic 1581846527 55 21 963143155 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0166 : LiftedFamily where
  residue := 1581846527
  steps := 55
  odd_inputs := 21
  endpoint := 963143155
  arithmetic := m31_lift_0166_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1581846527 55
    · calc
        collatzIter 1581846527 55 = 963143155 := m31_lift_0166_arithmetic.endpoint
        _ < 1581846527 := m31_lift_0166_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1581846527 55) = 6 ^ 21 := by rw [m31_lift_0166_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0166_arithmetic.slope_below

theorem m31_lift_0167_arithmetic : RowArithmetic 1590235135 94 36 828107593 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0167 : LiftedFamily where
  residue := 1590235135
  steps := 94
  odd_inputs := 36
  endpoint := 828107593
  arithmetic := m31_lift_0167_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1590235135 94
    · calc
        collatzIter 1590235135 94 = 828107593 := m31_lift_0167_arithmetic.endpoint
        _ < 1590235135 := m31_lift_0167_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1590235135 94) = 6 ^ 36 := by rw [m31_lift_0167_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0167_arithmetic.slope_below

theorem m31_lift_0168_arithmetic : RowArithmetic 1604915199 99 38 940221190 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0168 : LiftedFamily where
  residue := 1604915199
  steps := 99
  odd_inputs := 38
  endpoint := 940221190
  arithmetic := m31_lift_0168_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1604915199 99
    · calc
        collatzIter 1604915199 99 = 940221190 := m31_lift_0168_arithmetic.endpoint
        _ < 1604915199 := m31_lift_0168_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1604915199 99) = 6 ^ 38 := by rw [m31_lift_0168_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0168_arithmetic.slope_below

theorem m31_lift_0169_arithmetic : RowArithmetic 1607012351 55 21 978465938 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0169 : LiftedFamily where
  residue := 1607012351
  steps := 55
  odd_inputs := 21
  endpoint := 978465938
  arithmetic := m31_lift_0169_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1607012351 55
    · calc
        collatzIter 1607012351 55 = 978465938 := m31_lift_0169_arithmetic.endpoint
        _ < 1607012351 := m31_lift_0169_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1607012351 55) = 6 ^ 21 := by rw [m31_lift_0169_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0169_arithmetic.slope_below

theorem m31_lift_0170_arithmetic : RowArithmetic 1611206655 52 20 1308026314 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0170 : LiftedFamily where
  residue := 1611206655
  steps := 52
  odd_inputs := 20
  endpoint := 1308026314
  arithmetic := m31_lift_0170_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1611206655 52
    · calc
        collatzIter 1611206655 52 = 1308026314 := m31_lift_0170_arithmetic.endpoint
        _ < 1611206655 := m31_lift_0170_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1611206655 52) = 6 ^ 20 := by rw [m31_lift_0170_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0170_arithmetic.slope_below

theorem m31_lift_0171_arithmetic : RowArithmetic 1648955391 94 36 858685895 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0171 : LiftedFamily where
  residue := 1648955391
  steps := 94
  odd_inputs := 36
  endpoint := 858685895
  arithmetic := m31_lift_0171_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1648955391 94
    · calc
        collatzIter 1648955391 94 = 858685895 := m31_lift_0171_arithmetic.endpoint
        _ < 1648955391 := m31_lift_0171_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1648955391 94) = 6 ^ 36 := by rw [m31_lift_0171_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0171_arithmetic.slope_below

theorem m31_lift_0172_arithmetic : RowArithmetic 1657343999 96 37 1294581335 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0172 : LiftedFamily where
  residue := 1657343999
  steps := 96
  odd_inputs := 37
  endpoint := 1294581335
  arithmetic := m31_lift_0172_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1657343999 96
    · calc
        collatzIter 1657343999 96 = 1294581335 := m31_lift_0172_arithmetic.endpoint
        _ < 1657343999 := m31_lift_0172_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1657343999 96) = 6 ^ 37 := by rw [m31_lift_0172_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0172_arithmetic.slope_below

theorem m31_lift_0173_arithmetic : RowArithmetic 1674121215 57 22 1528990039 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0173 : LiftedFamily where
  residue := 1674121215
  steps := 57
  odd_inputs := 22
  endpoint := 1528990039
  arithmetic := m31_lift_0173_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1674121215 57
    · calc
        collatzIter 1674121215 57 = 1528990039 := m31_lift_0173_arithmetic.endpoint
        _ < 1674121215 := m31_lift_0173_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1674121215 57) = 6 ^ 22 := by rw [m31_lift_0173_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0173_arithmetic.slope_below

theorem m31_lift_0174_arithmetic : RowArithmetic 1688801279 57 22 1542397475 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0174 : LiftedFamily where
  residue := 1688801279
  steps := 57
  odd_inputs := 22
  endpoint := 1542397475
  arithmetic := m31_lift_0174_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1688801279 57
    · calc
        collatzIter 1688801279 57 = 1542397475 := m31_lift_0174_arithmetic.endpoint
        _ < 1688801279 := m31_lift_0174_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1688801279 57) = 6 ^ 22 := by rw [m31_lift_0174_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0174_arithmetic.slope_below

theorem m31_lift_0175_arithmetic : RowArithmetic 1690898431 57 22 1544312822 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0175 : LiftedFamily where
  residue := 1690898431
  steps := 57
  odd_inputs := 22
  endpoint := 1544312822
  arithmetic := m31_lift_0175_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1690898431 57
    · calc
        collatzIter 1690898431 57 = 1544312822 := m31_lift_0175_arithmetic.endpoint
        _ < 1690898431 := m31_lift_0175_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1690898431 57) = 6 ^ 22 := by rw [m31_lift_0175_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0175_arithmetic.slope_below

theorem m31_lift_0176_arithmetic : RowArithmetic 1705578495 63 24 876217645 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0176 : LiftedFamily where
  residue := 1705578495
  steps := 63
  odd_inputs := 24
  endpoint := 876217645
  arithmetic := m31_lift_0176_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1705578495 63
    · calc
        collatzIter 1705578495 63 = 876217645 := m31_lift_0176_arithmetic.endpoint
        _ < 1705578495 := m31_lift_0176_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1705578495 63) = 6 ^ 24 := by rw [m31_lift_0176_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0176_arithmetic.slope_below

theorem m31_lift_0177_arithmetic : RowArithmetic 1707675647 68 26 986956907 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0177 : LiftedFamily where
  residue := 1707675647
  steps := 68
  odd_inputs := 26
  endpoint := 986956907
  arithmetic := m31_lift_0177_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1707675647 68
    · calc
        collatzIter 1707675647 68 = 986956907 := m31_lift_0177_arithmetic.endpoint
        _ < 1707675647 := m31_lift_0177_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1707675647 68) = 6 ^ 26 := by rw [m31_lift_0177_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0177_arithmetic.slope_below

theorem m31_lift_0178_arithmetic : RowArithmetic 1711869951 52 20 1389747823 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0178 : LiftedFamily where
  residue := 1711869951
  steps := 52
  odd_inputs := 20
  endpoint := 1389747823
  arithmetic := m31_lift_0178_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1711869951 52
    · calc
        collatzIter 1711869951 52 = 1389747823 := m31_lift_0178_arithmetic.endpoint
        _ < 1711869951 := m31_lift_0178_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1711869951 52) = 6 ^ 20 := by rw [m31_lift_0178_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0178_arithmetic.slope_below

theorem m31_lift_0179_arithmetic : RowArithmetic 1716064255 52 20 1393152886 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0179 : LiftedFamily where
  residue := 1716064255
  steps := 52
  odd_inputs := 20
  endpoint := 1393152886
  arithmetic := m31_lift_0179_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1716064255 52
    · calc
        collatzIter 1716064255 52 = 1393152886 := m31_lift_0179_arithmetic.endpoint
        _ < 1716064255 := m31_lift_0179_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1716064255 52) = 6 ^ 20 := by rw [m31_lift_0179_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0179_arithmetic.slope_below

theorem m31_lift_0180_arithmetic : RowArithmetic 1724452863 91 35 1197334472 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0180 : LiftedFamily where
  residue := 1724452863
  steps := 91
  odd_inputs := 35
  endpoint := 1197334472
  arithmetic := m31_lift_0180_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1724452863 91
    · calc
        collatzIter 1724452863 91 = 1197334472 := m31_lift_0180_arithmetic.endpoint
        _ < 1724452863 := m31_lift_0180_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1724452863 91) = 6 ^ 35 := by rw [m31_lift_0180_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0180_arithmetic.slope_below

theorem m31_lift_0181_arithmetic : RowArithmetic 1745424383 70 27 1513160875 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0181 : LiftedFamily where
  residue := 1745424383
  steps := 70
  odd_inputs := 27
  endpoint := 1513160875
  arithmetic := m31_lift_0181_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1745424383 70
    · calc
        collatzIter 1745424383 70 = 1513160875 := m31_lift_0181_arithmetic.endpoint
        _ < 1745424383 := m31_lift_0181_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1745424383 70) = 6 ^ 27 := by rw [m31_lift_0181_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0181_arithmetic.slope_below

theorem m31_lift_0182_arithmetic : RowArithmetic 1758007295 70 27 1524069379 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0182 : LiftedFamily where
  residue := 1758007295
  steps := 70
  odd_inputs := 27
  endpoint := 1524069379
  arithmetic := m31_lift_0182_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1758007295 70
    · calc
        collatzIter 1758007295 70 = 1524069379 := m31_lift_0182_arithmetic.endpoint
        _ < 1758007295 := m31_lift_0182_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1758007295 70) = 6 ^ 27 := by rw [m31_lift_0182_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0182_arithmetic.slope_below

theorem m31_lift_0183_arithmetic : RowArithmetic 1772687359 57 22 1619011390 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0183 : LiftedFamily where
  residue := 1772687359
  steps := 57
  odd_inputs := 22
  endpoint := 1619011390
  arithmetic := m31_lift_0183_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1772687359 57
    · calc
        collatzIter 1772687359 57 = 1619011390 := m31_lift_0183_arithmetic.endpoint
        _ < 1772687359 := m31_lift_0183_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1772687359 57) = 6 ^ 22 := by rw [m31_lift_0183_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0183_arithmetic.slope_below

theorem m31_lift_0184_arithmetic : RowArithmetic 1778978815 65 25 1370889085 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0184 : LiftedFamily where
  residue := 1778978815
  steps := 65
  odd_inputs := 25
  endpoint := 1370889085
  arithmetic := m31_lift_0184_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1778978815 65
    · calc
        collatzIter 1778978815 65 = 1370889085 := m31_lift_0184_arithmetic.endpoint
        _ < 1778978815 := m31_lift_0184_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1778978815 65) = 6 ^ 25 := by rw [m31_lift_0184_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0184_arithmetic.slope_below

theorem m31_lift_0185_arithmetic : RowArithmetic 1783173119 65 25 1374121234 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0185 : LiftedFamily where
  residue := 1783173119
  steps := 65
  odd_inputs := 25
  endpoint := 1374121234
  arithmetic := m31_lift_0185_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1783173119 65
    · calc
        collatzIter 1783173119 65 = 1374121234 := m31_lift_0185_arithmetic.endpoint
        _ < 1783173119 := m31_lift_0185_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1783173119 65) = 6 ^ 25 := by rw [m31_lift_0185_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0185_arithmetic.slope_below

theorem m31_lift_0186_arithmetic : RowArithmetic 1791561727 122 47 1260901247 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0186 : LiftedFamily where
  residue := 1791561727
  steps := 122
  odd_inputs := 47
  endpoint := 1260901247
  arithmetic := m31_lift_0186_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1791561727 122
    · calc
        collatzIter 1791561727 122 = 1260901247 := m31_lift_0186_arithmetic.endpoint
        _ < 1791561727 := m31_lift_0186_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1791561727 122) = 6 ^ 47 := by rw [m31_lift_0186_arithmetic.odd_inputs]
        _ < 2 ^ 122 := m31_lift_0186_arithmetic.slope_below

theorem m31_lift_0187_arithmetic : RowArithmetic 1808338943 73 28 1175777548 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0187 : LiftedFamily where
  residue := 1808338943
  steps := 73
  odd_inputs := 28
  endpoint := 1175777548
  arithmetic := m31_lift_0187_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1808338943 73
    · calc
        collatzIter 1808338943 73 = 1175777548 := m31_lift_0187_arithmetic.endpoint
        _ < 1808338943 := m31_lift_0187_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1808338943 73) = 6 ^ 28 := by rw [m31_lift_0187_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0187_arithmetic.slope_below

theorem m31_lift_0188_arithmetic : RowArithmetic 1825116159 122 47 1284516857 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0188 : LiftedFamily where
  residue := 1825116159
  steps := 122
  odd_inputs := 47
  endpoint := 1284516857
  arithmetic := m31_lift_0188_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1825116159 122
    · calc
        collatzIter 1825116159 122 = 1284516857 := m31_lift_0188_arithmetic.endpoint
        _ < 1825116159 := m31_lift_0188_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1825116159 122) = 6 ^ 47 := by rw [m31_lift_0188_arithmetic.odd_inputs]
        _ < 2 ^ 122 := m31_lift_0188_arithmetic.slope_below

theorem m31_lift_0189_arithmetic : RowArithmetic 1829310463 60 23 1253044337 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0189 : LiftedFamily where
  residue := 1829310463
  steps := 60
  odd_inputs := 23
  endpoint := 1253044337
  arithmetic := m31_lift_0189_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1829310463 60
    · calc
        collatzIter 1829310463 60 = 1253044337 := m31_lift_0189_arithmetic.endpoint
        _ < 1829310463 := m31_lift_0189_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1829310463 60) = 6 ^ 23 := by rw [m31_lift_0189_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0189_arithmetic.slope_below

theorem m31_lift_0190_arithmetic : RowArithmetic 1833504767 52 20 1488494647 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0190 : LiftedFamily where
  residue := 1833504767
  steps := 52
  odd_inputs := 20
  endpoint := 1488494647
  arithmetic := m31_lift_0190_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1833504767 52
    · calc
        collatzIter 1833504767 52 = 1488494647 := m31_lift_0190_arithmetic.endpoint
        _ < 1833504767 := m31_lift_0190_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1833504767 52) = 6 ^ 20 := by rw [m31_lift_0190_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0190_arithmetic.slope_below

theorem m31_lift_0191_arithmetic : RowArithmetic 1839796223 57 22 1680302522 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0191 : LiftedFamily where
  residue := 1839796223
  steps := 57
  odd_inputs := 22
  endpoint := 1680302522
  arithmetic := m31_lift_0191_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1839796223 57
    · calc
        collatzIter 1839796223 57 = 1680302522 := m31_lift_0191_arithmetic.endpoint
        _ < 1839796223 := m31_lift_0191_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1839796223 57) = 6 ^ 22 := by rw [m31_lift_0191_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0191_arithmetic.slope_below

theorem m31_lift_0192_arithmetic : RowArithmetic 1841893375 132 51 1640660902 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0192 : LiftedFamily where
  residue := 1841893375
  steps := 132
  odd_inputs := 51
  endpoint := 1640660902
  arithmetic := m31_lift_0192_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1841893375 132
    · calc
        collatzIter 1841893375 132 = 1640660902 := m31_lift_0192_arithmetic.endpoint
        _ < 1841893375 := m31_lift_0192_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1841893375 132) = 6 ^ 51 := by rw [m31_lift_0192_arithmetic.odd_inputs]
        _ < 2 ^ 132 := m31_lift_0192_arithmetic.slope_below

theorem m31_lift_0193_arithmetic : RowArithmetic 1846087679 60 23 1264536424 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0193 : LiftedFamily where
  residue := 1846087679
  steps := 60
  odd_inputs := 23
  endpoint := 1264536424
  arithmetic := m31_lift_0193_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1846087679 60
    · calc
        collatzIter 1846087679 60 = 1264536424 := m31_lift_0193_arithmetic.endpoint
        _ < 1846087679 := m31_lift_0193_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1846087679 60) = 6 ^ 23 := by rw [m31_lift_0193_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0193_arithmetic.slope_below

theorem m31_lift_0194_arithmetic : RowArithmetic 1850281983 68 26 1069376720 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0194 : LiftedFamily where
  residue := 1850281983
  steps := 68
  odd_inputs := 26
  endpoint := 1069376720
  arithmetic := m31_lift_0194_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1850281983 68
    · calc
        collatzIter 1850281983 68 = 1069376720 := m31_lift_0194_arithmetic.endpoint
        _ < 1850281983 := m31_lift_0194_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1850281983 68) = 6 ^ 26 := by rw [m31_lift_0194_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0194_arithmetic.slope_below

theorem m31_lift_0195_arithmetic : RowArithmetic 1858670591 94 36 967894115 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0195 : LiftedFamily where
  residue := 1858670591
  steps := 94
  odd_inputs := 36
  endpoint := 967894115
  arithmetic := m31_lift_0195_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1858670591 94
    · calc
        collatzIter 1858670591 94 = 967894115 := m31_lift_0195_arithmetic.endpoint
        _ < 1858670591 := m31_lift_0195_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1858670591 94) = 6 ^ 36 := by rw [m31_lift_0195_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0195_arithmetic.slope_below

theorem m31_lift_0196_arithmetic : RowArithmetic 1875447807 96 37 1464946160 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0196 : LiftedFamily where
  residue := 1875447807
  steps := 96
  odd_inputs := 37
  endpoint := 1464946160
  arithmetic := m31_lift_0196_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1875447807 96
    · calc
        collatzIter 1875447807 96 = 1464946160 := m31_lift_0196_arithmetic.endpoint
        _ < 1875447807 := m31_lift_0196_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1875447807 96) = 6 ^ 37 := by rw [m31_lift_0196_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0196_arithmetic.slope_below

theorem m31_lift_0197_arithmetic : RowArithmetic 1883836415 65 25 1451692823 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0197 : LiftedFamily where
  residue := 1883836415
  steps := 65
  odd_inputs := 25
  endpoint := 1451692823
  arithmetic := m31_lift_0197_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1883836415 65
    · calc
        collatzIter 1883836415 65 = 1451692823 := m31_lift_0197_arithmetic.endpoint
        _ < 1883836415 := m31_lift_0197_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1883836415 65) = 6 ^ 25 := by rw [m31_lift_0197_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0197_arithmetic.slope_below

theorem m31_lift_0198_arithmetic : RowArithmetic 1892225023 81 31 1038082561 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0198 : LiftedFamily where
  residue := 1892225023
  steps := 81
  odd_inputs := 31
  endpoint := 1038082561
  arithmetic := m31_lift_0198_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1892225023 81
    · calc
        collatzIter 1892225023 81 = 1038082561 := m31_lift_0198_arithmetic.endpoint
        _ < 1892225023 := m31_lift_0198_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1892225023 81) = 6 ^ 31 := by rw [m31_lift_0198_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0198_arithmetic.slope_below

theorem m31_lift_0199_arithmetic : RowArithmetic 1906905087 86 33 1176903119 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0199 : LiftedFamily where
  residue := 1906905087
  steps := 86
  odd_inputs := 33
  endpoint := 1176903119
  arithmetic := m31_lift_0199_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1906905087 86
    · calc
        collatzIter 1906905087 86 = 1176903119 := m31_lift_0199_arithmetic.endpoint
        _ < 1906905087 := m31_lift_0199_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1906905087 86) = 6 ^ 33 := by rw [m31_lift_0199_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0199_arithmetic.slope_below

theorem m31_lift_0200_arithmetic : RowArithmetic 1913196543 52 20 1553190842 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0200 : LiftedFamily where
  residue := 1913196543
  steps := 52
  odd_inputs := 20
  endpoint := 1553190842
  arithmetic := m31_lift_0200_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1913196543 52
    · calc
        collatzIter 1913196543 52 = 1553190842 := m31_lift_0200_arithmetic.endpoint
        _ < 1913196543 := m31_lift_0200_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1913196543 52) = 6 ^ 20 := by rw [m31_lift_0200_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0200_arithmetic.slope_below

theorem m31_lift_0201_arithmetic : RowArithmetic 1925779455 75 29 1878205622 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0201 : LiftedFamily where
  residue := 1925779455
  steps := 75
  odd_inputs := 29
  endpoint := 1878205622
  arithmetic := m31_lift_0201_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1925779455 75
    · calc
        collatzIter 1925779455 75 = 1878205622 := m31_lift_0201_arithmetic.endpoint
        _ < 1925779455 := m31_lift_0201_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1925779455 75) = 6 ^ 29 := by rw [m31_lift_0201_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0201_arithmetic.slope_below

theorem m31_lift_0202_arithmetic : RowArithmetic 1942556671 78 30 1420926284 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0202 : LiftedFamily where
  residue := 1942556671
  steps := 78
  odd_inputs := 30
  endpoint := 1420926284
  arithmetic := m31_lift_0202_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1942556671 78
    · calc
        collatzIter 1942556671 78 = 1420926284 := m31_lift_0202_arithmetic.endpoint
        _ < 1942556671 := m31_lift_0202_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1942556671 78) = 6 ^ 30 := by rw [m31_lift_0202_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0202_arithmetic.slope_below

theorem m31_lift_0203_arithmetic : RowArithmetic 1957236735 55 21 1191708002 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0203 : LiftedFamily where
  residue := 1957236735
  steps := 55
  odd_inputs := 21
  endpoint := 1191708002
  arithmetic := m31_lift_0203_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1957236735 55
    · calc
        collatzIter 1957236735 55 = 1191708002 := m31_lift_0203_arithmetic.endpoint
        _ < 1957236735 := m31_lift_0203_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1957236735 55) = 6 ^ 21 := by rw [m31_lift_0203_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0203_arithmetic.slope_below

theorem m31_lift_0204_arithmetic : RowArithmetic 1959333887 60 23 1342108013 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0204 : LiftedFamily where
  residue := 1959333887
  steps := 60
  odd_inputs := 23
  endpoint := 1342108013
  arithmetic := m31_lift_0204_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1959333887 60
    · calc
        collatzIter 1959333887 60 = 1342108013 := m31_lift_0204_arithmetic.endpoint
        _ < 1959333887 := m31_lift_0204_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1959333887 60) = 6 ^ 23 := by rw [m31_lift_0204_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0204_arithmetic.slope_below

theorem m31_lift_0205_arithmetic : RowArithmetic 1963528191 52 20 1594051597 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0205 : LiftedFamily where
  residue := 1963528191
  steps := 52
  odd_inputs := 20
  endpoint := 1594051597
  arithmetic := m31_lift_0205_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1963528191 52
    · calc
        collatzIter 1963528191 52 = 1594051597 := m31_lift_0205_arithmetic.endpoint
        _ < 1963528191 := m31_lift_0205_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1963528191 52) = 6 ^ 20 := by rw [m31_lift_0205_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0205_arithmetic.slope_below

theorem m31_lift_0206_arithmetic : RowArithmetic 1974013951 63 24 1014122692 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0206 : LiftedFamily where
  residue := 1974013951
  steps := 63
  odd_inputs := 24
  endpoint := 1014122692
  arithmetic := m31_lift_0206_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1974013951 63
    · calc
        collatzIter 1974013951 63 = 1014122692 := m31_lift_0206_arithmetic.endpoint
        _ < 1974013951 := m31_lift_0206_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1974013951 63) = 6 ^ 24 := by rw [m31_lift_0206_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0206_arithmetic.slope_below

theorem m31_lift_0207_arithmetic : RowArithmetic 1984499711 88 34 1837189418 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0207 : LiftedFamily where
  residue := 1984499711
  steps := 88
  odd_inputs := 34
  endpoint := 1837189418
  arithmetic := m31_lift_0207_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1984499711 88
    · calc
        collatzIter 1984499711 88 = 1837189418 := m31_lift_0207_arithmetic.endpoint
        _ < 1984499711 := m31_lift_0207_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1984499711 88) = 6 ^ 34 := by rw [m31_lift_0207_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0207_arithmetic.slope_below

theorem m31_lift_0208_arithmetic : RowArithmetic 1992888319 75 29 1943656651 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0208 : LiftedFamily where
  residue := 1992888319
  steps := 75
  odd_inputs := 29
  endpoint := 1943656651
  arithmetic := m31_lift_0208_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1992888319 75
    · calc
        collatzIter 1992888319 75 = 1943656651 := m31_lift_0208_arithmetic.endpoint
        _ < 1992888319 := m31_lift_0208_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1992888319 75) = 6 ^ 29 := by rw [m31_lift_0208_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0208_arithmetic.slope_below

theorem m31_lift_0209_arithmetic : RowArithmetic 2007568383 55 21 1222353568 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0209 : LiftedFamily where
  residue := 2007568383
  steps := 55
  odd_inputs := 21
  endpoint := 1222353568
  arithmetic := m31_lift_0209_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2007568383 55
    · calc
        collatzIter 2007568383 55 = 1222353568 := m31_lift_0209_arithmetic.endpoint
        _ < 2007568383 := m31_lift_0209_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2007568383 55) = 6 ^ 21 := by rw [m31_lift_0209_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0209_arithmetic.slope_below

theorem m31_lift_0210_arithmetic : RowArithmetic 2009665535 57 22 1835445700 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0210 : LiftedFamily where
  residue := 2009665535
  steps := 57
  odd_inputs := 22
  endpoint := 1835445700
  arithmetic := m31_lift_0210_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2009665535 57
    · calc
        collatzIter 2009665535 57 = 1835445700 := m31_lift_0210_arithmetic.endpoint
        _ < 2009665535 := m31_lift_0210_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2009665535 57) = 6 ^ 22 := by rw [m31_lift_0210_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0210_arithmetic.slope_below

theorem m31_lift_0211_arithmetic : RowArithmetic 2013859839 75 29 1964110097 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0211 : LiftedFamily where
  residue := 2013859839
  steps := 75
  odd_inputs := 29
  endpoint := 1964110097
  arithmetic := m31_lift_0211_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2013859839 75
    · calc
        collatzIter 2013859839 75 = 1964110097 := m31_lift_0211_arithmetic.endpoint
        _ < 2013859839 := m31_lift_0211_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2013859839 75) = 6 ^ 29 := by rw [m31_lift_0211_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0211_arithmetic.slope_below

theorem m31_lift_0212_arithmetic : RowArithmetic 2018054143 57 22 1843107091 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0212 : LiftedFamily where
  residue := 2018054143
  steps := 57
  odd_inputs := 22
  endpoint := 1843107091
  arithmetic := m31_lift_0212_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2018054143 57
    · calc
        collatzIter 2018054143 57 = 1843107091 := m31_lift_0212_arithmetic.endpoint
        _ < 2018054143 := m31_lift_0212_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2018054143 57) = 6 ^ 22 := by rw [m31_lift_0212_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0212_arithmetic.slope_below

theorem m31_lift_0213_arithmetic : RowArithmetic 2026442751 75 29 1976382164 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0213 : LiftedFamily where
  residue := 2026442751
  steps := 75
  odd_inputs := 29
  endpoint := 1976382164
  arithmetic := m31_lift_0213_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2026442751 75
    · calc
        collatzIter 2026442751 75 = 1976382164 := m31_lift_0213_arithmetic.endpoint
        _ < 2026442751 := m31_lift_0213_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2026442751 75) = 6 ^ 29 := by rw [m31_lift_0213_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0213_arithmetic.slope_below

theorem m31_lift_0214_arithmetic : RowArithmetic 2047414271 60 23 1402441471 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0214 : LiftedFamily where
  residue := 2047414271
  steps := 60
  odd_inputs := 23
  endpoint := 1402441471
  arithmetic := m31_lift_0214_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2047414271 60
    · calc
        collatzIter 2047414271 60 = 1402441471 := m31_lift_0214_arithmetic.endpoint
        _ < 2047414271 := m31_lift_0214_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2047414271 60) = 6 ^ 23 := by rw [m31_lift_0214_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0214_arithmetic.slope_below

theorem m31_lift_0215_arithmetic : RowArithmetic 2051608575 55 21 1249168438 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0215 : LiftedFamily where
  residue := 2051608575
  steps := 55
  odd_inputs := 21
  endpoint := 1249168438
  arithmetic := m31_lift_0215_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2051608575 55
    · calc
        collatzIter 2051608575 55 = 1249168438 := m31_lift_0215_arithmetic.endpoint
        _ < 2051608575 := m31_lift_0215_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2051608575 55) = 6 ^ 21 := by rw [m31_lift_0215_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0215_arithmetic.slope_below

theorem m31_lift_0216_arithmetic : RowArithmetic 2059997183 52 20 1672368043 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0216 : LiftedFamily where
  residue := 2059997183
  steps := 52
  odd_inputs := 20
  endpoint := 1672368043
  arithmetic := m31_lift_0216_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2059997183 52
    · calc
        collatzIter 2059997183 52 = 1672368043 := m31_lift_0216_arithmetic.endpoint
        _ < 2059997183 := m31_lift_0216_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2059997183 52) = 6 ^ 20 := by rw [m31_lift_0216_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0216_arithmetic.slope_below

theorem m31_lift_0217_arithmetic : RowArithmetic 2076774399 55 21 1264491221 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0217 : LiftedFamily where
  residue := 2076774399
  steps := 55
  odd_inputs := 21
  endpoint := 1264491221
  arithmetic := m31_lift_0217_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2076774399 55
    · calc
        collatzIter 2076774399 55 = 1264491221 := m31_lift_0217_arithmetic.endpoint
        _ < 2076774399 := m31_lift_0217_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2076774399 55) = 6 ^ 21 := by rw [m31_lift_0217_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0217_arithmetic.slope_below

theorem m31_lift_0218_arithmetic : RowArithmetic 2093551615 184 71 1513921123 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0218 : LiftedFamily where
  residue := 2093551615
  steps := 184
  odd_inputs := 71
  endpoint := 1513921123
  arithmetic := m31_lift_0218_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2093551615 184
    · calc
        collatzIter 2093551615 184 = 1513921123 := m31_lift_0218_arithmetic.endpoint
        _ < 2093551615 := m31_lift_0218_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2093551615 184) = 6 ^ 71 := by rw [m31_lift_0218_arithmetic.odd_inputs]
        _ < 2 ^ 184 := m31_lift_0218_arithmetic.slope_below

theorem m31_lift_0219_arithmetic : RowArithmetic 2097745919 55 21 1277260207 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0219 : LiftedFamily where
  residue := 2097745919
  steps := 55
  odd_inputs := 21
  endpoint := 1277260207
  arithmetic := m31_lift_0219_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2097745919 55
    · calc
        collatzIter 2097745919 55 = 1277260207 := m31_lift_0219_arithmetic.endpoint
        _ < 2097745919 := m31_lift_0219_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2097745919 55) = 6 ^ 21 := by rw [m31_lift_0219_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0219_arithmetic.slope_below

theorem m31_lift_0220_arithmetic : RowArithmetic 2108231679 83 32 1734877073 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0220 : LiftedFamily where
  residue := 2108231679
  steps := 83
  odd_inputs := 32
  endpoint := 1734877073
  arithmetic := m31_lift_0220_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2108231679 83
    · calc
        collatzIter 2108231679 83 = 1734877073 := m31_lift_0220_arithmetic.endpoint
        _ < 2108231679 := m31_lift_0220_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2108231679 83) = 6 ^ 32 := by rw [m31_lift_0220_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0220_arithmetic.slope_below

theorem m31_lift_0221_arithmetic : RowArithmetic 2110328831 88 34 1953678187 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0221 : LiftedFamily where
  residue := 2110328831
  steps := 88
  odd_inputs := 34
  endpoint := 1953678187
  arithmetic := m31_lift_0221_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2110328831 88
    · calc
        collatzIter 2110328831 88 = 1953678187 := m31_lift_0221_arithmetic.endpoint
        _ < 2110328831 := m31_lift_0221_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2110328831 88) = 6 ^ 34 := by rw [m31_lift_0221_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0221_arithmetic.slope_below

theorem m31_lift_0222_arithmetic : RowArithmetic 2114523135 96 37 1651692217 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0222 : LiftedFamily where
  residue := 2114523135
  steps := 96
  odd_inputs := 37
  endpoint := 1651692217
  arithmetic := m31_lift_0222_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2114523135 96
    · calc
        collatzIter 2114523135 96 = 1651692217 := m31_lift_0222_arithmetic.endpoint
        _ < 2114523135 := m31_lift_0222_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2114523135 96) = 6 ^ 37 := by rw [m31_lift_0222_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0222_arithmetic.slope_below

theorem m31_lift_0223_arithmetic : RowArithmetic 2118717439 117 45 1325469737 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0223 : LiftedFamily where
  residue := 2118717439
  steps := 117
  odd_inputs := 45
  endpoint := 1325469737
  arithmetic := m31_lift_0223_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2118717439 117
    · calc
        collatzIter 2118717439 117 = 1325469737 := m31_lift_0223_arithmetic.endpoint
        _ < 2118717439 := m31_lift_0223_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2118717439 117) = 6 ^ 45 := by rw [m31_lift_0223_arithmetic.odd_inputs]
        _ < 2 ^ 117 := m31_lift_0223_arithmetic.slope_below

theorem m31_lift_0224_arithmetic : RowArithmetic 2127106047 96 37 1661520956 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0224 : LiftedFamily where
  residue := 2127106047
  steps := 96
  odd_inputs := 37
  endpoint := 1661520956
  arithmetic := m31_lift_0224_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2127106047 96
    · calc
        collatzIter 2127106047 96 = 1661520956 := m31_lift_0224_arithmetic.endpoint
        _ < 2127106047 := m31_lift_0224_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2127106047 96) = 6 ^ 37 := by rw [m31_lift_0224_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0224_arithmetic.slope_below

theorem m31_lift_0225_arithmetic : RowArithmetic 2141786111 57 22 1956112616 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0225 : LiftedFamily where
  residue := 2141786111
  steps := 57
  odd_inputs := 22
  endpoint := 1956112616
  arithmetic := m31_lift_0225_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2141786111 57
    · calc
        collatzIter 2141786111 57 = 1956112616 := m31_lift_0225_arithmetic.endpoint
        _ < 2141786111 := m31_lift_0225_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2141786111 57) = 6 ^ 22 := by rw [m31_lift_0225_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0225_arithmetic.slope_below

theorem m31_lift_0226_arithmetic : RowArithmetic 2143883263 68 26 1239064571 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0226 : LiftedFamily where
  residue := 2143883263
  steps := 68
  odd_inputs := 26
  endpoint := 1239064571
  arithmetic := m31_lift_0226_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2143883263 68
    · calc
        collatzIter 2143883263 68 = 1239064571 := m31_lift_0226_arithmetic.endpoint
        _ < 2143883263 := m31_lift_0226_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2143883263 68) = 6 ^ 26 := by rw [m31_lift_0226_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0226_arithmetic.slope_below

theorem m31_lift_0227_arithmetic : RowArithmetic 5988351 55 21 3646145 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0227 : LiftedFamily where
  residue := 5988351
  steps := 55
  odd_inputs := 21
  endpoint := 3646145
  arithmetic := m31_lift_0227_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 5988351 55
    · calc
        collatzIter 5988351 55 = 3646145 := m31_lift_0227_arithmetic.endpoint
        _ < 5988351 := m31_lift_0227_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 5988351 55) = 6 ^ 21 := by rw [m31_lift_0227_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0227_arithmetic.slope_below

theorem m31_lift_0228_arithmetic : RowArithmetic 12279807 57 22 11215261 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0228 : LiftedFamily where
  residue := 12279807
  steps := 57
  odd_inputs := 22
  endpoint := 11215261
  arithmetic := m31_lift_0228_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 12279807 57
    · calc
        collatzIter 12279807 57 = 11215261 := m31_lift_0228_arithmetic.endpoint
        _ < 12279807 := m31_lift_0228_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 12279807 57) = 6 ^ 22 := by rw [m31_lift_0228_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0228_arithmetic.slope_below

theorem m31_lift_0229_arithmetic : RowArithmetic 14376959 52 20 11671652 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0229 : LiftedFamily where
  residue := 14376959
  steps := 52
  odd_inputs := 20
  endpoint := 11671652
  arithmetic := m31_lift_0229_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 14376959 52
    · calc
        collatzIter 14376959 52 = 11671652 := m31_lift_0229_arithmetic.endpoint
        _ < 14376959 := m31_lift_0229_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 14376959 52) = 6 ^ 20 := by rw [m31_lift_0229_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0229_arithmetic.slope_below

theorem m31_lift_0230_arithmetic : RowArithmetic 18571263 91 35 12894535 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0230 : LiftedFamily where
  residue := 18571263
  steps := 91
  odd_inputs := 35
  endpoint := 12894535
  arithmetic := m31_lift_0230_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 18571263 91
    · calc
        collatzIter 18571263 91 = 12894535 := m31_lift_0230_arithmetic.endpoint
        _ < 18571263 := m31_lift_0230_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 18571263 91) = 6 ^ 35 := by rw [m31_lift_0230_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0230_arithmetic.slope_below

theorem m31_lift_0231_arithmetic : RowArithmetic 31154175 127 49 24667102 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0231 : LiftedFamily where
  residue := 31154175
  steps := 127
  odd_inputs := 49
  endpoint := 24667102
  arithmetic := m31_lift_0231_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 31154175 127
    · calc
        collatzIter 31154175 127 = 24667102 := m31_lift_0231_arithmetic.endpoint
        _ < 31154175 := m31_lift_0231_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 31154175 127) = 6 ^ 49 := by rw [m31_lift_0231_arithmetic.odd_inputs]
        _ < 2 ^ 127 := m31_lift_0231_arithmetic.slope_below

theorem m31_lift_0232_arithmetic : RowArithmetic 52125695 52 20 42317218 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0232 : LiftedFamily where
  residue := 52125695
  steps := 52
  odd_inputs := 20
  endpoint := 42317218
  arithmetic := m31_lift_0232_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 52125695 52
    · calc
        collatzIter 52125695 52 = 42317218 := m31_lift_0232_arithmetic.endpoint
        _ < 52125695 := m31_lift_0232_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 52125695 52) = 6 ^ 20 := by rw [m31_lift_0232_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0232_arithmetic.slope_below

theorem m31_lift_0233_arithmetic : RowArithmetic 56319999 52 20 45722281 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0233 : LiftedFamily where
  residue := 56319999
  steps := 52
  odd_inputs := 20
  endpoint := 45722281
  arithmetic := m31_lift_0233_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 56319999 52
    · calc
        collatzIter 56319999 52 = 45722281 := m31_lift_0233_arithmetic.endpoint
        _ < 56319999 := m31_lift_0233_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 56319999 52) = 6 ^ 20 := by rw [m31_lift_0233_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0233_arithmetic.slope_below

theorem m31_lift_0234_arithmetic : RowArithmetic 64708607 55 21 39399305 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0234 : LiftedFamily where
  residue := 64708607
  steps := 55
  odd_inputs := 21
  endpoint := 39399305
  arithmetic := m31_lift_0234_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 64708607 55
    · calc
        collatzIter 64708607 55 = 39399305 := m31_lift_0234_arithmetic.endpoint
        _ < 64708607 := m31_lift_0234_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 64708607 55) = 6 ^ 21 := by rw [m31_lift_0234_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0234_arithmetic.slope_below

theorem m31_lift_0235_arithmetic : RowArithmetic 79388671 52 20 64450127 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0235 : LiftedFamily where
  residue := 79388671
  steps := 52
  odd_inputs := 20
  endpoint := 64450127
  arithmetic := m31_lift_0235_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 79388671 52
    · calc
        collatzIter 79388671 52 = 64450127 := m31_lift_0235_arithmetic.endpoint
        _ < 79388671 := m31_lift_0235_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 79388671 52) = 6 ^ 20 := by rw [m31_lift_0235_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0235_arithmetic.slope_below

theorem m31_lift_0236_arithmetic : RowArithmetic 89874431 117 45 56225450 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0236 : LiftedFamily where
  residue := 89874431
  steps := 117
  odd_inputs := 45
  endpoint := 56225450
  arithmetic := m31_lift_0236_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 89874431 117
    · calc
        collatzIter 89874431 117 = 56225450 := m31_lift_0236_arithmetic.endpoint
        _ < 89874431 := m31_lift_0236_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 89874431 117) = 6 ^ 45 := by rw [m31_lift_0236_arithmetic.odd_inputs]
        _ < 2 ^ 117 := m31_lift_0236_arithmetic.slope_below

theorem m31_lift_0237_arithmetic : RowArithmetic 98263039 65 25 75721942 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0237 : LiftedFamily where
  residue := 98263039
  steps := 65
  odd_inputs := 25
  endpoint := 75721942
  arithmetic := m31_lift_0237_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 98263039 65
    · calc
        collatzIter 98263039 65 = 75721942 := m31_lift_0237_arithmetic.endpoint
        _ < 98263039 := m31_lift_0237_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 98263039 65) = 6 ^ 25 := by rw [m31_lift_0237_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0237_arithmetic.slope_below

theorem m31_lift_0238_arithmetic : RowArithmetic 115040255 86 33 71000512 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0238 : LiftedFamily where
  residue := 115040255
  steps := 86
  odd_inputs := 33
  endpoint := 71000512
  arithmetic := m31_lift_0238_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 115040255 86
    · calc
        collatzIter 115040255 86 = 71000512 := m31_lift_0238_arithmetic.endpoint
        _ < 115040255 := m31_lift_0238_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 115040255 86) = 6 ^ 33 := by rw [m31_lift_0238_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0238_arithmetic.slope_below

theorem m31_lift_0239_arithmetic : RowArithmetic 129720319 52 20 105310882 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0239 : LiftedFamily where
  residue := 129720319
  steps := 52
  odd_inputs := 20
  endpoint := 105310882
  arithmetic := m31_lift_0239_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 129720319 52
    · calc
        collatzIter 129720319 52 = 105310882 := m31_lift_0239_arithmetic.endpoint
        _ < 129720319 := m31_lift_0239_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 129720319 52) = 6 ^ 20 := by rw [m31_lift_0239_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0239_arithmetic.slope_below

theorem m31_lift_0240_arithmetic : RowArithmetic 131817471 68 26 76184354 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0240 : LiftedFamily where
  residue := 131817471
  steps := 68
  odd_inputs := 26
  endpoint := 76184354
  arithmetic := m31_lift_0240_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 131817471 68
    · calc
        collatzIter 131817471 68 = 76184354 := m31_lift_0240_arithmetic.endpoint
        _ < 131817471 := m31_lift_0240_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 131817471 68) = 6 ^ 26 := by rw [m31_lift_0240_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0240_arithmetic.slope_below

theorem m31_lift_0241_arithmetic : RowArithmetic 136011775 52 20 110418476 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0241 : LiftedFamily where
  residue := 136011775
  steps := 52
  odd_inputs := 20
  endpoint := 110418476
  arithmetic := m31_lift_0241_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 136011775 52
    · calc
        collatzIter 136011775 52 = 110418476 := m31_lift_0241_arithmetic.endpoint
        _ < 136011775 := m31_lift_0241_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 136011775 52) = 6 ^ 20 := by rw [m31_lift_0241_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0241_arithmetic.slope_below

theorem m31_lift_0242_arithmetic : RowArithmetic 140206079 60 23 96038611 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0242 : LiftedFamily where
  residue := 140206079
  steps := 60
  odd_inputs := 23
  endpoint := 96038611
  arithmetic := m31_lift_0242_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 140206079 60
    · calc
        collatzIter 140206079 60 = 96038611 := m31_lift_0242_arithmetic.endpoint
        _ < 140206079 := m31_lift_0242_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 140206079 60) = 6 ^ 23 := by rw [m31_lift_0242_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0242_arithmetic.slope_below

theorem m31_lift_0243_arithmetic : RowArithmetic 148594687 63 24 76338491 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0243 : LiftedFamily where
  residue := 148594687
  steps := 63
  odd_inputs := 24
  endpoint := 76338491
  arithmetic := m31_lift_0243_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 148594687 63
    · calc
        collatzIter 148594687 63 = 76338491 := m31_lift_0243_arithmetic.endpoint
        _ < 148594687 := m31_lift_0243_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 148594687 63) = 6 ^ 24 := by rw [m31_lift_0243_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0243_arithmetic.slope_below

theorem m31_lift_0244_arithmetic : RowArithmetic 152788991 68 26 88304915 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0244 : LiftedFamily where
  residue := 152788991
  steps := 68
  odd_inputs := 26
  endpoint := 88304915
  arithmetic := m31_lift_0244_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 152788991 68
    · calc
        collatzIter 152788991 68 = 88304915 := m31_lift_0244_arithmetic.endpoint
        _ < 152788991 := m31_lift_0244_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 152788991 68) = 6 ^ 26 := by rw [m31_lift_0244_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0244_arithmetic.slope_below

theorem m31_lift_0245_arithmetic : RowArithmetic 156983295 143 55 88487687 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0245 : LiftedFamily where
  residue := 156983295
  steps := 143
  odd_inputs := 55
  endpoint := 88487687
  arithmetic := m31_lift_0245_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 156983295 143
    · calc
        collatzIter 156983295 143 = 88487687 := m31_lift_0245_arithmetic.endpoint
        _ < 156983295 := m31_lift_0245_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 156983295 143) = 6 ^ 55 := by rw [m31_lift_0245_arithmetic.odd_inputs]
        _ < 2 ^ 143 := m31_lift_0245_arithmetic.slope_below

theorem m31_lift_0246_arithmetic : RowArithmetic 165371903 70 27 143365876 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0246 : LiftedFamily where
  residue := 165371903
  steps := 70
  odd_inputs := 27
  endpoint := 143365876
  arithmetic := m31_lift_0246_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 165371903 70
    · calc
        collatzIter 165371903 70 = 143365876 := m31_lift_0246_arithmetic.endpoint
        _ < 165371903 := m31_lift_0246_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 165371903 70) = 6 ^ 27 := by rw [m31_lift_0246_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0246_arithmetic.slope_below

theorem m31_lift_0247_arithmetic : RowArithmetic 180051967 81 31 98777264 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0247 : LiftedFamily where
  residue := 180051967
  steps := 81
  odd_inputs := 31
  endpoint := 98777264
  arithmetic := m31_lift_0247_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 180051967 81
    · calc
        collatzIter 180051967 81 = 98777264 := m31_lift_0247_arithmetic.endpoint
        _ < 180051967 := m31_lift_0247_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 180051967 81) = 6 ^ 31 := by rw [m31_lift_0247_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0247_arithmetic.slope_below

theorem m31_lift_0248_arithmetic : RowArithmetic 182149119 109 42 135054815 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0248 : LiftedFamily where
  residue := 182149119
  steps := 109
  odd_inputs := 42
  endpoint := 135054815
  arithmetic := m31_lift_0248_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 182149119 109
    · calc
        collatzIter 182149119 109 = 135054815 := m31_lift_0248_arithmetic.endpoint
        _ < 182149119 := m31_lift_0248_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 182149119 109) = 6 ^ 42 := by rw [m31_lift_0248_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0248_arithmetic.slope_below

theorem m31_lift_0249_arithmetic : RowArithmetic 190537727 60 23 130514873 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0249 : LiftedFamily where
  residue := 190537727
  steps := 60
  odd_inputs := 23
  endpoint := 130514873
  arithmetic := m31_lift_0249_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 190537727 60
    · calc
        collatzIter 190537727 60 = 130514873 := m31_lift_0249_arithmetic.endpoint
        _ < 190537727 := m31_lift_0249_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 190537727 60) = 6 ^ 23 := by rw [m31_lift_0249_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0249_arithmetic.slope_below

theorem m31_lift_0250_arithmetic : RowArithmetic 213606399 75 29 208329538 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0250 : LiftedFamily where
  residue := 213606399
  steps := 75
  odd_inputs := 29
  endpoint := 208329538
  arithmetic := m31_lift_0250_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 213606399 75
    · calc
        collatzIter 213606399 75 = 208329538 := m31_lift_0250_arithmetic.endpoint
        _ < 213606399 := m31_lift_0250_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 213606399 75) = 6 ^ 29 := by rw [m31_lift_0250_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0250_arithmetic.slope_below

theorem m31_lift_0251_arithmetic : RowArithmetic 219897855 65 25 169454279 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0251 : LiftedFamily where
  residue := 219897855
  steps := 65
  odd_inputs := 25
  endpoint := 169454279
  arithmetic := m31_lift_0251_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 219897855 65
    · calc
        collatzIter 219897855 65 = 169454279 := m31_lift_0251_arithmetic.endpoint
        _ < 219897855 := m31_lift_0251_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 219897855 65) = 6 ^ 25 := by rw [m31_lift_0251_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0251_arithmetic.slope_below

theorem m31_lift_0252_arithmetic : RowArithmetic 232480767 52 20 188734922 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0252 : LiftedFamily where
  residue := 232480767
  steps := 52
  odd_inputs := 20
  endpoint := 188734922
  arithmetic := m31_lift_0252_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 232480767 52
    · calc
        collatzIter 232480767 52 = 188734922 := m31_lift_0252_arithmetic.endpoint
        _ < 232480767 := m31_lift_0252_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 232480767 52) = 6 ^ 20 := by rw [m31_lift_0252_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0252_arithmetic.slope_below

theorem m31_lift_0253_arithmetic : RowArithmetic 249257983 60 23 170737178 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0253 : LiftedFamily where
  residue := 249257983
  steps := 60
  odd_inputs := 23
  endpoint := 170737178
  arithmetic := m31_lift_0253_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 249257983 60
    · calc
        collatzIter 249257983 60 = 170737178 := m31_lift_0253_arithmetic.endpoint
        _ < 249257983 := m31_lift_0253_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 249257983 60) = 6 ^ 23 := by rw [m31_lift_0253_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0253_arithmetic.slope_below

theorem m31_lift_0254_arithmetic : RowArithmetic 263938047 68 26 152543887 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0254 : LiftedFamily where
  residue := 263938047
  steps := 68
  odd_inputs := 26
  endpoint := 152543887
  arithmetic := m31_lift_0254_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 263938047 68
    · calc
        collatzIter 263938047 68 = 152543887 := m31_lift_0254_arithmetic.endpoint
        _ < 263938047 := m31_lift_0254_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 263938047 68) = 6 ^ 26 := by rw [m31_lift_0254_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0254_arithmetic.slope_below

theorem m31_lift_0255_arithmetic : RowArithmetic 266035199 55 21 161981569 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0255 : LiftedFamily where
  residue := 266035199
  steps := 55
  odd_inputs := 21
  endpoint := 161981569
  arithmetic := m31_lift_0255_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 266035199 55
    · calc
        collatzIter 266035199 55 = 161981569 := m31_lift_0255_arithmetic.endpoint
        _ < 266035199 := m31_lift_0255_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 266035199 55) = 6 ^ 21 := by rw [m31_lift_0255_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0255_arithmetic.slope_below

theorem m31_lift_0256_arithmetic : RowArithmetic 280715263 65 25 216320447 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0256 : LiftedFamily where
  residue := 280715263
  steps := 65
  odd_inputs := 25
  endpoint := 216320447
  arithmetic := m31_lift_0256_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 280715263 65
    · calc
        collatzIter 280715263 65 = 216320447 := m31_lift_0256_arithmetic.endpoint
        _ < 280715263 := m31_lift_0256_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 280715263 65) = 6 ^ 25 := by rw [m31_lift_0256_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0256_arithmetic.slope_below

theorem m31_lift_0257_arithmetic : RowArithmetic 287006719 52 20 233000740 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0257 : LiftedFamily where
  residue := 287006719
  steps := 52
  odd_inputs := 20
  endpoint := 233000740
  arithmetic := m31_lift_0257_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 287006719 52
    · calc
        collatzIter 287006719 52 = 233000740 := m31_lift_0257_arithmetic.endpoint
        _ < 287006719 := m31_lift_0257_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 287006719 52) = 6 ^ 20 := by rw [m31_lift_0257_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0257_arithmetic.slope_below

theorem m31_lift_0258_arithmetic : RowArithmetic 291201023 55 21 177304352 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0258 : LiftedFamily where
  residue := 291201023
  steps := 55
  odd_inputs := 21
  endpoint := 177304352
  arithmetic := m31_lift_0258_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 291201023 55
    · calc
        collatzIter 291201023 55 = 177304352 := m31_lift_0258_arithmetic.endpoint
        _ < 291201023 := m31_lift_0258_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 291201023 55) = 6 ^ 21 := by rw [m31_lift_0258_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0258_arithmetic.slope_below

theorem m31_lift_0259_arithmetic : RowArithmetic 299589631 127 49 237207601 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0259 : LiftedFamily where
  residue := 299589631
  steps := 127
  odd_inputs := 49
  endpoint := 237207601
  arithmetic := m31_lift_0259_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 299589631 127
    · calc
        collatzIter 299589631 127 = 237207601 := m31_lift_0259_arithmetic.endpoint
        _ < 299589631 := m31_lift_0259_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 299589631 127) = 6 ^ 49 := by rw [m31_lift_0259_arithmetic.odd_inputs]
        _ < 2 ^ 127 := m31_lift_0259_arithmetic.slope_below

theorem m31_lift_0260_arithmetic : RowArithmetic 314269695 52 20 255133649 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0260 : LiftedFamily where
  residue := 314269695
  steps := 52
  odd_inputs := 20
  endpoint := 255133649
  arithmetic := m31_lift_0260_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 314269695 52
    · calc
        collatzIter 314269695 52 = 255133649 := m31_lift_0260_arithmetic.endpoint
        _ < 314269695 := m31_lift_0260_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 314269695 52) = 6 ^ 20 := by rw [m31_lift_0260_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0260_arithmetic.slope_below

theorem m31_lift_0261_arithmetic : RowArithmetic 324755455 63 24 166838678 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0261 : LiftedFamily where
  residue := 324755455
  steps := 63
  odd_inputs := 24
  endpoint := 166838678
  arithmetic := m31_lift_0261_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 324755455 63
    · calc
        collatzIter 324755455 63 = 166838678 := m31_lift_0261_arithmetic.endpoint
        _ < 324755455 := m31_lift_0261_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 324755455 63) = 6 ^ 24 := by rw [m31_lift_0261_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0261_arithmetic.slope_below

theorem m31_lift_0262_arithmetic : RowArithmetic 333144063 70 27 288812606 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0262 : LiftedFamily where
  residue := 333144063
  steps := 70
  odd_inputs := 27
  endpoint := 288812606
  arithmetic := m31_lift_0262_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 333144063 70
    · calc
        collatzIter 333144063 70 = 288812606 := m31_lift_0262_arithmetic.endpoint
        _ < 333144063 := m31_lift_0262_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 333144063 70) = 6 ^ 27 := by rw [m31_lift_0262_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0262_arithmetic.slope_below

theorem m31_lift_0263_arithmetic : RowArithmetic 354115583 83 32 291403937 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0263 : LiftedFamily where
  residue := 354115583
  steps := 83
  odd_inputs := 32
  endpoint := 291403937
  arithmetic := m31_lift_0263_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 354115583 83
    · calc
        collatzIter 354115583 83 = 291403937 := m31_lift_0263_arithmetic.endpoint
        _ < 354115583 := m31_lift_0263_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 354115583 83) = 6 ^ 32 := by rw [m31_lift_0263_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0263_arithmetic.slope_below

theorem m31_lift_0264_arithmetic : RowArithmetic 358309887 52 20 290886809 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0264 : LiftedFamily where
  residue := 358309887
  steps := 52
  odd_inputs := 20
  endpoint := 290886809
  arithmetic := m31_lift_0264_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 358309887 52
    · calc
        collatzIter 358309887 52 = 290886809 := m31_lift_0264_arithmetic.endpoint
        _ < 358309887 := m31_lift_0264_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 358309887 52) = 6 ^ 20 := by rw [m31_lift_0264_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0264_arithmetic.slope_below

theorem m31_lift_0265_arithmetic : RowArithmetic 383475711 75 29 374002453 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0265 : LiftedFamily where
  residue := 383475711
  steps := 75
  odd_inputs := 29
  endpoint := 374002453
  arithmetic := m31_lift_0265_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 383475711 75
    · calc
        collatzIter 383475711 75 = 374002453 := m31_lift_0265_arithmetic.endpoint
        _ < 383475711 := m31_lift_0265_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 383475711 75) = 6 ^ 29 := by rw [m31_lift_0265_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0265_arithmetic.slope_below

theorem m31_lift_0266_arithmetic : RowArithmetic 400252927 75 29 390365210 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0266 : LiftedFamily where
  residue := 400252927
  steps := 75
  odd_inputs := 29
  endpoint := 390365210
  arithmetic := m31_lift_0266_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 400252927 75
    · calc
        collatzIter 400252927 75 = 390365210 := m31_lift_0266_arithmetic.endpoint
        _ < 400252927 := m31_lift_0266_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 400252927 75) = 6 ^ 29 := by rw [m31_lift_0266_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0266_arithmetic.slope_below

theorem m31_lift_0267_arithmetic : RowArithmetic 404447231 52 20 328342501 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0267 : LiftedFamily where
  residue := 404447231
  steps := 52
  odd_inputs := 20
  endpoint := 328342501
  arithmetic := m31_lift_0267_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 404447231 52
    · calc
        collatzIter 404447231 52 = 328342501 := m31_lift_0267_arithmetic.endpoint
        _ < 404447231 := m31_lift_0267_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 404447231 52) = 6 ^ 20 := by rw [m31_lift_0267_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0267_arithmetic.slope_below

theorem m31_lift_0268_arithmetic : RowArithmetic 408641535 52 20 331747564 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0268 : LiftedFamily where
  residue := 408641535
  steps := 52
  odd_inputs := 20
  endpoint := 331747564
  arithmetic := m31_lift_0268_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 408641535 52
    · calc
        collatzIter 408641535 52 = 331747564 := m31_lift_0268_arithmetic.endpoint
        _ < 408641535 := m31_lift_0268_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 408641535 52) = 6 ^ 20 := by rw [m31_lift_0268_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0268_arithmetic.slope_below

theorem m31_lift_0269_arithmetic : RowArithmetic 414932991 57 22 378962053 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0269 : LiftedFamily where
  residue := 414932991
  steps := 57
  odd_inputs := 22
  endpoint := 378962053
  arithmetic := m31_lift_0269_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 414932991 57
    · calc
        collatzIter 414932991 57 = 378962053 := m31_lift_0269_arithmetic.endpoint
        _ < 414932991 := m31_lift_0269_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 414932991 57) = 6 ^ 22 := by rw [m31_lift_0269_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0269_arithmetic.slope_below

theorem m31_lift_0270_arithmetic : RowArithmetic 417030143 57 22 380877401 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0270 : LiftedFamily where
  residue := 417030143
  steps := 57
  odd_inputs := 22
  endpoint := 380877401
  arithmetic := m31_lift_0270_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 417030143 57
    · calc
        collatzIter 417030143 57 = 380877401 := m31_lift_0270_arithmetic.endpoint
        _ < 417030143 := m31_lift_0270_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 417030143 57) = 6 ^ 22 := by rw [m31_lift_0270_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0270_arithmetic.slope_below

theorem m31_lift_0271_arithmetic : RowArithmetic 421224447 65 25 324597457 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0271 : LiftedFamily where
  residue := 421224447
  steps := 65
  odd_inputs := 25
  endpoint := 324597457
  arithmetic := m31_lift_0271_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 421224447 65
    · calc
        collatzIter 421224447 65 = 324597457 := m31_lift_0271_arithmetic.endpoint
        _ < 421224447 := m31_lift_0271_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 421224447 65) = 6 ^ 25 := by rw [m31_lift_0271_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0271_arithmetic.slope_below

theorem m31_lift_0272_arithmetic : RowArithmetic 425418751 65 25 327829606 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0272 : LiftedFamily where
  residue := 425418751
  steps := 65
  odd_inputs := 25
  endpoint := 327829606
  arithmetic := m31_lift_0272_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 425418751 65
    · calc
        collatzIter 425418751 65 = 327829606 := m31_lift_0272_arithmetic.endpoint
        _ < 425418751 := m31_lift_0272_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 425418751 65) = 6 ^ 25 := by rw [m31_lift_0272_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0272_arithmetic.slope_below

theorem m31_lift_0273_arithmetic : RowArithmetic 433807359 70 27 376080643 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0273 : LiftedFamily where
  residue := 433807359
  steps := 70
  odd_inputs := 27
  endpoint := 376080643
  arithmetic := m31_lift_0273_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 433807359 70
    · calc
        collatzIter 433807359 70 = 376080643 := m31_lift_0273_arithmetic.endpoint
        _ < 433807359 := m31_lift_0273_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 433807359 70) = 6 ^ 27 := by rw [m31_lift_0273_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0273_arithmetic.slope_below

theorem m31_lift_0274_arithmetic : RowArithmetic 448487423 75 29 437408137 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0274 : LiftedFamily where
  residue := 448487423
  steps := 75
  odd_inputs := 29
  endpoint := 437408137
  arithmetic := m31_lift_0274_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 448487423 75
    · calc
        collatzIter 448487423 75 = 437408137 := m31_lift_0274_arithmetic.endpoint
        _ < 448487423 := m31_lift_0274_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 448487423 75) = 6 ^ 29 := by rw [m31_lift_0274_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0274_arithmetic.slope_below

theorem m31_lift_0275_arithmetic : RowArithmetic 450584575 57 22 411522967 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0275 : LiftedFamily where
  residue := 450584575
  steps := 57
  odd_inputs := 22
  endpoint := 411522967
  arithmetic := m31_lift_0275_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 450584575 57
    · calc
        collatzIter 450584575 57 = 411522967 := m31_lift_0275_arithmetic.endpoint
        _ < 450584575 := m31_lift_0275_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 450584575 57) = 6 ^ 22 := by rw [m31_lift_0275_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0275_arithmetic.slope_below

theorem m31_lift_0276_arithmetic : RowArithmetic 454778879 125 48 240055052 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0276 : LiftedFamily where
  residue := 454778879
  steps := 125
  odd_inputs := 48
  endpoint := 240055052
  arithmetic := m31_lift_0276_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 454778879 125
    · calc
        collatzIter 454778879 125 = 240055052 := m31_lift_0276_arithmetic.endpoint
        _ < 454778879 := m31_lift_0276_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 454778879 125) = 6 ^ 48 := by rw [m31_lift_0276_arithmetic.odd_inputs]
        _ < 2 ^ 125 := m31_lift_0276_arithmetic.slope_below

theorem m31_lift_0277_arithmetic : RowArithmetic 482041855 63 24 247642417 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0277 : LiftedFamily where
  residue := 482041855
  steps := 63
  odd_inputs := 24
  endpoint := 247642417
  arithmetic := m31_lift_0277_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 482041855 63
    · calc
        collatzIter 482041855 63 = 247642417 := m31_lift_0277_arithmetic.endpoint
        _ < 482041855 := m31_lift_0277_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 482041855 63) = 6 ^ 24 := by rw [m31_lift_0277_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0277_arithmetic.slope_below

theorem m31_lift_0278_arithmetic : RowArithmetic 500916223 117 45 313373216 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0278 : LiftedFamily where
  residue := 500916223
  steps := 117
  odd_inputs := 45
  endpoint := 313373216
  arithmetic := m31_lift_0278_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 500916223 117
    · calc
        collatzIter 500916223 117 = 313373216 := m31_lift_0278_arithmetic.endpoint
        _ < 500916223 := m31_lift_0278_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 500916223 117) = 6 ^ 45 := by rw [m31_lift_0278_arithmetic.odd_inputs]
        _ < 2 ^ 117 := m31_lift_0278_arithmetic.slope_below

theorem m31_lift_0279_arithmetic : RowArithmetic 517693439 88 34 479264827 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0279 : LiftedFamily where
  residue := 517693439
  steps := 88
  odd_inputs := 34
  endpoint := 479264827
  arithmetic := m31_lift_0279_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 517693439 88
    · calc
        collatzIter 517693439 88 = 479264827 := m31_lift_0279_arithmetic.endpoint
        _ < 517693439 := m31_lift_0279_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 517693439 88) = 6 ^ 34 := by rw [m31_lift_0279_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0279_arithmetic.slope_below

theorem m31_lift_0280_arithmetic : RowArithmetic 532373503 78 30 389416442 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0280 : LiftedFamily where
  residue := 532373503
  steps := 78
  odd_inputs := 30
  endpoint := 389416442
  arithmetic := m31_lift_0280_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 532373503 78
    · calc
        collatzIter 532373503 78 = 389416442 := m31_lift_0280_arithmetic.endpoint
        _ < 532373503 := m31_lift_0280_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 532373503 78) = 6 ^ 30 := by rw [m31_lift_0280_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0280_arithmetic.slope_below

theorem m31_lift_0281_arithmetic : RowArithmetic 534470655 70 27 463348681 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0281 : LiftedFamily where
  residue := 534470655
  steps := 70
  odd_inputs := 27
  endpoint := 463348681
  arithmetic := m31_lift_0281_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 534470655 70
    · calc
        collatzIter 534470655 70 = 463348681 := m31_lift_0281_arithmetic.endpoint
        _ < 534470655 := m31_lift_0281_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 534470655 70) = 6 ^ 27 := by rw [m31_lift_0281_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0281_arithmetic.slope_below

theorem m31_lift_0282_arithmetic : RowArithmetic 542859263 57 22 495798274 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0282 : LiftedFamily where
  residue := 542859263
  steps := 57
  odd_inputs := 22
  endpoint := 495798274
  arithmetic := m31_lift_0282_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 542859263 57
    · calc
        collatzIter 542859263 57 = 495798274 := m31_lift_0282_arithmetic.endpoint
        _ < 542859263 := m31_lift_0282_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 542859263 57) = 6 ^ 22 := by rw [m31_lift_0282_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0282_arithmetic.slope_below

theorem m31_lift_0283_arithmetic : RowArithmetic 549150719 55 21 334362878 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0283 : LiftedFamily where
  residue := 549150719
  steps := 55
  odd_inputs := 21
  endpoint := 334362878
  arithmetic := m31_lift_0283_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 549150719 55
    · calc
        collatzIter 549150719 55 = 334362878 := m31_lift_0283_arithmetic.endpoint
        _ < 549150719 := m31_lift_0283_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 549150719 55) = 6 ^ 21 := by rw [m31_lift_0283_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0283_arithmetic.slope_below

theorem m31_lift_0284_arithmetic : RowArithmetic 555442175 88 34 514211458 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0284 : LiftedFamily where
  residue := 555442175
  steps := 88
  odd_inputs := 34
  endpoint := 514211458
  arithmetic := m31_lift_0284_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 555442175 88
    · calc
        collatzIter 555442175 88 = 514211458 := m31_lift_0284_arithmetic.endpoint
        _ < 555442175 := m31_lift_0284_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 555442175 88) = 6 ^ 34 := by rw [m31_lift_0284_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0284_arithmetic.slope_below

theorem m31_lift_0285_arithmetic : RowArithmetic 559636479 91 35 388570813 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0285 : LiftedFamily where
  residue := 559636479
  steps := 91
  odd_inputs := 35
  endpoint := 388570813
  arithmetic := m31_lift_0285_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 559636479 91
    · calc
        collatzIter 559636479 91 = 388570813 := m31_lift_0285_arithmetic.endpoint
        _ < 559636479 := m31_lift_0285_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 559636479 91) = 6 ^ 35 := by rw [m31_lift_0285_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0285_arithmetic.slope_below

theorem m31_lift_0286_arithmetic : RowArithmetic 568025087 55 21 345854965 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0286 : LiftedFamily where
  residue := 568025087
  steps := 55
  odd_inputs := 21
  endpoint := 345854965
  arithmetic := m31_lift_0286_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 568025087 55
    · calc
        collatzIter 568025087 55 = 345854965 := m31_lift_0286_arithmetic.endpoint
        _ < 568025087 := m31_lift_0286_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 568025087 55) = 6 ^ 21 := by rw [m31_lift_0286_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0286_arithmetic.slope_below

theorem m31_lift_0287_arithmetic : RowArithmetic 588996607 75 29 574446227 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0287 : LiftedFamily where
  residue := 588996607
  steps := 75
  odd_inputs := 29
  endpoint := 574446227
  arithmetic := m31_lift_0287_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 588996607 75
    · calc
        collatzIter 588996607 75 = 574446227 := m31_lift_0287_arithmetic.endpoint
        _ < 588996607 := m31_lift_0287_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 588996607 75) = 6 ^ 29 := by rw [m31_lift_0287_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0287_arithmetic.slope_below

theorem m31_lift_0288_arithmetic : RowArithmetic 593190911 52 20 481570331 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0288 : LiftedFamily where
  residue := 593190911
  steps := 52
  odd_inputs := 20
  endpoint := 481570331
  arithmetic := m31_lift_0288_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 593190911 52
    · calc
        collatzIter 593190911 52 = 481570331 := m31_lift_0288_arithmetic.endpoint
        _ < 593190911 := m31_lift_0288_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 593190911 52) = 6 ^ 20 := by rw [m31_lift_0288_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0288_arithmetic.slope_below

theorem m31_lift_0289_arithmetic : RowArithmetic 622551039 57 22 568581493 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0289 : LiftedFamily where
  residue := 622551039
  steps := 57
  odd_inputs := 22
  endpoint := 568581493
  arithmetic := m31_lift_0289_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 622551039 57
    · calc
        collatzIter 622551039 57 = 568581493 := m31_lift_0289_arithmetic.endpoint
        _ < 622551039 := m31_lift_0289_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 622551039 57) = 6 ^ 22 := by rw [m31_lift_0289_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0289_arithmetic.slope_below

theorem m31_lift_0290_arithmetic : RowArithmetic 626745343 52 20 508810834 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0290 : LiftedFamily where
  residue := 626745343
  steps := 52
  odd_inputs := 20
  endpoint := 508810834
  arithmetic := m31_lift_0290_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 626745343 52
    · calc
        collatzIter 626745343 52 = 508810834 := m31_lift_0290_arithmetic.endpoint
        _ < 626745343 := m31_lift_0290_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 626745343 52) = 6 ^ 20 := by rw [m31_lift_0290_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0290_arithmetic.slope_below

theorem m31_lift_0291_arithmetic : RowArithmetic 635133951 73 28 412962539 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0291 : LiftedFamily where
  residue := 635133951
  steps := 73
  odd_inputs := 28
  endpoint := 412962539
  arithmetic := m31_lift_0291_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 635133951 73
    · calc
        collatzIter 635133951 73 = 412962539 := m31_lift_0291_arithmetic.endpoint
        _ < 635133951 := m31_lift_0291_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 635133951 73) = 6 ^ 28 := by rw [m31_lift_0291_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0291_arithmetic.slope_below

theorem m31_lift_0292_arithmetic : RowArithmetic 651911167 57 22 595396363 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0292 : LiftedFamily where
  residue := 651911167
  steps := 57
  odd_inputs := 22
  endpoint := 595396363
  arithmetic := m31_lift_0292_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 651911167 57
    · calc
        collatzIter 651911167 57 = 595396363 := m31_lift_0292_arithmetic.endpoint
        _ < 651911167 := m31_lift_0292_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 651911167 57) = 6 ^ 22 := by rw [m31_lift_0292_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0292_arithmetic.slope_below

theorem m31_lift_0293_arithmetic : RowArithmetic 666591231 52 20 541158932 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0293 : LiftedFamily where
  residue := 666591231
  steps := 52
  odd_inputs := 20
  endpoint := 541158932
  arithmetic := m31_lift_0293_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 666591231 52
    · calc
        collatzIter 666591231 52 = 541158932 := m31_lift_0293_arithmetic.endpoint
        _ < 666591231 := m31_lift_0293_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 666591231 52) = 6 ^ 20 := by rw [m31_lift_0293_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0293_arithmetic.slope_below

theorem m31_lift_0294_arithmetic : RowArithmetic 668688383 78 30 489126992 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0294 : LiftedFamily where
  residue := 668688383
  steps := 78
  odd_inputs := 30
  endpoint := 489126992
  arithmetic := m31_lift_0294_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 668688383 78
    · calc
        collatzIter 668688383 78 = 489126992 := m31_lift_0294_arithmetic.endpoint
        _ < 668688383 := m31_lift_0294_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 668688383 78) = 6 ^ 30 := by rw [m31_lift_0294_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0294_arithmetic.slope_below

theorem m31_lift_0295_arithmetic : RowArithmetic 677076991 68 26 391318934 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0295 : LiftedFamily where
  residue := 677076991
  steps := 68
  odd_inputs := 26
  endpoint := 391318934
  arithmetic := m31_lift_0295_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 677076991 68
    · calc
        collatzIter 677076991 68 = 391318934 := m31_lift_0295_arithmetic.endpoint
        _ < 677076991 := m31_lift_0295_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 677076991 68) = 6 ^ 26 := by rw [m31_lift_0295_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0295_arithmetic.slope_below

theorem m31_lift_0296_arithmetic : RowArithmetic 683368447 83 32 562348184 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0296 : LiftedFamily where
  residue := 683368447
  steps := 83
  odd_inputs := 32
  endpoint := 562348184
  arithmetic := m31_lift_0296_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 683368447 83
    · calc
        collatzIter 683368447 83 = 562348184 := m31_lift_0296_arithmetic.endpoint
        _ < 683368447 := m31_lift_0296_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 683368447 83) = 6 ^ 32 := by rw [m31_lift_0296_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0296_arithmetic.slope_below

theorem m31_lift_0297_arithmetic : RowArithmetic 685465599 55 21 417361286 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0297 : LiftedFamily where
  residue := 685465599
  steps := 55
  odd_inputs := 21
  endpoint := 417361286
  arithmetic := m31_lift_0297_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 685465599 55
    · calc
        collatzIter 685465599 55 = 417361286 := m31_lift_0297_arithmetic.endpoint
        _ < 685465599 := m31_lift_0297_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 685465599 55) = 6 ^ 21 := by rw [m31_lift_0297_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0297_arithmetic.slope_below

theorem m31_lift_0298_arithmetic : RowArithmetic 689659903 88 34 638466145 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0298 : LiftedFamily where
  residue := 689659903
  steps := 88
  odd_inputs := 34
  endpoint := 638466145
  arithmetic := m31_lift_0298_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 689659903 88
    · calc
        collatzIter 689659903 88 = 638466145 := m31_lift_0298_arithmetic.endpoint
        _ < 689659903 := m31_lift_0298_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 689659903 88) = 6 ^ 34 := by rw [m31_lift_0298_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0298_arithmetic.slope_below

theorem m31_lift_0299_arithmetic : RowArithmetic 693854207 70 27 601523074 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0299 : LiftedFamily where
  residue := 693854207
  steps := 70
  odd_inputs := 27
  endpoint := 601523074
  arithmetic := m31_lift_0299_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 693854207 70
    · calc
        collatzIter 693854207 70 = 601523074 := m31_lift_0299_arithmetic.endpoint
        _ < 693854207 := m31_lift_0299_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 693854207 70) = 6 ^ 27 := by rw [m31_lift_0299_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0299_arithmetic.slope_below

theorem m31_lift_0300_arithmetic : RowArithmetic 702242815 96 37 548534549 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0300 : LiftedFamily where
  residue := 702242815
  steps := 96
  odd_inputs := 37
  endpoint := 548534549
  arithmetic := m31_lift_0300_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 702242815 96
    · calc
        collatzIter 702242815 96 = 548534549 := m31_lift_0300_arithmetic.endpoint
        _ < 702242815 := m31_lift_0300_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 702242815 96) = 6 ^ 37 := by rw [m31_lift_0300_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0300_arithmetic.slope_below

theorem m31_lift_0301_arithmetic : RowArithmetic 716922879 55 21 436514765 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0301 : LiftedFamily where
  residue := 716922879
  steps := 55
  odd_inputs := 21
  endpoint := 436514765
  arithmetic := m31_lift_0301_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 716922879 55
    · calc
        collatzIter 716922879 55 = 436514765 := m31_lift_0301_arithmetic.endpoint
        _ < 716922879 := m31_lift_0301_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 716922879 55) = 6 ^ 21 := by rw [m31_lift_0301_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0301_arithmetic.slope_below

theorem m31_lift_0302_arithmetic : RowArithmetic 735797247 55 21 448006852 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0302 : LiftedFamily where
  residue := 735797247
  steps := 55
  odd_inputs := 21
  endpoint := 448006852
  arithmetic := m31_lift_0302_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 735797247 55
    · calc
        collatzIter 735797247 55 = 448006852 := m31_lift_0302_arithmetic.endpoint
        _ < 735797247 := m31_lift_0302_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 735797247 55) = 6 ^ 21 := by rw [m31_lift_0302_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0302_arithmetic.slope_below

theorem m31_lift_0303_arithmetic : RowArithmetic 750477311 63 24 385547464 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0303 : LiftedFamily where
  residue := 750477311
  steps := 63
  odd_inputs := 24
  endpoint := 385547464
  arithmetic := m31_lift_0303_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 750477311 63
    · calc
        collatzIter 750477311 63 = 385547464 := m31_lift_0303_arithmetic.endpoint
        _ < 750477311 := m31_lift_0303_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 750477311 63) = 6 ^ 24 := by rw [m31_lift_0303_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0303_arithmetic.slope_below

theorem m31_lift_0304_arithmetic : RowArithmetic 756768767 52 20 614367784 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0304 : LiftedFamily where
  residue := 756768767
  steps := 52
  odd_inputs := 20
  endpoint := 614367784
  arithmetic := m31_lift_0304_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 756768767 52
    · calc
        collatzIter 756768767 52 = 614367784 := m31_lift_0304_arithmetic.endpoint
        _ < 756768767 := m31_lift_0304_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 756768767 52) = 6 ^ 20 := by rw [m31_lift_0304_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0304_arithmetic.slope_below

theorem m31_lift_0305_arithmetic : RowArithmetic 769351679 70 27 666974102 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0305 : LiftedFamily where
  residue := 769351679
  steps := 70
  odd_inputs := 27
  endpoint := 666974102
  arithmetic := m31_lift_0305_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 769351679 70
    · calc
        collatzIter 769351679 70 = 666974102 := m31_lift_0305_arithmetic.endpoint
        _ < 769351679 := m31_lift_0305_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 769351679 70) = 6 ^ 27 := by rw [m31_lift_0305_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0305_arithmetic.slope_below

theorem m31_lift_0306_arithmetic : RowArithmetic 786128895 68 26 454345850 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0306 : LiftedFamily where
  residue := 786128895
  steps := 68
  odd_inputs := 26
  endpoint := 454345850
  arithmetic := m31_lift_0306_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 786128895 68
    · calc
        collatzIter 786128895 68 = 454345850 := m31_lift_0306_arithmetic.endpoint
        _ < 786128895 := m31_lift_0306_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 786128895 68) = 6 ^ 26 := by rw [m31_lift_0306_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0306_arithmetic.slope_below

theorem m31_lift_0307_arithmetic : RowArithmetic 800808959 60 23 548539547 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0307 : LiftedFamily where
  residue := 800808959
  steps := 60
  odd_inputs := 23
  endpoint := 548539547
  arithmetic := m31_lift_0307_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 800808959 60
    · calc
        collatzIter 800808959 60 = 548539547 := m31_lift_0307_arithmetic.endpoint
        _ < 800808959 := m31_lift_0307_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 800808959 60) = 6 ^ 23 := by rw [m31_lift_0307_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0307_arithmetic.slope_below

theorem m31_lift_0308_arithmetic : RowArithmetic 802906111 114 44 669730808 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0308 : LiftedFamily where
  residue := 802906111
  steps := 114
  odd_inputs := 44
  endpoint := 669730808
  arithmetic := m31_lift_0308_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 802906111 114
    · calc
        collatzIter 802906111 114 = 669730808 := m31_lift_0308_arithmetic.endpoint
        _ < 802906111 := m31_lift_0308_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 802906111 114) = 6 ^ 44 := by rw [m31_lift_0308_arithmetic.odd_inputs]
        _ < 2 ^ 114 := m31_lift_0308_arithmetic.slope_below

theorem m31_lift_0309_arithmetic : RowArithmetic 807100415 75 29 787162069 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0309 : LiftedFamily where
  residue := 807100415
  steps := 75
  odd_inputs := 29
  endpoint := 787162069
  arithmetic := m31_lift_0309_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 807100415 75
    · calc
        collatzIter 807100415 75 = 787162069 := m31_lift_0309_arithmetic.endpoint
        _ < 807100415 := m31_lift_0309_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 807100415 75) = 6 ^ 29 := by rw [m31_lift_0309_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0309_arithmetic.slope_below

theorem m31_lift_0310_arithmetic : RowArithmetic 817586175 101 39 718460248 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0310 : LiftedFamily where
  residue := 817586175
  steps := 101
  odd_inputs := 39
  endpoint := 718460248
  arithmetic := m31_lift_0310_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 817586175 101
    · calc
        collatzIter 817586175 101 = 718460248 := m31_lift_0310_arithmetic.endpoint
        _ < 817586175 := m31_lift_0310_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 817586175 101) = 6 ^ 39 := by rw [m31_lift_0310_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0310_arithmetic.slope_below

theorem m31_lift_0311_arithmetic : RowArithmetic 823877631 52 20 668848790 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0311 : LiftedFamily where
  residue := 823877631
  steps := 52
  odd_inputs := 20
  endpoint := 668848790
  arithmetic := m31_lift_0311_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 823877631 52
    · calc
        collatzIter 823877631 52 = 668848790 := m31_lift_0311_arithmetic.endpoint
        _ < 823877631 := m31_lift_0311_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 823877631 52) = 6 ^ 20 := by rw [m31_lift_0311_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0311_arithmetic.slope_below

theorem m31_lift_0312_arithmetic : RowArithmetic 828071935 68 26 478586972 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0312 : LiftedFamily where
  residue := 828071935
  steps := 68
  odd_inputs := 26
  endpoint := 478586972
  arithmetic := m31_lift_0312_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 828071935 68
    · calc
        collatzIter 828071935 68 = 478586972 := m31_lift_0312_arithmetic.endpoint
        _ < 828071935 := m31_lift_0312_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 828071935 68) = 6 ^ 26 := by rw [m31_lift_0312_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0312_arithmetic.slope_below

theorem m31_lift_0313_arithmetic : RowArithmetic 836460543 96 37 653374441 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0313 : LiftedFamily where
  residue := 836460543
  steps := 96
  odd_inputs := 37
  endpoint := 653374441
  arithmetic := m31_lift_0313_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 836460543 96
    · calc
        collatzIter 836460543 96 = 653374441 := m31_lift_0313_arithmetic.endpoint
        _ < 836460543 := m31_lift_0313_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 836460543 96) = 6 ^ 37 := by rw [m31_lift_0313_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0313_arithmetic.slope_below

theorem m31_lift_0314_arithmetic : RowArithmetic 853237759 88 34 789901544 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0314 : LiftedFamily where
  residue := 853237759
  steps := 88
  odd_inputs := 34
  endpoint := 789901544
  arithmetic := m31_lift_0314_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 853237759 88
    · calc
        collatzIter 853237759 88 = 789901544 := m31_lift_0314_arithmetic.endpoint
        _ < 853237759 := m31_lift_0314_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 853237759 88) = 6 ^ 34 := by rw [m31_lift_0314_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0314_arithmetic.slope_below

theorem m31_lift_0315_arithmetic : RowArithmetic 857432063 55 21 522066970 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0315 : LiftedFamily where
  residue := 857432063
  steps := 55
  odd_inputs := 21
  endpoint := 522066970
  arithmetic := m31_lift_0315_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 857432063 55
    · calc
        collatzIter 857432063 55 = 522066970 := m31_lift_0315_arithmetic.endpoint
        _ < 857432063 := m31_lift_0315_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 857432063 55) = 6 ^ 21 := by rw [m31_lift_0315_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0315_arithmetic.slope_below

theorem m31_lift_0316_arithmetic : RowArithmetic 861626367 52 20 699494356 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0316 : LiftedFamily where
  residue := 861626367
  steps := 52
  odd_inputs := 20
  endpoint := 699494356
  arithmetic := m31_lift_0316_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 861626367 52
    · calc
        collatzIter 861626367 52 = 699494356 := m31_lift_0316_arithmetic.endpoint
        _ < 861626367 := m31_lift_0316_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 861626367 52) = 6 ^ 20 := by rw [m31_lift_0316_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0316_arithmetic.slope_below

theorem m31_lift_0317_arithmetic : RowArithmetic 870014975 57 22 794592542 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0317 : LiftedFamily where
  residue := 870014975
  steps := 57
  odd_inputs := 22
  endpoint := 794592542
  arithmetic := m31_lift_0317_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 870014975 57
    · calc
        collatzIter 870014975 57 = 794592542 := m31_lift_0317_arithmetic.endpoint
        _ < 870014975 := m31_lift_0317_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 870014975 57) = 6 ^ 22 := by rw [m31_lift_0317_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0317_arithmetic.slope_below

theorem m31_lift_0318_arithmetic : RowArithmetic 890986495 57 22 813746021 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0318 : LiftedFamily where
  residue := 890986495
  steps := 57
  odd_inputs := 22
  endpoint := 813746021
  arithmetic := m31_lift_0318_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 890986495 57
    · calc
        collatzIter 890986495 57 = 813746021 := m31_lift_0318_arithmetic.endpoint
        _ < 890986495 := m31_lift_0318_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 890986495 57) = 6 ^ 22 := by rw [m31_lift_0318_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0318_arithmetic.slope_below

theorem m31_lift_0319_arithmetic : RowArithmetic 903569407 57 22 825238108 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0319 : LiftedFamily where
  residue := 903569407
  steps := 57
  odd_inputs := 22
  endpoint := 825238108
  arithmetic := m31_lift_0319_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 903569407 57
    · calc
        collatzIter 903569407 57 = 825238108 := m31_lift_0319_arithmetic.endpoint
        _ < 903569407 := m31_lift_0319_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 903569407 57) = 6 ^ 22 := by rw [m31_lift_0319_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0319_arithmetic.slope_below

theorem m31_lift_0320_arithmetic : RowArithmetic 920346623 101 39 808761796 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0320 : LiftedFamily where
  residue := 920346623
  steps := 101
  odd_inputs := 39
  endpoint := 808761796
  arithmetic := m31_lift_0320_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 920346623 101
    · calc
        collatzIter 920346623 101 = 808761796 := m31_lift_0320_arithmetic.endpoint
        _ < 920346623 := m31_lift_0320_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 920346623 101) = 6 ^ 39 := by rw [m31_lift_0320_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0320_arithmetic.slope_below

theorem m31_lift_0321_arithmetic : RowArithmetic 937123839 83 32 771165086 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0321 : LiftedFamily where
  residue := 937123839
  steps := 83
  odd_inputs := 32
  endpoint := 771165086
  arithmetic := m31_lift_0321_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 937123839 83
    · calc
        collatzIter 937123839 83 = 771165086 := m31_lift_0321_arithmetic.endpoint
        _ < 937123839 := m31_lift_0321_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 937123839 83) = 6 ^ 32 := by rw [m31_lift_0321_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0321_arithmetic.slope_below

theorem m31_lift_0322_arithmetic : RowArithmetic 941318143 65 25 725384000 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0322 : LiftedFamily where
  residue := 941318143
  steps := 65
  odd_inputs := 25
  endpoint := 725384000
  arithmetic := m31_lift_0322_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 941318143 65
    · calc
        collatzIter 941318143 65 = 725384000 := m31_lift_0322_arithmetic.endpoint
        _ < 941318143 := m31_lift_0322_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 941318143 65) = 6 ^ 25 := by rw [m31_lift_0322_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0322_arithmetic.slope_below

theorem m31_lift_0323_arithmetic : RowArithmetic 945512447 52 20 767595614 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0323 : LiftedFamily where
  residue := 945512447
  steps := 52
  odd_inputs := 20
  endpoint := 767595614
  arithmetic := m31_lift_0323_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 945512447 52
    · calc
        collatzIter 945512447 52 = 767595614 := m31_lift_0323_arithmetic.endpoint
        _ < 945512447 := m31_lift_0323_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 945512447 52) = 6 ^ 20 := by rw [m31_lift_0323_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0323_arithmetic.slope_below

theorem m31_lift_0324_arithmetic : RowArithmetic 951803903 65 25 733464374 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0324 : LiftedFamily where
  residue := 951803903
  steps := 65
  odd_inputs := 25
  endpoint := 733464374
  arithmetic := m31_lift_0324_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 951803903 65
    · calc
        collatzIter 951803903 65 = 733464374 := m31_lift_0324_arithmetic.endpoint
        _ < 951803903 := m31_lift_0324_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 951803903 65) = 6 ^ 25 := by rw [m31_lift_0324_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0324_arithmetic.slope_below

theorem m31_lift_0325_arithmetic : RowArithmetic 958095359 101 39 841933792 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0325 : LiftedFamily where
  residue := 958095359
  steps := 101
  odd_inputs := 39
  endpoint := 841933792
  arithmetic := m31_lift_0325_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 958095359 101
    · calc
        collatzIter 958095359 101 = 841933792 := m31_lift_0325_arithmetic.endpoint
        _ < 958095359 := m31_lift_0325_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 958095359 101) = 6 ^ 39 := by rw [m31_lift_0325_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0325_arithmetic.slope_below

theorem m31_lift_0326_arithmetic : RowArithmetic 962289663 55 21 585911899 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0326 : LiftedFamily where
  residue := 962289663
  steps := 55
  odd_inputs := 21
  endpoint := 585911899
  arithmetic := m31_lift_0326_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 962289663 55
    · calc
        collatzIter 962289663 55 = 585911899 := m31_lift_0326_arithmetic.endpoint
        _ < 962289663 := m31_lift_0326_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 962289663 55) = 6 ^ 21 := by rw [m31_lift_0326_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0326_arithmetic.slope_below

theorem m31_lift_0327_arithmetic : RowArithmetic 970678271 70 27 841510177 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0327 : LiftedFamily where
  residue := 970678271
  steps := 70
  odd_inputs := 27
  endpoint := 841510177
  arithmetic := m31_lift_0327_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 970678271 70
    · calc
        collatzIter 970678271 70 = 841510177 := m31_lift_0327_arithmetic.endpoint
        _ < 970678271 := m31_lift_0327_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 970678271 70) = 6 ^ 27 := by rw [m31_lift_0327_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0327_arithmetic.slope_below

theorem m31_lift_0328_arithmetic : RowArithmetic 985358335 88 34 912214751 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0328 : LiftedFamily where
  residue := 985358335
  steps := 88
  odd_inputs := 34
  endpoint := 912214751
  arithmetic := m31_lift_0328_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 985358335 88
    · calc
        collatzIter 985358335 88 = 912214751 := m31_lift_0328_arithmetic.endpoint
        _ < 985358335 := m31_lift_0328_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 985358335 88) = 6 ^ 34 := by rw [m31_lift_0328_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0328_arithmetic.slope_below

theorem m31_lift_0329_arithmetic : RowArithmetic 987455487 55 21 601234682 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0329 : LiftedFamily where
  residue := 987455487
  steps := 55
  odd_inputs := 21
  endpoint := 601234682
  arithmetic := m31_lift_0329_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 987455487 55
    · calc
        collatzIter 987455487 55 = 601234682 := m31_lift_0329_arithmetic.endpoint
        _ < 987455487 := m31_lift_0329_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 987455487 55) = 6 ^ 21 := by rw [m31_lift_0329_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0329_arithmetic.slope_below

theorem m31_lift_0330_arithmetic : RowArithmetic 991649791 52 20 805051306 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0330 : LiftedFamily where
  residue := 991649791
  steps := 52
  odd_inputs := 20
  endpoint := 805051306
  arithmetic := m31_lift_0330_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 991649791 52
    · calc
        collatzIter 991649791 52 = 805051306 := m31_lift_0330_arithmetic.endpoint
        _ < 991649791 := m31_lift_0330_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 991649791 52) = 6 ^ 20 := by rw [m31_lift_0330_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0330_arithmetic.slope_below

theorem m31_lift_0331_arithmetic : RowArithmetic 1029398527 101 39 904592009 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0331 : LiftedFamily where
  residue := 1029398527
  steps := 101
  odd_inputs := 39
  endpoint := 904592009
  arithmetic := m31_lift_0331_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1029398527 101
    · calc
        collatzIter 1029398527 101 = 904592009 := m31_lift_0331_arithmetic.endpoint
        _ < 1029398527 := m31_lift_0331_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1029398527 101) = 6 ^ 39 := by rw [m31_lift_0331_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0331_arithmetic.slope_below

theorem m31_lift_0332_arithmetic : RowArithmetic 1037787135 78 30 759112483 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0332 : LiftedFamily where
  residue := 1037787135
  steps := 78
  odd_inputs := 30
  endpoint := 759112483
  arithmetic := m31_lift_0332_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1037787135 78
    · calc
        collatzIter 1037787135 78 = 759112483 := m31_lift_0332_arithmetic.endpoint
        _ < 1037787135 := m31_lift_0332_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1037787135 78) = 6 ^ 30 := by rw [m31_lift_0332_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0332_arithmetic.slope_below

theorem m31_lift_0333_arithmetic : RowArithmetic 1054564351 57 22 963143155 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0333 : LiftedFamily where
  residue := 1054564351
  steps := 57
  odd_inputs := 22
  endpoint := 963143155
  arithmetic := m31_lift_0333_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1054564351 57
    · calc
        collatzIter 1054564351 57 = 963143155 := m31_lift_0333_arithmetic.endpoint
        _ < 1054564351 := m31_lift_0333_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1054564351 57) = 6 ^ 22 := by rw [m31_lift_0333_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0333_arithmetic.slope_below

theorem m31_lift_0334_arithmetic : RowArithmetic 1069244415 57 22 976550591 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0334 : LiftedFamily where
  residue := 1069244415
  steps := 57
  odd_inputs := 22
  endpoint := 976550591
  arithmetic := m31_lift_0334_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1069244415 57
    · calc
        collatzIter 1069244415 57 = 976550591 := m31_lift_0334_arithmetic.endpoint
        _ < 1069244415 := m31_lift_0334_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1069244415 57) = 6 ^ 22 := by rw [m31_lift_0334_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0334_arithmetic.slope_below

theorem m31_lift_0335_arithmetic : RowArithmetic 1071341567 57 22 978465938 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0335 : LiftedFamily where
  residue := 1071341567
  steps := 57
  odd_inputs := 22
  endpoint := 978465938
  arithmetic := m31_lift_0335_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1071341567 57
    · calc
        collatzIter 1071341567 57 = 978465938 := m31_lift_0335_arithmetic.endpoint
        _ < 1071341567 := m31_lift_0335_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1071341567 57) = 6 ^ 22 := by rw [m31_lift_0335_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0335_arithmetic.slope_below

theorem m31_lift_0336_arithmetic : RowArithmetic 1086021631 86 33 670270511 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0336 : LiftedFamily where
  residue := 1086021631
  steps := 86
  odd_inputs := 33
  endpoint := 670270511
  arithmetic := m31_lift_0336_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1086021631 86
    · calc
        collatzIter 1086021631 86 = 670270511 := m31_lift_0336_arithmetic.endpoint
        _ < 1086021631 := m31_lift_0336_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1086021631 86) = 6 ^ 33 := by rw [m31_lift_0336_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0336_arithmetic.slope_below

theorem m31_lift_0337_arithmetic : RowArithmetic 1088118783 63 24 559006156 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0337 : LiftedFamily where
  residue := 1088118783
  steps := 63
  odd_inputs := 24
  endpoint := 559006156
  arithmetic := m31_lift_0337_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1088118783 63
    · calc
        collatzIter 1088118783 63 = 559006156 := m31_lift_0337_arithmetic.endpoint
        _ < 1088118783 := m31_lift_0337_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1088118783 63) = 6 ^ 24 := by rw [m31_lift_0337_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0337_arithmetic.slope_below

theorem m31_lift_0338_arithmetic : RowArithmetic 1092313087 52 20 886772815 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0338 : LiftedFamily where
  residue := 1092313087
  steps := 52
  odd_inputs := 20
  endpoint := 886772815
  arithmetic := m31_lift_0338_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1092313087 52
    · calc
        collatzIter 1092313087 52 = 886772815 := m31_lift_0338_arithmetic.endpoint
        _ < 1092313087 := m31_lift_0338_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1092313087 52) = 6 ^ 20 := by rw [m31_lift_0338_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0338_arithmetic.slope_below

theorem m31_lift_0339_arithmetic : RowArithmetic 1096507391 52 20 890177878 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0339 : LiftedFamily where
  residue := 1096507391
  steps := 52
  odd_inputs := 20
  endpoint := 890177878
  arithmetic := m31_lift_0339_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1096507391 52
    · calc
        collatzIter 1096507391 52 = 890177878 := m31_lift_0339_arithmetic.endpoint
        _ < 1096507391 := m31_lift_0339_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1096507391 52) = 6 ^ 20 := by rw [m31_lift_0339_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0339_arithmetic.slope_below

theorem m31_lift_0340_arithmetic : RowArithmetic 1104895999 106 41 1092303002 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0340 : LiftedFamily where
  residue := 1104895999
  steps := 106
  odd_inputs := 41
  endpoint := 1092303002
  arithmetic := m31_lift_0340_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1104895999 106
    · calc
        collatzIter 1104895999 106 = 1092303002 := m31_lift_0340_arithmetic.endpoint
        _ < 1104895999 := m31_lift_0340_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1104895999 106) = 6 ^ 41 := by rw [m31_lift_0340_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0340_arithmetic.slope_below

theorem m31_lift_0341_arithmetic : RowArithmetic 1125867519 65 25 867598580 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0341 : LiftedFamily where
  residue := 1125867519
  steps := 65
  odd_inputs := 25
  endpoint := 867598580
  arithmetic := m31_lift_0341_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1125867519 65
    · calc
        collatzIter 1125867519 65 = 867598580 := m31_lift_0341_arithmetic.endpoint
        _ < 1125867519 := m31_lift_0341_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1125867519 65) = 6 ^ 25 := by rw [m31_lift_0341_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0341_arithmetic.slope_below

theorem m31_lift_0342_arithmetic : RowArithmetic 1138450431 70 27 986956907 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0342 : LiftedFamily where
  residue := 1138450431
  steps := 70
  odd_inputs := 27
  endpoint := 986956907
  arithmetic := m31_lift_0342_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1138450431 70
    · calc
        collatzIter 1138450431 70 = 986956907 := m31_lift_0342_arithmetic.endpoint
        _ < 1138450431 := m31_lift_0342_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1138450431 70) = 6 ^ 27 := by rw [m31_lift_0342_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0342_arithmetic.slope_below

theorem m31_lift_0343_arithmetic : RowArithmetic 1153130495 57 22 1053164506 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0343 : LiftedFamily where
  residue := 1153130495
  steps := 57
  odd_inputs := 22
  endpoint := 1053164506
  arithmetic := m31_lift_0343_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1153130495 57
    · calc
        collatzIter 1153130495 57 = 1053164506 := m31_lift_0343_arithmetic.endpoint
        _ < 1153130495 := m31_lift_0343_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1153130495 57) = 6 ^ 22 := by rw [m31_lift_0343_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0343_arithmetic.slope_below

theorem m31_lift_0344_arithmetic : RowArithmetic 1159421951 70 27 1005137749 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0344 : LiftedFamily where
  residue := 1159421951
  steps := 70
  odd_inputs := 27
  endpoint := 1005137749
  arithmetic := m31_lift_0344_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1159421951 70
    · calc
        collatzIter 1159421951 70 = 1005137749 := m31_lift_0344_arithmetic.endpoint
        _ < 1159421951 := m31_lift_0344_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1159421951 70) = 6 ^ 27 := by rw [m31_lift_0344_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0344_arithmetic.slope_below

theorem m31_lift_0345_arithmetic : RowArithmetic 1163616255 83 32 957547117 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0345 : LiftedFamily where
  residue := 1163616255
  steps := 83
  odd_inputs := 32
  endpoint := 957547117
  arithmetic := m31_lift_0345_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1163616255 83
    · calc
        collatzIter 1163616255 83 = 957547117 := m31_lift_0345_arithmetic.endpoint
        _ < 1163616255 := m31_lift_0345_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1163616255 83) = 6 ^ 32 := by rw [m31_lift_0345_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0345_arithmetic.slope_below

theorem m31_lift_0346_arithmetic : RowArithmetic 1172004863 78 30 857289026 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0346 : LiftedFamily where
  residue := 1172004863
  steps := 78
  odd_inputs := 30
  endpoint := 857289026
  arithmetic := m31_lift_0346_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1172004863 78
    · calc
        collatzIter 1172004863 78 = 857289026 := m31_lift_0346_arithmetic.endpoint
        _ < 1172004863 := m31_lift_0346_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1172004863 78) = 6 ^ 30 := by rw [m31_lift_0346_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0346_arithmetic.slope_below

theorem m31_lift_0347_arithmetic : RowArithmetic 1188782079 68 26 687060617 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0347 : LiftedFamily where
  residue := 1188782079
  steps := 68
  odd_inputs := 26
  endpoint := 687060617
  arithmetic := m31_lift_0347_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1188782079 68
    · calc
        collatzIter 1188782079 68 = 687060617 := m31_lift_0347_arithmetic.endpoint
        _ < 1188782079 := m31_lift_0347_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1188782079 68) = 6 ^ 26 := by rw [m31_lift_0347_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0347_arithmetic.slope_below

theorem m31_lift_0348_arithmetic : RowArithmetic 1205559295 75 29 1175777548 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0348 : LiftedFamily where
  residue := 1205559295
  steps := 75
  odd_inputs := 29
  endpoint := 1175777548
  arithmetic := m31_lift_0348_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1205559295 75
    · calc
        collatzIter 1205559295 75 = 1175777548 := m31_lift_0348_arithmetic.endpoint
        _ < 1205559295 := m31_lift_0348_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1205559295 75) = 6 ^ 29 := by rw [m31_lift_0348_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0348_arithmetic.slope_below

theorem m31_lift_0349_arithmetic : RowArithmetic 1209753599 60 23 828659174 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0349 : LiftedFamily where
  residue := 1209753599
  steps := 60
  odd_inputs := 23
  endpoint := 828659174
  arithmetic := m31_lift_0349_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1209753599 60
    · calc
        collatzIter 1209753599 60 = 828659174 := m31_lift_0349_arithmetic.endpoint
        _ < 1209753599 := m31_lift_0349_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1209753599 60) = 6 ^ 23 := by rw [m31_lift_0349_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0349_arithmetic.slope_below

theorem m31_lift_0350_arithmetic : RowArithmetic 1213947903 52 20 985519639 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0350 : LiftedFamily where
  residue := 1213947903
  steps := 52
  odd_inputs := 20
  endpoint := 985519639
  arithmetic := m31_lift_0350_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1213947903 52
    · calc
        collatzIter 1213947903 52 = 985519639 := m31_lift_0350_arithmetic.endpoint
        _ < 1213947903 := m31_lift_0350_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1213947903 52) = 6 ^ 20 := by rw [m31_lift_0350_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0350_arithmetic.slope_below

theorem m31_lift_0351_arithmetic : RowArithmetic 1220239359 57 22 1114455638 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0351 : LiftedFamily where
  residue := 1220239359
  steps := 57
  odd_inputs := 22
  endpoint := 1114455638
  arithmetic := m31_lift_0351_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1220239359 57
    · calc
        collatzIter 1220239359 57 = 1114455638 := m31_lift_0351_arithmetic.endpoint
        _ < 1220239359 := m31_lift_0351_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1220239359 57) = 6 ^ 22 := by rw [m31_lift_0351_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0351_arithmetic.slope_below

theorem m31_lift_0352_arithmetic : RowArithmetic 1222336511 78 30 894105230 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0352 : LiftedFamily where
  residue := 1222336511
  steps := 78
  odd_inputs := 30
  endpoint := 894105230
  arithmetic := m31_lift_0352_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1222336511 78
    · calc
        collatzIter 1222336511 78 = 894105230 := m31_lift_0352_arithmetic.endpoint
        _ < 1222336511 := m31_lift_0352_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1222336511 78) = 6 ^ 30 := by rw [m31_lift_0352_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0352_arithmetic.slope_below

theorem m31_lift_0353_arithmetic : RowArithmetic 1226530815 60 23 840151261 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0353 : LiftedFamily where
  residue := 1226530815
  steps := 60
  odd_inputs := 23
  endpoint := 840151261
  arithmetic := m31_lift_0353_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1226530815 60
    · calc
        collatzIter 1226530815 60 = 840151261 := m31_lift_0353_arithmetic.endpoint
        _ < 1226530815 := m31_lift_0353_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1226530815 60) = 6 ^ 23 := by rw [m31_lift_0353_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0353_arithmetic.slope_below

theorem m31_lift_0354_arithmetic : RowArithmetic 1230725119 63 24 632268212 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0354 : LiftedFamily where
  residue := 1230725119
  steps := 63
  odd_inputs := 24
  endpoint := 632268212
  arithmetic := m31_lift_0354_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1230725119 63
    · calc
        collatzIter 1230725119 63 = 632268212 := m31_lift_0354_arithmetic.endpoint
        _ < 1230725119 := m31_lift_0354_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1230725119 63) = 6 ^ 24 := by rw [m31_lift_0354_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0354_arithmetic.slope_below

theorem m31_lift_0355_arithmetic : RowArithmetic 1239113727 96 37 967894115 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0355 : LiftedFamily where
  residue := 1239113727
  steps := 96
  odd_inputs := 37
  endpoint := 967894115
  arithmetic := m31_lift_0355_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1239113727 96
    · calc
        collatzIter 1239113727 96 = 967894115 := m31_lift_0355_arithmetic.endpoint
        _ < 1239113727 := m31_lift_0355_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1239113727 96) = 6 ^ 37 := by rw [m31_lift_0355_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0355_arithmetic.slope_below

theorem m31_lift_0356_arithmetic : RowArithmetic 1255890943 75 29 1224865820 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0356 : LiftedFamily where
  residue := 1255890943
  steps := 75
  odd_inputs := 29
  endpoint := 1224865820
  arithmetic := m31_lift_0356_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1255890943 75
    · calc
        collatzIter 1255890943 75 = 1224865820 := m31_lift_0356_arithmetic.endpoint
        _ < 1255890943 := m31_lift_0356_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1255890943 75) = 6 ^ 29 := by rw [m31_lift_0356_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0356_arithmetic.slope_below

theorem m31_lift_0357_arithmetic : RowArithmetic 1264279551 68 26 730694636 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0357 : LiftedFamily where
  residue := 1264279551
  steps := 68
  odd_inputs := 26
  endpoint := 730694636
  arithmetic := m31_lift_0357_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1264279551 68
    · calc
        collatzIter 1264279551 68 = 730694636 := m31_lift_0357_arithmetic.endpoint
        _ < 1264279551 := m31_lift_0357_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1264279551 68) = 6 ^ 26 := by rw [m31_lift_0357_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0357_arithmetic.slope_below

theorem m31_lift_0358_arithmetic : RowArithmetic 1272668159 83 32 1047286612 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0358 : LiftedFamily where
  residue := 1272668159
  steps := 83
  odd_inputs := 32
  endpoint := 1047286612
  arithmetic := m31_lift_0358_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1272668159 83
    · calc
        collatzIter 1272668159 83 = 1047286612 := m31_lift_0358_arithmetic.endpoint
        _ < 1272668159 := m31_lift_0358_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1272668159 83) = 6 ^ 32 := by rw [m31_lift_0358_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0358_arithmetic.slope_below

theorem m31_lift_0359_arithmetic : RowArithmetic 1287348223 88 34 1191787795 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0359 : LiftedFamily where
  residue := 1287348223
  steps := 88
  odd_inputs := 34
  endpoint := 1191787795
  arithmetic := m31_lift_0359_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1287348223 88
    · calc
        collatzIter 1287348223 88 = 1191787795 := m31_lift_0359_arithmetic.endpoint
        _ < 1287348223 := m31_lift_0359_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1287348223 88) = 6 ^ 34 := by rw [m31_lift_0359_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0359_arithmetic.slope_below

theorem m31_lift_0360_arithmetic : RowArithmetic 1293639679 52 20 1050215834 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0360 : LiftedFamily where
  residue := 1293639679
  steps := 52
  odd_inputs := 20
  endpoint := 1050215834
  arithmetic := m31_lift_0360_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1293639679 52
    · calc
        collatzIter 1293639679 52 = 1050215834 := m31_lift_0360_arithmetic.endpoint
        _ < 1293639679 := m31_lift_0360_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1293639679 52) = 6 ^ 20 := by rw [m31_lift_0360_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0360_arithmetic.slope_below

theorem m31_lift_0361_arithmetic : RowArithmetic 1306222591 65 25 1006581010 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0361 : LiftedFamily where
  residue := 1306222591
  steps := 65
  odd_inputs := 25
  endpoint := 1006581010
  arithmetic := m31_lift_0361_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1306222591 65
    · calc
        collatzIter 1306222591 65 = 1006581010 := m31_lift_0361_arithmetic.endpoint
        _ < 1306222591 := m31_lift_0361_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1306222591 65) = 6 ^ 25 := by rw [m31_lift_0361_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0361_arithmetic.slope_below

theorem m31_lift_0362_arithmetic : RowArithmetic 1322999807 91 35 918594709 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0362 : LiftedFamily where
  residue := 1322999807
  steps := 91
  odd_inputs := 35
  endpoint := 918594709
  arithmetic := m31_lift_0362_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1322999807 91
    · calc
        collatzIter 1322999807 91 = 918594709 := m31_lift_0362_arithmetic.endpoint
        _ < 1322999807 := m31_lift_0362_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1322999807 91) = 6 ^ 35 := by rw [m31_lift_0362_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0362_arithmetic.slope_below

theorem m31_lift_0363_arithmetic : RowArithmetic 1337679871 55 21 814476746 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0363 : LiftedFamily where
  residue := 1337679871
  steps := 55
  odd_inputs := 21
  endpoint := 814476746
  arithmetic := m31_lift_0363_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1337679871 55
    · calc
        collatzIter 1337679871 55 = 814476746 := m31_lift_0363_arithmetic.endpoint
        _ < 1337679871 := m31_lift_0363_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1337679871 55) = 6 ^ 21 := by rw [m31_lift_0363_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0363_arithmetic.slope_below

theorem m31_lift_0364_arithmetic : RowArithmetic 1339777023 60 23 917722850 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0364 : LiftedFamily where
  residue := 1339777023
  steps := 60
  odd_inputs := 23
  endpoint := 917722850
  arithmetic := m31_lift_0364_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1339777023 60
    · calc
        collatzIter 1339777023 60 = 917722850 := m31_lift_0364_arithmetic.endpoint
        _ < 1339777023 := m31_lift_0364_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1339777023 60) = 6 ^ 23 := by rw [m31_lift_0364_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0364_arithmetic.slope_below

theorem m31_lift_0365_arithmetic : RowArithmetic 1343971327 52 20 1091076589 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0365 : LiftedFamily where
  residue := 1343971327
  steps := 52
  odd_inputs := 20
  endpoint := 1091076589
  arithmetic := m31_lift_0365_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1343971327 52
    · calc
        collatzIter 1343971327 52 = 1091076589 := m31_lift_0365_arithmetic.endpoint
        _ < 1343971327 := m31_lift_0365_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1343971327 52) = 6 ^ 20 := by rw [m31_lift_0365_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0365_arithmetic.slope_below

theorem m31_lift_0366_arithmetic : RowArithmetic 1354457087 83 32 1114591234 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0366 : LiftedFamily where
  residue := 1354457087
  steps := 83
  odd_inputs := 32
  endpoint := 1114591234
  arithmetic := m31_lift_0366_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1354457087 83
    · calc
        collatzIter 1354457087 83 = 1114591234 := m31_lift_0366_arithmetic.endpoint
        _ < 1354457087 := m31_lift_0366_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1354457087 83) = 6 ^ 32 := by rw [m31_lift_0366_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0366_arithmetic.slope_below

theorem m31_lift_0367_arithmetic : RowArithmetic 1364942847 125 48 720485141 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0367 : LiftedFamily where
  residue := 1364942847
  steps := 125
  odd_inputs := 48
  endpoint := 720485141
  arithmetic := m31_lift_0367_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1364942847 125
    · calc
        collatzIter 1364942847 125 = 720485141 := m31_lift_0367_arithmetic.endpoint
        _ < 1364942847 := m31_lift_0367_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1364942847 125) = 6 ^ 48 := by rw [m31_lift_0367_arithmetic.odd_inputs]
        _ < 2 ^ 125 := m31_lift_0367_arithmetic.slope_below

theorem m31_lift_0368_arithmetic : RowArithmetic 1373331455 65 25 1058295403 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0368 : LiftedFamily where
  residue := 1373331455
  steps := 65
  odd_inputs := 25
  endpoint := 1058295403
  arithmetic := m31_lift_0368_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1373331455 65
    · calc
        collatzIter 1373331455 65 = 1058295403 := m31_lift_0368_arithmetic.endpoint
        _ < 1373331455 := m31_lift_0368_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1373331455 65) = 6 ^ 25 := by rw [m31_lift_0368_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0368_arithmetic.slope_below

theorem m31_lift_0369_arithmetic : RowArithmetic 1388011519 55 21 845122312 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0369 : LiftedFamily where
  residue := 1388011519
  steps := 55
  odd_inputs := 21
  endpoint := 845122312
  arithmetic := m31_lift_0369_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1388011519 55
    · calc
        collatzIter 1388011519 55 = 845122312 := m31_lift_0369_arithmetic.endpoint
        _ < 1388011519 := m31_lift_0369_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1388011519 55) = 6 ^ 21 := by rw [m31_lift_0369_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0369_arithmetic.slope_below

theorem m31_lift_0370_arithmetic : RowArithmetic 1390108671 57 22 1269598816 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0370 : LiftedFamily where
  residue := 1390108671
  steps := 57
  odd_inputs := 22
  endpoint := 1269598816
  arithmetic := m31_lift_0370_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1390108671 57
    · calc
        collatzIter 1390108671 57 = 1269598816 := m31_lift_0370_arithmetic.endpoint
        _ < 1390108671 := m31_lift_0370_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1390108671 57) = 6 ^ 22 := by rw [m31_lift_0370_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0370_arithmetic.slope_below

theorem m31_lift_0371_arithmetic : RowArithmetic 1394302975 83 32 1147380665 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0371 : LiftedFamily where
  residue := 1394302975
  steps := 83
  odd_inputs := 32
  endpoint := 1147380665
  arithmetic := m31_lift_0371_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1394302975 83
    · calc
        collatzIter 1394302975 83 = 1147380665 := m31_lift_0371_arithmetic.endpoint
        _ < 1394302975 := m31_lift_0371_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1394302975 83) = 6 ^ 32 := by rw [m31_lift_0371_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0371_arithmetic.slope_below

theorem m31_lift_0372_arithmetic : RowArithmetic 1398497279 57 22 1277260207 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0372 : LiftedFamily where
  residue := 1398497279
  steps := 57
  odd_inputs := 22
  endpoint := 1277260207
  arithmetic := m31_lift_0372_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1398497279 57
    · calc
        collatzIter 1398497279 57 = 1277260207 := m31_lift_0372_arithmetic.endpoint
        _ < 1398497279 := m31_lift_0372_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1398497279 57) = 6 ^ 22 := by rw [m31_lift_0372_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0372_arithmetic.slope_below

theorem m31_lift_0373_arithmetic : RowArithmetic 1406885887 104 40 927233984 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0373 : LiftedFamily where
  residue := 1406885887
  steps := 104
  odd_inputs := 40
  endpoint := 927233984
  arithmetic := m31_lift_0373_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1406885887 104
    · calc
        collatzIter 1406885887 104 = 927233984 := m31_lift_0373_arithmetic.endpoint
        _ < 1406885887 := m31_lift_0373_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1406885887 104) = 6 ^ 40 := by rw [m31_lift_0373_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0373_arithmetic.slope_below

theorem m31_lift_0374_arithmetic : RowArithmetic 1427857407 60 23 978056308 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0374 : LiftedFamily where
  residue := 1427857407
  steps := 60
  odd_inputs := 23
  endpoint := 978056308
  arithmetic := m31_lift_0374_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1427857407 60
    · calc
        collatzIter 1427857407 60 = 978056308 := m31_lift_0374_arithmetic.endpoint
        _ < 1427857407 := m31_lift_0374_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1427857407 60) = 6 ^ 23 := by rw [m31_lift_0374_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0374_arithmetic.slope_below

theorem m31_lift_0375_arithmetic : RowArithmetic 1432051711 55 21 871937182 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0375 : LiftedFamily where
  residue := 1432051711
  steps := 55
  odd_inputs := 21
  endpoint := 871937182
  arithmetic := m31_lift_0375_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1432051711 55
    · calc
        collatzIter 1432051711 55 = 871937182 := m31_lift_0375_arithmetic.endpoint
        _ < 1432051711 := m31_lift_0375_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1432051711 55) = 6 ^ 21 := by rw [m31_lift_0375_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0375_arithmetic.slope_below

theorem m31_lift_0376_arithmetic : RowArithmetic 1440440319 52 20 1169393035 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0376 : LiftedFamily where
  residue := 1440440319
  steps := 52
  odd_inputs := 20
  endpoint := 1169393035
  arithmetic := m31_lift_0376_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1440440319 52
    · calc
        collatzIter 1440440319 52 = 1169393035 := m31_lift_0376_arithmetic.endpoint
        _ < 1440440319 := m31_lift_0376_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1440440319 52) = 6 ^ 20 := by rw [m31_lift_0376_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0376_arithmetic.slope_below

theorem m31_lift_0377_arithmetic : RowArithmetic 1457217535 55 21 887259965 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0377 : LiftedFamily where
  residue := 1457217535
  steps := 55
  odd_inputs := 21
  endpoint := 887259965
  arithmetic := m31_lift_0377_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1457217535 55
    · calc
        collatzIter 1457217535 55 = 887259965 := m31_lift_0377_arithmetic.endpoint
        _ < 1457217535 := m31_lift_0377_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1457217535 55) = 6 ^ 21 := by rw [m31_lift_0377_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0377_arithmetic.slope_below

theorem m31_lift_0378_arithmetic : RowArithmetic 1473994751 96 37 1151363926 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0378 : LiftedFamily where
  residue := 1473994751
  steps := 96
  odd_inputs := 37
  endpoint := 1151363926
  arithmetic := m31_lift_0378_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1473994751 96
    · calc
        collatzIter 1473994751 96 = 1151363926 := m31_lift_0378_arithmetic.endpoint
        _ < 1473994751 := m31_lift_0378_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1473994751 96) = 6 ^ 37 := by rw [m31_lift_0378_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0378_arithmetic.slope_below

theorem m31_lift_0379_arithmetic : RowArithmetic 1478189055 55 21 900028951 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0379 : LiftedFamily where
  residue := 1478189055
  steps := 55
  odd_inputs := 21
  endpoint := 900028951
  arithmetic := m31_lift_0379_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1478189055 55
    · calc
        collatzIter 1478189055 55 = 900028951 := m31_lift_0379_arithmetic.endpoint
        _ < 1478189055 := m31_lift_0379_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1478189055 55) = 6 ^ 21 := by rw [m31_lift_0379_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0379_arithmetic.slope_below

theorem m31_lift_0380_arithmetic : RowArithmetic 1488674815 65 25 1147179515 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0380 : LiftedFamily where
  residue := 1488674815
  steps := 65
  odd_inputs := 25
  endpoint := 1147179515
  arithmetic := m31_lift_0380_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1488674815 65
    · calc
        collatzIter 1488674815 65 = 1147179515 := m31_lift_0380_arithmetic.endpoint
        _ < 1488674815 := m31_lift_0380_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1488674815 65) = 6 ^ 25 := by rw [m31_lift_0380_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0380_arithmetic.slope_below

theorem m31_lift_0381_arithmetic : RowArithmetic 1490771967 65 25 1148795590 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0381 : LiftedFamily where
  residue := 1490771967
  steps := 65
  odd_inputs := 25
  endpoint := 1148795590
  arithmetic := m31_lift_0381_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1490771967 65
    · calc
        collatzIter 1490771967 65 = 1148795590 := m31_lift_0381_arithmetic.endpoint
        _ < 1490771967 := m31_lift_0381_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1490771967 65) = 6 ^ 25 := by rw [m31_lift_0381_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0381_arithmetic.slope_below

theorem m31_lift_0382_arithmetic : RowArithmetic 1494966271 73 28 972023405 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0382 : LiftedFamily where
  residue := 1494966271
  steps := 73
  odd_inputs := 28
  endpoint := 972023405
  arithmetic := m31_lift_0382_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1494966271 73
    · calc
        collatzIter 1494966271 73 = 972023405 := m31_lift_0382_arithmetic.endpoint
        _ < 1494966271 := m31_lift_0382_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1494966271 73) = 6 ^ 28 := by rw [m31_lift_0382_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0382_arithmetic.slope_below

theorem m31_lift_0383_arithmetic : RowArithmetic 1499160575 117 45 937874932 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0383 : LiftedFamily where
  residue := 1499160575
  steps := 117
  odd_inputs := 45
  endpoint := 937874932
  arithmetic := m31_lift_0383_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1499160575 117
    · calc
        collatzIter 1499160575 117 = 937874932 := m31_lift_0383_arithmetic.endpoint
        _ < 1499160575 := m31_lift_0383_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1499160575 117) = 6 ^ 45 := by rw [m31_lift_0383_arithmetic.odd_inputs]
        _ < 2 ^ 117 := m31_lift_0383_arithmetic.slope_below

theorem m31_lift_0384_arithmetic : RowArithmetic 1507549183 101 39 1324770637 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0384 : LiftedFamily where
  residue := 1507549183
  steps := 101
  odd_inputs := 39
  endpoint := 1324770637
  arithmetic := m31_lift_0384_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1507549183 101
    · calc
        collatzIter 1507549183 101 = 1324770637 := m31_lift_0384_arithmetic.endpoint
        _ < 1507549183 := m31_lift_0384_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1507549183 101) = 6 ^ 39 := by rw [m31_lift_0384_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0384_arithmetic.slope_below

theorem m31_lift_0385_arithmetic : RowArithmetic 1522229247 57 22 1390265732 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0385 : LiftedFamily where
  residue := 1522229247
  steps := 57
  odd_inputs := 22
  endpoint := 1390265732
  arithmetic := m31_lift_0385_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1522229247 57
    · calc
        collatzIter 1522229247 57 = 1390265732 := m31_lift_0385_arithmetic.endpoint
        _ < 1522229247 := m31_lift_0385_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1522229247 57) = 6 ^ 22 := by rw [m31_lift_0385_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0385_arithmetic.slope_below

theorem m31_lift_0386_arithmetic : RowArithmetic 1524326399 75 29 1486669933 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0386 : LiftedFamily where
  residue := 1524326399
  steps := 75
  odd_inputs := 29
  endpoint := 1486669933
  arithmetic := m31_lift_0386_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1524326399 75
    · calc
        collatzIter 1524326399 75 = 1486669933 := m31_lift_0386_arithmetic.endpoint
        _ < 1524326399 := m31_lift_0386_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1524326399 75) = 6 ^ 29 := by rw [m31_lift_0386_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0386_arithmetic.slope_below

theorem m31_lift_0387_arithmetic : RowArithmetic 1528520703 52 20 1240899356 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0387 : LiftedFamily where
  residue := 1528520703
  steps := 52
  odd_inputs := 20
  endpoint := 1240899356
  arithmetic := m31_lift_0387_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1528520703 52
    · calc
        collatzIter 1528520703 52 = 1240899356 := m31_lift_0387_arithmetic.endpoint
        _ < 1528520703 := m31_lift_0387_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1528520703 52) = 6 ^ 20 := by rw [m31_lift_0387_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0387_arithmetic.slope_below

theorem m31_lift_0388_arithmetic : RowArithmetic 1555783679 57 22 1420911298 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0388 : LiftedFamily where
  residue := 1555783679
  steps := 57
  odd_inputs := 22
  endpoint := 1420911298
  arithmetic := m31_lift_0388_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1555783679 57
    · calc
        collatzIter 1555783679 57 = 1420911298 := m31_lift_0388_arithmetic.endpoint
        _ < 1555783679 := m31_lift_0388_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1555783679 57) = 6 ^ 22 := by rw [m31_lift_0388_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0388_arithmetic.slope_below

theorem m31_lift_0389_arithmetic : RowArithmetic 1566269439 52 20 1271544922 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0389 : LiftedFamily where
  residue := 1566269439
  steps := 52
  odd_inputs := 20
  endpoint := 1271544922
  arithmetic := m31_lift_0389_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1566269439 52
    · calc
        collatzIter 1566269439 52 = 1271544922 := m31_lift_0389_arithmetic.endpoint
        _ < 1566269439 := m31_lift_0389_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1566269439 52) = 6 ^ 20 := by rw [m31_lift_0389_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0389_arithmetic.slope_below

theorem m31_lift_0390_arithmetic : RowArithmetic 1574658047 81 31 863863990 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0390 : LiftedFamily where
  residue := 1574658047
  steps := 81
  odd_inputs := 31
  endpoint := 863863990
  arithmetic := m31_lift_0390_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1574658047 81
    · calc
        collatzIter 1574658047 81 = 863863990 := m31_lift_0390_arithmetic.endpoint
        _ < 1574658047 := m31_lift_0390_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1574658047 81) = 6 ^ 31 := by rw [m31_lift_0390_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0390_arithmetic.slope_below

theorem m31_lift_0391_arithmetic : RowArithmetic 1591435263 91 35 1104976739 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0391 : LiftedFamily where
  residue := 1591435263
  steps := 91
  odd_inputs := 35
  endpoint := 1104976739
  arithmetic := m31_lift_0391_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1591435263 91
    · calc
        collatzIter 1591435263 91 = 1104976739 := m31_lift_0391_arithmetic.endpoint
        _ < 1591435263 := m31_lift_0391_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1591435263 91) = 6 ^ 35 := by rw [m31_lift_0391_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0391_arithmetic.slope_below

theorem m31_lift_0392_arithmetic : RowArithmetic 1608212479 55 21 979196663 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0392 : LiftedFamily where
  residue := 1608212479
  steps := 55
  odd_inputs := 21
  endpoint := 979196663
  arithmetic := m31_lift_0392_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1608212479 55
    · calc
        collatzIter 1608212479 55 = 979196663 := m31_lift_0392_arithmetic.endpoint
        _ < 1608212479 := m31_lift_0392_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1608212479 55) = 6 ^ 21 := by rw [m31_lift_0392_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0392_arithmetic.slope_below

theorem m31_lift_0393_arithmetic : RowArithmetic 1616601087 60 23 1107342290 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0393 : LiftedFamily where
  residue := 1616601087
  steps := 60
  odd_inputs := 23
  endpoint := 1107342290
  arithmetic := m31_lift_0393_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1616601087 60
    · calc
        collatzIter 1616601087 60 = 1107342290 := m31_lift_0393_arithmetic.endpoint
        _ < 1616601087 := m31_lift_0393_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1616601087 60) = 6 ^ 23 := by rw [m31_lift_0393_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0393_arithmetic.slope_below

theorem m31_lift_0394_arithmetic : RowArithmetic 1622892543 70 27 1406934338 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0394 : LiftedFamily where
  residue := 1622892543
  steps := 70
  odd_inputs := 27
  endpoint := 1406934338
  arithmetic := m31_lift_0394_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1622892543 70
    · calc
        collatzIter 1622892543 70 = 1406934338 := m31_lift_0394_arithmetic.endpoint
        _ < 1622892543 := m31_lift_0394_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1622892543 70) = 6 ^ 27 := by rw [m31_lift_0394_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0394_arithmetic.slope_below

theorem m31_lift_0395_arithmetic : RowArithmetic 1624989695 55 21 989411852 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0395 : LiftedFamily where
  residue := 1624989695
  steps := 55
  odd_inputs := 21
  endpoint := 989411852
  arithmetic := m31_lift_0395_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1624989695 55
    · calc
        collatzIter 1624989695 55 = 989411852 := m31_lift_0395_arithmetic.endpoint
        _ < 1624989695 := m31_lift_0395_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1624989695 55) = 6 ^ 21 := by rw [m31_lift_0395_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0395_arithmetic.slope_below

theorem m31_lift_0396_arithmetic : RowArithmetic 1629183999 73 28 1059291443 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0396 : LiftedFamily where
  residue := 1629183999
  steps := 73
  odd_inputs := 28
  endpoint := 1059291443
  arithmetic := m31_lift_0396_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1629183999 73
    · calc
        collatzIter 1629183999 73 = 1059291443 := m31_lift_0396_arithmetic.endpoint
        _ < 1629183999 := m31_lift_0396_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1629183999 73) = 6 ^ 28 := by rw [m31_lift_0396_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0396_arithmetic.slope_below

theorem m31_lift_0397_arithmetic : RowArithmetic 1633378303 52 20 1326025928 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0397 : LiftedFamily where
  residue := 1633378303
  steps := 52
  odd_inputs := 20
  endpoint := 1326025928
  arithmetic := m31_lift_0397_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1633378303 52
    · calc
        collatzIter 1633378303 52 = 1326025928 := m31_lift_0397_arithmetic.endpoint
        _ < 1633378303 := m31_lift_0397_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1633378303 52) = 6 ^ 20 := by rw [m31_lift_0397_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0397_arithmetic.slope_below

theorem m31_lift_0398_arithmetic : RowArithmetic 1641766911 65 25 1265152973 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0398 : LiftedFamily where
  residue := 1641766911
  steps := 65
  odd_inputs := 25
  endpoint := 1265152973
  arithmetic := m31_lift_0398_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1641766911 65
    · calc
        collatzIter 1641766911 65 = 1265152973 := m31_lift_0398_arithmetic.endpoint
        _ < 1641766911 := m31_lift_0398_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1641766911 65) = 6 ^ 25 := by rw [m31_lift_0398_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0398_arithmetic.slope_below

theorem m31_lift_0399_arithmetic : RowArithmetic 1662738431 78 30 1216247009 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0399 : LiftedFamily where
  residue := 1662738431
  steps := 78
  odd_inputs := 30
  endpoint := 1216247009
  arithmetic := m31_lift_0399_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1662738431 78
    · calc
        collatzIter 1662738431 78 = 1216247009 := m31_lift_0399_arithmetic.endpoint
        _ < 1662738431 := m31_lift_0399_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1662738431 78) = 6 ^ 30 := by rw [m31_lift_0399_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0399_arithmetic.slope_below

theorem m31_lift_0400_arithmetic : RowArithmetic 1666932735 75 29 1625753368 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0400 : LiftedFamily where
  residue := 1666932735
  steps := 75
  odd_inputs := 29
  endpoint := 1625753368
  arithmetic := m31_lift_0400_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1666932735 75
    · calc
        collatzIter 1666932735 75 = 1625753368 := m31_lift_0400_arithmetic.endpoint
        _ < 1666932735 := m31_lift_0400_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1666932735 75) = 6 ^ 29 := by rw [m31_lift_0400_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0400_arithmetic.slope_below

theorem m31_lift_0401_arithmetic : RowArithmetic 1675321343 52 20 1360076557 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0401 : LiftedFamily where
  residue := 1675321343
  steps := 52
  odd_inputs := 20
  endpoint := 1360076557
  arithmetic := m31_lift_0401_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1675321343 52
    · calc
        collatzIter 1675321343 52 = 1360076557 := m31_lift_0401_arithmetic.endpoint
        _ < 1675321343 := m31_lift_0401_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1675321343 52) = 6 ^ 20 := by rw [m31_lift_0401_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0401_arithmetic.slope_below

theorem m31_lift_0402_arithmetic : RowArithmetic 1690001407 60 23 1157620172 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0402 : LiftedFamily where
  residue := 1690001407
  steps := 60
  odd_inputs := 23
  endpoint := 1157620172
  arithmetic := m31_lift_0402_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1690001407 60
    · calc
        collatzIter 1690001407 60 = 1157620172 := m31_lift_0402_arithmetic.endpoint
        _ < 1690001407 := m31_lift_0402_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1690001407 60) = 6 ^ 23 := by rw [m31_lift_0402_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0402_arithmetic.slope_below

theorem m31_lift_0403_arithmetic : RowArithmetic 1696292863 73 28 1102925462 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0403 : LiftedFamily where
  residue := 1696292863
  steps := 73
  odd_inputs := 28
  endpoint := 1102925462
  arithmetic := m31_lift_0403_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1696292863 73
    · calc
        collatzIter 1696292863 73 = 1102925462 := m31_lift_0403_arithmetic.endpoint
        _ < 1696292863 := m31_lift_0403_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1696292863 73) = 6 ^ 28 := by rw [m31_lift_0403_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0403_arithmetic.slope_below

theorem m31_lift_0404_arithmetic : RowArithmetic 1700487167 60 23 1164802726 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0404 : LiftedFamily where
  residue := 1700487167
  steps := 60
  odd_inputs := 23
  endpoint := 1164802726
  arithmetic := m31_lift_0404_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1700487167 60
    · calc
        collatzIter 1700487167 60 = 1164802726 := m31_lift_0404_arithmetic.endpoint
        _ < 1700487167 := m31_lift_0404_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1700487167 60) = 6 ^ 23 := by rw [m31_lift_0404_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0404_arithmetic.slope_below

theorem m31_lift_0405_arithmetic : RowArithmetic 1708875775 101 39 1501687954 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0405 : LiftedFamily where
  residue := 1708875775
  steps := 101
  odd_inputs := 39
  endpoint := 1501687954
  arithmetic := m31_lift_0405_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1708875775 101
    · calc
        collatzIter 1708875775 101 = 1501687954 := m31_lift_0405_arithmetic.endpoint
        _ < 1708875775 := m31_lift_0405_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1708875775 101) = 6 ^ 39 := by rw [m31_lift_0405_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0405_arithmetic.slope_below

theorem m31_lift_0406_arithmetic : RowArithmetic 1725652991 78 30 1262267263 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0406 : LiftedFamily where
  residue := 1725652991
  steps := 78
  odd_inputs := 30
  endpoint := 1262267263
  arithmetic := m31_lift_0406_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1725652991 78
    · calc
        collatzIter 1725652991 78 = 1262267263 := m31_lift_0406_arithmetic.endpoint
        _ < 1725652991 := m31_lift_0406_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1725652991 78) = 6 ^ 30 := by rw [m31_lift_0406_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0406_arithmetic.slope_below

theorem m31_lift_0407_arithmetic : RowArithmetic 1740333055 73 28 1131560287 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0407 : LiftedFamily where
  residue := 1740333055
  steps := 73
  odd_inputs := 28
  endpoint := 1131560287
  arithmetic := m31_lift_0407_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1740333055 73
    · calc
        collatzIter 1740333055 73 = 1131560287 := m31_lift_0407_arithmetic.endpoint
        _ < 1740333055 := m31_lift_0407_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1740333055 73) = 6 ^ 28 := by rw [m31_lift_0407_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0407_arithmetic.slope_below

theorem m31_lift_0408_arithmetic : RowArithmetic 1742430207 52 20 1414557563 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0408 : LiftedFamily where
  residue := 1742430207
  steps := 52
  odd_inputs := 20
  endpoint := 1414557563
  arithmetic := m31_lift_0408_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1742430207 52
    · calc
        collatzIter 1742430207 52 = 1414557563 := m31_lift_0408_arithmetic.endpoint
        _ < 1742430207 := m31_lift_0408_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1742430207 52) = 6 ^ 20 := by rw [m31_lift_0408_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0408_arithmetic.slope_below

theorem m31_lift_0409_arithmetic : RowArithmetic 1746624511 55 21 1063471970 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0409 : LiftedFamily where
  residue := 1746624511
  steps := 55
  odd_inputs := 21
  endpoint := 1063471970
  arithmetic := m31_lift_0409_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1746624511 55
    · calc
        collatzIter 1746624511 55 = 1063471970 := m31_lift_0409_arithmetic.endpoint
        _ < 1746624511 := m31_lift_0409_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1746624511 55) = 6 ^ 21 := by rw [m31_lift_0409_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0409_arithmetic.slope_below

theorem m31_lift_0410_arithmetic : RowArithmetic 1750818815 86 33 1080569839 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0410 : LiftedFamily where
  residue := 1750818815
  steps := 86
  odd_inputs := 33
  endpoint := 1080569839
  arithmetic := m31_lift_0410_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1750818815 86
    · calc
        collatzIter 1750818815 86 = 1080569839 := m31_lift_0410_arithmetic.endpoint
        _ < 1750818815 := m31_lift_0410_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1750818815 86) = 6 ^ 33 := by rw [m31_lift_0410_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0410_arithmetic.slope_below

theorem m31_lift_0411_arithmetic : RowArithmetic 1757110271 65 25 1354037086 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0411 : LiftedFamily where
  residue := 1757110271
  steps := 65
  odd_inputs := 25
  endpoint := 1354037086
  arithmetic := m31_lift_0411_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1757110271 65
    · calc
        collatzIter 1757110271 65 = 1354037086 := m31_lift_0411_arithmetic.endpoint
        _ < 1757110271 := m31_lift_0411_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1757110271 65) = 6 ^ 25 := by rw [m31_lift_0411_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0411_arithmetic.slope_below

theorem m31_lift_0412_arithmetic : RowArithmetic 1759207423 106 41 1739156944 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0412 : LiftedFamily where
  residue := 1759207423
  steps := 106
  odd_inputs := 41
  endpoint := 1739156944
  arithmetic := m31_lift_0412_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1759207423 106
    · calc
        collatzIter 1759207423 106 = 1739156944 := m31_lift_0412_arithmetic.endpoint
        _ < 1759207423 := m31_lift_0412_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1759207423 106) = 6 ^ 41 := by rw [m31_lift_0412_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0412_arithmetic.slope_below

theorem m31_lift_0413_arithmetic : RowArithmetic 1763401727 63 24 905923540 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0413 : LiftedFamily where
  residue := 1763401727
  steps := 63
  odd_inputs := 24
  endpoint := 905923540
  arithmetic := m31_lift_0413_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1763401727 63
    · calc
        collatzIter 1763401727 63 = 905923540 := m31_lift_0413_arithmetic.endpoint
        _ < 1763401727 := m31_lift_0413_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1763401727 63) = 6 ^ 24 := by rw [m31_lift_0413_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0413_arithmetic.slope_below

theorem m31_lift_0414_arithmetic : RowArithmetic 1767596031 91 35 1227289946 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0414 : LiftedFamily where
  residue := 1767596031
  steps := 91
  odd_inputs := 35
  endpoint := 1227289946
  arithmetic := m31_lift_0414_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1767596031 91
    · calc
        collatzIter 1767596031 91 = 1227289946 := m31_lift_0414_arithmetic.endpoint
        _ < 1767596031 := m31_lift_0414_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1767596031 91) = 6 ^ 35 := by rw [m31_lift_0414_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0414_arithmetic.slope_below

theorem m31_lift_0415_arithmetic : RowArithmetic 1775984639 99 38 1040440262 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0415 : LiftedFamily where
  residue := 1775984639
  steps := 99
  odd_inputs := 38
  endpoint := 1040440262
  arithmetic := m31_lift_0415_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1775984639 99
    · calc
        collatzIter 1775984639 99 = 1040440262 := m31_lift_0415_arithmetic.endpoint
        _ < 1775984639 := m31_lift_0415_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1775984639 99) = 6 ^ 38 := by rw [m31_lift_0415_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0415_arithmetic.slope_below

theorem m31_lift_0416_arithmetic : RowArithmetic 1790664703 68 26 1034920712 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0416 : LiftedFamily where
  residue := 1790664703
  steps := 68
  odd_inputs := 26
  endpoint := 1034920712
  arithmetic := m31_lift_0416_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1790664703 68
    · calc
        collatzIter 1790664703 68 = 1034920712 := m31_lift_0416_arithmetic.endpoint
        _ < 1790664703 := m31_lift_0416_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1790664703 68) = 6 ^ 26 := by rw [m31_lift_0416_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0416_arithmetic.slope_below

theorem m31_lift_0417_arithmetic : RowArithmetic 1792761855 52 20 1455418318 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0417 : LiftedFamily where
  residue := 1792761855
  steps := 52
  odd_inputs := 20
  endpoint := 1455418318
  arithmetic := m31_lift_0417_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1792761855 52
    · calc
        collatzIter 1792761855 52 = 1455418318 := m31_lift_0417_arithmetic.endpoint
        _ < 1792761855 := m31_lift_0417_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1792761855 52) = 6 ^ 20 := by rw [m31_lift_0417_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0417_arithmetic.slope_below

theorem m31_lift_0418_arithmetic : RowArithmetic 1801150463 52 20 1462228444 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0418 : LiftedFamily where
  residue := 1801150463
  steps := 52
  odd_inputs := 20
  endpoint := 1462228444
  arithmetic := m31_lift_0418_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1801150463 52
    · calc
        collatzIter 1801150463 52 = 1462228444 := m31_lift_0418_arithmetic.endpoint
        _ < 1801150463 := m31_lift_0418_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1801150463 52) = 6 ^ 20 := by rw [m31_lift_0418_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0418_arithmetic.slope_below

theorem m31_lift_0419_arithmetic : RowArithmetic 1809539071 57 22 1652668391 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0419 : LiftedFamily where
  residue := 1809539071
  steps := 57
  odd_inputs := 22
  endpoint := 1652668391
  arithmetic := m31_lift_0419_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1809539071 57
    · calc
        collatzIter 1809539071 57 = 1652668391 := m31_lift_0419_arithmetic.endpoint
        _ < 1809539071 := m31_lift_0419_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1809539071 57) = 6 ^ 22 := by rw [m31_lift_0419_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0419_arithmetic.slope_below

theorem m31_lift_0420_arithmetic : RowArithmetic 1824219135 68 26 1054313609 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0420 : LiftedFamily where
  residue := 1824219135
  steps := 68
  odd_inputs := 26
  endpoint := 1054313609
  arithmetic := m31_lift_0420_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1824219135 68
    · calc
        collatzIter 1824219135 68 = 1054313609 := m31_lift_0420_arithmetic.endpoint
        _ < 1824219135 := m31_lift_0420_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1824219135 68) = 6 ^ 26 := by rw [m31_lift_0420_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0420_arithmetic.slope_below

theorem m31_lift_0421_arithmetic : RowArithmetic 1843093503 73 28 1198374878 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0421 : LiftedFamily where
  residue := 1843093503
  steps := 73
  odd_inputs := 28
  endpoint := 1198374878
  arithmetic := m31_lift_0421_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1843093503 73
    · calc
        collatzIter 1843093503 73 = 1198374878 := m31_lift_0421_arithmetic.endpoint
        _ < 1843093503 := m31_lift_0421_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1843093503 73) = 6 ^ 28 := by rw [m31_lift_0421_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0421_arithmetic.slope_below

theorem m31_lift_0422_arithmetic : RowArithmetic 1859870719 52 20 1509899324 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0422 : LiftedFamily where
  residue := 1859870719
  steps := 52
  odd_inputs := 20
  endpoint := 1509899324
  arithmetic := m31_lift_0422_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1859870719 52
    · calc
        collatzIter 1859870719 52 = 1509899324 := m31_lift_0422_arithmetic.endpoint
        _ < 1859870719 := m31_lift_0422_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1859870719 52) = 6 ^ 20 := by rw [m31_lift_0422_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0422_arithmetic.slope_below

theorem m31_lift_0423_arithmetic : RowArithmetic 1874550783 75 29 1828242487 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0423 : LiftedFamily where
  residue := 1874550783
  steps := 75
  odd_inputs := 29
  endpoint := 1828242487
  arithmetic := m31_lift_0423_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1874550783 75
    · calc
        collatzIter 1874550783 75 = 1828242487 := m31_lift_0423_arithmetic.endpoint
        _ < 1874550783 := m31_lift_0423_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1874550783 75) = 6 ^ 29 := by rw [m31_lift_0423_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0423_arithmetic.slope_below

theorem m31_lift_0424_arithmetic : RowArithmetic 1880842239 52 20 1526924639 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0424 : LiftedFamily where
  residue := 1880842239
  steps := 52
  odd_inputs := 20
  endpoint := 1526924639
  arithmetic := m31_lift_0424_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1880842239 52
    · calc
        collatzIter 1880842239 52 = 1526924639 := m31_lift_0424_arithmetic.endpoint
        _ < 1880842239 := m31_lift_0424_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1880842239 52) = 6 ^ 20 := by rw [m31_lift_0424_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0424_arithmetic.slope_below

theorem m31_lift_0425_arithmetic : RowArithmetic 1891327999 132 51 1684694641 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0425 : LiftedFamily where
  residue := 1891327999
  steps := 132
  odd_inputs := 51
  endpoint := 1684694641
  arithmetic := m31_lift_0425_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1891327999 132
    · calc
        collatzIter 1891327999 132 = 1684694641 := m31_lift_0425_arithmetic.endpoint
        _ < 1891327999 := m31_lift_0425_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1891327999 132) = 6 ^ 51 := by rw [m31_lift_0425_arithmetic.odd_inputs]
        _ < 2 ^ 132 := m31_lift_0425_arithmetic.slope_below

theorem m31_lift_0426_arithmetic : RowArithmetic 1897619455 104 40 1250660954 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0426 : LiftedFamily where
  residue := 1897619455
  steps := 104
  odd_inputs := 40
  endpoint := 1250660954
  arithmetic := m31_lift_0426_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1897619455 104
    · calc
        collatzIter 1897619455 104 = 1250660954 := m31_lift_0426_arithmetic.endpoint
        _ < 1897619455 := m31_lift_0426_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1897619455 104) = 6 ^ 40 := by rw [m31_lift_0426_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0426_arithmetic.slope_below

theorem m31_lift_0427_arithmetic : RowArithmetic 1901813759 52 20 1543949953 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0427 : LiftedFamily where
  residue := 1901813759
  steps := 52
  odd_inputs := 20
  endpoint := 1543949953
  arithmetic := m31_lift_0427_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1901813759 52
    · calc
        collatzIter 1901813759 52 = 1543949953 := m31_lift_0427_arithmetic.endpoint
        _ < 1901813759 := m31_lift_0427_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1901813759 52) = 6 ^ 20 := by rw [m31_lift_0427_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0427_arithmetic.slope_below

theorem m31_lift_0428_arithmetic : RowArithmetic 1910202367 55 21 1163070059 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0428 : LiftedFamily where
  residue := 1910202367
  steps := 55
  odd_inputs := 21
  endpoint := 1163070059
  arithmetic := m31_lift_0428_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1910202367 55
    · calc
        collatzIter 1910202367 55 = 1163070059 := m31_lift_0428_arithmetic.endpoint
        _ < 1910202367 := m31_lift_0428_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1910202367 55) = 6 ^ 21 := by rw [m31_lift_0428_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0428_arithmetic.slope_below

theorem m31_lift_0429_arithmetic : RowArithmetic 1924882431 65 25 1483323068 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0429 : LiftedFamily where
  residue := 1924882431
  steps := 65
  odd_inputs := 25
  endpoint := 1483323068
  arithmetic := m31_lift_0429_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1924882431 65
    · calc
        collatzIter 1924882431 65 = 1483323068 := m31_lift_0429_arithmetic.endpoint
        _ < 1924882431 := m31_lift_0429_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1924882431 65) = 6 ^ 25 := by rw [m31_lift_0429_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0429_arithmetic.slope_below

theorem m31_lift_0430_arithmetic : RowArithmetic 1926979583 55 21 1173285248 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0430 : LiftedFamily where
  residue := 1926979583
  steps := 55
  odd_inputs := 21
  endpoint := 1173285248
  arithmetic := m31_lift_0430_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1926979583 55
    · calc
        collatzIter 1926979583 55 = 1173285248 := m31_lift_0430_arithmetic.endpoint
        _ < 1926979583 := m31_lift_0430_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1926979583 55) = 6 ^ 21 := by rw [m31_lift_0430_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0430_arithmetic.slope_below

theorem m31_lift_0431_arithmetic : RowArithmetic 1931173887 57 22 1763758568 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0431 : LiftedFamily where
  residue := 1931173887
  steps := 57
  odd_inputs := 22
  endpoint := 1763758568
  arithmetic := m31_lift_0431_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1931173887 57
    · calc
        collatzIter 1931173887 57 = 1763758568 := m31_lift_0431_arithmetic.endpoint
        _ < 1931173887 := m31_lift_0431_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1931173887 57) = 6 ^ 22 := by rw [m31_lift_0431_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0431_arithmetic.slope_below

theorem m31_lift_0432_arithmetic : RowArithmetic 1935368191 81 31 1061751083 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0432 : LiftedFamily where
  residue := 1935368191
  steps := 81
  odd_inputs := 31
  endpoint := 1061751083
  arithmetic := m31_lift_0432_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1935368191 81
    · calc
        collatzIter 1935368191 81 = 1061751083 := m31_lift_0432_arithmetic.endpoint
        _ < 1935368191 := m31_lift_0432_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1935368191 81) = 6 ^ 31 := by rw [m31_lift_0432_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0432_arithmetic.slope_below

theorem m31_lift_0433_arithmetic : RowArithmetic 1943756799 125 48 1026012109 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0433 : LiftedFamily where
  residue := 1943756799
  steps := 125
  odd_inputs := 48
  endpoint := 1026012109
  arithmetic := m31_lift_0433_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1943756799 125
    · calc
        collatzIter 1943756799 125 = 1026012109 := m31_lift_0433_arithmetic.endpoint
        _ < 1943756799 := m31_lift_0433_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1943756799 125) = 6 ^ 48 := by rw [m31_lift_0433_arithmetic.odd_inputs]
        _ < 2 ^ 125 := m31_lift_0433_arithmetic.slope_below

theorem m31_lift_0434_arithmetic : RowArithmetic 1964728319 57 22 1794404134 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0434 : LiftedFamily where
  residue := 1964728319
  steps := 57
  odd_inputs := 22
  endpoint := 1794404134
  arithmetic := m31_lift_0434_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1964728319 57
    · calc
        collatzIter 1964728319 57 = 1794404134 := m31_lift_0434_arithmetic.endpoint
        _ < 1964728319 := m31_lift_0434_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1964728319 57) = 6 ^ 22 := by rw [m31_lift_0434_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0434_arithmetic.slope_below

theorem m31_lift_0435_arithmetic : RowArithmetic 1968922623 75 29 1920282995 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0435 : LiftedFamily where
  residue := 1968922623
  steps := 75
  odd_inputs := 29
  endpoint := 1920282995
  arithmetic := m31_lift_0435_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1968922623 75
    · calc
        collatzIter 1968922623 75 = 1920282995 := m31_lift_0435_arithmetic.endpoint
        _ < 1968922623 := m31_lift_0435_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1968922623 75) = 6 ^ 29 := by rw [m31_lift_0435_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0435_arithmetic.slope_below

theorem m31_lift_0436_arithmetic : RowArithmetic 1977311231 52 20 1605241085 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0436 : LiftedFamily where
  residue := 1977311231
  steps := 52
  odd_inputs := 20
  endpoint := 1605241085
  arithmetic := m31_lift_0436_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1977311231 52
    · calc
        collatzIter 1977311231 52 = 1605241085 := m31_lift_0436_arithmetic.endpoint
        _ < 1977311231 := m31_lift_0436_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1977311231 52) = 6 ^ 20 := by rw [m31_lift_0436_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0436_arithmetic.slope_below

theorem m31_lift_0437_arithmetic : RowArithmetic 2010865663 60 23 1377406340 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0437 : LiftedFamily where
  residue := 2010865663
  steps := 60
  odd_inputs := 23
  endpoint := 1377406340
  arithmetic := m31_lift_0437_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2010865663 60
    · calc
        collatzIter 2010865663 60 = 1377406340 := m31_lift_0437_arithmetic.endpoint
        _ < 2010865663 := m31_lift_0437_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2010865663 60) = 6 ^ 23 := by rw [m31_lift_0437_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0437_arithmetic.slope_below

theorem m31_lift_0438_arithmetic : RowArithmetic 2015059967 68 26 1164610712 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0438 : LiftedFamily where
  residue := 2015059967
  steps := 68
  odd_inputs := 26
  endpoint := 1164610712
  arithmetic := m31_lift_0438_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2015059967 68
    · calc
        collatzIter 2015059967 68 = 1164610712 := m31_lift_0438_arithmetic.endpoint
        _ < 2015059967 := m31_lift_0438_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2015059967 68) = 6 ^ 26 := by rw [m31_lift_0438_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0438_arithmetic.slope_below

theorem m31_lift_0439_arithmetic : RowArithmetic 2019254271 78 30 1477028450 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0439 : LiftedFamily where
  residue := 2019254271
  steps := 78
  odd_inputs := 30
  endpoint := 1477028450
  arithmetic := m31_lift_0439_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2019254271 78
    · calc
        collatzIter 2019254271 78 = 1477028450 := m31_lift_0439_arithmetic.endpoint
        _ < 2019254271 := m31_lift_0439_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2019254271 78) = 6 ^ 30 := by rw [m31_lift_0439_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0439_arithmetic.slope_below

theorem m31_lift_0440_arithmetic : RowArithmetic 2025545727 60 23 1387461917 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0440 : LiftedFamily where
  residue := 2025545727
  steps := 60
  odd_inputs := 23
  endpoint := 1387461917
  arithmetic := m31_lift_0440_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2025545727 60
    · calc
        collatzIter 2025545727 60 = 1387461917 := m31_lift_0440_arithmetic.endpoint
        _ < 2025545727 := m31_lift_0440_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2025545727 60) = 6 ^ 23 := by rw [m31_lift_0440_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0440_arithmetic.slope_below

theorem m31_lift_0441_arithmetic : RowArithmetic 2027642879 52 20 1646101840 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0441 : LiftedFamily where
  residue := 2027642879
  steps := 52
  odd_inputs := 20
  endpoint := 1646101840
  arithmetic := m31_lift_0441_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2027642879 52
    · calc
        collatzIter 2027642879 52 = 1646101840 := m31_lift_0441_arithmetic.endpoint
        _ < 2027642879 := m31_lift_0441_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2027642879 52) = 6 ^ 20 := by rw [m31_lift_0441_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0441_arithmetic.slope_below

theorem m31_lift_0442_arithmetic : RowArithmetic 2031837183 83 32 1672011563 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0442 : LiftedFamily where
  residue := 2031837183
  steps := 83
  odd_inputs := 32
  endpoint := 1672011563
  arithmetic := m31_lift_0442_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2031837183 83
    · calc
        collatzIter 2031837183 83 = 1672011563 := m31_lift_0442_arithmetic.endpoint
        _ < 2031837183 := m31_lift_0442_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2031837183 83) = 6 ^ 32 := by rw [m31_lift_0442_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0442_arithmetic.slope_below

theorem m31_lift_0443_arithmetic : RowArithmetic 2036031487 68 26 1176731273 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0443 : LiftedFamily where
  residue := 2036031487
  steps := 68
  odd_inputs := 26
  endpoint := 1176731273
  arithmetic := m31_lift_0443_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2036031487 68
    · calc
        collatzIter 2036031487 68 = 1176731273 := m31_lift_0443_arithmetic.endpoint
        _ < 2036031487 := m31_lift_0443_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2036031487 68) = 6 ^ 26 := by rw [m31_lift_0443_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0443_arithmetic.slope_below

theorem m31_lift_0444_arithmetic : RowArithmetic 2044420095 63 24 1050292886 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0444 : LiftedFamily where
  residue := 2044420095
  steps := 63
  odd_inputs := 24
  endpoint := 1050292886
  arithmetic := m31_lift_0444_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2044420095 63
    · calc
        collatzIter 2044420095 63 = 1050292886 := m31_lift_0444_arithmetic.endpoint
        _ < 2044420095 := m31_lift_0444_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2044420095 63) = 6 ^ 24 := by rw [m31_lift_0444_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0444_arithmetic.slope_below

theorem m31_lift_0445_arithmetic : RowArithmetic 2059100159 65 25 1586751853 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0445 : LiftedFamily where
  residue := 2059100159
  steps := 65
  odd_inputs := 25
  endpoint := 1586751853
  arithmetic := m31_lift_0445_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2059100159 65
    · calc
        collatzIter 2059100159 65 = 1586751853 := m31_lift_0445_arithmetic.endpoint
        _ < 2059100159 := m31_lift_0445_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2059100159 65) = 6 ^ 25 := by rw [m31_lift_0445_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0445_arithmetic.slope_below

theorem m31_lift_0446_arithmetic : RowArithmetic 2061197311 75 29 2010278158 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0446 : LiftedFamily where
  residue := 2061197311
  steps := 75
  odd_inputs := 29
  endpoint := 2010278158
  arithmetic := m31_lift_0446_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2061197311 75
    · calc
        collatzIter 2061197311 75 = 2010278158 := m31_lift_0446_arithmetic.endpoint
        _ < 2061197311 := m31_lift_0446_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2061197311 75) = 6 ^ 29 := by rw [m31_lift_0446_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0446_arithmetic.slope_below

theorem m31_lift_0447_arithmetic : RowArithmetic 2092654591 52 20 1698880315 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0447 : LiftedFamily where
  residue := 2092654591
  steps := 52
  odd_inputs := 20
  endpoint := 1698880315
  arithmetic := m31_lift_0447_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2092654591 52
    · calc
        collatzIter 2092654591 52 = 1698880315 := m31_lift_0447_arithmetic.endpoint
        _ < 2092654591 := m31_lift_0447_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2092654591 52) = 6 ^ 20 := by rw [m31_lift_0447_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0447_arithmetic.slope_below

theorem m31_lift_0448_arithmetic : RowArithmetic 2103140351 52 20 1707392972 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0448 : LiftedFamily where
  residue := 2103140351
  steps := 52
  odd_inputs := 20
  endpoint := 1707392972
  arithmetic := m31_lift_0448_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2103140351 52
    · calc
        collatzIter 2103140351 52 = 1707392972 := m31_lift_0448_arithmetic.endpoint
        _ < 2103140351 := m31_lift_0448_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2103140351 52) = 6 ^ 20 := by rw [m31_lift_0448_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0448_arithmetic.slope_below

theorem m31_lift_0449_arithmetic : RowArithmetic 2111528959 101 39 1855522588 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0449 : LiftedFamily where
  residue := 2111528959
  steps := 101
  odd_inputs := 39
  endpoint := 1855522588
  arithmetic := m31_lift_0449_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2111528959 101
    · calc
        collatzIter 2111528959 101 = 1855522588 := m31_lift_0449_arithmetic.endpoint
        _ < 2111528959 := m31_lift_0449_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2111528959 101) = 6 ^ 39 := by rw [m31_lift_0449_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0449_arithmetic.slope_below

theorem m31_lift_0450_arithmetic : RowArithmetic 2128306175 83 32 1751396501 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0450 : LiftedFamily where
  residue := 2128306175
  steps := 83
  odd_inputs := 32
  endpoint := 1751396501
  arithmetic := m31_lift_0450_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2128306175 83
    · calc
        collatzIter 2128306175 83 = 1751396501 := m31_lift_0450_arithmetic.endpoint
        _ < 2128306175 := m31_lift_0450_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2128306175 83) = 6 ^ 32 := by rw [m31_lift_0450_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0450_arithmetic.slope_below

theorem m31_lift_0451_arithmetic : RowArithmetic 2142986239 207 80 1861702627 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0451 : LiftedFamily where
  residue := 2142986239
  steps := 207
  odd_inputs := 80
  endpoint := 1861702627
  arithmetic := m31_lift_0451_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2142986239 207
    · calc
        collatzIter 2142986239 207 = 1861702627 := m31_lift_0451_arithmetic.endpoint
        _ < 2142986239 := m31_lift_0451_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2142986239 207) = 6 ^ 80 := by rw [m31_lift_0451_arithmetic.odd_inputs]
        _ < 2 ^ 207 := m31_lift_0451_arithmetic.slope_below

theorem m31_lift_0452_arithmetic : RowArithmetic 2145083391 57 22 1959124051 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0452 : LiftedFamily where
  residue := 2145083391
  steps := 57
  odd_inputs := 22
  endpoint := 1959124051
  arithmetic := m31_lift_0452_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2145083391 57
    · calc
        collatzIter 2145083391 57 = 1959124051 := m31_lift_0452_arithmetic.endpoint
        _ < 2145083391 := m31_lift_0452_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2145083391 57) = 6 ^ 22 := by rw [m31_lift_0452_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0452_arithmetic.slope_below

theorem m31_lift_0453_arithmetic : RowArithmetic 9584639 55 21 5835826 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0453 : LiftedFamily where
  residue := 9584639
  steps := 55
  odd_inputs := 21
  endpoint := 5835826
  arithmetic := m31_lift_0453_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 9584639 55
    · calc
        collatzIter 9584639 55 = 5835826 := m31_lift_0453_arithmetic.endpoint
        _ < 9584639 := m31_lift_0453_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 9584639 55) = 6 ^ 21 := by rw [m31_lift_0453_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0453_arithmetic.slope_below

theorem m31_lift_0454_arithmetic : RowArithmetic 30556159 52 20 24806416 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0454 : LiftedFamily where
  residue := 30556159
  steps := 52
  odd_inputs := 20
  endpoint := 24806416
  arithmetic := m31_lift_0454_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 30556159 52
    · calc
        collatzIter 30556159 52 = 24806416 := m31_lift_0454_arithmetic.endpoint
        _ < 30556159 := m31_lift_0454_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 30556159 52) = 6 ^ 20 := by rw [m31_lift_0454_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0454_arithmetic.slope_below

theorem m31_lift_0455_arithmetic : RowArithmetic 34750463 55 21 21158609 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0455 : LiftedFamily where
  residue := 34750463
  steps := 55
  odd_inputs := 21
  endpoint := 21158609
  arithmetic := m31_lift_0455_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 34750463 55
    · calc
        collatzIter 34750463 55 = 21158609 := m31_lift_0455_arithmetic.endpoint
        _ < 34750463 := m31_lift_0455_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 34750463 55) = 6 ^ 21 := by rw [m31_lift_0455_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0455_arithmetic.slope_below

theorem m31_lift_0456_arithmetic : RowArithmetic 43139071 57 22 39399305 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0456 : LiftedFamily where
  residue := 43139071
  steps := 57
  odd_inputs := 22
  endpoint := 39399305
  arithmetic := m31_lift_0456_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 43139071 57
    · calc
        collatzIter 43139071 57 = 39399305 := m31_lift_0456_arithmetic.endpoint
        _ < 43139071 := m31_lift_0456_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 43139071 57) = 6 ^ 22 := by rw [m31_lift_0456_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0456_arithmetic.slope_below

theorem m31_lift_0457_arithmetic : RowArithmetic 59916287 119 46 56225450 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0457 : LiftedFamily where
  residue := 59916287
  steps := 119
  odd_inputs := 46
  endpoint := 56225450
  arithmetic := m31_lift_0457_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 59916287 119
    · calc
        collatzIter 59916287 119 = 56225450 := m31_lift_0457_arithmetic.endpoint
        _ < 59916287 := m31_lift_0457_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 59916287 119) = 6 ^ 46 := by rw [m31_lift_0457_arithmetic.odd_inputs]
        _ < 2 ^ 119 := m31_lift_0457_arithmetic.slope_below

theorem m31_lift_0458_arithmetic : RowArithmetic 76693503 88 34 71000512 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0458 : LiftedFamily where
  residue := 76693503
  steps := 88
  odd_inputs := 34
  endpoint := 71000512
  arithmetic := m31_lift_0458_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 76693503 88
    · calc
        collatzIter 76693503 88 = 71000512 := m31_lift_0458_arithmetic.endpoint
        _ < 76693503 := m31_lift_0458_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 76693503 88) = 6 ^ 34 := by rw [m31_lift_0458_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0458_arithmetic.slope_below

theorem m31_lift_0459_arithmetic : RowArithmetic 80887807 101 39 71080796 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0459 : LiftedFamily where
  residue := 80887807
  steps := 101
  odd_inputs := 39
  endpoint := 71080796
  arithmetic := m31_lift_0459_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 80887807 101
    · calc
        collatzIter 80887807 101 = 71080796 := m31_lift_0459_arithmetic.endpoint
        _ < 80887807 := m31_lift_0459_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 80887807 101) = 6 ^ 39 := by rw [m31_lift_0459_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0459_arithmetic.slope_below

theorem m31_lift_0460_arithmetic : RowArithmetic 85082111 57 22 77706263 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0460 : LiftedFamily where
  residue := 85082111
  steps := 57
  odd_inputs := 22
  endpoint := 77706263
  arithmetic := m31_lift_0460_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 85082111 57
    · calc
        collatzIter 85082111 57 = 77706263 := m31_lift_0460_arithmetic.endpoint
        _ < 85082111 := m31_lift_0460_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 85082111 57) = 6 ^ 22 := by rw [m31_lift_0460_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0460_arithmetic.slope_below

theorem m31_lift_0461_arithmetic : RowArithmetic 93470719 68 26 54021719 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0461 : LiftedFamily where
  residue := 93470719
  steps := 68
  odd_inputs := 26
  endpoint := 54021719
  arithmetic := m31_lift_0461_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 93470719 68
    · calc
        collatzIter 93470719 68 = 54021719 := m31_lift_0461_arithmetic.endpoint
        _ < 93470719 := m31_lift_0461_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 93470719 68) = 6 ^ 26 := by rw [m31_lift_0461_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0461_arithmetic.slope_below

theorem m31_lift_0462_arithmetic : RowArithmetic 97665023 52 20 79287422 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0462 : LiftedFamily where
  residue := 97665023
  steps := 52
  odd_inputs := 20
  endpoint := 79287422
  arithmetic := m31_lift_0462_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 97665023 52
    · calc
        collatzIter 97665023 52 = 79287422 := m31_lift_0462_arithmetic.endpoint
        _ < 97665023 := m31_lift_0462_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 97665023 52) = 6 ^ 20 := by rw [m31_lift_0462_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0462_arithmetic.slope_below

theorem m31_lift_0463_arithmetic : RowArithmetic 101859327 70 27 88304915 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0463 : LiftedFamily where
  residue := 101859327
  steps := 70
  odd_inputs := 27
  endpoint := 88304915
  arithmetic := m31_lift_0463_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 101859327 70
    · calc
        collatzIter 101859327 70 = 88304915 := m31_lift_0463_arithmetic.endpoint
        _ < 101859327 := m31_lift_0463_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 101859327 70) = 6 ^ 27 := by rw [m31_lift_0463_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0463_arithmetic.slope_below

theorem m31_lift_0464_arithmetic : RowArithmetic 110247935 73 28 71682938 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0464 : LiftedFamily where
  residue := 110247935
  steps := 73
  odd_inputs := 28
  endpoint := 71682938
  arithmetic := m31_lift_0464_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 110247935 73
    · calc
        collatzIter 110247935 73 = 71682938 := m31_lift_0464_arithmetic.endpoint
        _ < 110247935 := m31_lift_0464_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 110247935 73) = 6 ^ 28 := by rw [m31_lift_0464_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0464_arithmetic.slope_below

theorem m31_lift_0465_arithmetic : RowArithmetic 127025151 65 25 97886155 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0465 : LiftedFamily where
  residue := 127025151
  steps := 65
  odd_inputs := 25
  endpoint := 97886155
  arithmetic := m31_lift_0465_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 127025151 65
    · calc
        collatzIter 127025151 65 = 97886155 := m31_lift_0465_arithmetic.endpoint
        _ < 127025151 := m31_lift_0465_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 127025151 65) = 6 ^ 25 := by rw [m31_lift_0465_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0465_arithmetic.slope_below

theorem m31_lift_0466_arithmetic : RowArithmetic 135413759 57 22 123674612 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0466 : LiftedFamily where
  residue := 135413759
  steps := 57
  odd_inputs := 22
  endpoint := 123674612
  arithmetic := m31_lift_0466_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 135413759 57
    · calc
        collatzIter 135413759 57 = 123674612 := m31_lift_0466_arithmetic.endpoint
        _ < 135413759 := m31_lift_0466_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 135413759 57) = 6 ^ 22 := by rw [m31_lift_0466_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0466_arithmetic.slope_below

theorem m31_lift_0467_arithmetic : RowArithmetic 143802367 52 20 116743114 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0467 : LiftedFamily where
  residue := 143802367
  steps := 52
  odd_inputs := 20
  endpoint := 116743114
  arithmetic := m31_lift_0467_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 143802367 52
    · calc
        collatzIter 143802367 52 = 116743114 := m31_lift_0467_arithmetic.endpoint
        _ < 143802367 := m31_lift_0467_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 143802367 52) = 6 ^ 20 := by rw [m31_lift_0467_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0467_arithmetic.slope_below

theorem m31_lift_0468_arithmetic : RowArithmetic 164773887 60 23 112867112 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0468 : LiftedFamily where
  residue := 164773887
  steps := 60
  odd_inputs := 23
  endpoint := 112867112
  arithmetic := m31_lift_0468_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 164773887 60
    · calc
        collatzIter 164773887 60 = 112867112 := m31_lift_0468_arithmetic.endpoint
        _ < 164773887 := m31_lift_0468_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 164773887 60) = 6 ^ 23 := by rw [m31_lift_0468_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0468_arithmetic.slope_below

theorem m31_lift_0469_arithmetic : RowArithmetic 177356799 57 22 161981569 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0469 : LiftedFamily where
  residue := 177356799
  steps := 57
  odd_inputs := 22
  endpoint := 161981569
  arithmetic := m31_lift_0469_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 177356799 57
    · calc
        collatzIter 177356799 57 = 161981569 := m31_lift_0469_arithmetic.endpoint
        _ < 177356799 := m31_lift_0469_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 177356799 57) = 6 ^ 22 := by rw [m31_lift_0469_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0469_arithmetic.slope_below

theorem m31_lift_0470_arithmetic : RowArithmetic 194134015 57 22 177304352 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0470 : LiftedFamily where
  residue := 194134015
  steps := 57
  odd_inputs := 22
  endpoint := 177304352
  arithmetic := m31_lift_0470_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 194134015 57
    · calc
        collatzIter 194134015 57 = 177304352 := m31_lift_0470_arithmetic.endpoint
        _ < 194134015 := m31_lift_0470_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 194134015 57) = 6 ^ 22 := by rw [m31_lift_0470_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0470_arithmetic.slope_below

theorem m31_lift_0471_arithmetic : RowArithmetic 210911231 52 20 171224120 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0471 : LiftedFamily where
  residue := 210911231
  steps := 52
  odd_inputs := 20
  endpoint := 171224120
  arithmetic := m31_lift_0471_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 210911231 52
    · calc
        collatzIter 210911231 52 = 171224120 := m31_lift_0471_arithmetic.endpoint
        _ < 210911231 := m31_lift_0471_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 210911231 52) = 6 ^ 20 := by rw [m31_lift_0471_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0471_arithmetic.slope_below

theorem m31_lift_0472_arithmetic : RowArithmetic 215105535 114 44 179426714 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0472 : LiftedFamily where
  residue := 215105535
  steps := 114
  odd_inputs := 44
  endpoint := 179426714
  arithmetic := m31_lift_0472_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 215105535 114
    · calc
        collatzIter 215105535 114 = 179426714 := m31_lift_0472_arithmetic.endpoint
        _ < 215105535 := m31_lift_0472_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 215105535 114) = 6 ^ 44 := by rw [m31_lift_0472_arithmetic.odd_inputs]
        _ < 2 ^ 114 := m31_lift_0472_arithmetic.slope_below

theorem m31_lift_0473_arithmetic : RowArithmetic 236077055 88 34 218552953 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0473 : LiftedFamily where
  residue := 236077055
  steps := 88
  odd_inputs := 34
  endpoint := 218552953
  arithmetic := m31_lift_0473_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 236077055 88
    · calc
        collatzIter 236077055 88 = 218552953 := m31_lift_0473_arithmetic.endpoint
        _ < 236077055 := m31_lift_0473_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 236077055 88) = 6 ^ 34 := by rw [m31_lift_0473_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0473_arithmetic.slope_below

theorem m31_lift_0474_arithmetic : RowArithmetic 244465663 52 20 198464623 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0474 : LiftedFamily where
  residue := 244465663
  steps := 52
  odd_inputs := 20
  endpoint := 198464623
  arithmetic := m31_lift_0474_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 244465663 52
    · calc
        collatzIter 244465663 52 = 198464623 := m31_lift_0474_arithmetic.endpoint
        _ < 244465663 := m31_lift_0474_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 244465663 52) = 6 ^ 20 := by rw [m31_lift_0474_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0474_arithmetic.slope_below

theorem m31_lift_0475_arithmetic : RowArithmetic 261242879 52 20 212084875 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0475 : LiftedFamily where
  residue := 261242879
  steps := 52
  odd_inputs := 20
  endpoint := 212084875
  arithmetic := m31_lift_0475_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 261242879 52
    · calc
        collatzIter 261242879 52 = 212084875 := m31_lift_0475_arithmetic.endpoint
        _ < 261242879 := m31_lift_0475_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 261242879 52) = 6 ^ 20 := by rw [m31_lift_0475_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0475_arithmetic.slope_below

theorem m31_lift_0476_arithmetic : RowArithmetic 265437183 52 20 215489938 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0476 : LiftedFamily where
  residue := 265437183
  steps := 52
  odd_inputs := 20
  endpoint := 215489938
  arithmetic := m31_lift_0476_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 265437183 52
    · calc
        collatzIter 265437183 52 = 215489938 := m31_lift_0476_arithmetic.endpoint
        _ < 265437183 := m31_lift_0476_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 265437183 52) = 6 ^ 20 := by rw [m31_lift_0476_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0476_arithmetic.slope_below

theorem m31_lift_0477_arithmetic : RowArithmetic 269631487 57 22 246256876 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0477 : LiftedFamily where
  residue := 269631487
  steps := 57
  odd_inputs := 22
  endpoint := 246256876
  arithmetic := m31_lift_0477_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 269631487 57
    · calc
        collatzIter 269631487 57 = 246256876 := m31_lift_0477_arithmetic.endpoint
        _ < 269631487 := m31_lift_0477_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 269631487 57) = 6 ^ 22 := by rw [m31_lift_0477_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0477_arithmetic.slope_below

theorem m31_lift_0478_arithmetic : RowArithmetic 278020095 68 26 160682654 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0478 : LiftedFamily where
  residue := 278020095
  steps := 68
  odd_inputs := 26
  endpoint := 160682654
  arithmetic := m31_lift_0478_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 278020095 68
    · calc
        collatzIter 278020095 68 = 160682654 := m31_lift_0478_arithmetic.endpoint
        _ < 278020095 := m31_lift_0478_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 278020095 68) = 6 ^ 26 := by rw [m31_lift_0478_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0478_arithmetic.slope_below

theorem m31_lift_0479_arithmetic : RowArithmetic 298991615 96 37 233547754 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0479 : LiftedFamily where
  residue := 298991615
  steps := 96
  odd_inputs := 37
  endpoint := 233547754
  arithmetic := m31_lift_0479_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 298991615 96
    · calc
        collatzIter 298991615 96 = 233547754 := m31_lift_0479_arithmetic.endpoint
        _ < 298991615 := m31_lift_0479_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 298991615 96) = 6 ^ 37 := by rw [m31_lift_0479_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0479_arithmetic.slope_below

theorem m31_lift_0480_arithmetic : RowArithmetic 303185919 127 49 240055052 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0480 : LiftedFamily where
  residue := 303185919
  steps := 127
  odd_inputs := 49
  endpoint := 240055052
  arithmetic := m31_lift_0480_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 303185919 127
    · calc
        collatzIter 303185919 127 = 240055052 := m31_lift_0480_arithmetic.endpoint
        _ < 303185919 := m31_lift_0480_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 303185919 127) = 6 ^ 49 := by rw [m31_lift_0480_arithmetic.odd_inputs]
        _ < 2 ^ 127 := m31_lift_0480_arithmetic.slope_below

theorem m31_lift_0481_arithmetic : RowArithmetic 311574527 65 25 240100735 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0481 : LiftedFamily where
  residue := 311574527
  steps := 65
  odd_inputs := 25
  endpoint := 240100735
  arithmetic := m31_lift_0481_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 311574527 65
    · calc
        collatzIter 311574527 65 = 240100735 := m31_lift_0481_arithmetic.endpoint
        _ < 311574527 := m31_lift_0481_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 311574527 65) = 6 ^ 25 := by rw [m31_lift_0481_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0481_arithmetic.slope_below

theorem m31_lift_0482_arithmetic : RowArithmetic 328351743 52 20 266565881 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0482 : LiftedFamily where
  residue := 328351743
  steps := 52
  odd_inputs := 20
  endpoint := 266565881
  arithmetic := m31_lift_0482_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 328351743 52
    · calc
        collatzIter 328351743 52 = 266565881 := m31_lift_0482_arithmetic.endpoint
        _ < 328351743 := m31_lift_0482_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 328351743 52) = 6 ^ 20 := by rw [m31_lift_0482_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0482_arithmetic.slope_below

theorem m31_lift_0483_arithmetic : RowArithmetic 345128959 101 39 303284774 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0483 : LiftedFamily where
  residue := 345128959
  steps := 101
  odd_inputs := 39
  endpoint := 303284774
  arithmetic := m31_lift_0483_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 345128959 101
    · calc
        collatzIter 345128959 101 = 303284774 := m31_lift_0483_arithmetic.endpoint
        _ < 345128959 := m31_lift_0483_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 345128959 101) = 6 ^ 39 := by rw [m31_lift_0483_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0483_arithmetic.slope_below

theorem m31_lift_0484_arithmetic : RowArithmetic 349323263 125 48 184390301 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0484 : LiftedFamily where
  residue := 349323263
  steps := 125
  odd_inputs := 48
  endpoint := 184390301
  arithmetic := m31_lift_0484_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 349323263 125
    · calc
        collatzIter 349323263 125 = 184390301 := m31_lift_0484_arithmetic.endpoint
        _ < 349323263 := m31_lift_0484_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 349323263 125) = 6 ^ 48 := by rw [m31_lift_0484_arithmetic.odd_inputs]
        _ < 2 ^ 125 := m31_lift_0484_arithmetic.slope_below

theorem m31_lift_0485_arithmetic : RowArithmetic 361906175 60 23 247899137 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0485 : LiftedFamily where
  residue := 361906175
  steps := 60
  odd_inputs := 23
  endpoint := 247899137
  arithmetic := m31_lift_0485_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 361906175 60
    · calc
        collatzIter 361906175 60 = 247899137 := m31_lift_0485_arithmetic.endpoint
        _ < 361906175 := m31_lift_0485_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 361906175 60) = 6 ^ 23 := by rw [m31_lift_0485_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0485_arithmetic.slope_below

theorem m31_lift_0486_arithmetic : RowArithmetic 366100479 57 22 334362878 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0486 : LiftedFamily where
  residue := 366100479
  steps := 57
  odd_inputs := 22
  endpoint := 334362878
  arithmetic := m31_lift_0486_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 366100479 57
    · calc
        collatzIter 366100479 57 = 334362878 := m31_lift_0486_arithmetic.endpoint
        _ < 366100479 := m31_lift_0486_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 366100479 57) = 6 ^ 22 := by rw [m31_lift_0486_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0486_arithmetic.slope_below

theorem m31_lift_0487_arithmetic : RowArithmetic 370294783 91 35 257105729 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0487 : LiftedFamily where
  residue := 370294783
  steps := 91
  odd_inputs := 35
  endpoint := 257105729
  arithmetic := m31_lift_0487_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 370294783 91
    · calc
        collatzIter 370294783 91 = 257105729 := m31_lift_0487_arithmetic.endpoint
        _ < 370294783 := m31_lift_0487_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 370294783 91) = 6 ^ 35 := by rw [m31_lift_0487_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0487_arithmetic.slope_below

theorem m31_lift_0488_arithmetic : RowArithmetic 378683391 57 22 345854965 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0488 : LiftedFamily where
  residue := 378683391
  steps := 57
  odd_inputs := 22
  endpoint := 345854965
  arithmetic := m31_lift_0488_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 378683391 57
    · calc
        collatzIter 378683391 57 = 345854965 := m31_lift_0488_arithmetic.endpoint
        _ < 378683391 := m31_lift_0488_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 378683391 57) = 6 ^ 22 := by rw [m31_lift_0488_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0488_arithmetic.slope_below

theorem m31_lift_0489_arithmetic : RowArithmetic 395460607 94 36 205934284 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0489 : LiftedFamily where
  residue := 395460607
  steps := 94
  odd_inputs := 36
  endpoint := 205934284
  arithmetic := m31_lift_0489_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 395460607 94
    · calc
        collatzIter 395460607 94 = 205934284 := m31_lift_0489_arithmetic.endpoint
        _ < 395460607 := m31_lift_0489_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 395460607 94) = 6 ^ 36 := by rw [m31_lift_0489_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0489_arithmetic.slope_below

theorem m31_lift_0490_arithmetic : RowArithmetic 399654911 55 21 243338963 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0490 : LiftedFamily where
  residue := 399654911
  steps := 55
  odd_inputs := 21
  endpoint := 243338963
  arithmetic := m31_lift_0490_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 399654911 55
    · calc
        collatzIter 399654911 55 = 243338963 := m31_lift_0490_arithmetic.endpoint
        _ < 399654911 := m31_lift_0490_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 399654911 55) = 6 ^ 21 := by rw [m31_lift_0490_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0490_arithmetic.slope_below

theorem m31_lift_0491_arithmetic : RowArithmetic 437403647 60 23 299613530 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0491 : LiftedFamily where
  residue := 437403647
  steps := 60
  odd_inputs := 23
  endpoint := 299613530
  arithmetic := m31_lift_0491_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 437403647 60
    · calc
        collatzIter 437403647 60 = 299613530 := m31_lift_0491_arithmetic.endpoint
        _ < 437403647 := m31_lift_0491_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 437403647 60) = 6 ^ 23 := by rw [m31_lift_0491_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0491_arithmetic.slope_below

theorem m31_lift_0492_arithmetic : RowArithmetic 445792255 81 31 244563496 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0492 : LiftedFamily where
  residue := 445792255
  steps := 81
  odd_inputs := 31
  endpoint := 244563496
  arithmetic := m31_lift_0492_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 445792255 81
    · calc
        collatzIter 445792255 81 = 244563496 := m31_lift_0492_arithmetic.endpoint
        _ < 445792255 := m31_lift_0492_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 445792255 81) = 6 ^ 31 := by rw [m31_lift_0492_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0492_arithmetic.slope_below

theorem m31_lift_0493_arithmetic : RowArithmetic 462569471 73 28 300761537 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0493 : LiftedFamily where
  residue := 462569471
  steps := 73
  odd_inputs := 28
  endpoint := 300761537
  arithmetic := m31_lift_0493_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 462569471 73
    · calc
        collatzIter 462569471 73 = 300761537 := m31_lift_0493_arithmetic.endpoint
        _ < 462569471 := m31_lift_0493_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 462569471 73) = 6 ^ 28 := by rw [m31_lift_0493_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0493_arithmetic.slope_below

theorem m31_lift_0494_arithmetic : RowArithmetic 479346687 52 20 389148145 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0494 : LiftedFamily where
  residue := 479346687
  steps := 52
  odd_inputs := 20
  endpoint := 389148145
  arithmetic := m31_lift_0494_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 479346687 52
    · calc
        collatzIter 479346687 52 = 389148145 := m31_lift_0494_arithmetic.endpoint
        _ < 479346687 := m31_lift_0494_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 479346687 52) = 6 ^ 20 := by rw [m31_lift_0494_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0494_arithmetic.slope_below

theorem m31_lift_0495_arithmetic : RowArithmetic 487735295 125 48 257451098 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0495 : LiftedFamily where
  residue := 487735295
  steps := 125
  odd_inputs := 48
  endpoint := 257451098
  arithmetic := m31_lift_0495_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 487735295 125
    · calc
        collatzIter 487735295 125 = 257451098 := m31_lift_0495_arithmetic.endpoint
        _ < 487735295 := m31_lift_0495_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 487735295 125) = 6 ^ 48 := by rw [m31_lift_0495_arithmetic.odd_inputs]
        _ < 2 ^ 125 := m31_lift_0495_arithmetic.slope_below

theorem m31_lift_0496_arithmetic : RowArithmetic 496123903 52 20 402768397 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0496 : LiftedFamily where
  residue := 496123903
  steps := 52
  odd_inputs := 20
  endpoint := 402768397
  arithmetic := m31_lift_0496_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 496123903 52
    · calc
        collatzIter 496123903 52 = 402768397 := m31_lift_0496_arithmetic.endpoint
        _ < 496123903 := m31_lift_0496_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 496123903 52) = 6 ^ 20 := by rw [m31_lift_0496_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0496_arithmetic.slope_below

theorem m31_lift_0497_arithmetic : RowArithmetic 500318207 65 25 385547464 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0497 : LiftedFamily where
  residue := 500318207
  steps := 65
  odd_inputs := 25
  endpoint := 385547464
  arithmetic := m31_lift_0497_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 500318207 65
    · calc
        collatzIter 500318207 65 = 385547464 := m31_lift_0497_arithmetic.endpoint
        _ < 500318207 := m31_lift_0497_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 500318207 65) = 6 ^ 25 := by rw [m31_lift_0497_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0497_arithmetic.slope_below

theorem m31_lift_0498_arithmetic : RowArithmetic 504512511 55 21 307183892 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0498 : LiftedFamily where
  residue := 504512511
  steps := 55
  odd_inputs := 21
  endpoint := 307183892
  arithmetic := m31_lift_0498_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 504512511 55
    · calc
        collatzIter 504512511 55 = 307183892 := m31_lift_0498_arithmetic.endpoint
        _ < 504512511 := m31_lift_0498_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 504512511 55) = 6 ^ 21 := by rw [m31_lift_0498_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0498_arithmetic.slope_below

theorem m31_lift_0499_arithmetic : RowArithmetic 512901119 73 28 333487051 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0499 : LiftedFamily where
  residue := 512901119
  steps := 73
  odd_inputs := 28
  endpoint := 333487051
  arithmetic := m31_lift_0499_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 512901119 73
    · calc
        collatzIter 512901119 73 = 333487051 := m31_lift_0499_arithmetic.endpoint
        _ < 512901119 := m31_lift_0499_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 512901119 73) = 6 ^ 28 := by rw [m31_lift_0499_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0499_arithmetic.slope_below

theorem m31_lift_0500_arithmetic : RowArithmetic 533872639 101 39 469144760 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0500 : LiftedFamily where
  residue := 533872639
  steps := 101
  odd_inputs := 39
  endpoint := 469144760
  arithmetic := m31_lift_0500_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 533872639 101
    · calc
        collatzIter 533872639 101 = 469144760 := m31_lift_0500_arithmetic.endpoint
        _ < 533872639 := m31_lift_0500_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 533872639 101) = 6 ^ 39 := by rw [m31_lift_0500_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0500_arithmetic.slope_below

theorem m31_lift_0501_arithmetic : RowArithmetic 538066943 81 31 295185776 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0501 : LiftedFamily where
  residue := 538066943
  steps := 81
  odd_inputs := 31
  endpoint := 295185776
  arithmetic := m31_lift_0501_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 538066943 81
    · calc
        collatzIter 538066943 81 = 295185776 := m31_lift_0501_arithmetic.endpoint
        _ < 538066943 := m31_lift_0501_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 538066943 81) = 6 ^ 31 := by rw [m31_lift_0501_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0501_arithmetic.slope_below

theorem m31_lift_0502_arithmetic : RowArithmetic 546455551 88 34 505891915 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0502 : LiftedFamily where
  residue := 546455551
  steps := 88
  odd_inputs := 34
  endpoint := 505891915
  arithmetic := m31_lift_0502_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 546455551 88
    · calc
        collatzIter 546455551 88 = 505891915 := m31_lift_0502_arithmetic.endpoint
        _ < 546455551 := m31_lift_0502_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 546455551 88) = 6 ^ 34 := by rw [m31_lift_0502_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0502_arithmetic.slope_below

theorem m31_lift_0503_arithmetic : RowArithmetic 567427071 52 20 460654466 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0503 : LiftedFamily where
  residue := 567427071
  steps := 52
  odd_inputs := 20
  endpoint := 460654466
  arithmetic := m31_lift_0503_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 567427071 52
    · calc
        collatzIter 567427071 52 = 460654466 := m31_lift_0503_arithmetic.endpoint
        _ < 567427071 := m31_lift_0503_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 567427071 52) = 6 ^ 20 := by rw [m31_lift_0503_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0503_arithmetic.slope_below

theorem m31_lift_0504_arithmetic : RowArithmetic 571621375 57 22 522066970 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0504 : LiftedFamily where
  residue := 571621375
  steps := 57
  odd_inputs := 22
  endpoint := 522066970
  arithmetic := m31_lift_0504_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 571621375 57
    · calc
        collatzIter 571621375 57 = 522066970 := m31_lift_0504_arithmetic.endpoint
        _ < 571621375 := m31_lift_0504_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 571621375 57) = 6 ^ 22 := by rw [m31_lift_0504_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0504_arithmetic.slope_below

theorem m31_lift_0505_arithmetic : RowArithmetic 580009983 60 23 397296271 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0505 : LiftedFamily where
  residue := 580009983
  steps := 60
  odd_inputs := 23
  endpoint := 397296271
  arithmetic := m31_lift_0505_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 580009983 60
    · calc
        collatzIter 580009983 60 = 397296271 := m31_lift_0505_arithmetic.endpoint
        _ < 580009983 := m31_lift_0505_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 580009983 60) = 6 ^ 23 := by rw [m31_lift_0505_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0505_arithmetic.slope_below

theorem m31_lift_0506_arithmetic : RowArithmetic 596787199 52 20 484489906 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0506 : LiftedFamily where
  residue := 596787199
  steps := 52
  odd_inputs := 20
  endpoint := 484489906
  arithmetic := m31_lift_0506_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 596787199 52
    · calc
        collatzIter 596787199 52 = 484489906 := m31_lift_0506_arithmetic.endpoint
        _ < 596787199 := m31_lift_0506_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 596787199 52) = 6 ^ 20 := by rw [m31_lift_0506_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0506_arithmetic.slope_below

theorem m31_lift_0507_arithmetic : RowArithmetic 613564415 104 40 404380898 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0507 : LiftedFamily where
  residue := 613564415
  steps := 104
  odd_inputs := 40
  endpoint := 404380898
  arithmetic := m31_lift_0507_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 613564415 104
    · calc
        collatzIter 613564415 104 = 404380898 := m31_lift_0507_arithmetic.endpoint
        _ < 613564415 := m31_lift_0507_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 613564415 104) = 6 ^ 40 := by rw [m31_lift_0507_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0507_arithmetic.slope_below

theorem m31_lift_0508_arithmetic : RowArithmetic 617758719 52 20 501515221 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0508 : LiftedFamily where
  residue := 617758719
  steps := 52
  odd_inputs := 20
  endpoint := 501515221
  arithmetic := m31_lift_0508_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 617758719 52
    · calc
        collatzIter 617758719 52 = 501515221 := m31_lift_0508_arithmetic.endpoint
        _ < 617758719 := m31_lift_0508_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 617758719 52) = 6 ^ 20 := by rw [m31_lift_0508_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0508_arithmetic.slope_below

theorem m31_lift_0509_arithmetic : RowArithmetic 621953023 65 25 479279801 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0509 : LiftedFamily where
  residue := 621953023
  steps := 65
  odd_inputs := 25
  endpoint := 479279801
  arithmetic := m31_lift_0509_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 621953023 65
    · calc
        collatzIter 621953023 65 = 479279801 := m31_lift_0509_arithmetic.endpoint
        _ < 621953023 := m31_lift_0509_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 621953023 65) = 6 ^ 25 := by rw [m31_lift_0509_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0509_arithmetic.slope_below

theorem m31_lift_0510_arithmetic : RowArithmetic 630341631 55 21 383797807 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0510 : LiftedFamily where
  residue := 630341631
  steps := 55
  odd_inputs := 21
  endpoint := 383797807
  arithmetic := m31_lift_0510_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 630341631 55
    · calc
        collatzIter 630341631 55 = 383797807 := m31_lift_0510_arithmetic.endpoint
        _ < 630341631 := m31_lift_0510_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 630341631 55) = 6 ^ 21 := by rw [m31_lift_0510_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0510_arithmetic.slope_below

theorem m31_lift_0511_arithmetic : RowArithmetic 634535935 68 26 366732187 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0511 : LiftedFamily where
  residue := 634535935
  steps := 68
  odd_inputs := 26
  endpoint := 366732187
  arithmetic := m31_lift_0511_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 634535935 68
    · calc
        collatzIter 634535935 68 = 366732187 := m31_lift_0511_arithmetic.endpoint
        _ < 634535935 := m31_lift_0511_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 634535935 68) = 6 ^ 26 := by rw [m31_lift_0511_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0511_arithmetic.slope_below

theorem m31_lift_0512_arithmetic : RowArithmetic 638730239 104 40 420966896 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0512 : LiftedFamily where
  residue := 638730239
  steps := 104
  odd_inputs := 40
  endpoint := 420966896
  arithmetic := m31_lift_0512_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 638730239 104
    · calc
        collatzIter 638730239 104 = 420966896 := m31_lift_0512_arithmetic.endpoint
        _ < 638730239 := m31_lift_0512_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 638730239 104) = 6 ^ 40 := by rw [m31_lift_0512_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0512_arithmetic.slope_below

theorem m31_lift_0513_arithmetic : RowArithmetic 647118847 75 29 631132633 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0513 : LiftedFamily where
  residue := 647118847
  steps := 75
  odd_inputs := 29
  endpoint := 631132633
  arithmetic := m31_lift_0513_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 647118847 75
    · calc
        collatzIter 647118847 75 = 631132633 := m31_lift_0513_arithmetic.endpoint
        _ < 647118847 := m31_lift_0513_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 647118847 75) = 6 ^ 29 := by rw [m31_lift_0513_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0513_arithmetic.slope_below

theorem m31_lift_0514_arithmetic : RowArithmetic 663896063 57 22 606342277 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0514 : LiftedFamily where
  residue := 663896063
  steps := 57
  odd_inputs := 22
  endpoint := 606342277
  arithmetic := m31_lift_0514_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 663896063 57
    · calc
        collatzIter 663896063 57 = 606342277 := m31_lift_0514_arithmetic.endpoint
        _ < 663896063 := m31_lift_0514_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 663896063 57) = 6 ^ 22 := by rw [m31_lift_0514_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0514_arithmetic.slope_below

theorem m31_lift_0515_arithmetic : RowArithmetic 672284671 55 21 409335779 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0515 : LiftedFamily where
  residue := 672284671
  steps := 55
  odd_inputs := 21
  endpoint := 409335779
  arithmetic := m31_lift_0515_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 672284671 55
    · calc
        collatzIter 672284671 55 = 409335779 := m31_lift_0515_arithmetic.endpoint
        _ < 672284671 := m31_lift_0515_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 672284671 55) = 6 ^ 21 := by rw [m31_lift_0515_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0515_arithmetic.slope_below

theorem m31_lift_0516_arithmetic : RowArithmetic 680673279 52 20 552591164 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0516 : LiftedFamily where
  residue := 680673279
  steps := 52
  odd_inputs := 20
  endpoint := 552591164
  arithmetic := m31_lift_0516_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 680673279 52
    · calc
        collatzIter 680673279 52 = 552591164 := m31_lift_0516_arithmetic.endpoint
        _ < 680673279 := m31_lift_0516_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 680673279 52) = 6 ^ 20 := by rw [m31_lift_0516_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0516_arithmetic.slope_below

theorem m31_lift_0517_arithmetic : RowArithmetic 714227711 60 23 489232969 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0517 : LiftedFamily where
  residue := 714227711
  steps := 60
  odd_inputs := 23
  endpoint := 489232969
  arithmetic := m31_lift_0517_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 714227711 60
    · calc
        collatzIter 714227711 60 = 489232969 := m31_lift_0517_arithmetic.endpoint
        _ < 714227711 := m31_lift_0517_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 714227711 60) = 6 ^ 23 := by rw [m31_lift_0517_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0517_arithmetic.slope_below

theorem m31_lift_0518_arithmetic : RowArithmetic 731004927 55 21 445088939 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0518 : LiftedFamily where
  residue := 731004927
  steps := 55
  odd_inputs := 21
  endpoint := 445088939
  arithmetic := m31_lift_0518_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 731004927 55
    · calc
        collatzIter 731004927 55 = 445088939 := m31_lift_0518_arithmetic.endpoint
        _ < 731004927 := m31_lift_0518_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 731004927 55) = 6 ^ 21 := by rw [m31_lift_0518_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0518_arithmetic.slope_below

theorem m31_lift_0519_arithmetic : RowArithmetic 751976447 57 22 686786888 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0519 : LiftedFamily where
  residue := 751976447
  steps := 57
  odd_inputs := 22
  endpoint := 686786888
  arithmetic := m31_lift_0519_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 751976447 57
    · calc
        collatzIter 751976447 57 = 686786888 := m31_lift_0519_arithmetic.endpoint
        _ < 751976447 := m31_lift_0519_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 751976447 57) = 6 ^ 22 := by rw [m31_lift_0519_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0519_arithmetic.slope_below

theorem m31_lift_0520_arithmetic : RowArithmetic 768753663 60 23 526582253 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0520 : LiftedFamily where
  residue := 768753663
  steps := 60
  odd_inputs := 23
  endpoint := 526582253
  arithmetic := m31_lift_0520_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 768753663 60
    · calc
        collatzIter 768753663 60 = 526582253 := m31_lift_0520_arithmetic.endpoint
        _ < 768753663 := m31_lift_0520_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 768753663 60) = 6 ^ 23 := by rw [m31_lift_0520_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0520_arithmetic.slope_below

theorem m31_lift_0521_arithmetic : RowArithmetic 772947967 75 29 753853312 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0521 : LiftedFamily where
  residue := 772947967
  steps := 75
  odd_inputs := 29
  endpoint := 753853312
  arithmetic := m31_lift_0521_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 772947967 75
    · calc
        collatzIter 772947967 75 = 753853312 := m31_lift_0521_arithmetic.endpoint
        _ < 772947967 := m31_lift_0521_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 772947967 75) = 6 ^ 29 := by rw [m31_lift_0521_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0521_arithmetic.slope_below

theorem m31_lift_0522_arithmetic : RowArithmetic 781336575 81 31 428644513 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0522 : LiftedFamily where
  residue := 781336575
  steps := 81
  odd_inputs := 31
  endpoint := 428644513
  arithmetic := m31_lift_0522_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 781336575 81
    · calc
        collatzIter 781336575 81 = 428644513 := m31_lift_0522_arithmetic.endpoint
        _ < 781336575 := m31_lift_0522_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 781336575 81) = 6 ^ 31 := by rw [m31_lift_0522_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0522_arithmetic.slope_below

theorem m31_lift_0523_arithmetic : RowArithmetic 798113791 52 20 647932925 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0523 : LiftedFamily where
  residue := 798113791
  steps := 52
  odd_inputs := 20
  endpoint := 647932925
  arithmetic := m31_lift_0523_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 798113791 52
    · calc
        collatzIter 798113791 52 = 647932925 := m31_lift_0523_arithmetic.endpoint
        _ < 798113791 := m31_lift_0523_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 798113791 52) = 6 ^ 20 := by rw [m31_lift_0523_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0523_arithmetic.slope_below

theorem m31_lift_0524_arithmetic : RowArithmetic 802308095 52 20 651337988 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0524 : LiftedFamily where
  residue := 802308095
  steps := 52
  odd_inputs := 20
  endpoint := 651337988
  arithmetic := m31_lift_0524_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 802308095 52
    · calc
        collatzIter 802308095 52 = 651337988 := m31_lift_0524_arithmetic.endpoint
        _ < 802308095 := m31_lift_0524_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 802308095 52) = 6 ^ 20 := by rw [m31_lift_0524_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0524_arithmetic.slope_below

theorem m31_lift_0525_arithmetic : RowArithmetic 806502399 63 24 414329587 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0525 : LiftedFamily where
  residue := 806502399
  steps := 63
  odd_inputs := 24
  endpoint := 414329587
  arithmetic := m31_lift_0525_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 806502399 63
    · calc
        collatzIter 806502399 63 = 414329587 := m31_lift_0525_arithmetic.endpoint
        _ < 806502399 := m31_lift_0525_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 806502399 63) = 6 ^ 24 := by rw [m31_lift_0525_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0525_arithmetic.slope_below

theorem m31_lift_0526_arithmetic : RowArithmetic 814891007 81 31 447052615 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0526 : LiftedFamily where
  residue := 814891007
  steps := 81
  odd_inputs := 31
  endpoint := 447052615
  arithmetic := m31_lift_0526_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 814891007 81
    · calc
        collatzIter 814891007 81 = 447052615 := m31_lift_0526_arithmetic.endpoint
        _ < 814891007 := m31_lift_0526_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 814891007 81) = 6 ^ 31 := by rw [m31_lift_0526_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0526_arithmetic.slope_below

theorem m31_lift_0527_arithmetic : RowArithmetic 835862527 52 20 678578491 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0527 : LiftedFamily where
  residue := 835862527
  steps := 52
  odd_inputs := 20
  endpoint := 678578491
  arithmetic := m31_lift_0527_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 835862527 52
    · calc
        collatzIter 835862527 52 = 678578491 := m31_lift_0527_arithmetic.endpoint
        _ < 835862527 := m31_lift_0527_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 835862527 52) = 6 ^ 20 := by rw [m31_lift_0527_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0527_arithmetic.slope_below

theorem m31_lift_0528_arithmetic : RowArithmetic 840056831 52 20 681983554 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0528 : LiftedFamily where
  residue := 840056831
  steps := 52
  odd_inputs := 20
  endpoint := 681983554
  arithmetic := m31_lift_0528_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 840056831 52
    · calc
        collatzIter 840056831 52 = 681983554 := m31_lift_0528_arithmetic.endpoint
        _ < 840056831 := m31_lift_0528_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 840056831 52) = 6 ^ 20 := by rw [m31_lift_0528_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0528_arithmetic.slope_below

theorem m31_lift_0529_arithmetic : RowArithmetic 848445439 86 33 523643306 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0529 : LiftedFamily where
  residue := 848445439
  steps := 86
  odd_inputs := 33
  endpoint := 523643306
  arithmetic := m31_lift_0529_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 848445439 86
    · calc
        collatzIter 848445439 86 = 523643306 := m31_lift_0529_arithmetic.endpoint
        _ < 848445439 := m31_lift_0529_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 848445439 86) = 6 ^ 33 := by rw [m31_lift_0529_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0529_arithmetic.slope_below

theorem m31_lift_0530_arithmetic : RowArithmetic 881999871 96 37 688946032 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0530 : LiftedFamily where
  residue := 881999871
  steps := 96
  odd_inputs := 37
  endpoint := 688946032
  arithmetic := m31_lift_0530_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 881999871 96
    · calc
        collatzIter 881999871 96 = 688946032 := m31_lift_0530_arithmetic.endpoint
        _ < 881999871 := m31_lift_0530_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 881999871 96) = 6 ^ 37 := by rw [m31_lift_0530_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0530_arithmetic.slope_below

theorem m31_lift_0531_arithmetic : RowArithmetic 886194175 96 37 692222279 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0531 : LiftedFamily where
  residue := 886194175
  steps := 96
  odd_inputs := 37
  endpoint := 692222279
  arithmetic := m31_lift_0531_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 886194175 96
    · calc
        collatzIter 886194175 96 = 692222279 := m31_lift_0531_arithmetic.endpoint
        _ < 886194175 := m31_lift_0531_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 886194175 96) = 6 ^ 37 := by rw [m31_lift_0531_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0531_arithmetic.slope_below

theorem m31_lift_0532_arithmetic : RowArithmetic 890388479 99 38 521623895 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0532 : LiftedFamily where
  residue := 890388479
  steps := 99
  odd_inputs := 38
  endpoint := 521623895
  arithmetic := m31_lift_0532_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 890388479 99
    · calc
        collatzIter 890388479 99 = 521623895 := m31_lift_0532_arithmetic.endpoint
        _ < 890388479 := m31_lift_0532_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 890388479 99) = 6 ^ 38 := by rw [m31_lift_0532_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0532_arithmetic.slope_below

theorem m31_lift_0533_arithmetic : RowArithmetic 898777087 55 21 547240826 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0533 : LiftedFamily where
  residue := 898777087
  steps := 55
  odd_inputs := 21
  endpoint := 547240826
  arithmetic := m31_lift_0533_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 898777087 55
    · calc
        collatzIter 898777087 55 = 547240826 := m31_lift_0533_arithmetic.endpoint
        _ < 898777087 := m31_lift_0533_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 898777087 55) = 6 ^ 21 := by rw [m31_lift_0533_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0533_arithmetic.slope_below

theorem m31_lift_0534_arithmetic : RowArithmetic 902971391 86 33 557295617 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0534 : LiftedFamily where
  residue := 902971391
  steps := 86
  odd_inputs := 33
  endpoint := 557295617
  arithmetic := m31_lift_0534_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 902971391 86
    · calc
        collatzIter 902971391 86 = 557295617 := m31_lift_0534_arithmetic.endpoint
        _ < 902971391 := m31_lift_0534_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 902971391 86) = 6 ^ 33 := by rw [m31_lift_0534_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0534_arithmetic.slope_below

theorem m31_lift_0535_arithmetic : RowArithmetic 907165695 52 20 736464560 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0535 : LiftedFamily where
  residue := 907165695
  steps := 52
  odd_inputs := 20
  endpoint := 736464560
  arithmetic := m31_lift_0535_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 907165695 52
    · calc
        collatzIter 907165695 52 = 736464560 := m31_lift_0535_arithmetic.endpoint
        _ < 907165695 := m31_lift_0535_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 907165695 52) = 6 ^ 20 := by rw [m31_lift_0535_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0535_arithmetic.slope_below

theorem m31_lift_0536_arithmetic : RowArithmetic 915554303 75 29 892936747 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0536 : LiftedFamily where
  residue := 915554303
  steps := 75
  odd_inputs := 29
  endpoint := 892936747
  arithmetic := m31_lift_0536_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 915554303 75
    · calc
        collatzIter 915554303 75 = 892936747 := m31_lift_0536_arithmetic.endpoint
        _ < 915554303 := m31_lift_0536_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 915554303 75) = 6 ^ 29 := by rw [m31_lift_0536_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0536_arithmetic.slope_below

theorem m31_lift_0537_arithmetic : RowArithmetic 932331519 73 28 606199669 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0537 : LiftedFamily where
  residue := 932331519
  steps := 73
  odd_inputs := 28
  endpoint := 606199669
  arithmetic := m31_lift_0537_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 932331519 73
    · calc
        collatzIter 932331519 73 = 606199669 := m31_lift_0537_arithmetic.endpoint
        _ < 932331519 := m31_lift_0537_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 932331519 73) = 6 ^ 28 := by rw [m31_lift_0537_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0537_arithmetic.slope_below

theorem m31_lift_0538_arithmetic : RowArithmetic 974274559 55 21 593209175 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0538 : LiftedFamily where
  residue := 974274559
  steps := 55
  odd_inputs := 21
  endpoint := 593209175
  arithmetic := m31_lift_0538_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 974274559 55
    · calc
        collatzIter 974274559 55 = 593209175 := m31_lift_0538_arithmetic.endpoint
        _ < 974274559 := m31_lift_0538_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 974274559 55) = 6 ^ 21 := by rw [m31_lift_0538_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0538_arithmetic.slope_below

theorem m31_lift_0539_arithmetic : RowArithmetic 982663167 99 38 575681963 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0539 : LiftedFamily where
  residue := 982663167
  steps := 99
  odd_inputs := 38
  endpoint := 575681963
  arithmetic := m31_lift_0539_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 982663167 99
    · calc
        collatzIter 982663167 99 = 575681963 := m31_lift_0539_arithmetic.endpoint
        _ < 982663167 := m31_lift_0539_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 982663167 99) = 6 ^ 38 := by rw [m31_lift_0539_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0539_arithmetic.slope_below

theorem m31_lift_0540_arithmetic : RowArithmetic 999440383 119 46 937874932 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0540 : LiftedFamily where
  residue := 999440383
  steps := 119
  odd_inputs := 46
  endpoint := 937874932
  arithmetic := m31_lift_0540_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 999440383 119
    · calc
        collatzIter 999440383 119 = 937874932 := m31_lift_0540_arithmetic.endpoint
        _ < 999440383 := m31_lift_0540_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 999440383 119) = 6 ^ 46 := by rw [m31_lift_0540_arithmetic.odd_inputs]
        _ < 2 ^ 119 := m31_lift_0540_arithmetic.slope_below

theorem m31_lift_0541_arithmetic : RowArithmetic 1016217599 81 31 557501225 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0541 : LiftedFamily where
  residue := 1016217599
  steps := 81
  odd_inputs := 31
  endpoint := 557501225
  arithmetic := m31_lift_0541_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1016217599 81
    · calc
        collatzIter 1016217599 81 = 557501225 := m31_lift_0541_arithmetic.endpoint
        _ < 1016217599 := m31_lift_0541_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1016217599 81) = 6 ^ 31 := by rw [m31_lift_0541_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0541_arithmetic.slope_below

theorem m31_lift_0542_arithmetic : RowArithmetic 1024606207 57 22 935782112 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0542 : LiftedFamily where
  residue := 1024606207
  steps := 57
  odd_inputs := 22
  endpoint := 935782112
  arithmetic := m31_lift_0542_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1024606207 57
    · calc
        collatzIter 1024606207 57 = 935782112 := m31_lift_0542_arithmetic.endpoint
        _ < 1024606207 := m31_lift_0542_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1024606207 57) = 6 ^ 22 := by rw [m31_lift_0542_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0542_arithmetic.slope_below

theorem m31_lift_0543_arithmetic : RowArithmetic 1032994815 52 20 838616447 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0543 : LiftedFamily where
  residue := 1032994815
  steps := 52
  odd_inputs := 20
  endpoint := 838616447
  arithmetic := m31_lift_0543_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1032994815 52
    · calc
        collatzIter 1032994815 52 = 838616447 := m31_lift_0543_arithmetic.endpoint
        _ < 1032994815 := m31_lift_0543_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1032994815 52) = 6 ^ 20 := by rw [m31_lift_0543_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0543_arithmetic.slope_below

theorem m31_lift_0544_arithmetic : RowArithmetic 1037189119 60 23 710455649 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0544 : LiftedFamily where
  residue := 1037189119
  steps := 60
  odd_inputs := 23
  endpoint := 710455649
  arithmetic := m31_lift_0544_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1037189119 60
    · calc
        collatzIter 1037189119 60 = 710455649 := m31_lift_0544_arithmetic.endpoint
        _ < 1037189119 := m31_lift_0544_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1037189119 60) = 6 ^ 23 := by rw [m31_lift_0544_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0544_arithmetic.slope_below

theorem m31_lift_0545_arithmetic : RowArithmetic 1049772031 83 32 863863990 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0545 : LiftedFamily where
  residue := 1049772031
  steps := 83
  odd_inputs := 32
  endpoint := 863863990
  arithmetic := m31_lift_0545_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1049772031 83
    · calc
        collatzIter 1049772031 83 = 863863990 := m31_lift_0545_arithmetic.endpoint
        _ < 1049772031 := m31_lift_0545_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1049772031 83) = 6 ^ 32 := by rw [m31_lift_0545_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0545_arithmetic.slope_below

theorem m31_lift_0546_arithmetic : RowArithmetic 1070743551 52 20 869262013 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0546 : LiftedFamily where
  residue := 1070743551
  steps := 52
  odd_inputs := 20
  endpoint := 869262013
  arithmetic := m31_lift_0546_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1070743551 52
    · calc
        collatzIter 1070743551 52 = 869262013 := m31_lift_0546_arithmetic.endpoint
        _ < 1070743551 := m31_lift_0546_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1070743551 52) = 6 ^ 20 := by rw [m31_lift_0546_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0546_arithmetic.slope_below

theorem m31_lift_0547_arithmetic : RowArithmetic 1074937855 52 20 872667076 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0547 : LiftedFamily where
  residue := 1074937855
  steps := 52
  odd_inputs := 20
  endpoint := 872667076
  arithmetic := m31_lift_0547_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1074937855 52
    · calc
        collatzIter 1074937855 52 = 872667076 := m31_lift_0547_arithmetic.endpoint
        _ < 1074937855 := m31_lift_0547_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1074937855 52) = 6 ^ 20 := by rw [m31_lift_0547_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0547_arithmetic.slope_below

theorem m31_lift_0548_arithmetic : RowArithmetic 1083326463 57 22 989411852 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0548 : LiftedFamily where
  residue := 1083326463
  steps := 57
  odd_inputs := 22
  endpoint := 989411852
  arithmetic := m31_lift_0548_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1083326463 57
    · calc
        collatzIter 1083326463 57 = 989411852 := m31_lift_0548_arithmetic.endpoint
        _ < 1083326463 := m31_lift_0548_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1083326463 57) = 6 ^ 22 := by rw [m31_lift_0548_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0548_arithmetic.slope_below

theorem m31_lift_0549_arithmetic : RowArithmetic 1108492287 83 32 912185257 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0549 : LiftedFamily where
  residue := 1108492287
  steps := 83
  odd_inputs := 32
  endpoint := 912185257
  arithmetic := m31_lift_0549_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1108492287 83
    · calc
        collatzIter 1108492287 83 = 912185257 := m31_lift_0549_arithmetic.endpoint
        _ < 1108492287 := m31_lift_0549_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1108492287 83) = 6 ^ 32 := by rw [m31_lift_0549_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0549_arithmetic.slope_below

theorem m31_lift_0550_arithmetic : RowArithmetic 1116880895 57 22 1020057418 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0550 : LiftedFamily where
  residue := 1116880895
  steps := 57
  odd_inputs := 22
  endpoint := 1020057418
  arithmetic := m31_lift_0550_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1116880895 57
    · calc
        collatzIter 1116880895 57 = 1020057418 := m31_lift_0550_arithmetic.endpoint
        _ < 1116880895 := m31_lift_0550_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1116880895 57) = 6 ^ 22 := by rw [m31_lift_0550_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0550_arithmetic.slope_below

theorem m31_lift_0551_arithmetic : RowArithmetic 1133658111 63 24 582401363 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0551 : LiftedFamily where
  residue := 1133658111
  steps := 63
  odd_inputs := 24
  endpoint := 582401363
  arithmetic := m31_lift_0551_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1133658111 63
    · calc
        collatzIter 1133658111 63 = 582401363 := m31_lift_0551_arithmetic.endpoint
        _ < 1133658111 := m31_lift_0551_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1133658111 63) = 6 ^ 24 := by rw [m31_lift_0551_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0551_arithmetic.slope_below

theorem m31_lift_0552_arithmetic : RowArithmetic 1150435327 145 56 972708836 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0552 : LiftedFamily where
  residue := 1150435327
  steps := 145
  odd_inputs := 56
  endpoint := 972708836
  arithmetic := m31_lift_0552_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1150435327 145
    · calc
        collatzIter 1150435327 145 = 972708836 := m31_lift_0552_arithmetic.endpoint
        _ < 1150435327 := m31_lift_0552_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1150435327 145) = 6 ^ 56 := by rw [m31_lift_0552_arithmetic.odd_inputs]
        _ < 2 ^ 145 := m31_lift_0552_arithmetic.slope_below

theorem m31_lift_0553_arithmetic : RowArithmetic 1154629631 52 20 937363271 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0553 : LiftedFamily where
  residue := 1154629631
  steps := 52
  odd_inputs := 20
  endpoint := 937363271
  arithmetic := m31_lift_0553_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1154629631 52
    · calc
        collatzIter 1154629631 52 = 937363271 := m31_lift_0553_arithmetic.endpoint
        _ < 1154629631 := m31_lift_0553_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1154629631 52) = 6 ^ 20 := by rw [m31_lift_0553_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0553_arithmetic.slope_below

theorem m31_lift_0554_arithmetic : RowArithmetic 1158823935 70 27 1004619310 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0554 : LiftedFamily where
  residue := 1158823935
  steps := 70
  odd_inputs := 27
  endpoint := 1004619310
  arithmetic := m31_lift_0554_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1158823935 70
    · calc
        collatzIter 1158823935 70 = 1004619310 := m31_lift_0554_arithmetic.endpoint
        _ < 1158823935 := m31_lift_0554_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1158823935 70) = 6 ^ 27 := by rw [m31_lift_0554_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0554_arithmetic.slope_below

theorem m31_lift_0555_arithmetic : RowArithmetic 1167212543 88 34 1080569839 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0555 : LiftedFamily where
  residue := 1167212543
  steps := 88
  odd_inputs := 34
  endpoint := 1080569839
  arithmetic := m31_lift_0555_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1167212543 88
    · calc
        collatzIter 1167212543 88 = 1080569839 := m31_lift_0555_arithmetic.endpoint
        _ < 1167212543 := m31_lift_0555_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1167212543 88) = 6 ^ 34 := by rw [m31_lift_0555_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0555_arithmetic.slope_below

theorem m31_lift_0556_arithmetic : RowArithmetic 1171406847 68 26 677018543 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0556 : LiftedFamily where
  residue := 1171406847
  steps := 68
  odd_inputs := 26
  endpoint := 677018543
  arithmetic := m31_lift_0556_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1171406847 68
    · calc
        collatzIter 1171406847 68 = 677018543 := m31_lift_0556_arithmetic.endpoint
        _ < 1171406847 := m31_lift_0556_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1171406847 68) = 6 ^ 26 := by rw [m31_lift_0556_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0556_arithmetic.slope_below

theorem m31_lift_0557_arithmetic : RowArithmetic 1175601151 65 25 905923540 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0557 : LiftedFamily where
  residue := 1175601151
  steps := 65
  odd_inputs := 25
  endpoint := 905923540
  arithmetic := m31_lift_0557_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1175601151 65
    · calc
        collatzIter 1175601151 65 = 905923540 := m31_lift_0557_arithmetic.endpoint
        _ < 1175601151 := m31_lift_0557_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1175601151 65) = 6 ^ 25 := by rw [m31_lift_0557_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0557_arithmetic.slope_below

theorem m31_lift_0558_arithmetic : RowArithmetic 1183989759 101 39 1040440262 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0558 : LiftedFamily where
  residue := 1183989759
  steps := 101
  odd_inputs := 39
  endpoint := 1040440262
  arithmetic := m31_lift_0558_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1183989759 101
    · calc
        collatzIter 1183989759 101 = 1040440262 := m31_lift_0558_arithmetic.endpoint
        _ < 1183989759 := m31_lift_0558_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1183989759 101) = 6 ^ 39 := by rw [m31_lift_0558_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0558_arithmetic.slope_below

theorem m31_lift_0559_arithmetic : RowArithmetic 1200766975 55 21 731114222 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0559 : LiftedFamily where
  residue := 1200766975
  steps := 55
  odd_inputs := 21
  endpoint := 731114222
  arithmetic := m31_lift_0559_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1200766975 55
    · calc
        collatzIter 1200766975 55 = 731114222 := m31_lift_0559_arithmetic.endpoint
        _ < 1200766975 := m31_lift_0559_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1200766975 55) = 6 ^ 21 := by rw [m31_lift_0559_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0559_arithmetic.slope_below

theorem m31_lift_0560_arithmetic : RowArithmetic 1209155583 57 22 1104332725 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0560 : LiftedFamily where
  residue := 1209155583
  steps := 57
  odd_inputs := 22
  endpoint := 1104332725
  arithmetic := m31_lift_0560_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1209155583 57
    · calc
        collatzIter 1209155583 57 = 1104332725 := m31_lift_0560_arithmetic.endpoint
        _ < 1209155583 := m31_lift_0560_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1209155583 57) = 6 ^ 22 := by rw [m31_lift_0560_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0560_arithmetic.slope_below

theorem m31_lift_0561_arithmetic : RowArithmetic 1238515711 57 22 1131147595 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0561 : LiftedFamily where
  residue := 1238515711
  steps := 57
  odd_inputs := 22
  endpoint := 1131147595
  arithmetic := m31_lift_0561_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1238515711 57
    · calc
        collatzIter 1238515711 57 = 1131147595 := m31_lift_0561_arithmetic.endpoint
        _ < 1238515711 := m31_lift_0561_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1238515711 57) = 6 ^ 22 := by rw [m31_lift_0561_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0561_arithmetic.slope_below

theorem m31_lift_0562_arithmetic : RowArithmetic 1251098623 52 20 1015679717 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0562 : LiftedFamily where
  residue := 1251098623
  steps := 52
  odd_inputs := 20
  endpoint := 1015679717
  arithmetic := m31_lift_0562_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1251098623 52
    · calc
        collatzIter 1251098623 52 = 1015679717 := m31_lift_0562_arithmetic.endpoint
        _ < 1251098623 := m31_lift_0562_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1251098623 52) = 6 ^ 20 := by rw [m31_lift_0562_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0562_arithmetic.slope_below

theorem m31_lift_0563_arithmetic : RowArithmetic 1267875839 57 22 1157962465 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0563 : LiftedFamily where
  residue := 1267875839
  steps := 57
  odd_inputs := 22
  endpoint := 1157962465
  arithmetic := m31_lift_0563_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1267875839 57
    · calc
        collatzIter 1267875839 57 = 1157962465 := m31_lift_0563_arithmetic.endpoint
        _ < 1267875839 := m31_lift_0563_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1267875839 57) = 6 ^ 22 := by rw [m31_lift_0563_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0563_arithmetic.slope_below

theorem m31_lift_0564_arithmetic : RowArithmetic 1284653055 57 22 1173285248 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0564 : LiftedFamily where
  residue := 1284653055
  steps := 57
  odd_inputs := 22
  endpoint := 1173285248
  arithmetic := m31_lift_0564_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1284653055 57
    · calc
        collatzIter 1284653055 57 = 1173285248 := m31_lift_0564_arithmetic.endpoint
        _ < 1284653055 := m31_lift_0564_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1284653055 57) = 6 ^ 22 := by rw [m31_lift_0564_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0564_arithmetic.slope_below

theorem m31_lift_0565_arithmetic : RowArithmetic 1305624575 52 20 1059945535 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0565 : LiftedFamily where
  residue := 1305624575
  steps := 52
  odd_inputs := 20
  endpoint := 1059945535
  arithmetic := m31_lift_0565_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1305624575 52
    · calc
        collatzIter 1305624575 52 = 1059945535 := m31_lift_0565_arithmetic.endpoint
        _ < 1305624575 := m31_lift_0565_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1305624575 52) = 6 ^ 20 := by rw [m31_lift_0565_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0565_arithmetic.slope_below

theorem m31_lift_0566_arithmetic : RowArithmetic 1309818879 60 23 897202067 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0566 : LiftedFamily where
  residue := 1309818879
  steps := 60
  odd_inputs := 23
  endpoint := 897202067
  arithmetic := m31_lift_0566_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1309818879 60
    · calc
        collatzIter 1309818879 60 = 897202067 := m31_lift_0566_arithmetic.endpoint
        _ < 1309818879 := m31_lift_0566_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1309818879 60) = 6 ^ 23 := by rw [m31_lift_0566_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0566_arithmetic.slope_below

theorem m31_lift_0567_arithmetic : RowArithmetic 1318207487 57 22 1203930814 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0567 : LiftedFamily where
  residue := 1318207487
  steps := 57
  odd_inputs := 22
  endpoint := 1203930814
  arithmetic := m31_lift_0567_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1318207487 57
    · calc
        collatzIter 1318207487 57 = 1203930814 := m31_lift_0567_arithmetic.endpoint
        _ < 1318207487 := m31_lift_0567_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1318207487 57) = 6 ^ 22 := by rw [m31_lift_0567_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0567_arithmetic.slope_below

theorem m31_lift_0568_arithmetic : RowArithmetic 1343373311 70 27 1164610712 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0568 : LiftedFamily where
  residue := 1343373311
  steps := 70
  odd_inputs := 27
  endpoint := 1164610712
  arithmetic := m31_lift_0568_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1343373311 70
    · calc
        collatzIter 1343373311 70 = 1164610712 := m31_lift_0568_arithmetic.endpoint
        _ < 1343373311 := m31_lift_0568_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1343373311 70) = 6 ^ 27 := by rw [m31_lift_0568_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0568_arithmetic.slope_below

theorem m31_lift_0569_arithmetic : RowArithmetic 1351761919 55 21 823050920 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0569 : LiftedFamily where
  residue := 1351761919
  steps := 55
  odd_inputs := 21
  endpoint := 823050920
  arithmetic := m31_lift_0569_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1351761919 55
    · calc
        collatzIter 1351761919 55 = 823050920 := m31_lift_0569_arithmetic.endpoint
        _ < 1351761919 := m31_lift_0569_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1351761919 55) = 6 ^ 21 := by rw [m31_lift_0569_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0569_arithmetic.slope_below

theorem m31_lift_0570_arithmetic : RowArithmetic 1372733439 70 27 1190063890 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0570 : LiftedFamily where
  residue := 1372733439
  steps := 70
  odd_inputs := 27
  endpoint := 1190063890
  arithmetic := m31_lift_0570_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1372733439 70
    · calc
        collatzIter 1372733439 70 = 1190063890 := m31_lift_0570_arithmetic.endpoint
        _ < 1372733439 := m31_lift_0570_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1372733439 70) = 6 ^ 27 := by rw [m31_lift_0570_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0570_arithmetic.slope_below

theorem m31_lift_0571_arithmetic : RowArithmetic 1376927743 52 20 1117831604 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0571 : LiftedFamily where
  residue := 1376927743
  steps := 52
  odd_inputs := 20
  endpoint := 1117831604
  arithmetic := m31_lift_0571_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1376927743 52
    · calc
        collatzIter 1376927743 52 = 1117831604 := m31_lift_0571_arithmetic.endpoint
        _ < 1376927743 := m31_lift_0571_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1376927743 52) = 6 ^ 20 := by rw [m31_lift_0571_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0571_arithmetic.slope_below

theorem m31_lift_0572_arithmetic : RowArithmetic 1402093567 55 21 853696486 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0572 : LiftedFamily where
  residue := 1402093567
  steps := 55
  odd_inputs := 21
  endpoint := 853696486
  arithmetic := m31_lift_0572_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1402093567 55
    · calc
        collatzIter 1402093567 55 = 853696486 := m31_lift_0572_arithmetic.endpoint
        _ < 1402093567 := m31_lift_0572_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1402093567 55) = 6 ^ 21 := by rw [m31_lift_0572_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0572_arithmetic.slope_below

theorem m31_lift_0573_arithmetic : RowArithmetic 1418870783 88 34 1313547376 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0573 : LiftedFamily where
  residue := 1418870783
  steps := 88
  odd_inputs := 34
  endpoint := 1313547376
  arithmetic := m31_lift_0573_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1418870783 88
    · calc
        collatzIter 1418870783 88 = 1313547376 := m31_lift_0573_arithmetic.endpoint
        _ < 1418870783 := m31_lift_0573_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1418870783 88) = 6 ^ 34 := by rw [m31_lift_0573_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0573_arithmetic.slope_below

theorem m31_lift_0574_arithmetic : RowArithmetic 1423065087 52 20 1155287296 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0574 : LiftedFamily where
  residue := 1423065087
  steps := 52
  odd_inputs := 20
  endpoint := 1155287296
  arithmetic := m31_lift_0574_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1423065087 52
    · calc
        collatzIter 1423065087 52 = 1155287296 := m31_lift_0574_arithmetic.endpoint
        _ < 1423065087 := m31_lift_0574_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1423065087 52) = 6 ^ 20 := by rw [m31_lift_0574_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0574_arithmetic.slope_below

theorem m31_lift_0575_arithmetic : RowArithmetic 1427259391 52 20 1158692359 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0575 : LiftedFamily where
  residue := 1427259391
  steps := 52
  odd_inputs := 20
  endpoint := 1158692359
  arithmetic := m31_lift_0575_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1427259391 52
    · calc
        collatzIter 1427259391 52 = 1158692359 := m31_lift_0575_arithmetic.endpoint
        _ < 1427259391 := m31_lift_0575_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1427259391 52) = 6 ^ 20 := by rw [m31_lift_0575_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0575_arithmetic.slope_below

theorem m31_lift_0576_arithmetic : RowArithmetic 1435647999 88 34 1329079213 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0576 : LiftedFamily where
  residue := 1435647999
  steps := 88
  odd_inputs := 34
  endpoint := 1329079213
  arithmetic := m31_lift_0576_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1435647999 88
    · calc
        collatzIter 1435647999 88 = 1329079213 := m31_lift_0576_arithmetic.endpoint
        _ < 1435647999 := m31_lift_0576_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1435647999 88) = 6 ^ 34 := by rw [m31_lift_0576_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0576_arithmetic.slope_below

theorem m31_lift_0577_arithmetic : RowArithmetic 1439842303 57 22 1315020991 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0577 : LiftedFamily where
  residue := 1439842303
  steps := 57
  odd_inputs := 22
  endpoint := 1315020991
  arithmetic := m31_lift_0577_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1439842303 57
    · calc
        collatzIter 1439842303 57 = 1315020991 := m31_lift_0577_arithmetic.endpoint
        _ < 1439842303 := m31_lift_0577_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1439842303 57) = 6 ^ 22 := by rw [m31_lift_0577_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0577_arithmetic.slope_below

theorem m31_lift_0578_arithmetic : RowArithmetic 1444036607 60 23 989138765 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0578 : LiftedFamily where
  residue := 1444036607
  steps := 60
  odd_inputs := 23
  endpoint := 989138765
  arithmetic := m31_lift_0578_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1444036607 60
    · calc
        collatzIter 1444036607 60 = 989138765 := m31_lift_0578_arithmetic.endpoint
        _ < 1444036607 := m31_lift_0578_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1444036607 60) = 6 ^ 23 := by rw [m31_lift_0578_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0578_arithmetic.slope_below

theorem m31_lift_0579_arithmetic : RowArithmetic 1452425215 83 32 1195209820 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0579 : LiftedFamily where
  residue := 1452425215
  steps := 83
  odd_inputs := 32
  endpoint := 1195209820
  arithmetic := m31_lift_0579_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1452425215 83
    · calc
        collatzIter 1452425215 83 = 1195209820 := m31_lift_0579_arithmetic.endpoint
        _ < 1452425215 := m31_lift_0579_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1452425215 83) = 6 ^ 32 := by rw [m31_lift_0579_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0579_arithmetic.slope_below

theorem m31_lift_0580_arithmetic : RowArithmetic 1469202431 60 23 1006376896 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0580 : LiftedFamily where
  residue := 1469202431
  steps := 60
  odd_inputs := 23
  endpoint := 1006376896
  arithmetic := m31_lift_0580_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1469202431 60
    · calc
        collatzIter 1469202431 60 = 1006376896 := m31_lift_0580_arithmetic.endpoint
        _ < 1469202431 := m31_lift_0580_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1469202431 60) = 6 ^ 23 := by rw [m31_lift_0580_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0580_arithmetic.slope_below

theorem m31_lift_0581_arithmetic : RowArithmetic 1473396735 60 23 1009249918 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0581 : LiftedFamily where
  residue := 1473396735
  steps := 60
  odd_inputs := 23
  endpoint := 1009249918
  arithmetic := m31_lift_0581_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1473396735 60
    · calc
        collatzIter 1473396735 60 = 1009249918 := m31_lift_0581_arithmetic.endpoint
        _ < 1473396735 := m31_lift_0581_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1473396735 60) = 6 ^ 23 := by rw [m31_lift_0581_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0581_arithmetic.slope_below

theorem m31_lift_0582_arithmetic : RowArithmetic 1519534079 75 29 1481996000 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0582 : LiftedFamily where
  residue := 1519534079
  steps := 75
  odd_inputs := 29
  endpoint := 1481996000
  arithmetic := m31_lift_0582_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1519534079 75
    · calc
        collatzIter 1519534079 75 = 1481996000 := m31_lift_0582_arithmetic.endpoint
        _ < 1519534079 := m31_lift_0582_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1519534079 75) = 6 ^ 29 := by rw [m31_lift_0582_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0582_arithmetic.slope_below

theorem m31_lift_0583_arithmetic : RowArithmetic 1536311295 73 28 998905838 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0583 : LiftedFamily where
  residue := 1536311295
  steps := 73
  odd_inputs := 28
  endpoint := 998905838
  arithmetic := m31_lift_0583_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1536311295 73
    · calc
        collatzIter 1536311295 73 = 998905838 := m31_lift_0583_arithmetic.endpoint
        _ < 1536311295 := m31_lift_0583_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1536311295 73) = 6 ^ 28 := by rw [m31_lift_0583_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0583_arithmetic.slope_below

theorem m31_lift_0584_arithmetic : RowArithmetic 1553088511 55 21 945633184 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0584 : LiftedFamily where
  residue := 1553088511
  steps := 55
  odd_inputs := 21
  endpoint := 945633184
  arithmetic := m31_lift_0584_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1553088511 55
    · calc
        collatzIter 1553088511 55 = 945633184 := m31_lift_0584_arithmetic.endpoint
        _ < 1553088511 := m31_lift_0584_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1553088511 55) = 6 ^ 21 := by rw [m31_lift_0584_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0584_arithmetic.slope_below

theorem m31_lift_0585_arithmetic : RowArithmetic 1561477119 68 26 902460974 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0585 : LiftedFamily where
  residue := 1561477119
  steps := 68
  odd_inputs := 26
  endpoint := 902460974
  arithmetic := m31_lift_0585_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1561477119 68
    · calc
        collatzIter 1561477119 68 = 902460974 := m31_lift_0585_arithmetic.endpoint
        _ < 1561477119 := m31_lift_0585_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1561477119 68) = 6 ^ 26 := by rw [m31_lift_0585_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0585_arithmetic.slope_below

theorem m31_lift_0586_arithmetic : RowArithmetic 1574060031 83 32 1295303873 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0586 : LiftedFamily where
  residue := 1574060031
  steps := 83
  odd_inputs := 32
  endpoint := 1295303873
  arithmetic := m31_lift_0586_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1574060031 83
    · calc
        collatzIter 1574060031 83 = 1295303873 := m31_lift_0586_arithmetic.endpoint
        _ < 1574060031 := m31_lift_0586_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1574060031 83) = 6 ^ 32 := by rw [m31_lift_0586_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0586_arithmetic.slope_below

theorem m31_lift_0587_arithmetic : RowArithmetic 1578254335 73 28 1026177100 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0587 : LiftedFamily where
  residue := 1578254335
  steps := 73
  odd_inputs := 28
  endpoint := 1026177100
  arithmetic := m31_lift_0587_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1578254335 73
    · calc
        collatzIter 1578254335 73 = 1026177100 := m31_lift_0587_arithmetic.endpoint
        _ < 1578254335 := m31_lift_0587_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1578254335 73) = 6 ^ 28 := by rw [m31_lift_0587_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0587_arithmetic.slope_below

theorem m31_lift_0588_arithmetic : RowArithmetic 1586642943 57 22 1449095342 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0588 : LiftedFamily where
  residue := 1586642943
  steps := 57
  odd_inputs := 22
  endpoint := 1449095342
  arithmetic := m31_lift_0588_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1586642943 57
    · calc
        collatzIter 1586642943 57 = 1449095342 := m31_lift_0588_arithmetic.endpoint
        _ < 1586642943 := m31_lift_0588_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1586642943 57) = 6 ^ 22 := by rw [m31_lift_0588_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0588_arithmetic.slope_below

theorem m31_lift_0589_arithmetic : RowArithmetic 1607614463 101 39 1412703784 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0589 : LiftedFamily where
  residue := 1607614463
  steps := 101
  odd_inputs := 39
  endpoint := 1412703784
  arithmetic := m31_lift_0589_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1607614463 101
    · calc
        collatzIter 1607614463 101 = 1412703784 := m31_lift_0589_arithmetic.endpoint
        _ < 1607614463 := m31_lift_0589_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1607614463 101) = 6 ^ 39 := by rw [m31_lift_0589_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0589_arithmetic.slope_below

theorem m31_lift_0590_arithmetic : RowArithmetic 1611808767 52 20 1308515126 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0590 : LiftedFamily where
  residue := 1611808767
  steps := 52
  odd_inputs := 20
  endpoint := 1308515126
  arithmetic := m31_lift_0590_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1611808767 52
    · calc
        collatzIter 1611808767 52 = 1308515126 := m31_lift_0590_arithmetic.endpoint
        _ < 1611808767 := m31_lift_0590_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1611808767 52) = 6 ^ 20 := by rw [m31_lift_0590_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0590_arithmetic.slope_below

theorem m31_lift_0591_arithmetic : RowArithmetic 1641168895 63 24 843128093 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0591 : LiftedFamily where
  residue := 1641168895
  steps := 63
  odd_inputs := 24
  endpoint := 843128093
  arithmetic := m31_lift_0591_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1641168895 63
    · calc
        collatzIter 1641168895 63 = 843128093 := m31_lift_0591_arithmetic.endpoint
        _ < 1641168895 := m31_lift_0591_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1641168895 63) = 6 ^ 24 := by rw [m31_lift_0591_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0591_arithmetic.slope_below

theorem m31_lift_0592_arithmetic : RowArithmetic 1645363199 52 20 1335755629 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0592 : LiftedFamily where
  residue := 1645363199
  steps := 52
  odd_inputs := 20
  endpoint := 1335755629
  arithmetic := m31_lift_0592_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1645363199 52
    · calc
        collatzIter 1645363199 52 = 1335755629 := m31_lift_0592_arithmetic.endpoint
        _ < 1645363199 := m31_lift_0592_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1645363199 52) = 6 ^ 20 := by rw [m31_lift_0592_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0592_arithmetic.slope_below

theorem m31_lift_0593_arithmetic : RowArithmetic 1653751807 55 21 1006924316 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0593 : LiftedFamily where
  residue := 1653751807
  steps := 55
  odd_inputs := 21
  endpoint := 1006924316
  arithmetic := m31_lift_0593_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1653751807 55
    · calc
        collatzIter 1653751807 55 = 1006924316 := m31_lift_0593_arithmetic.endpoint
        _ < 1653751807 := m31_lift_0593_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1653751807 55) = 6 ^ 21 := by rw [m31_lift_0593_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0593_arithmetic.slope_below

theorem m31_lift_0594_arithmetic : RowArithmetic 1670529023 60 23 1144281943 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0594 : LiftedFamily where
  residue := 1670529023
  steps := 60
  odd_inputs := 23
  endpoint := 1144281943
  arithmetic := m31_lift_0594_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1670529023 60
    · calc
        collatzIter 1670529023 60 = 1144281943 := m31_lift_0594_arithmetic.endpoint
        _ < 1670529023 := m31_lift_0594_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1670529023 60) = 6 ^ 23 := by rw [m31_lift_0594_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0594_arithmetic.slope_below

theorem m31_lift_0595_arithmetic : RowArithmetic 1687306239 65 25 1300245784 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0595 : LiftedFamily where
  residue := 1687306239
  steps := 65
  odd_inputs := 25
  endpoint := 1300245784
  arithmetic := m31_lift_0595_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1687306239 65
    · calc
        collatzIter 1687306239 65 = 1300245784 := m31_lift_0595_arithmetic.endpoint
        _ < 1687306239 := m31_lift_0595_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1687306239 65) = 6 ^ 25 := by rw [m31_lift_0595_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0595_arithmetic.slope_below

theorem m31_lift_0596_arithmetic : RowArithmetic 1695694847 163 63 1531042273 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0596 : LiftedFamily where
  residue := 1695694847
  steps := 163
  odd_inputs := 63
  endpoint := 1531042273
  arithmetic := m31_lift_0596_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1695694847 163
    · calc
        collatzIter 1695694847 163 = 1531042273 := m31_lift_0596_arithmetic.endpoint
        _ < 1695694847 := m31_lift_0596_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1695694847 163) = 6 ^ 63 := by rw [m31_lift_0596_arithmetic.odd_inputs]
        _ < 2 ^ 163 := m31_lift_0596_arithmetic.slope_below

theorem m31_lift_0597_arithmetic : RowArithmetic 1704083455 68 26 984880787 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0597 : LiftedFamily where
  residue := 1704083455
  steps := 68
  odd_inputs := 26
  endpoint := 984880787
  arithmetic := m31_lift_0597_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1704083455 68
    · calc
        collatzIter 1704083455 68 = 984880787 := m31_lift_0597_arithmetic.endpoint
        _ < 1704083455 := m31_lift_0597_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1704083455 68) = 6 ^ 26 := by rw [m31_lift_0597_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0597_arithmetic.slope_below

theorem m31_lift_0598_arithmetic : RowArithmetic 1708277759 57 22 1560185519 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0598 : LiftedFamily where
  residue := 1708277759
  steps := 57
  odd_inputs := 22
  endpoint := 1560185519
  arithmetic := m31_lift_0598_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1708277759 57
    · calc
        collatzIter 1708277759 57 = 1560185519 := m31_lift_0598_arithmetic.endpoint
        _ < 1708277759 := m31_lift_0598_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1708277759 57) = 6 ^ 22 := by rw [m31_lift_0598_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0598_arithmetic.slope_below

theorem m31_lift_0599_arithmetic : RowArithmetic 1712472063 60 23 1173012161 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0599 : LiftedFamily where
  residue := 1712472063
  steps := 60
  odd_inputs := 23
  endpoint := 1173012161
  arithmetic := m31_lift_0599_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1712472063 60
    · calc
        collatzIter 1712472063 60 = 1173012161 := m31_lift_0599_arithmetic.endpoint
        _ < 1712472063 := m31_lift_0599_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1712472063 60) = 6 ^ 23 := by rw [m31_lift_0599_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0599_arithmetic.slope_below

theorem m31_lift_0600_arithmetic : RowArithmetic 1720860671 163 63 1553764487 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0600 : LiftedFamily where
  residue := 1720860671
  steps := 163
  odd_inputs := 63
  endpoint := 1553764487
  arithmetic := m31_lift_0600_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1720860671 163
    · calc
        collatzIter 1720860671 163 = 1553764487 := m31_lift_0600_arithmetic.endpoint
        _ < 1720860671 := m31_lift_0600_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1720860671 163) = 6 ^ 63 := by rw [m31_lift_0600_arithmetic.odd_inputs]
        _ < 2 ^ 163 := m31_lift_0600_arithmetic.slope_below

theorem m31_lift_0601_arithmetic : RowArithmetic 1754415103 68 26 1013970133 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0601 : LiftedFamily where
  residue := 1754415103
  steps := 68
  odd_inputs := 26
  endpoint := 1013970133
  arithmetic := m31_lift_0601_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1754415103 68
    · calc
        collatzIter 1754415103 68 = 1013970133 := m31_lift_0601_arithmetic.endpoint
        _ < 1754415103 := m31_lift_0601_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1754415103 68) = 6 ^ 26 := by rw [m31_lift_0601_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0601_arithmetic.slope_below

theorem m31_lift_0602_arithmetic : RowArithmetic 1775386623 52 20 1441312579 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0602 : LiftedFamily where
  residue := 1775386623
  steps := 52
  odd_inputs := 20
  endpoint := 1441312579
  arithmetic := m31_lift_0602_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1775386623 52
    · calc
        collatzIter 1775386623 52 = 1441312579 := m31_lift_0602_arithmetic.endpoint
        _ < 1775386623 := m31_lift_0602_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1775386623 52) = 6 ^ 20 := by rw [m31_lift_0602_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0602_arithmetic.slope_below

theorem m31_lift_0603_arithmetic : RowArithmetic 1787969535 65 25 1377817373 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0603 : LiftedFamily where
  residue := 1787969535
  steps := 65
  odd_inputs := 25
  endpoint := 1377817373
  arithmetic := m31_lift_0603_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1787969535 65
    · calc
        collatzIter 1787969535 65 = 1377817373 := m31_lift_0603_arithmetic.endpoint
        _ < 1787969535 := m31_lift_0603_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1787969535 65) = 6 ^ 25 := by rw [m31_lift_0603_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0603_arithmetic.slope_below

theorem m31_lift_0604_arithmetic : RowArithmetic 1804746751 60 23 1236218641 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0604 : LiftedFamily where
  residue := 1804746751
  steps := 60
  odd_inputs := 23
  endpoint := 1236218641
  arithmetic := m31_lift_0604_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1804746751 60
    · calc
        collatzIter 1804746751 60 = 1236218641 := m31_lift_0604_arithmetic.endpoint
        _ < 1804746751 := m31_lift_0604_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1804746751 60) = 6 ^ 23 := by rw [m31_lift_0604_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0604_arithmetic.slope_below

theorem m31_lift_0605_arithmetic : RowArithmetic 1821523967 55 21 1109076203 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0605 : LiftedFamily where
  residue := 1821523967
  steps := 55
  odd_inputs := 21
  endpoint := 1109076203
  arithmetic := m31_lift_0605_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1821523967 55
    · calc
        collatzIter 1821523967 55 = 1109076203 := m31_lift_0605_arithmetic.endpoint
        _ < 1821523967 := m31_lift_0605_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1821523967 55) = 6 ^ 21 := by rw [m31_lift_0605_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0605_arithmetic.slope_below

theorem m31_lift_0606_arithmetic : RowArithmetic 1825718271 63 24 937937813 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0606 : LiftedFamily where
  residue := 1825718271
  steps := 63
  odd_inputs := 24
  endpoint := 937937813
  arithmetic := m31_lift_0606_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1825718271 63
    · calc
        collatzIter 1825718271 63 = 937937813 := m31_lift_0606_arithmetic.endpoint
        _ < 1825718271 := m31_lift_0606_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1825718271 63) = 6 ^ 24 := by rw [m31_lift_0606_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0606_arithmetic.slope_below

theorem m31_lift_0607_arithmetic : RowArithmetic 1842495487 52 20 1495793585 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0607 : LiftedFamily where
  residue := 1842495487
  steps := 52
  odd_inputs := 20
  endpoint := 1495793585
  arithmetic := m31_lift_0607_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1842495487 52
    · calc
        collatzIter 1842495487 52 = 1495793585 := m31_lift_0607_arithmetic.endpoint
        _ < 1842495487 := m31_lift_0607_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1842495487 52) = 6 ^ 20 := by rw [m31_lift_0607_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0607_arithmetic.slope_below

theorem m31_lift_0608_arithmetic : RowArithmetic 1846689791 68 26 1067300600 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0608 : LiftedFamily where
  residue := 1846689791
  steps := 68
  odd_inputs := 26
  endpoint := 1067300600
  arithmetic := m31_lift_0608_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1846689791 68
    · calc
        collatzIter 1846689791 68 = 1067300600 := m31_lift_0608_arithmetic.endpoint
        _ < 1846689791 := m31_lift_0608_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1846689791 68) = 6 ^ 26 := by rw [m31_lift_0608_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0608_arithmetic.slope_below

theorem m31_lift_0609_arithmetic : RowArithmetic 1855078399 63 24 953021177 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0609 : LiftedFamily where
  residue := 1855078399
  steps := 63
  odd_inputs := 24
  endpoint := 953021177
  arithmetic := m31_lift_0609_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1855078399 63
    · calc
        collatzIter 1855078399 63 = 953021177 := m31_lift_0609_arithmetic.endpoint
        _ < 1855078399 := m31_lift_0609_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1855078399 63) = 6 ^ 24 := by rw [m31_lift_0609_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0609_arithmetic.slope_below

theorem m31_lift_0610_arithmetic : RowArithmetic 1871855615 55 21 1139721769 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0610 : LiftedFamily where
  residue := 1871855615
  steps := 55
  odd_inputs := 21
  endpoint := 1139721769
  arithmetic := m31_lift_0610_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1871855615 55
    · calc
        collatzIter 1871855615 55 = 1139721769 := m31_lift_0610_arithmetic.endpoint
        _ < 1871855615 := m31_lift_0610_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1871855615 55) = 6 ^ 21 := by rw [m31_lift_0610_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0610_arithmetic.slope_below

theorem m31_lift_0611_arithmetic : RowArithmetic 1876049919 65 25 1445692514 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0611 : LiftedFamily where
  residue := 1876049919
  steps := 65
  odd_inputs := 25
  endpoint := 1445692514
  arithmetic := m31_lift_0611_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1876049919 65
    · calc
        collatzIter 1876049919 65 = 1445692514 := m31_lift_0611_arithmetic.endpoint
        _ < 1876049919 := m31_lift_0611_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1876049919 65) = 6 ^ 25 := by rw [m31_lift_0611_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0611_arithmetic.slope_below

theorem m31_lift_0612_arithmetic : RowArithmetic 1880244223 52 20 1526439151 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0612 : LiftedFamily where
  residue := 1880244223
  steps := 52
  odd_inputs := 20
  endpoint := 1526439151
  arithmetic := m31_lift_0612_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1880244223 52
    · calc
        collatzIter 1880244223 52 = 1526439151 := m31_lift_0612_arithmetic.endpoint
        _ < 1880244223 := m31_lift_0612_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1880244223 52) = 6 ^ 20 := by rw [m31_lift_0612_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0612_arithmetic.slope_below

theorem m31_lift_0613_arithmetic : RowArithmetic 1888632831 68 26 1091541722 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0613 : LiftedFamily where
  residue := 1888632831
  steps := 68
  odd_inputs := 26
  endpoint := 1091541722
  arithmetic := m31_lift_0613_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1888632831 68
    · calc
        collatzIter 1888632831 68 = 1091541722 := m31_lift_0613_arithmetic.endpoint
        _ < 1888632831 := m31_lift_0613_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1888632831 68) = 6 ^ 26 := by rw [m31_lift_0613_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0613_arithmetic.slope_below

theorem m31_lift_0614_arithmetic : RowArithmetic 1909604351 78 30 1396822577 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0614 : LiftedFamily where
  residue := 1909604351
  steps := 78
  odd_inputs := 30
  endpoint := 1396822577
  arithmetic := m31_lift_0614_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1909604351 78
    · calc
        collatzIter 1909604351 78 = 1396822577 := m31_lift_0614_arithmetic.endpoint
        _ < 1909604351 := m31_lift_0614_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1909604351 78) = 6 ^ 30 := by rw [m31_lift_0614_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0614_arithmetic.slope_below

theorem m31_lift_0615_arithmetic : RowArithmetic 1922187263 83 32 1581779956 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0615 : LiftedFamily where
  residue := 1922187263
  steps := 83
  odd_inputs := 32
  endpoint := 1581779956
  arithmetic := m31_lift_0615_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1922187263 83
    · calc
        collatzIter 1922187263 83 = 1581779956 := m31_lift_0615_arithmetic.endpoint
        _ < 1922187263 := m31_lift_0615_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1922187263 83) = 6 ^ 32 := by rw [m31_lift_0615_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0615_arithmetic.slope_below

theorem m31_lift_0616_arithmetic : RowArithmetic 1938964479 101 39 1703880202 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0616 : LiftedFamily where
  residue := 1938964479
  steps := 101
  odd_inputs := 39
  endpoint := 1703880202
  arithmetic := m31_lift_0616_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1938964479 101
    · calc
        collatzIter 1938964479 101 = 1703880202 := m31_lift_0616_arithmetic.endpoint
        _ < 1938964479 := m31_lift_0616_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1938964479 101) = 6 ^ 39 := by rw [m31_lift_0616_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0616_arithmetic.slope_below

theorem m31_lift_0617_arithmetic : RowArithmetic 1955741695 88 34 1810566122 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0617 : LiftedFamily where
  residue := 1955741695
  steps := 88
  odd_inputs := 34
  endpoint := 1810566122
  arithmetic := m31_lift_0617_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1955741695 88
    · calc
        collatzIter 1955741695 88 = 1810566122 := m31_lift_0617_arithmetic.endpoint
        _ < 1955741695 := m31_lift_0617_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1955741695 88) = 6 ^ 34 := by rw [m31_lift_0617_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0617_arithmetic.slope_below

theorem m31_lift_0618_arithmetic : RowArithmetic 1959935999 65 25 1510335505 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0618 : LiftedFamily where
  residue := 1959935999
  steps := 65
  odd_inputs := 25
  endpoint := 1510335505
  arithmetic := m31_lift_0618_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1959935999 65
    · calc
        collatzIter 1959935999 65 = 1510335505 := m31_lift_0618_arithmetic.endpoint
        _ < 1959935999 := m31_lift_0618_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1959935999 65) = 6 ^ 25 := by rw [m31_lift_0618_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0618_arithmetic.slope_below

theorem m31_lift_0619_arithmetic : RowArithmetic 1964130303 52 20 1594540409 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0619 : LiftedFamily where
  residue := 1964130303
  steps := 52
  odd_inputs := 20
  endpoint := 1594540409
  arithmetic := m31_lift_0619_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1964130303 52
    · calc
        collatzIter 1964130303 52 = 1594540409 := m31_lift_0619_arithmetic.endpoint
        _ < 1964130303 := m31_lift_0619_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1964130303 52) = 6 ^ 20 := by rw [m31_lift_0619_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0619_arithmetic.slope_below

theorem m31_lift_0620_arithmetic : RowArithmetic 1976713215 75 29 1927881130 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0620 : LiftedFamily where
  residue := 1976713215
  steps := 75
  odd_inputs := 29
  endpoint := 1927881130
  arithmetic := m31_lift_0620_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1976713215 75
    · calc
        collatzIter 1976713215 75 = 1927881130 := m31_lift_0620_arithmetic.endpoint
        _ < 1976713215 := m31_lift_0620_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1976713215 75) = 6 ^ 29 := by rw [m31_lift_0620_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0620_arithmetic.slope_below

theorem m31_lift_0621_arithmetic : RowArithmetic 1980907519 57 22 1809180743 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0621 : LiftedFamily where
  residue := 1980907519
  steps := 57
  odd_inputs := 22
  endpoint := 1809180743
  arithmetic := m31_lift_0621_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1980907519 57
    · calc
        collatzIter 1980907519 57 = 1809180743 := m31_lift_0621_arithmetic.endpoint
        _ < 1980907519 := m31_lift_0621_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1980907519 57) = 6 ^ 22 := by rw [m31_lift_0621_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0621_arithmetic.slope_below

theorem m31_lift_0622_arithmetic : RowArithmetic 1989296127 65 25 1532960551 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0622 : LiftedFamily where
  residue := 1989296127
  steps := 65
  odd_inputs := 25
  endpoint := 1532960551
  arithmetic := m31_lift_0622_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1989296127 65
    · calc
        collatzIter 1989296127 65 = 1532960551 := m31_lift_0622_arithmetic.endpoint
        _ < 1989296127 := m31_lift_0622_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1989296127 65) = 6 ^ 25 := by rw [m31_lift_0622_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0622_arithmetic.slope_below

theorem m31_lift_0623_arithmetic : RowArithmetic 2006073343 94 36 1044653417 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0623 : LiftedFamily where
  residue := 2006073343
  steps := 94
  odd_inputs := 36
  endpoint := 1044653417
  arithmetic := m31_lift_0623_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2006073343 94
    · calc
        collatzIter 2006073343 94 = 1044653417 := m31_lift_0623_arithmetic.endpoint
        _ < 2006073343 := m31_lift_0623_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2006073343 94) = 6 ^ 36 := by rw [m31_lift_0623_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0623_arithmetic.slope_below

theorem m31_lift_0624_arithmetic : RowArithmetic 2010267647 52 20 1631996101 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0624 : LiftedFamily where
  residue := 2010267647
  steps := 52
  odd_inputs := 20
  endpoint := 1631996101
  arithmetic := m31_lift_0624_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2010267647 52
    · calc
        collatzIter 2010267647 52 = 1631996101 := m31_lift_0624_arithmetic.endpoint
        _ < 2010267647 := m31_lift_0624_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2010267647 52) = 6 ^ 20 := by rw [m31_lift_0624_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0624_arithmetic.slope_below

theorem m31_lift_0625_arithmetic : RowArithmetic 2048016383 63 24 1052140430 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0625 : LiftedFamily where
  residue := 2048016383
  steps := 63
  odd_inputs := 24
  endpoint := 1052140430
  arithmetic := m31_lift_0625_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2048016383 63
    · calc
        collatzIter 2048016383 63 = 1052140430 := m31_lift_0625_arithmetic.endpoint
        _ < 2048016383 := m31_lift_0625_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2048016383 63) = 6 ^ 24 := by rw [m31_lift_0625_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0625_arithmetic.slope_below

theorem m31_lift_0626_arithmetic : RowArithmetic 2056404991 104 40 1355311478 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0626 : LiftedFamily where
  residue := 2056404991
  steps := 104
  odd_inputs := 40
  endpoint := 1355311478
  arithmetic := m31_lift_0626_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2056404991 104
    · calc
        collatzIter 2056404991 104 = 1355311478 := m31_lift_0626_arithmetic.endpoint
        _ < 2056404991 := m31_lift_0626_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2056404991 104) = 6 ^ 40 := by rw [m31_lift_0626_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0626_arithmetic.slope_below

theorem m31_lift_0627_arithmetic : RowArithmetic 2073182207 75 29 2021966983 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0627 : LiftedFamily where
  residue := 2073182207
  steps := 75
  odd_inputs := 29
  endpoint := 2021966983
  arithmetic := m31_lift_0627_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2073182207 75
    · calc
        collatzIter 2073182207 75 = 2021966983 := m31_lift_0627_arithmetic.endpoint
        _ < 2073182207 := m31_lift_0627_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2073182207 75) = 6 ^ 29 := by rw [m31_lift_0627_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0627_arithmetic.slope_below

theorem m31_lift_0628_arithmetic : RowArithmetic 2089959423 65 25 1610532140 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0628 : LiftedFamily where
  residue := 2089959423
  steps := 65
  odd_inputs := 25
  endpoint := 1610532140
  arithmetic := m31_lift_0628_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2089959423 65
    · calc
        collatzIter 2089959423 65 = 1610532140 := m31_lift_0628_arithmetic.endpoint
        _ < 2089959423 := m31_lift_0628_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2089959423 65) = 6 ^ 25 := by rw [m31_lift_0628_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0628_arithmetic.slope_below

theorem m31_lift_0629_arithmetic : RowArithmetic 2106736639 57 22 1924101616 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0629 : LiftedFamily where
  residue := 2106736639
  steps := 57
  odd_inputs := 22
  endpoint := 1924101616
  arithmetic := m31_lift_0629_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2106736639 57
    · calc
        collatzIter 2106736639 57 = 1924101616 := m31_lift_0629_arithmetic.endpoint
        _ < 2106736639 := m31_lift_0629_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2106736639 57) = 6 ^ 22 := by rw [m31_lift_0629_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0629_arithmetic.slope_below

theorem m31_lift_0630_arithmetic : RowArithmetic 2110930943 52 20 1713717610 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0630 : LiftedFamily where
  residue := 2110930943
  steps := 52
  odd_inputs := 20
  endpoint := 1713717610
  arithmetic := m31_lift_0630_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2110930943 52
    · calc
        collatzIter 2110930943 52 = 1713717610 := m31_lift_0630_arithmetic.endpoint
        _ < 2110930943 := m31_lift_0630_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2110930943 52) = 6 ^ 20 := by rw [m31_lift_0630_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0630_arithmetic.slope_below

theorem m31_lift_0631_arithmetic : RowArithmetic 2115125247 52 20 1717122673 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0631 : LiftedFamily where
  residue := 2115125247
  steps := 52
  odd_inputs := 20
  endpoint := 1717122673
  arithmetic := m31_lift_0631_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2115125247 52
    · calc
        collatzIter 2115125247 52 = 1717122673 := m31_lift_0631_arithmetic.endpoint
        _ < 2115125247 := m31_lift_0631_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2115125247 52) = 6 ^ 20 := by rw [m31_lift_0631_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0631_arithmetic.slope_below

theorem m31_lift_0632_arithmetic : RowArithmetic 2123513855 86 33 1310589653 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0632 : LiftedFamily where
  residue := 2123513855
  steps := 86
  odd_inputs := 33
  endpoint := 1310589653
  arithmetic := m31_lift_0632_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2123513855 86
    · calc
        collatzIter 2123513855 86 = 1310589653 := m31_lift_0632_arithmetic.endpoint
        _ < 2123513855 := m31_lift_0632_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2123513855 86) = 6 ^ 33 := by rw [m31_lift_0632_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0632_arithmetic.slope_below

theorem m31_lift_0633_arithmetic : RowArithmetic 2144485375 55 21 1305718585 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0633 : LiftedFamily where
  residue := 2144485375
  steps := 55
  odd_inputs := 21
  endpoint := 1305718585
  arithmetic := m31_lift_0633_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2144485375 55
    · calc
        collatzIter 2144485375 55 = 1305718585 := m31_lift_0633_arithmetic.endpoint
        _ < 2144485375 := m31_lift_0633_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2144485375 55) = 6 ^ 21 := by rw [m31_lift_0633_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0633_arithmetic.slope_below

theorem m31_lift_0634_arithmetic : RowArithmetic 6389759 57 22 5835826 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0634 : LiftedFamily where
  residue := 6389759
  steps := 57
  odd_inputs := 22
  endpoint := 5835826
  arithmetic := m31_lift_0634_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 6389759 57
    · calc
        collatzIter 6389759 57 = 5835826 := m31_lift_0634_arithmetic.endpoint
        _ < 6389759 := m31_lift_0634_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 6389759 57) = 6 ^ 22 := by rw [m31_lift_0634_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0634_arithmetic.slope_below

theorem m31_lift_0635_arithmetic : RowArithmetic 23166975 57 22 21158609 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0635 : LiftedFamily where
  residue := 23166975
  steps := 57
  odd_inputs := 22
  endpoint := 21158609
  arithmetic := m31_lift_0635_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 23166975 57
    · calc
        collatzIter 23166975 57 = 21158609 := m31_lift_0635_arithmetic.endpoint
        _ < 23166975 := m31_lift_0635_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 23166975 57) = 6 ^ 22 := by rw [m31_lift_0635_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0635_arithmetic.slope_below

theorem m31_lift_0636_arithmetic : RowArithmetic 39944191 122 47 28112725 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0636 : LiftedFamily where
  residue := 39944191
  steps := 122
  odd_inputs := 47
  endpoint := 28112725
  arithmetic := m31_lift_0636_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 39944191 122
    · calc
        collatzIter 39944191 122 = 28112725 := m31_lift_0636_arithmetic.endpoint
        _ < 39944191 := m31_lift_0636_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 39944191 122) = 6 ^ 47 := by rw [m31_lift_0636_arithmetic.odd_inputs]
        _ < 2 ^ 122 := m31_lift_0636_arithmetic.slope_below

theorem m31_lift_0637_arithmetic : RowArithmetic 48332799 52 20 39238030 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0637 : LiftedFamily where
  residue := 48332799
  steps := 52
  odd_inputs := 20
  endpoint := 39238030
  arithmetic := m31_lift_0637_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 48332799 52
    · calc
        collatzIter 48332799 52 = 39238030 := m31_lift_0637_arithmetic.endpoint
        _ < 48332799 := m31_lift_0637_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 48332799 52) = 6 ^ 20 := by rw [m31_lift_0637_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0637_arithmetic.slope_below

theorem m31_lift_0638_arithmetic : RowArithmetic 56721407 68 26 32782330 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0638 : LiftedFamily where
  residue := 56721407
  steps := 68
  odd_inputs := 26
  endpoint := 32782330
  arithmetic := m31_lift_0638_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 56721407 68
    · calc
        collatzIter 56721407 68 = 32782330 := m31_lift_0638_arithmetic.endpoint
        _ < 56721407 := m31_lift_0638_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 56721407 68) = 6 ^ 26 := by rw [m31_lift_0638_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0638_arithmetic.slope_below

theorem m31_lift_0639_arithmetic : RowArithmetic 65110015 55 21 39643711 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0639 : LiftedFamily where
  residue := 65110015
  steps := 55
  odd_inputs := 21
  endpoint := 39643711
  arithmetic := m31_lift_0639_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 65110015 55
    · calc
        collatzIter 65110015 55 = 39643711 := m31_lift_0639_arithmetic.endpoint
        _ < 65110015 := m31_lift_0639_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 65110015 55) = 6 ^ 21 := by rw [m31_lift_0639_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0639_arithmetic.slope_below

theorem m31_lift_0640_arithmetic : RowArithmetic 73498623 75 29 71682938 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0640 : LiftedFamily where
  residue := 73498623
  steps := 75
  odd_inputs := 29
  endpoint := 71682938
  arithmetic := m31_lift_0640_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 73498623 75
    · calc
        collatzIter 73498623 75 = 71682938 := m31_lift_0640_arithmetic.endpoint
        _ < 73498623 := m31_lift_0640_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 73498623 75) = 6 ^ 29 := by rw [m31_lift_0640_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0640_arithmetic.slope_below

theorem m31_lift_0641_arithmetic : RowArithmetic 90275839 60 23 61837306 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0641 : LiftedFamily where
  residue := 90275839
  steps := 60
  odd_inputs := 23
  endpoint := 61837306
  arithmetic := m31_lift_0641_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 90275839 60
    · calc
        collatzIter 90275839 60 = 61837306 := m31_lift_0641_arithmetic.endpoint
        _ < 90275839 := m31_lift_0641_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 90275839 60) = 6 ^ 23 := by rw [m31_lift_0641_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0641_arithmetic.slope_below

theorem m31_lift_0642_arithmetic : RowArithmetic 98664447 57 22 90111133 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0642 : LiftedFamily where
  residue := 98664447
  steps := 57
  odd_inputs := 22
  endpoint := 90111133
  arithmetic := m31_lift_0642_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 98664447 57
    · calc
        collatzIter 98664447 57 = 90111133 := m31_lift_0642_arithmetic.endpoint
        _ < 98664447 := m31_lift_0642_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 98664447 57) = 6 ^ 22 := by rw [m31_lift_0642_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0642_arithmetic.slope_below

theorem m31_lift_0643_arithmetic : RowArithmetic 107053055 55 21 65181683 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0643 : LiftedFamily where
  residue := 107053055
  steps := 55
  odd_inputs := 21
  endpoint := 65181683
  arithmetic := m31_lift_0643_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 107053055 55
    · calc
        collatzIter 107053055 55 = 65181683 := m31_lift_0643_arithmetic.endpoint
        _ < 107053055 := m31_lift_0643_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 107053055 55) = 6 ^ 21 := by rw [m31_lift_0643_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0643_arithmetic.slope_below

theorem m31_lift_0644_arithmetic : RowArithmetic 140607487 55 21 85612060 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0644 : LiftedFamily where
  residue := 140607487
  steps := 55
  odd_inputs := 21
  endpoint := 85612060
  arithmetic := m31_lift_0644_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 140607487 55
    · calc
        collatzIter 140607487 55 = 85612060 := m31_lift_0644_arithmetic.endpoint
        _ < 140607487 := m31_lift_0644_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 140607487 55) = 6 ^ 21 := by rw [m31_lift_0644_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0644_arithmetic.slope_below

theorem m31_lift_0645_arithmetic : RowArithmetic 157384703 106 41 155590922 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0645 : LiftedFamily where
  residue := 157384703
  steps := 106
  odd_inputs := 41
  endpoint := 155590922
  arithmetic := m31_lift_0645_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 157384703 106
    · calc
        collatzIter 157384703 106 = 155590922 := m31_lift_0645_arithmetic.endpoint
        _ < 157384703 := m31_lift_0645_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 157384703 106) = 6 ^ 41 := by rw [m31_lift_0645_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0645_arithmetic.slope_below

theorem m31_lift_0646_arithmetic : RowArithmetic 174161919 63 24 89473307 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0646 : LiftedFamily where
  residue := 174161919
  steps := 63
  odd_inputs := 24
  endpoint := 89473307
  arithmetic := m31_lift_0646_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 174161919 63
    · calc
        collatzIter 174161919 63 = 89473307 := m31_lift_0646_arithmetic.endpoint
        _ < 174161919 := m31_lift_0646_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 174161919 63) = 6 ^ 24 := by rw [m31_lift_0646_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0646_arithmetic.slope_below

theorem m31_lift_0647_arithmetic : RowArithmetic 199327743 99 38 116773877 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0647 : LiftedFamily where
  residue := 199327743
  steps := 99
  odd_inputs := 38
  endpoint := 116773877
  arithmetic := m31_lift_0647_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 199327743 99
    · calc
        collatzIter 199327743 99 = 116773877 := m31_lift_0647_arithmetic.endpoint
        _ < 199327743 := m31_lift_0647_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 199327743 99) = 6 ^ 38 := by rw [m31_lift_0647_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0647_arithmetic.slope_below

theorem m31_lift_0648_arithmetic : RowArithmetic 207716351 101 39 182532371 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0648 : LiftedFamily where
  residue := 207716351
  steps := 101
  odd_inputs := 39
  endpoint := 182532371
  arithmetic := m31_lift_0648_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 207716351 101
    · calc
        collatzIter 207716351 101 = 182532371 := m31_lift_0648_arithmetic.endpoint
        _ < 207716351 := m31_lift_0648_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 207716351 101) = 6 ^ 39 := by rw [m31_lift_0648_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0648_arithmetic.slope_below

theorem m31_lift_0649_arithmetic : RowArithmetic 224493567 65 25 172995755 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0649 : LiftedFamily where
  residue := 224493567
  steps := 65
  odd_inputs := 25
  endpoint := 172995755
  arithmetic := m31_lift_0649_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 224493567 65
    · calc
        collatzIter 224493567 65 = 172995755 := m31_lift_0649_arithmetic.endpoint
        _ < 224493567 := m31_lift_0649_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 224493567 65) = 6 ^ 25 := by rw [m31_lift_0649_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0649_arithmetic.slope_below

theorem m31_lift_0650_arithmetic : RowArithmetic 232882175 127 49 184390301 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0650 : LiftedFamily where
  residue := 232882175
  steps := 127
  odd_inputs := 49
  endpoint := 184390301
  arithmetic := m31_lift_0650_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 232882175 127
    · calc
        collatzIter 232882175 127 = 184390301 := m31_lift_0650_arithmetic.endpoint
        _ < 232882175 := m31_lift_0650_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 232882175 127) = 6 ^ 49 := by rw [m31_lift_0650_arithmetic.odd_inputs]
        _ < 2 ^ 127 := m31_lift_0650_arithmetic.slope_below

theorem m31_lift_0651_arithmetic : RowArithmetic 241270783 65 25 185924353 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0651 : LiftedFamily where
  residue := 241270783
  steps := 65
  odd_inputs := 25
  endpoint := 185924353
  arithmetic := m31_lift_0651_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 241270783 65
    · calc
        collatzIter 241270783 65 = 185924353 := m31_lift_0651_arithmetic.endpoint
        _ < 241270783 := m31_lift_0651_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 241270783 65) = 6 ^ 25 := by rw [m31_lift_0651_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0651_arithmetic.slope_below

theorem m31_lift_0652_arithmetic : RowArithmetic 266436607 57 22 243338963 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0652 : LiftedFamily where
  residue := 266436607
  steps := 57
  odd_inputs := 22
  endpoint := 243338963
  arithmetic := m31_lift_0652_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 266436607 57
    · calc
        collatzIter 266436607 57 = 243338963 := m31_lift_0652_arithmetic.endpoint
        _ < 266436607 := m31_lift_0652_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 266436607 57) = 6 ^ 22 := by rw [m31_lift_0652_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0652_arithmetic.slope_below

theorem m31_lift_0653_arithmetic : RowArithmetic 274825215 52 20 223111426 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0653 : LiftedFamily where
  residue := 274825215
  steps := 52
  odd_inputs := 20
  endpoint := 223111426
  arithmetic := m31_lift_0653_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 274825215 52
    · calc
        collatzIter 274825215 52 = 223111426 := m31_lift_0653_arithmetic.endpoint
        _ < 274825215 := m31_lift_0653_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 274825215 52) = 6 ^ 20 := by rw [m31_lift_0653_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0653_arithmetic.slope_below

theorem m31_lift_0654_arithmetic : RowArithmetic 291602431 63 24 149806765 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0654 : LiftedFamily where
  residue := 291602431
  steps := 63
  odd_inputs := 24
  endpoint := 149806765
  arithmetic := m31_lift_0654_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 291602431 63
    · calc
        collatzIter 291602431 63 = 149806765 := m31_lift_0654_arithmetic.endpoint
        _ < 291602431 := m31_lift_0654_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 291602431 63) = 6 ^ 24 := by rw [m31_lift_0654_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0654_arithmetic.slope_below

theorem m31_lift_0655_arithmetic : RowArithmetic 308379647 75 29 300761537 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0655 : LiftedFamily where
  residue := 308379647
  steps := 75
  odd_inputs := 29
  endpoint := 300761537
  arithmetic := m31_lift_0655_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 308379647 75
    · calc
        collatzIter 308379647 75 = 300761537 := m31_lift_0655_arithmetic.endpoint
        _ < 308379647 := m31_lift_0655_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 308379647 75) = 6 ^ 29 := by rw [m31_lift_0655_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0655_arithmetic.slope_below

theorem m31_lift_0656_arithmetic : RowArithmetic 325156863 127 49 257451098 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0656 : LiftedFamily where
  residue := 325156863
  steps := 127
  odd_inputs := 49
  endpoint := 257451098
  arithmetic := m31_lift_0656_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 325156863 127
    · calc
        collatzIter 325156863 127 = 257451098 := m31_lift_0656_arithmetic.endpoint
        _ < 325156863 := m31_lift_0656_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 325156863 127) = 6 ^ 49 := by rw [m31_lift_0656_arithmetic.odd_inputs]
        _ < 2 ^ 127 := m31_lift_0656_arithmetic.slope_below

theorem m31_lift_0657_arithmetic : RowArithmetic 333545471 68 26 192773732 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0657 : LiftedFamily where
  residue := 333545471
  steps := 68
  odd_inputs := 26
  endpoint := 192773732
  arithmetic := m31_lift_0657_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 333545471 68
    · calc
        collatzIter 333545471 68 = 192773732 := m31_lift_0657_arithmetic.endpoint
        _ < 333545471 := m31_lift_0657_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 333545471 68) = 6 ^ 26 := by rw [m31_lift_0657_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0657_arithmetic.slope_below

theorem m31_lift_0658_arithmetic : RowArithmetic 341934079 75 29 333487051 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0658 : LiftedFamily where
  residue := 341934079
  steps := 75
  odd_inputs := 29
  endpoint := 333487051
  arithmetic := m31_lift_0658_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 341934079 75
    · calc
        collatzIter 341934079 75 = 333487051 := m31_lift_0658_arithmetic.endpoint
        _ < 341934079 := m31_lift_0658_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 341934079 75) = 6 ^ 29 := by rw [m31_lift_0658_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0658_arithmetic.slope_below

theorem m31_lift_0659_arithmetic : RowArithmetic 358711295 83 32 295185776 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0659 : LiftedFamily where
  residue := 358711295
  steps := 83
  odd_inputs := 32
  endpoint := 295185776
  arithmetic := m31_lift_0659_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 358711295 83
    · calc
        collatzIter 358711295 83 = 295185776 := m31_lift_0659_arithmetic.endpoint
        _ < 358711295 := m31_lift_0659_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 358711295 83) = 6 ^ 32 := by rw [m31_lift_0659_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0659_arithmetic.slope_below

theorem m31_lift_0660_arithmetic : RowArithmetic 400654335 52 20 325263313 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0660 : LiftedFamily where
  residue := 400654335
  steps := 52
  odd_inputs := 20
  endpoint := 325263313
  arithmetic := m31_lift_0660_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 400654335 52
    · calc
        collatzIter 400654335 52 = 325263313 := m31_lift_0660_arithmetic.endpoint
        _ < 400654335 := m31_lift_0660_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 400654335 52) = 6 ^ 20 := by rw [m31_lift_0660_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0660_arithmetic.slope_below

theorem m31_lift_0661_arithmetic : RowArithmetic 409042943 106 41 404380898 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0661 : LiftedFamily where
  residue := 409042943
  steps := 106
  odd_inputs := 41
  endpoint := 404380898
  arithmetic := m31_lift_0661_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 409042943 106
    · calc
        collatzIter 409042943 106 = 404380898 := m31_lift_0661_arithmetic.endpoint
        _ < 409042943 := m31_lift_0661_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 409042943 106) = 6 ^ 41 := by rw [m31_lift_0661_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0661_arithmetic.slope_below

theorem m31_lift_0662_arithmetic : RowArithmetic 425820159 106 41 420966896 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0662 : LiftedFamily where
  residue := 425820159
  steps := 106
  odd_inputs := 41
  endpoint := 420966896
  arithmetic := m31_lift_0662_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 425820159 106
    · calc
        collatzIter 425820159 106 = 420966896 := m31_lift_0662_arithmetic.endpoint
        _ < 425820159 := m31_lift_0662_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 425820159 106) = 6 ^ 41 := by rw [m31_lift_0662_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0662_arithmetic.slope_below

theorem m31_lift_0663_arithmetic : RowArithmetic 442597375 63 24 227378354 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0663 : LiftedFamily where
  residue := 442597375
  steps := 63
  odd_inputs := 24
  endpoint := 227378354
  arithmetic := m31_lift_0663_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 442597375 63
    · calc
        collatzIter 442597375 63 = 227378354 := m31_lift_0663_arithmetic.endpoint
        _ < 442597375 := m31_lift_0663_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 442597375 63) = 6 ^ 24 := by rw [m31_lift_0663_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0663_arithmetic.slope_below

theorem m31_lift_0664_arithmetic : RowArithmetic 450985983 73 28 293229982 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0664 : LiftedFamily where
  residue := 450985983
  steps := 73
  odd_inputs := 28
  endpoint := 293229982
  arithmetic := m31_lift_0664_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 450985983 73
    · calc
        collatzIter 450985983 73 = 293229982 := m31_lift_0664_arithmetic.endpoint
        _ < 450985983 := m31_lift_0664_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 450985983 73) = 6 ^ 28 := by rw [m31_lift_0664_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0664_arithmetic.slope_below

theorem m31_lift_0665_arithmetic : RowArithmetic 459374591 57 22 419550968 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0665 : LiftedFamily where
  residue := 459374591
  steps := 57
  odd_inputs := 22
  endpoint := 419550968
  arithmetic := m31_lift_0665_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 459374591 57
    · calc
        collatzIter 459374591 57 = 419550968 := m31_lift_0665_arithmetic.endpoint
        _ < 459374591 := m31_lift_0665_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 459374591 57) = 6 ^ 22 := by rw [m31_lift_0665_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0665_arithmetic.slope_below

theorem m31_lift_0666_arithmetic : RowArithmetic 467763199 52 20 379744319 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0666 : LiftedFamily where
  residue := 467763199
  steps := 52
  odd_inputs := 20
  endpoint := 379744319
  arithmetic := m31_lift_0666_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 467763199 52
    · calc
        collatzIter 467763199 52 = 379744319 := m31_lift_0666_arithmetic.endpoint
        _ < 467763199 := m31_lift_0666_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 467763199 52) = 6 ^ 20 := by rw [m31_lift_0666_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0666_arithmetic.slope_below

theorem m31_lift_0667_arithmetic : RowArithmetic 476151807 65 25 366924727 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0667 : LiftedFamily where
  residue := 476151807
  steps := 65
  odd_inputs := 25
  endpoint := 366924727
  arithmetic := m31_lift_0667_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 476151807 65
    · calc
        collatzIter 476151807 65 = 366924727 := m31_lift_0667_arithmetic.endpoint
        _ < 476151807 := m31_lift_0667_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 476151807 65) = 6 ^ 25 := by rw [m31_lift_0667_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0667_arithmetic.slope_below

theorem m31_lift_0668_arithmetic : RowArithmetic 501317631 60 23 343393444 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0668 : LiftedFamily where
  residue := 501317631
  steps := 60
  odd_inputs := 23
  endpoint := 343393444
  arithmetic := m31_lift_0668_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 501317631 60
    · calc
        collatzIter 501317631 60 = 343393444 := m31_lift_0668_arithmetic.endpoint
        _ < 501317631 := m31_lift_0668_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 501317631 60) = 6 ^ 23 := by rw [m31_lift_0668_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0668_arithmetic.slope_below

theorem m31_lift_0669_arithmetic : RowArithmetic 509706239 52 20 413794948 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0669 : LiftedFamily where
  residue := 509706239
  steps := 52
  odd_inputs := 20
  endpoint := 413794948
  arithmetic := m31_lift_0669_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 509706239 52
    · calc
        collatzIter 509706239 52 = 413794948 := m31_lift_0669_arithmetic.endpoint
        _ < 509706239 := m31_lift_0669_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 509706239 52) = 6 ^ 20 := by rw [m31_lift_0669_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0669_arithmetic.slope_below

theorem m31_lift_0670_arithmetic : RowArithmetic 534872063 55 21 325668994 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0670 : LiftedFamily where
  residue := 534872063
  steps := 55
  odd_inputs := 21
  endpoint := 325668994
  arithmetic := m31_lift_0670_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 534872063 55
    · calc
        collatzIter 534872063 55 = 325668994 := m31_lift_0670_arithmetic.endpoint
        _ < 534872063 := m31_lift_0670_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 534872063 55) = 6 ^ 21 := by rw [m31_lift_0670_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0670_arithmetic.slope_below

theorem m31_lift_0671_arithmetic : RowArithmetic 543260671 83 32 447052615 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0671 : LiftedFamily where
  residue := 543260671
  steps := 83
  odd_inputs := 32
  endpoint := 447052615
  arithmetic := m31_lift_0671_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 543260671 83
    · calc
        collatzIter 543260671 83 = 447052615 := m31_lift_0671_arithmetic.endpoint
        _ < 543260671 := m31_lift_0671_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 543260671 83) = 6 ^ 32 := by rw [m31_lift_0671_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0671_arithmetic.slope_below

theorem m31_lift_0672_arithmetic : RowArithmetic 560037887 55 21 340991777 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0672 : LiftedFamily where
  residue := 560037887
  steps := 55
  odd_inputs := 21
  endpoint := 340991777
  arithmetic := m31_lift_0672_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 560037887 55
    · calc
        collatzIter 560037887 55 = 340991777 := m31_lift_0672_arithmetic.endpoint
        _ < 560037887 := m31_lift_0672_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 560037887 55) = 6 ^ 21 := by rw [m31_lift_0672_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0672_arithmetic.slope_below

theorem m31_lift_0673_arithmetic : RowArithmetic 576815103 52 20 468275954 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0673 : LiftedFamily where
  residue := 576815103
  steps := 52
  odd_inputs := 20
  endpoint := 468275954
  arithmetic := m31_lift_0673_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 576815103 52
    · calc
        collatzIter 576815103 52 = 468275954 := m31_lift_0673_arithmetic.endpoint
        _ < 576815103 := m31_lift_0673_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 576815103 52) = 6 ^ 20 := by rw [m31_lift_0673_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0673_arithmetic.slope_below

theorem m31_lift_0674_arithmetic : RowArithmetic 585203711 86 33 361175855 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0674 : LiftedFamily where
  residue := 585203711
  steps := 86
  odd_inputs := 33
  endpoint := 361175855
  arithmetic := m31_lift_0674_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 585203711 86
    · calc
        collatzIter 585203711 86 = 361175855 := m31_lift_0674_arithmetic.endpoint
        _ < 585203711 := m31_lift_0674_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 585203711 86) = 6 ^ 33 := by rw [m31_lift_0674_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0674_arithmetic.slope_below

theorem m31_lift_0675_arithmetic : RowArithmetic 593592319 101 39 521623895 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0675 : LiftedFamily where
  residue := 593592319
  steps := 101
  odd_inputs := 39
  endpoint := 521623895
  arithmetic := m31_lift_0675_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 593592319 101
    · calc
        collatzIter 593592319 101 = 521623895 := m31_lift_0675_arithmetic.endpoint
        _ < 593592319 := m31_lift_0675_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 593592319 101) = 6 ^ 39 := by rw [m31_lift_0675_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0675_arithmetic.slope_below

theorem m31_lift_0676_arithmetic : RowArithmetic 601980927 88 34 557295617 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0676 : LiftedFamily where
  residue := 601980927
  steps := 88
  odd_inputs := 34
  endpoint := 557295617
  arithmetic := m31_lift_0676_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 601980927 88
    · calc
        collatzIter 601980927 88 = 557295617 := m31_lift_0676_arithmetic.endpoint
        _ < 601980927 := m31_lift_0676_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 601980927 88) = 6 ^ 34 := by rw [m31_lift_0676_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0676_arithmetic.slope_below

theorem m31_lift_0677_arithmetic : RowArithmetic 610369535 88 34 565061536 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0677 : LiftedFamily where
  residue := 610369535
  steps := 88
  odd_inputs := 34
  endpoint := 565061536
  arithmetic := m31_lift_0677_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 610369535 88
    · calc
        collatzIter 610369535 88 = 565061536 := m31_lift_0677_arithmetic.endpoint
        _ < 610369535 := m31_lift_0677_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 610369535 88) = 6 ^ 34 := by rw [m31_lift_0677_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0677_arithmetic.slope_below

theorem m31_lift_0678_arithmetic : RowArithmetic 627146751 52 20 509136709 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0678 : LiftedFamily where
  residue := 627146751
  steps := 52
  odd_inputs := 20
  endpoint := 509136709
  arithmetic := m31_lift_0678_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 627146751 52
    · calc
        collatzIter 627146751 52 = 509136709 := m31_lift_0678_arithmetic.endpoint
        _ < 627146751 := m31_lift_0678_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 627146751 52) = 6 ^ 20 := by rw [m31_lift_0678_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0678_arithmetic.slope_below

theorem m31_lift_0679_arithmetic : RowArithmetic 635535359 52 20 515946835 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0679 : LiftedFamily where
  residue := 635535359
  steps := 52
  odd_inputs := 20
  endpoint := 515946835
  arithmetic := m31_lift_0679_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 635535359 52
    · calc
        collatzIter 635535359 52 = 515946835 := m31_lift_0679_arithmetic.endpoint
        _ < 635535359 := m31_lift_0679_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 635535359 52) = 6 ^ 20 := by rw [m31_lift_0679_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0679_arithmetic.slope_below

theorem m31_lift_0680_arithmetic : RowArithmetic 643923967 57 22 588101581 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0680 : LiftedFamily where
  residue := 643923967
  steps := 57
  odd_inputs := 22
  endpoint := 588101581
  arithmetic := m31_lift_0680_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 643923967 57
    · calc
        collatzIter 643923967 57 = 588101581 := m31_lift_0680_arithmetic.endpoint
        _ < 643923967 := m31_lift_0680_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 643923967 57) = 6 ^ 22 := by rw [m31_lift_0680_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0680_arithmetic.slope_below

theorem m31_lift_0681_arithmetic : RowArithmetic 677478399 83 32 557501225 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0681 : LiftedFamily where
  residue := 677478399
  steps := 83
  odd_inputs := 32
  endpoint := 557501225
  arithmetic := m31_lift_0681_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 677478399 83
    · calc
        collatzIter 677478399 83 = 557501225 := m31_lift_0681_arithmetic.endpoint
        _ < 677478399 := m31_lift_0681_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 677478399 83) = 6 ^ 32 := by rw [m31_lift_0681_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0681_arithmetic.slope_below

theorem m31_lift_0682_arithmetic : RowArithmetic 694255615 52 20 563617715 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0682 : LiftedFamily where
  residue := 694255615
  steps := 52
  odd_inputs := 20
  endpoint := 563617715
  arithmetic := m31_lift_0682_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 694255615 52
    · calc
        collatzIter 694255615 52 = 563617715 := m31_lift_0682_arithmetic.endpoint
        _ < 694255615 := m31_lift_0682_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 694255615 52) = 6 ^ 20 := by rw [m31_lift_0682_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0682_arithmetic.slope_below

theorem m31_lift_0683_arithmetic : RowArithmetic 736198655 52 20 597668344 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0683 : LiftedFamily where
  residue := 736198655
  steps := 52
  odd_inputs := 20
  endpoint := 597668344
  arithmetic := m31_lift_0683_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 736198655 52
    · calc
        collatzIter 736198655 52 = 597668344 := m31_lift_0683_arithmetic.endpoint
        _ < 736198655 := m31_lift_0683_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 736198655 52) = 6 ^ 20 := by rw [m31_lift_0683_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0683_arithmetic.slope_below

theorem m31_lift_0684_arithmetic : RowArithmetic 744587263 60 23 510028709 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0684 : LiftedFamily where
  residue := 744587263
  steps := 60
  odd_inputs := 23
  endpoint := 510028709
  arithmetic := m31_lift_0684_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 744587263 60
    · calc
        collatzIter 744587263 60 = 510028709 := m31_lift_0684_arithmetic.endpoint
        _ < 744587263 := m31_lift_0684_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 744587263 60) = 6 ^ 23 := by rw [m31_lift_0684_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0684_arithmetic.slope_below

theorem m31_lift_0685_arithmetic : RowArithmetic 761364479 57 22 695361062 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0685 : LiftedFamily where
  residue := 761364479
  steps := 57
  odd_inputs := 22
  endpoint := 695361062
  arithmetic := m31_lift_0685_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 761364479 57
    · calc
        collatzIter 761364479 57 = 695361062 := m31_lift_0685_arithmetic.endpoint
        _ < 761364479 := m31_lift_0685_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 761364479 57) = 6 ^ 22 := by rw [m31_lift_0685_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0685_arithmetic.slope_below

theorem m31_lift_0686_arithmetic : RowArithmetic 769753087 94 36 400845362 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0686 : LiftedFamily where
  residue := 769753087
  steps := 94
  odd_inputs := 36
  endpoint := 400845362
  arithmetic := m31_lift_0686_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 769753087 94
    · calc
        collatzIter 769753087 94 = 400845362 := m31_lift_0686_arithmetic.endpoint
        _ < 769753087 := m31_lift_0686_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 769753087 94) = 6 ^ 36 := by rw [m31_lift_0686_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0686_arithmetic.slope_below

theorem m31_lift_0687_arithmetic : RowArithmetic 778141695 114 44 649073980 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0687 : LiftedFamily where
  residue := 778141695
  steps := 114
  odd_inputs := 44
  endpoint := 649073980
  arithmetic := m31_lift_0687_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 778141695 114
    · calc
        collatzIter 778141695 114 = 649073980 := m31_lift_0687_arithmetic.endpoint
        _ < 778141695 := m31_lift_0687_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 778141695 114) = 6 ^ 44 := by rw [m31_lift_0687_arithmetic.odd_inputs]
        _ < 2 ^ 114 := m31_lift_0687_arithmetic.slope_below

theorem m31_lift_0688_arithmetic : RowArithmetic 803307519 55 21 489112013 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0688 : LiftedFamily where
  residue := 803307519
  steps := 55
  odd_inputs := 21
  endpoint := 489112013
  arithmetic := m31_lift_0688_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 803307519 55
    · calc
        collatzIter 803307519 55 = 489112013 := m31_lift_0688_arithmetic.endpoint
        _ < 803307519 := m31_lift_0688_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 803307519 55) = 6 ^ 21 := by rw [m31_lift_0688_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0688_arithmetic.slope_below

theorem m31_lift_0689_arithmetic : RowArithmetic 811696127 52 20 658959476 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0689 : LiftedFamily where
  residue := 811696127
  steps := 52
  odd_inputs := 20
  endpoint := 658959476
  arithmetic := m31_lift_0689_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 811696127 52
    · calc
        collatzIter 811696127 52 = 658959476 := m31_lift_0689_arithmetic.endpoint
        _ < 811696127 := m31_lift_0689_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 811696127 52) = 6 ^ 20 := by rw [m31_lift_0689_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0689_arithmetic.slope_below

theorem m31_lift_0690_arithmetic : RowArithmetic 845250559 65 25 651353887 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0690 : LiftedFamily where
  residue := 845250559
  steps := 65
  odd_inputs := 25
  endpoint := 651353887
  arithmetic := m31_lift_0690_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 845250559 65
    · calc
        collatzIter 845250559 65 = 651353887 := m31_lift_0690_arithmetic.endpoint
        _ < 845250559 := m31_lift_0690_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 845250559 65) = 6 ^ 25 := by rw [m31_lift_0690_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0690_arithmetic.slope_below

theorem m31_lift_0691_arithmetic : RowArithmetic 853639167 55 21 519757579 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0691 : LiftedFamily where
  residue := 853639167
  steps := 55
  odd_inputs := 21
  endpoint := 519757579
  arithmetic := m31_lift_0691_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 853639167 55
    · calc
        collatzIter 853639167 55 = 519757579 := m31_lift_0691_arithmetic.endpoint
        _ < 853639167 := m31_lift_0691_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 853639167 55) = 6 ^ 21 := by rw [m31_lift_0691_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0691_arithmetic.slope_below

theorem m31_lift_0692_arithmetic : RowArithmetic 862027775 52 20 699820231 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0692 : LiftedFamily where
  residue := 862027775
  steps := 52
  odd_inputs := 20
  endpoint := 699820231
  arithmetic := m31_lift_0692_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 862027775 52
    · calc
        collatzIter 862027775 52 = 699820231 := m31_lift_0692_arithmetic.endpoint
        _ < 862027775 := m31_lift_0692_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 862027775 52) = 6 ^ 20 := by rw [m31_lift_0692_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0692_arithmetic.slope_below

theorem m31_lift_0693_arithmetic : RowArithmetic 870416383 83 32 716271103 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0693 : LiftedFamily where
  residue := 870416383
  steps := 83
  odd_inputs := 32
  endpoint := 716271103
  arithmetic := m31_lift_0693_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 870416383 83
    · calc
        collatzIter 870416383 83 = 716271103 := m31_lift_0693_arithmetic.endpoint
        _ < 870416383 := m31_lift_0693_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 870416383 83) = 6 ^ 32 := by rw [m31_lift_0693_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0693_arithmetic.slope_below

theorem m31_lift_0694_arithmetic : RowArithmetic 878804991 60 23 601965407 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0694 : LiftedFamily where
  residue := 878804991
  steps := 60
  odd_inputs := 23
  endpoint := 601965407
  arithmetic := m31_lift_0694_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 878804991 60
    · calc
        collatzIter 878804991 60 = 601965407 := m31_lift_0694_arithmetic.endpoint
        _ < 878804991 := m31_lift_0694_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 878804991 60) = 6 ^ 23 := by rw [m31_lift_0694_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0694_arithmetic.slope_below

theorem m31_lift_0695_arithmetic : RowArithmetic 895582207 73 28 582305356 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0695 : LiftedFamily where
  residue := 895582207
  steps := 73
  odd_inputs := 28
  endpoint := 582305356
  arithmetic := m31_lift_0695_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 895582207 73
    · calc
        collatzIter 895582207 73 = 582305356 := m31_lift_0695_arithmetic.endpoint
        _ < 895582207 := m31_lift_0695_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 895582207 73) = 6 ^ 28 := by rw [m31_lift_0695_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0695_arithmetic.slope_below

theorem m31_lift_0696_arithmetic : RowArithmetic 937525247 52 20 761111363 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0696 : LiftedFamily where
  residue := 937525247
  steps := 52
  odd_inputs := 20
  endpoint := 761111363
  arithmetic := m31_lift_0696_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 937525247 52
    · calc
        collatzIter 937525247 52 = 761111363 := m31_lift_0696_arithmetic.endpoint
        _ < 937525247 := m31_lift_0696_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 937525247 52) = 6 ^ 20 := by rw [m31_lift_0696_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0696_arithmetic.slope_below

theorem m31_lift_0697_arithmetic : RowArithmetic 945913855 91 35 656773688 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0697 : LiftedFamily where
  residue := 945913855
  steps := 91
  odd_inputs := 35
  endpoint := 656773688
  arithmetic := m31_lift_0697_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 945913855 91
    · calc
        collatzIter 945913855 91 = 656773688 := m31_lift_0697_arithmetic.endpoint
        _ < 945913855 := m31_lift_0697_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 945913855 91) = 6 ^ 35 := by rw [m31_lift_0697_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0697_arithmetic.slope_below

theorem m31_lift_0698_arithmetic : RowArithmetic 962691071 65 25 741854074 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0698 : LiftedFamily where
  residue := 962691071
  steps := 65
  odd_inputs := 25
  endpoint := 741854074
  arithmetic := m31_lift_0698_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 962691071 65
    · calc
        collatzIter 962691071 65 = 741854074 := m31_lift_0698_arithmetic.endpoint
        _ < 962691071 := m31_lift_0698_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 962691071 65) = 6 ^ 25 := by rw [m31_lift_0698_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0698_arithmetic.slope_below

theorem m31_lift_0699_arithmetic : RowArithmetic 979468287 63 24 503188448 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0699 : LiftedFamily where
  residue := 979468287
  steps := 63
  odd_inputs := 24
  endpoint := 503188448
  arithmetic := m31_lift_0699_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 979468287 63
    · calc
        collatzIter 979468287 63 = 503188448 := m31_lift_0699_arithmetic.endpoint
        _ < 979468287 := m31_lift_0699_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 979468287 63) = 6 ^ 24 := by rw [m31_lift_0699_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0699_arithmetic.slope_below

theorem m31_lift_0700_arithmetic : RowArithmetic 987856895 52 20 801972118 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0700 : LiftedFamily where
  residue := 987856895
  steps := 52
  odd_inputs := 20
  endpoint := 801972118
  arithmetic := m31_lift_0700_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 987856895 52
    · calc
        collatzIter 987856895 52 = 801972118 := m31_lift_0700_arithmetic.endpoint
        _ < 987856895 := m31_lift_0700_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 987856895 52) = 6 ^ 20 := by rw [m31_lift_0700_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0700_arithmetic.slope_below

theorem m31_lift_0701_arithmetic : RowArithmetic 996245503 112 43 554001101 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0701 : LiftedFamily where
  residue := 996245503
  steps := 112
  odd_inputs := 43
  endpoint := 554001101
  arithmetic := m31_lift_0701_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 996245503 112
    · calc
        collatzIter 996245503 112 = 554001101 := m31_lift_0701_arithmetic.endpoint
        _ < 996245503 := m31_lift_0701_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 996245503 112) = 6 ^ 43 := by rw [m31_lift_0701_arithmetic.odd_inputs]
        _ < 2 ^ 112 := m31_lift_0701_arithmetic.slope_below

theorem m31_lift_0702_arithmetic : RowArithmetic 1013022719 78 30 740998000 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0702 : LiftedFamily where
  residue := 1013022719
  steps := 78
  odd_inputs := 30
  endpoint := 740998000
  arithmetic := m31_lift_0702_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1013022719 78
    · calc
        collatzIter 1013022719 78 = 740998000 := m31_lift_0702_arithmetic.endpoint
        _ < 1013022719 := m31_lift_0702_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1013022719 78) = 6 ^ 30 := by rw [m31_lift_0702_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0702_arithmetic.slope_below

theorem m31_lift_0703_arithmetic : RowArithmetic 1038188543 57 22 948186982 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0703 : LiftedFamily where
  residue := 1038188543
  steps := 57
  odd_inputs := 22
  endpoint := 948186982
  arithmetic := m31_lift_0703_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1038188543 57
    · calc
        collatzIter 1038188543 57 = 948186982 := m31_lift_0703_arithmetic.endpoint
        _ < 1038188543 := m31_lift_0703_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1038188543 57) = 6 ^ 22 := by rw [m31_lift_0703_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0703_arithmetic.slope_below

theorem m31_lift_0704_arithmetic : RowArithmetic 1046577151 52 20 849642998 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0704 : LiftedFamily where
  residue := 1046577151
  steps := 52
  odd_inputs := 20
  endpoint := 849642998
  arithmetic := m31_lift_0704_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1046577151 52
    · calc
        collatzIter 1046577151 52 = 849642998 := m31_lift_0704_arithmetic.endpoint
        _ < 1046577151 := m31_lift_0704_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1046577151 52) = 6 ^ 20 := by rw [m31_lift_0704_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0704_arithmetic.slope_below

theorem m31_lift_0705_arithmetic : RowArithmetic 1071742975 104 40 706351892 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0705 : LiftedFamily where
  residue := 1071742975
  steps := 104
  odd_inputs := 40
  endpoint := 706351892
  arithmetic := m31_lift_0705_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1071742975 104
    · calc
        collatzIter 1071742975 104 = 706351892 := m31_lift_0705_arithmetic.endpoint
        _ < 1071742975 := m31_lift_0705_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1071742975 104) = 6 ^ 40 := by rw [m31_lift_0705_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0705_arithmetic.slope_below

theorem m31_lift_0706_arithmetic : RowArithmetic 1080131583 52 20 876883501 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0706 : LiftedFamily where
  residue := 1080131583
  steps := 52
  odd_inputs := 20
  endpoint := 876883501
  arithmetic := m31_lift_0706_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1080131583 52
    · calc
        collatzIter 1080131583 52 = 876883501 := m31_lift_0706_arithmetic.endpoint
        _ < 1080131583 := m31_lift_0706_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1080131583 52) = 6 ^ 20 := by rw [m31_lift_0706_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0706_arithmetic.slope_below

theorem m31_lift_0707_arithmetic : RowArithmetic 1096908799 57 22 1001816722 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0707 : LiftedFamily where
  residue := 1096908799
  steps := 57
  odd_inputs := 22
  endpoint := 1001816722
  arithmetic := m31_lift_0707_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1096908799 57
    · calc
        collatzIter 1096908799 57 = 1001816722 := m31_lift_0707_arithmetic.endpoint
        _ < 1096908799 := m31_lift_0707_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1096908799 57) = 6 ^ 22 := by rw [m31_lift_0707_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0707_arithmetic.slope_below

theorem m31_lift_0708_arithmetic : RowArithmetic 1113686015 70 27 965487890 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0708 : LiftedFamily where
  residue := 1113686015
  steps := 70
  odd_inputs := 27
  endpoint := 965487890
  arithmetic := m31_lift_0708_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1113686015 70
    · calc
        collatzIter 1113686015 70 = 965487890 := m31_lift_0708_arithmetic.endpoint
        _ < 1113686015 := m31_lift_0708_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1113686015 70) = 6 ^ 27 := by rw [m31_lift_0708_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0708_arithmetic.slope_below

theorem m31_lift_0709_arithmetic : RowArithmetic 1122074623 65 25 864675757 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0709 : LiftedFamily where
  residue := 1122074623
  steps := 65
  odd_inputs := 25
  endpoint := 864675757
  arithmetic := m31_lift_0709_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1122074623 65
    · calc
        collatzIter 1122074623 65 = 864675757 := m31_lift_0709_arithmetic.endpoint
        _ < 1122074623 := m31_lift_0709_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1122074623 65) = 6 ^ 25 := by rw [m31_lift_0709_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0709_arithmetic.slope_below

theorem m31_lift_0710_arithmetic : RowArithmetic 1130463231 171 66 861211279 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0710 : LiftedFamily where
  residue := 1130463231
  steps := 171
  odd_inputs := 66
  endpoint := 861211279
  arithmetic := m31_lift_0710_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1130463231 171
    · calc
        collatzIter 1130463231 171 = 861211279 := m31_lift_0710_arithmetic.endpoint
        _ < 1130463231 := m31_lift_0710_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1130463231 171) = 6 ^ 66 := by rw [m31_lift_0710_arithmetic.odd_inputs]
        _ < 2 ^ 171 := m31_lift_0710_arithmetic.slope_below

theorem m31_lift_0711_arithmetic : RowArithmetic 1138851839 75 29 1110718012 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0711 : LiftedFamily where
  residue := 1138851839
  steps := 75
  odd_inputs := 29
  endpoint := 1110718012
  arithmetic := m31_lift_0711_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1138851839 75
    · calc
        collatzIter 1138851839 75 = 1110718012 := m31_lift_0711_arithmetic.endpoint
        _ < 1138851839 := m31_lift_0711_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1138851839 75) = 6 ^ 29 := by rw [m31_lift_0711_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0711_arithmetic.slope_below

theorem m31_lift_0712_arithmetic : RowArithmetic 1147240447 176 68 983241590 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0712 : LiftedFamily where
  residue := 1147240447
  steps := 176
  odd_inputs := 68
  endpoint := 983241590
  arithmetic := m31_lift_0712_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1147240447 176
    · calc
        collatzIter 1147240447 176 = 983241590 := m31_lift_0712_arithmetic.endpoint
        _ < 1147240447 := m31_lift_0712_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1147240447 176) = 6 ^ 68 := by rw [m31_lift_0712_arithmetic.odd_inputs]
        _ < 2 ^ 176 := m31_lift_0712_arithmetic.slope_below

theorem m31_lift_0713_arithmetic : RowArithmetic 1164017663 52 20 944984759 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0713 : LiftedFamily where
  residue := 1164017663
  steps := 52
  odd_inputs := 20
  endpoint := 944984759
  arithmetic := m31_lift_0713_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1164017663 52
    · calc
        collatzIter 1164017663 52 = 944984759 := m31_lift_0713_arithmetic.endpoint
        _ < 1164017663 := m31_lift_0713_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1164017663 52) = 6 ^ 20 := by rw [m31_lift_0713_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0713_arithmetic.slope_below

theorem m31_lift_0714_arithmetic : RowArithmetic 1172406271 52 20 951794885 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0714 : LiftedFamily where
  residue := 1172406271
  steps := 52
  odd_inputs := 20
  endpoint := 951794885
  arithmetic := m31_lift_0714_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1172406271 52
    · calc
        collatzIter 1172406271 52 = 951794885 := m31_lift_0714_arithmetic.endpoint
        _ < 1172406271 := m31_lift_0714_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1172406271 52) = 6 ^ 20 := by rw [m31_lift_0714_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0714_arithmetic.slope_below

theorem m31_lift_0715_arithmetic : RowArithmetic 1214349311 57 22 1109076203 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0715 : LiftedFamily where
  residue := 1214349311
  steps := 57
  odd_inputs := 22
  endpoint := 1109076203
  arithmetic := m31_lift_0715_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1214349311 57
    · calc
        collatzIter 1214349311 57 = 1109076203 := m31_lift_0715_arithmetic.endpoint
        _ < 1214349311 := m31_lift_0715_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1214349311 57) = 6 ^ 22 := by rw [m31_lift_0715_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0715_arithmetic.slope_below

theorem m31_lift_0716_arithmetic : RowArithmetic 1231126527 70 27 1067300600 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0716 : LiftedFamily where
  residue := 1231126527
  steps := 70
  odd_inputs := 27
  endpoint := 1067300600
  arithmetic := m31_lift_0716_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1231126527 70
    · calc
        collatzIter 1231126527 70 = 1067300600 := m31_lift_0716_arithmetic.endpoint
        _ < 1231126527 := m31_lift_0716_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1231126527 70) = 6 ^ 27 := by rw [m31_lift_0716_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0716_arithmetic.slope_below

theorem m31_lift_0717_arithmetic : RowArithmetic 1247903743 57 22 1139721769 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0717 : LiftedFamily where
  residue := 1247903743
  steps := 57
  odd_inputs := 22
  endpoint := 1139721769
  arithmetic := m31_lift_0717_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1247903743 57
    · calc
        collatzIter 1247903743 57 = 1139721769 := m31_lift_0717_arithmetic.endpoint
        _ < 1247903743 := m31_lift_0717_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1247903743 57) = 6 ^ 22 := by rw [m31_lift_0717_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0717_arithmetic.slope_below

theorem m31_lift_0718_arithmetic : RowArithmetic 1273069567 83 32 1047616933 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0718 : LiftedFamily where
  residue := 1273069567
  steps := 83
  odd_inputs := 32
  endpoint := 1047616933
  arithmetic := m31_lift_0718_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1273069567 83
    · calc
        collatzIter 1273069567 83 = 1047616933 := m31_lift_0718_arithmetic.endpoint
        _ < 1273069567 := m31_lift_0718_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1273069567 83) = 6 ^ 32 := by rw [m31_lift_0718_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0718_arithmetic.slope_below

theorem m31_lift_0719_arithmetic : RowArithmetic 1281458175 86 33 790889978 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0719 : LiftedFamily where
  residue := 1281458175
  steps := 86
  odd_inputs := 33
  endpoint := 790889978
  arithmetic := m31_lift_0719_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1281458175 86
    · calc
        collatzIter 1281458175 86 = 790889978 := m31_lift_0719_arithmetic.endpoint
        _ < 1281458175 := m31_lift_0719_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1281458175 86) = 6 ^ 33 := by rw [m31_lift_0719_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0719_arithmetic.slope_below

theorem m31_lift_0720_arithmetic : RowArithmetic 1306623999 70 27 1132751629 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0720 : LiftedFamily where
  residue := 1306623999
  steps := 70
  odd_inputs := 27
  endpoint := 1132751629
  arithmetic := m31_lift_0720_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1306623999 70
    · calc
        collatzIter 1306623999 70 = 1132751629 := m31_lift_0720_arithmetic.endpoint
        _ < 1306623999 := m31_lift_0720_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1306623999 70) = 6 ^ 27 := by rw [m31_lift_0720_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0720_arithmetic.slope_below

theorem m31_lift_0721_arithmetic : RowArithmetic 1315012607 52 20 1067567023 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0721 : LiftedFamily where
  residue := 1315012607
  steps := 52
  odd_inputs := 20
  endpoint := 1067567023
  arithmetic := m31_lift_0721_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1315012607 52
    · calc
        collatzIter 1315012607 52 = 1067567023 := m31_lift_0721_arithmetic.endpoint
        _ < 1315012607 := m31_lift_0721_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1315012607 52) = 6 ^ 20 := by rw [m31_lift_0721_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0721_arithmetic.slope_below

theorem m31_lift_0722_arithmetic : RowArithmetic 1340178431 57 22 1223997076 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0722 : LiftedFamily where
  residue := 1340178431
  steps := 57
  odd_inputs := 22
  endpoint := 1223997076
  arithmetic := m31_lift_0722_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1340178431 57
    · calc
        collatzIter 1340178431 57 = 1223997076 := m31_lift_0722_arithmetic.endpoint
        _ < 1340178431 := m31_lift_0722_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1340178431 57) = 6 ^ 22 := by rw [m31_lift_0722_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0722_arithmetic.slope_below

theorem m31_lift_0723_arithmetic : RowArithmetic 1365344255 65 25 1052140430 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0723 : LiftedFamily where
  residue := 1365344255
  steps := 65
  odd_inputs := 25
  endpoint := 1052140430
  arithmetic := m31_lift_0723_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1365344255 65
    · calc
        collatzIter 1365344255 65 = 1052140430 := m31_lift_0723_arithmetic.endpoint
        _ < 1365344255 := m31_lift_0723_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1365344255 65) = 6 ^ 25 := by rw [m31_lift_0723_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0723_arithmetic.slope_below

theorem m31_lift_0724_arithmetic : RowArithmetic 1382121471 88 34 1279525982 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0724 : LiftedFamily where
  residue := 1382121471
  steps := 88
  odd_inputs := 34
  endpoint := 1279525982
  arithmetic := m31_lift_0724_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1382121471 88
    · calc
        collatzIter 1382121471 88 = 1279525982 := m31_lift_0724_arithmetic.endpoint
        _ < 1382121471 := m31_lift_0724_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1382121471 88) = 6 ^ 34 := by rw [m31_lift_0724_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0724_arithmetic.slope_below

theorem m31_lift_0725_arithmetic : RowArithmetic 1390510079 60 23 952474069 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0725 : LiftedFamily where
  residue := 1390510079
  steps := 60
  odd_inputs := 23
  endpoint := 952474069
  arithmetic := m31_lift_0725_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1390510079 60
    · calc
        collatzIter 1390510079 60 = 952474069 := m31_lift_0725_arithmetic.endpoint
        _ < 1390510079 := m31_lift_0725_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1390510079 60) = 6 ^ 23 := by rw [m31_lift_0725_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0725_arithmetic.slope_below

theorem m31_lift_0726_arithmetic : RowArithmetic 1398898687 52 20 1135668281 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0726 : LiftedFamily where
  residue := 1398898687
  steps := 52
  odd_inputs := 20
  endpoint := 1135668281
  arithmetic := m31_lift_0726_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1398898687 52
    · calc
        collatzIter 1398898687 52 = 1135668281 := m31_lift_0726_arithmetic.endpoint
        _ < 1398898687 := m31_lift_0726_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1398898687 52) = 6 ^ 20 := by rw [m31_lift_0726_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0726_arithmetic.slope_below

theorem m31_lift_0727_arithmetic : RowArithmetic 1407287295 55 21 856858805 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0727 : LiftedFamily where
  residue := 1407287295
  steps := 55
  odd_inputs := 21
  endpoint := 856858805
  arithmetic := m31_lift_0727_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1407287295 55
    · calc
        collatzIter 1407287295 55 = 856858805 := m31_lift_0727_arithmetic.endpoint
        _ < 1407287295 := m31_lift_0727_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1407287295 55) = 6 ^ 21 := by rw [m31_lift_0727_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0727_arithmetic.slope_below

theorem m31_lift_0728_arithmetic : RowArithmetic 1415675903 88 34 1310589653 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0728 : LiftedFamily where
  residue := 1415675903
  steps := 88
  odd_inputs := 34
  endpoint := 1310589653
  arithmetic := m31_lift_0728_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1415675903 88
    · calc
        collatzIter 1415675903 88 = 1310589653 := m31_lift_0728_arithmetic.endpoint
        _ < 1415675903 := m31_lift_0728_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1415675903 88) = 6 ^ 34 := by rw [m31_lift_0728_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0728_arithmetic.slope_below

theorem m31_lift_0729_arithmetic : RowArithmetic 1432453119 52 20 1162908784 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0729 : LiftedFamily where
  residue := 1432453119
  steps := 52
  odd_inputs := 20
  endpoint := 1162908784
  arithmetic := m31_lift_0729_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1432453119 52
    · calc
        collatzIter 1432453119 52 = 1162908784 := m31_lift_0729_arithmetic.endpoint
        _ < 1432453119 := m31_lift_0729_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1432453119 52) = 6 ^ 20 := by rw [m31_lift_0729_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0729_arithmetic.slope_below

theorem m31_lift_0730_arithmetic : RowArithmetic 1482784767 86 33 915144664 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0730 : LiftedFamily where
  residue := 1482784767
  steps := 86
  odd_inputs := 33
  endpoint := 915144664
  arithmetic := m31_lift_0730_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1482784767 86
    · calc
        collatzIter 1482784767 86 = 915144664 := m31_lift_0730_arithmetic.endpoint
        _ < 1482784767 := m31_lift_0730_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1482784767 86) = 6 ^ 33 := by rw [m31_lift_0730_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0730_arithmetic.slope_below

theorem m31_lift_0731_arithmetic : RowArithmetic 1499561983 57 22 1369563514 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0731 : LiftedFamily where
  residue := 1499561983
  steps := 57
  odd_inputs := 22
  endpoint := 1369563514
  arithmetic := m31_lift_0731_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1499561983 57
    · calc
        collatzIter 1499561983 57 = 1369563514 := m31_lift_0731_arithmetic.endpoint
        _ < 1499561983 := m31_lift_0731_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1499561983 57) = 6 ^ 22 := by rw [m31_lift_0731_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0731_arithmetic.slope_below

theorem m31_lift_0732_arithmetic : RowArithmetic 1516339199 68 26 876373360 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0732 : LiftedFamily where
  residue := 1516339199
  steps := 68
  odd_inputs := 26
  endpoint := 876373360
  arithmetic := m31_lift_0732_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1516339199 68
    · calc
        collatzIter 1516339199 68 = 876373360 := m31_lift_0732_arithmetic.endpoint
        _ < 1516339199 := m31_lift_0732_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1516339199 68) = 6 ^ 26 := by rw [m31_lift_0732_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0732_arithmetic.slope_below

theorem m31_lift_0733_arithmetic : RowArithmetic 1524727807 52 20 1237820168 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0733 : LiftedFamily where
  residue := 1524727807
  steps := 52
  odd_inputs := 20
  endpoint := 1237820168
  arithmetic := m31_lift_0733_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1524727807 52
    · calc
        collatzIter 1524727807 52 = 1237820168 := m31_lift_0733_arithmetic.endpoint
        _ < 1524727807 := m31_lift_0733_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1524727807 52) = 6 ^ 20 := by rw [m31_lift_0733_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0733_arithmetic.slope_below

theorem m31_lift_0734_arithmetic : RowArithmetic 1541505023 57 22 1407870472 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0734 : LiftedFamily where
  residue := 1541505023
  steps := 57
  odd_inputs := 22
  endpoint := 1407870472
  arithmetic := m31_lift_0734_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1541505023 57
    · calc
        collatzIter 1541505023 57 = 1407870472 := m31_lift_0734_arithmetic.endpoint
        _ < 1541505023 := m31_lift_0734_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1541505023 57) = 6 ^ 22 := by rw [m31_lift_0734_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0734_arithmetic.slope_below

theorem m31_lift_0735_arithmetic : RowArithmetic 1549893631 57 22 1415531863 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0735 : LiftedFamily where
  residue := 1549893631
  steps := 57
  odd_inputs := 22
  endpoint := 1415531863
  arithmetic := m31_lift_0735_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1549893631 57
    · calc
        collatzIter 1549893631 57 = 1415531863 := m31_lift_0735_arithmetic.endpoint
        _ < 1549893631 := m31_lift_0735_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1549893631 57) = 6 ^ 22 := by rw [m31_lift_0735_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0735_arithmetic.slope_below

theorem m31_lift_0736_arithmetic : RowArithmetic 1575059455 55 21 959010692 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0736 : LiftedFamily where
  residue := 1575059455
  steps := 55
  odd_inputs := 21
  endpoint := 959010692
  arithmetic := m31_lift_0736_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1575059455 55
    · calc
        collatzIter 1575059455 55 = 959010692 := m31_lift_0736_arithmetic.endpoint
        _ < 1575059455 := m31_lift_0736_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1575059455 55) = 6 ^ 21 := by rw [m31_lift_0736_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0736_arithmetic.slope_below

theorem m31_lift_0737_arithmetic : RowArithmetic 1608613887 57 22 1469161604 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0737 : LiftedFamily where
  residue := 1608613887
  steps := 57
  odd_inputs := 22
  endpoint := 1469161604
  arithmetic := m31_lift_0737_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1608613887 57
    · calc
        collatzIter 1608613887 57 = 1469161604 := m31_lift_0737_arithmetic.endpoint
        _ < 1608613887 := m31_lift_0737_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1608613887 57) = 6 ^ 22 := by rw [m31_lift_0737_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0737_arithmetic.slope_below

theorem m31_lift_0738_arithmetic : RowArithmetic 1617002495 83 32 1330641496 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0738 : LiftedFamily where
  residue := 1617002495
  steps := 83
  odd_inputs := 32
  endpoint := 1330641496
  arithmetic := m31_lift_0738_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1617002495 83
    · calc
        collatzIter 1617002495 83 = 1330641496 := m31_lift_0738_arithmetic.endpoint
        _ < 1617002495 := m31_lift_0738_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1617002495 83) = 6 ^ 32 := by rw [m31_lift_0738_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0738_arithmetic.slope_below

theorem m31_lift_0739_arithmetic : RowArithmetic 1633779711 70 27 1416372751 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0739 : LiftedFamily where
  residue := 1633779711
  steps := 70
  odd_inputs := 27
  endpoint := 1416372751
  arithmetic := m31_lift_0739_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1633779711 70
    · calc
        collatzIter 1633779711 70 = 1416372751 := m31_lift_0739_arithmetic.endpoint
        _ < 1633779711 := m31_lift_0739_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1633779711 70) = 6 ^ 27 := by rw [m31_lift_0739_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0739_arithmetic.slope_below

theorem m31_lift_0740_arithmetic : RowArithmetic 1650556927 60 23 1130601421 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0740 : LiftedFamily where
  residue := 1650556927
  steps := 60
  odd_inputs := 23
  endpoint := 1130601421
  arithmetic := m31_lift_0740_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1650556927 60
    · calc
        collatzIter 1650556927 60 = 1130601421 := m31_lift_0740_arithmetic.endpoint
        _ < 1650556927 := m31_lift_0740_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1650556927 60) = 6 ^ 23 := by rw [m31_lift_0740_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0740_arithmetic.slope_below

theorem m31_lift_0741_arithmetic : RowArithmetic 1658945535 57 22 1515129953 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0741 : LiftedFamily where
  residue := 1658945535
  steps := 57
  odd_inputs := 22
  endpoint := 1515129953
  arithmetic := m31_lift_0741_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1658945535 57
    · calc
        collatzIter 1658945535 57 = 1515129953 := m31_lift_0741_arithmetic.endpoint
        _ < 1658945535 := m31_lift_0741_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1658945535 57) = 6 ^ 22 := by rw [m31_lift_0741_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0741_arithmetic.slope_below

theorem m31_lift_0742_arithmetic : RowArithmetic 1667334143 52 20 1353592306 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0742 : LiftedFamily where
  residue := 1667334143
  steps := 52
  odd_inputs := 20
  endpoint := 1353592306
  arithmetic := m31_lift_0742_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1667334143 52
    · calc
        collatzIter 1667334143 52 = 1353592306 := m31_lift_0742_arithmetic.endpoint
        _ < 1667334143 := m31_lift_0742_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1667334143 52) = 6 ^ 20 := by rw [m31_lift_0742_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0742_arithmetic.slope_below

theorem m31_lift_0743_arithmetic : RowArithmetic 1675722751 109 42 1242467837 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0743 : LiftedFamily where
  residue := 1675722751
  steps := 109
  odd_inputs := 42
  endpoint := 1242467837
  arithmetic := m31_lift_0743_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1675722751 109
    · calc
        collatzIter 1675722751 109 = 1242467837 := m31_lift_0743_arithmetic.endpoint
        _ < 1675722751 := m31_lift_0743_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1675722751 109) = 6 ^ 42 := by rw [m31_lift_0743_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0743_arithmetic.slope_below

theorem m31_lift_0744_arithmetic : RowArithmetic 1684111359 88 34 1559099026 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0744 : LiftedFamily where
  residue := 1684111359
  steps := 88
  odd_inputs := 34
  endpoint := 1559099026
  arithmetic := m31_lift_0744_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1684111359 88
    · calc
        collatzIter 1684111359 88 = 1559099026 := m31_lift_0744_arithmetic.endpoint
        _ < 1684111359 := m31_lift_0744_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1684111359 88) = 6 ^ 34 := by rw [m31_lift_0744_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0744_arithmetic.slope_below

theorem m31_lift_0745_arithmetic : RowArithmetic 1717665791 132 51 1530005560 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0745 : LiftedFamily where
  residue := 1717665791
  steps := 132
  odd_inputs := 51
  endpoint := 1530005560
  arithmetic := m31_lift_0745_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1717665791 132
    · calc
        collatzIter 1717665791 132 = 1530005560 := m31_lift_0745_arithmetic.endpoint
        _ < 1717665791 := m31_lift_0745_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1717665791 132) = 6 ^ 51 := by rw [m31_lift_0745_arithmetic.odd_inputs]
        _ < 2 ^ 132 := m31_lift_0745_arithmetic.slope_below

theorem m31_lift_0746_arithmetic : RowArithmetic 1751220223 65 25 1349498188 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0746 : LiftedFamily where
  residue := 1751220223
  steps := 65
  odd_inputs := 25
  endpoint := 1349498188
  arithmetic := m31_lift_0746_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1751220223 65
    · calc
        collatzIter 1751220223 65 = 1349498188 := m31_lift_0746_arithmetic.endpoint
        _ < 1751220223 := m31_lift_0746_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1751220223 65) = 6 ^ 25 := by rw [m31_lift_0746_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0746_arithmetic.slope_below

theorem m31_lift_0747_arithmetic : RowArithmetic 1767997439 60 23 1211046032 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0747 : LiftedFamily where
  residue := 1767997439
  steps := 60
  odd_inputs := 23
  endpoint := 1211046032
  arithmetic := m31_lift_0747_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1767997439 60
    · calc
        collatzIter 1767997439 60 = 1211046032 := m31_lift_0747_arithmetic.endpoint
        _ < 1767997439 := m31_lift_0747_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1767997439 60) = 6 ^ 23 := by rw [m31_lift_0747_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0747_arithmetic.slope_below

theorem m31_lift_0748_arithmetic : RowArithmetic 1784774655 52 20 1448934067 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0748 : LiftedFamily where
  residue := 1784774655
  steps := 52
  odd_inputs := 20
  endpoint := 1448934067
  arithmetic := m31_lift_0748_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1784774655 52
    · calc
        collatzIter 1784774655 52 = 1448934067 := m31_lift_0748_arithmetic.endpoint
        _ < 1784774655 := m31_lift_0748_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1784774655 52) = 6 ^ 20 := by rw [m31_lift_0748_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0748_arithmetic.slope_below

theorem m31_lift_0749_arithmetic : RowArithmetic 1809940479 57 22 1653035000 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0749 : LiftedFamily where
  residue := 1809940479
  steps := 57
  odd_inputs := 22
  endpoint := 1653035000
  arithmetic := m31_lift_0749_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1809940479 57
    · calc
        collatzIter 1809940479 57 = 1653035000 := m31_lift_0749_arithmetic.endpoint
        _ < 1809940479 := m31_lift_0749_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1809940479 57) = 6 ^ 22 := by rw [m31_lift_0749_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0749_arithmetic.slope_below

theorem m31_lift_0750_arithmetic : RowArithmetic 1818329087 75 29 1773409672 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0750 : LiftedFamily where
  residue := 1818329087
  steps := 75
  odd_inputs := 29
  endpoint := 1773409672
  arithmetic := m31_lift_0750_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1818329087 75
    · calc
        collatzIter 1818329087 75 = 1773409672 := m31_lift_0750_arithmetic.endpoint
        _ < 1818329087 := m31_lift_0750_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1818329087 75) = 6 ^ 29 := by rw [m31_lift_0750_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0750_arithmetic.slope_below

theorem m31_lift_0751_arithmetic : RowArithmetic 1835106303 60 23 1257014381 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0751 : LiftedFamily where
  residue := 1835106303
  steps := 60
  odd_inputs := 23
  endpoint := 1257014381
  arithmetic := m31_lift_0751_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1835106303 60
    · calc
        collatzIter 1835106303 60 = 1257014381 := m31_lift_0751_arithmetic.endpoint
        _ < 1835106303 := m31_lift_0751_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1835106303 60) = 6 ^ 23 := by rw [m31_lift_0751_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0751_arithmetic.slope_below

theorem m31_lift_0752_arithmetic : RowArithmetic 1843494911 65 25 1420605478 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0752 : LiftedFamily where
  residue := 1843494911
  steps := 65
  odd_inputs := 25
  endpoint := 1420605478
  arithmetic := m31_lift_0752_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1843494911 65
    · calc
        collatzIter 1843494911 65 = 1420605478 := m31_lift_0752_arithmetic.endpoint
        _ < 1843494911 := m31_lift_0752_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1843494911 65) = 6 ^ 25 := by rw [m31_lift_0752_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0752_arithmetic.slope_below

theorem m31_lift_0753_arithmetic : RowArithmetic 1851883519 70 27 1605453499 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0753 : LiftedFamily where
  residue := 1851883519
  steps := 70
  odd_inputs := 27
  endpoint := 1605453499
  arithmetic := m31_lift_0753_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1851883519 70
    · calc
        collatzIter 1851883519 70 = 1605453499 := m31_lift_0753_arithmetic.endpoint
        _ < 1851883519 := m31_lift_0753_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1851883519 70) = 6 ^ 27 := by rw [m31_lift_0753_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0753_arithmetic.slope_below

theorem m31_lift_0754_arithmetic : RowArithmetic 1885437951 68 26 1089695230 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0754 : LiftedFamily where
  residue := 1885437951
  steps := 68
  odd_inputs := 26
  endpoint := 1089695230
  arithmetic := m31_lift_0754_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1885437951 68
    · calc
        collatzIter 1885437951 68 = 1089695230 := m31_lift_0754_arithmetic.endpoint
        _ < 1885437951 := m31_lift_0754_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1885437951 68) = 6 ^ 26 := by rw [m31_lift_0754_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0754_arithmetic.slope_below

theorem m31_lift_0755_arithmetic : RowArithmetic 1902215167 52 20 1544275828 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0755 : LiftedFamily where
  residue := 1902215167
  steps := 52
  odd_inputs := 20
  endpoint := 1544275828
  arithmetic := m31_lift_0755_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1902215167 52
    · calc
        collatzIter 1902215167 52 = 1544275828 := m31_lift_0755_arithmetic.endpoint
        _ < 1902215167 := m31_lift_0755_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1902215167 52) = 6 ^ 20 := by rw [m31_lift_0755_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0755_arithmetic.slope_below

theorem m31_lift_0756_arithmetic : RowArithmetic 1918992383 63 24 985856113 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0756 : LiftedFamily where
  residue := 1918992383
  steps := 63
  odd_inputs := 24
  endpoint := 985856113
  arithmetic := m31_lift_0756_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1918992383 63
    · calc
        collatzIter 1918992383 63 = 985856113 := m31_lift_0756_arithmetic.endpoint
        _ < 1918992383 := m31_lift_0756_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1918992383 63) = 6 ^ 24 := by rw [m31_lift_0756_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0756_arithmetic.slope_below

theorem m31_lift_0757_arithmetic : RowArithmetic 1927380991 63 24 990165646 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0757 : LiftedFamily where
  residue := 1927380991
  steps := 63
  odd_inputs := 24
  endpoint := 990165646
  arithmetic := m31_lift_0757_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1927380991 63
    · calc
        collatzIter 1927380991 63 = 990165646 := m31_lift_0757_arithmetic.endpoint
        _ < 1927380991 := m31_lift_0757_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1927380991 63) = 6 ^ 24 := by rw [m31_lift_0757_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0757_arithmetic.slope_below

theorem m31_lift_0758_arithmetic : RowArithmetic 1944158207 57 22 1775617264 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0758 : LiftedFamily where
  residue := 1944158207
  steps := 57
  odd_inputs := 22
  endpoint := 1775617264
  arithmetic := m31_lift_0758_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1944158207 57
    · calc
        collatzIter 1944158207 57 = 1775617264 := m31_lift_0758_arithmetic.endpoint
        _ < 1944158207 := m31_lift_0758_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1944158207 57) = 6 ^ 22 := by rw [m31_lift_0758_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0758_arithmetic.slope_below

theorem m31_lift_0759_arithmetic : RowArithmetic 1952546815 75 29 1904311729 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0759 : LiftedFamily where
  residue := 1952546815
  steps := 75
  odd_inputs := 29
  endpoint := 1904311729
  arithmetic := m31_lift_0759_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1952546815 75
    · calc
        collatzIter 1952546815 75 = 1904311729 := m31_lift_0759_arithmetic.endpoint
        _ < 1952546815 := m31_lift_0759_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1952546815 75) = 6 ^ 29 := by rw [m31_lift_0759_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0759_arithmetic.slope_below

theorem m31_lift_0760_arithmetic : RowArithmetic 1969324031 60 23 1348951079 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0760 : LiftedFamily where
  residue := 1969324031
  steps := 60
  odd_inputs := 23
  endpoint := 1348951079
  arithmetic := m31_lift_0760_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1969324031 60
    · calc
        collatzIter 1969324031 60 = 1348951079 := m31_lift_0760_arithmetic.endpoint
        _ < 1969324031 := m31_lift_0760_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1969324031 60) = 6 ^ 23 := by rw [m31_lift_0760_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0760_arithmetic.slope_below

theorem m31_lift_0761_arithmetic : RowArithmetic 2011267071 65 25 1549891460 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0761 : LiftedFamily where
  residue := 2011267071
  steps := 65
  odd_inputs := 25
  endpoint := 1549891460
  arithmetic := m31_lift_0761_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2011267071 65
    · calc
        collatzIter 2011267071 65 = 1549891460 := m31_lift_0761_arithmetic.endpoint
        _ < 2011267071 := m31_lift_0761_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2011267071 65) = 6 ^ 25 := by rw [m31_lift_0761_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0761_arithmetic.slope_below

theorem m31_lift_0762_arithmetic : RowArithmetic 2019655679 68 26 1167266819 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0762 : LiftedFamily where
  residue := 2019655679
  steps := 68
  odd_inputs := 26
  endpoint := 1167266819
  arithmetic := m31_lift_0762_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2019655679 68
    · calc
        collatzIter 2019655679 68 = 1167266819 := m31_lift_0762_arithmetic.endpoint
        _ < 2019655679 := m31_lift_0762_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2019655679 68) = 6 ^ 26 := by rw [m31_lift_0762_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0762_arithmetic.slope_below

theorem m31_lift_0763_arithmetic : RowArithmetic 2036432895 60 23 1394919428 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0763 : LiftedFamily where
  residue := 2036432895
  steps := 60
  odd_inputs := 23
  endpoint := 1394919428
  arithmetic := m31_lift_0763_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2036432895 60
    · calc
        collatzIter 2036432895 60 = 1394919428 := m31_lift_0763_arithmetic.endpoint
        _ < 2036432895 := m31_lift_0763_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2036432895 60) = 6 ^ 23 := by rw [m31_lift_0763_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0763_arithmetic.slope_below

theorem m31_lift_0764_arithmetic : RowArithmetic 2053210111 68 26 1186659716 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0764 : LiftedFamily where
  residue := 2053210111
  steps := 68
  odd_inputs := 26
  endpoint := 1186659716
  arithmetic := m31_lift_0764_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2053210111 68
    · calc
        collatzIter 2053210111 68 = 1186659716 := m31_lift_0764_arithmetic.endpoint
        _ < 2053210111 := m31_lift_0764_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2053210111 68) = 6 ^ 26 := by rw [m31_lift_0764_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0764_arithmetic.slope_below

theorem m31_lift_0765_arithmetic : RowArithmetic 2069987327 104 40 1364263166 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0765 : LiftedFamily where
  residue := 2069987327
  steps := 104
  odd_inputs := 40
  endpoint := 1364263166
  arithmetic := m31_lift_0765_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2069987327 104
    · calc
        collatzIter 2069987327 104 = 1364263166 := m31_lift_0765_arithmetic.endpoint
        _ < 2069987327 := m31_lift_0765_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2069987327 104) = 6 ^ 40 := by rw [m31_lift_0765_arithmetic.odd_inputs]
        _ < 2 ^ 104 := m31_lift_0765_arithmetic.slope_below

theorem m31_lift_0766_arithmetic : RowArithmetic 2078375935 63 24 1067737235 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0766 : LiftedFamily where
  residue := 2078375935
  steps := 63
  odd_inputs := 24
  endpoint := 1067737235
  arithmetic := m31_lift_0766_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2078375935 63
    · calc
        collatzIter 2078375935 63 = 1067737235 := m31_lift_0766_arithmetic.endpoint
        _ < 2078375935 := m31_lift_0766_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2078375935 63) = 6 ^ 24 := by rw [m31_lift_0766_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0766_arithmetic.slope_below

theorem m31_lift_0767_arithmetic : RowArithmetic 2086764543 96 37 1630009478 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0767 : LiftedFamily where
  residue := 2086764543
  steps := 96
  odd_inputs := 37
  endpoint := 1630009478
  arithmetic := m31_lift_0767_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2086764543 96
    · calc
        collatzIter 2086764543 96 = 1630009478 := m31_lift_0767_arithmetic.endpoint
        _ < 2086764543 := m31_lift_0767_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2086764543 96) = 6 ^ 37 := by rw [m31_lift_0767_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0767_arithmetic.slope_below

theorem m31_lift_0768_arithmetic : RowArithmetic 2120318975 96 37 1656219452 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0768 : LiftedFamily where
  residue := 2120318975
  steps := 96
  odd_inputs := 37
  endpoint := 1656219452
  arithmetic := m31_lift_0768_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2120318975 96
    · calc
        collatzIter 2120318975 96 = 1656219452 := m31_lift_0768_arithmetic.endpoint
        _ < 2120318975 := m31_lift_0768_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2120318975 96) = 6 ^ 37 := by rw [m31_lift_0768_arithmetic.odd_inputs]
        _ < 2 ^ 96 := m31_lift_0768_arithmetic.slope_below

theorem m31_lift_0769_arithmetic : RowArithmetic 2145484799 65 25 1653320245 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0769 : LiftedFamily where
  residue := 2145484799
  steps := 65
  odd_inputs := 25
  endpoint := 1653320245
  arithmetic := m31_lift_0769_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2145484799 65
    · calc
        collatzIter 2145484799 65 = 1653320245 := m31_lift_0769_arithmetic.endpoint
        _ < 2145484799 := m31_lift_0769_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2145484799 65) = 6 ^ 25 := by rw [m31_lift_0769_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0769_arithmetic.slope_below

theorem m31_lift_0770_arithmetic : RowArithmetic 4259839 60 23 2917913 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0770 : LiftedFamily where
  residue := 4259839
  steps := 60
  odd_inputs := 23
  endpoint := 2917913
  arithmetic := m31_lift_0770_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 4259839 60
    · calc
        collatzIter 4259839 60 = 2917913 := m31_lift_0770_arithmetic.endpoint
        _ < 4259839 := m31_lift_0770_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 4259839 60) = 6 ^ 23 := by rw [m31_lift_0770_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0770_arithmetic.slope_below

theorem m31_lift_0771_arithmetic : RowArithmetic 21037055 52 20 17078519 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0771 : LiftedFamily where
  residue := 21037055
  steps := 52
  odd_inputs := 20
  endpoint := 17078519
  arithmetic := m31_lift_0771_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 21037055 52
    · calc
        collatzIter 21037055 52 = 17078519 := m31_lift_0771_arithmetic.endpoint
        _ < 21037055 := m31_lift_0771_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 21037055 52) = 6 ^ 20 := by rw [m31_lift_0771_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0771_arithmetic.slope_below

theorem m31_lift_0772_arithmetic : RowArithmetic 37814271 70 27 32782330 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0772 : LiftedFamily where
  residue := 37814271
  steps := 70
  odd_inputs := 27
  endpoint := 32782330
  arithmetic := m31_lift_0772_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 37814271 70
    · calc
        collatzIter 37814271 70 = 32782330 := m31_lift_0772_arithmetic.endpoint
        _ < 37814271 := m31_lift_0772_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 37814271 70) = 6 ^ 27 := by rw [m31_lift_0772_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0772_arithmetic.slope_below

theorem m31_lift_0773_arithmetic : RowArithmetic 71368703 57 22 65181683 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0773 : LiftedFamily where
  residue := 71368703
  steps := 57
  odd_inputs := 22
  endpoint := 65181683
  arithmetic := m31_lift_0773_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 71368703 57
    · calc
        collatzIter 71368703 57 = 65181683 := m31_lift_0773_arithmetic.endpoint
        _ < 71368703 := m31_lift_0773_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 71368703 57) = 6 ^ 22 := by rw [m31_lift_0773_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0773_arithmetic.slope_below

theorem m31_lift_0774_arithmetic : RowArithmetic 104923135 109 42 77795461 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0774 : LiftedFamily where
  residue := 104923135
  steps := 109
  odd_inputs := 42
  endpoint := 77795461
  arithmetic := m31_lift_0774_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 104923135 109
    · calc
        collatzIter 104923135 109 = 77795461 := m31_lift_0774_arithmetic.endpoint
        _ < 104923135 := m31_lift_0774_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 104923135 109) = 6 ^ 42 := by rw [m31_lift_0774_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0774_arithmetic.slope_below

theorem m31_lift_0775_arithmetic : RowArithmetic 121700351 70 27 105505696 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0775 : LiftedFamily where
  residue := 121700351
  steps := 70
  odd_inputs := 27
  endpoint := 105505696
  arithmetic := m31_lift_0775_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 121700351 70
    · calc
        collatzIter 121700351 70 = 105505696 := m31_lift_0775_arithmetic.endpoint
        _ < 121700351 := m31_lift_0775_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 121700351 70) = 6 ^ 27 := by rw [m31_lift_0775_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0775_arithmetic.slope_below

theorem m31_lift_0776_arithmetic : RowArithmetic 138477567 109 42 102674459 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0776 : LiftedFamily where
  residue := 138477567
  steps := 109
  odd_inputs := 42
  endpoint := 102674459
  arithmetic := m31_lift_0776_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 138477567 109
    · calc
        collatzIter 138477567 109 = 102674459 := m31_lift_0776_arithmetic.endpoint
        _ < 138477567 := m31_lift_0776_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 138477567 109) = 6 ^ 42 := by rw [m31_lift_0776_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0776_arithmetic.slope_below

theorem m31_lift_0777_arithmetic : RowArithmetic 155254783 132 51 138292726 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0777 : LiftedFamily where
  residue := 155254783
  steps := 132
  odd_inputs := 51
  endpoint := 138292726
  arithmetic := m31_lift_0777_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 155254783 132
    · calc
        collatzIter 155254783 132 = 138292726 := m31_lift_0777_arithmetic.endpoint
        _ < 155254783 := m31_lift_0777_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 155254783 132) = 6 ^ 51 := by rw [m31_lift_0777_arithmetic.odd_inputs]
        _ < 2 ^ 132 := m31_lift_0777_arithmetic.slope_below

theorem m31_lift_0778_arithmetic : RowArithmetic 205586431 83 32 169178365 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0778 : LiftedFamily where
  residue := 205586431
  steps := 83
  odd_inputs := 32
  endpoint := 169178365
  arithmetic := m31_lift_0778_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 205586431 83
    · calc
        collatzIter 205586431 83 = 169178365 := m31_lift_0778_arithmetic.endpoint
        _ < 205586431 := m31_lift_0778_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 205586431 83) = 6 ^ 32 := by rw [m31_lift_0778_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0778_arithmetic.slope_below

theorem m31_lift_0779_arithmetic : RowArithmetic 222363647 70 27 192773732 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0779 : LiftedFamily where
  residue := 222363647
  steps := 70
  odd_inputs := 27
  endpoint := 192773732
  arithmetic := m31_lift_0779_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 222363647 70
    · calc
        collatzIter 222363647 70 = 192773732 := m31_lift_0779_arithmetic.endpoint
        _ < 222363647 := m31_lift_0779_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 222363647 70) = 6 ^ 27 := by rw [m31_lift_0779_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0779_arithmetic.slope_below

theorem m31_lift_0780_arithmetic : RowArithmetic 239140863 86 33 147592888 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0780 : LiftedFamily where
  residue := 239140863
  steps := 86
  odd_inputs := 33
  endpoint := 147592888
  arithmetic := m31_lift_0780_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 239140863 86
    · calc
        collatzIter 239140863 86 = 147592888 := m31_lift_0780_arithmetic.endpoint
        _ < 239140863 := m31_lift_0780_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 239140863 86) = 6 ^ 33 := by rw [m31_lift_0780_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0780_arithmetic.slope_below

theorem m31_lift_0781_arithmetic : RowArithmetic 255918079 52 20 207762041 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0781 : LiftedFamily where
  residue := 255918079
  steps := 52
  odd_inputs := 20
  endpoint := 207762041
  arithmetic := m31_lift_0781_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 255918079 52
    · calc
        collatzIter 255918079 52 = 207762041 := m31_lift_0781_arithmetic.endpoint
        _ < 255918079 := m31_lift_0781_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 255918079 52) = 6 ^ 20 := by rw [m31_lift_0781_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0781_arithmetic.slope_below

theorem m31_lift_0782_arithmetic : RowArithmetic 272695295 109 42 202190449 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0782 : LiftedFamily where
  residue := 272695295
  steps := 109
  odd_inputs := 42
  endpoint := 202190449
  arithmetic := m31_lift_0782_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 272695295 109
    · calc
        collatzIter 272695295 109 = 202190449 := m31_lift_0782_arithmetic.endpoint
        _ < 272695295 := m31_lift_0782_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 272695295 109) = 6 ^ 42 := by rw [m31_lift_0782_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0782_arithmetic.slope_below

theorem m31_lift_0783_arithmetic : RowArithmetic 306249727 60 23 209775484 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0783 : LiftedFamily where
  residue := 306249727
  steps := 60
  odd_inputs := 23
  endpoint := 209775484
  arithmetic := m31_lift_0783_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 306249727 60
    · calc
        collatzIter 306249727 60 = 209775484 := m31_lift_0783_arithmetic.endpoint
        _ < 306249727 := m31_lift_0783_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 306249727 60) = 6 ^ 23 := by rw [m31_lift_0783_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0783_arithmetic.slope_below

theorem m31_lift_0784_arithmetic : RowArithmetic 339804159 55 21 206897474 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0784 : LiftedFamily where
  residue := 339804159
  steps := 55
  odd_inputs := 21
  endpoint := 206897474
  arithmetic := m31_lift_0784_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 339804159 55
    · calc
        collatzIter 339804159 55 = 206897474 := m31_lift_0784_arithmetic.endpoint
        _ < 339804159 := m31_lift_0784_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 339804159 55) = 6 ^ 21 := by rw [m31_lift_0784_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0784_arithmetic.slope_below

theorem m31_lift_0785_arithmetic : RowArithmetic 356581375 57 22 325668994 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0785 : LiftedFamily where
  residue := 356581375
  steps := 57
  odd_inputs := 22
  endpoint := 325668994
  arithmetic := m31_lift_0785_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 356581375 57
    · calc
        collatzIter 356581375 57 = 325668994 := m31_lift_0785_arithmetic.endpoint
        _ < 356581375 := m31_lift_0785_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 356581375 57) = 6 ^ 22 := by rw [m31_lift_0785_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0785_arithmetic.slope_below

theorem m31_lift_0786_arithmetic : RowArithmetic 373358591 57 22 340991777 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0786 : LiftedFamily where
  residue := 373358591
  steps := 57
  odd_inputs := 22
  endpoint := 340991777
  arithmetic := m31_lift_0786_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 373358591 57
    · calc
        collatzIter 373358591 57 = 340991777 := m31_lift_0786_arithmetic.endpoint
        _ < 373358591 := m31_lift_0786_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 373358591 57) = 6 ^ 22 := by rw [m31_lift_0786_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0786_arithmetic.slope_below

theorem m31_lift_0787_arithmetic : RowArithmetic 390135807 88 34 361175855 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0787 : LiftedFamily where
  residue := 390135807
  steps := 88
  odd_inputs := 34
  endpoint := 361175855
  arithmetic := m31_lift_0787_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 390135807 88
    · calc
        collatzIter 390135807 88 = 361175855 := m31_lift_0787_arithmetic.endpoint
        _ < 390135807 := m31_lift_0787_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 390135807 88) = 6 ^ 34 := by rw [m31_lift_0787_arithmetic.odd_inputs]
        _ < 2 ^ 88 := m31_lift_0787_arithmetic.slope_below

theorem m31_lift_0788_arithmetic : RowArithmetic 406913023 91 35 282530768 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0788 : LiftedFamily where
  residue := 406913023
  steps := 91
  odd_inputs := 35
  endpoint := 282530768
  arithmetic := m31_lift_0788_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 406913023 91
    · calc
        collatzIter 406913023 91 = 282530768 := m31_lift_0788_arithmetic.endpoint
        _ < 406913023 := m31_lift_0788_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 406913023 91) = 6 ^ 35 := by rw [m31_lift_0788_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0788_arithmetic.slope_below

theorem m31_lift_0789_arithmetic : RowArithmetic 423690239 60 23 290220095 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0789 : LiftedFamily where
  residue := 423690239
  steps := 60
  odd_inputs := 23
  endpoint := 290220095
  arithmetic := m31_lift_0789_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 423690239 60
    · calc
        collatzIter 423690239 60 = 290220095 := m31_lift_0789_arithmetic.endpoint
        _ < 423690239 := m31_lift_0789_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 423690239 60) = 6 ^ 23 := by rw [m31_lift_0789_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0789_arithmetic.slope_below

theorem m31_lift_0790_arithmetic : RowArithmetic 474021887 52 20 384825311 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0790 : LiftedFamily where
  residue := 474021887
  steps := 52
  odd_inputs := 20
  endpoint := 384825311
  arithmetic := m31_lift_0790_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 474021887 52
    · calc
        collatzIter 474021887 52 = 384825311 := m31_lift_0790_arithmetic.endpoint
        _ < 474021887 := m31_lift_0790_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 474021887 52) = 6 ^ 20 := by rw [m31_lift_0790_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0790_arithmetic.slope_below

theorem m31_lift_0791_arithmetic : RowArithmetic 490799103 55 21 298834172 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0791 : LiftedFamily where
  residue := 490799103
  steps := 55
  odd_inputs := 21
  endpoint := 298834172
  arithmetic := m31_lift_0791_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 490799103 55
    · calc
        collatzIter 490799103 55 = 298834172 := m31_lift_0791_arithmetic.endpoint
        _ < 490799103 := m31_lift_0791_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 490799103 55) = 6 ^ 21 := by rw [m31_lift_0791_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0791_arithmetic.slope_below

theorem m31_lift_0792_arithmetic : RowArithmetic 507576319 60 23 347680531 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0792 : LiftedFamily where
  residue := 507576319
  steps := 60
  odd_inputs := 23
  endpoint := 347680531
  arithmetic := m31_lift_0792_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 507576319 60
    · calc
        collatzIter 507576319 60 = 347680531 := m31_lift_0792_arithmetic.endpoint
        _ < 507576319 := m31_lift_0792_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 507576319 60) = 6 ^ 23 := by rw [m31_lift_0792_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0792_arithmetic.slope_below

theorem m31_lift_0793_arithmetic : RowArithmetic 541130751 55 21 329479738 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0793 : LiftedFamily where
  residue := 541130751
  steps := 55
  odd_inputs := 21
  endpoint := 329479738
  arithmetic := m31_lift_0793_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 541130751 55
    · calc
        collatzIter 541130751 55 = 329479738 := m31_lift_0793_arithmetic.endpoint
        _ < 541130751 := m31_lift_0793_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 541130751 55) = 6 ^ 21 := by rw [m31_lift_0793_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0793_arithmetic.slope_below

theorem m31_lift_0794_arithmetic : RowArithmetic 574685183 68 26 332141243 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0794 : LiftedFamily where
  residue := 574685183
  steps := 68
  odd_inputs := 26
  endpoint := 332141243
  arithmetic := m31_lift_0794_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 574685183 68
    · calc
        collatzIter 574685183 68 = 332141243 := m31_lift_0794_arithmetic.endpoint
        _ < 574685183 := m31_lift_0794_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 574685183 68) = 6 ^ 26 := by rw [m31_lift_0794_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0794_arithmetic.slope_below

theorem m31_lift_0795_arithmetic : RowArithmetic 625016831 60 23 428125142 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0795 : LiftedFamily where
  residue := 625016831
  steps := 60
  odd_inputs := 23
  endpoint := 428125142
  arithmetic := m31_lift_0795_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 625016831 60
    · calc
        collatzIter 625016831 60 = 428125142 := m31_lift_0795_arithmetic.endpoint
        _ < 625016831 := m31_lift_0795_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 625016831 60) = 6 ^ 23 := by rw [m31_lift_0795_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0795_arithmetic.slope_below

theorem m31_lift_0796_arithmetic : RowArithmetic 641794047 68 26 370927037 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0796 : LiftedFamily where
  residue := 641794047
  steps := 68
  odd_inputs := 26
  endpoint := 370927037
  arithmetic := m31_lift_0796_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 641794047 68
    · calc
        collatzIter 641794047 68 = 370927037 := m31_lift_0796_arithmetic.endpoint
        _ < 641794047 := m31_lift_0796_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 641794047 68) = 6 ^ 26 := by rw [m31_lift_0796_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0796_arithmetic.slope_below

theorem m31_lift_0797_arithmetic : RowArithmetic 658571263 55 21 400986059 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0797 : LiftedFamily where
  residue := 658571263
  steps := 55
  odd_inputs := 21
  endpoint := 400986059
  arithmetic := m31_lift_0797_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 658571263 55
    · calc
        collatzIter 658571263 55 = 400986059 := m31_lift_0797_arithmetic.endpoint
        _ < 658571263 := m31_lift_0797_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 658571263 55) = 6 ^ 21 := by rw [m31_lift_0797_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0797_arithmetic.slope_below

theorem m31_lift_0798_arithmetic : RowArithmetic 675348479 81 31 370499000 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0798 : LiftedFamily where
  residue := 675348479
  steps := 81
  odd_inputs := 31
  endpoint := 370499000
  arithmetic := m31_lift_0798_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 675348479 81
    · calc
        collatzIter 675348479 81 = 370499000 := m31_lift_0798_arithmetic.endpoint
        _ < 675348479 := m31_lift_0798_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 675348479 81) = 6 ^ 31 := by rw [m31_lift_0798_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0798_arithmetic.slope_below

theorem m31_lift_0799_arithmetic : RowArithmetic 692125695 60 23 474093491 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0799 : LiftedFamily where
  residue := 692125695
  steps := 60
  odd_inputs := 23
  endpoint := 474093491
  arithmetic := m31_lift_0799_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 692125695 60
    · calc
        collatzIter 692125695 60 = 474093491 := m31_lift_0799_arithmetic.endpoint
        _ < 692125695 := m31_lift_0799_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 692125695 60) = 6 ^ 23 := by rw [m31_lift_0799_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0799_arithmetic.slope_below

theorem m31_lift_0800_arithmetic : RowArithmetic 742457343 73 28 482743945 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0800 : LiftedFamily where
  residue := 742457343
  steps := 73
  odd_inputs := 28
  endpoint := 482743945
  arithmetic := m31_lift_0800_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 742457343 73
    · calc
        collatzIter 742457343 73 = 482743945 := m31_lift_0800_arithmetic.endpoint
        _ < 742457343 := m31_lift_0800_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 742457343 73) = 6 ^ 28 := by rw [m31_lift_0800_arithmetic.odd_inputs]
        _ < 2 ^ 73 := m31_lift_0800_arithmetic.slope_below

theorem m31_lift_0801_arithmetic : RowArithmetic 759234559 78 30 555359006 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0801 : LiftedFamily where
  residue := 759234559
  steps := 78
  odd_inputs := 30
  endpoint := 555359006
  arithmetic := m31_lift_0801_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 759234559 78
    · calc
        collatzIter 759234559 78 = 555359006 := m31_lift_0801_arithmetic.endpoint
        _ < 759234559 := m31_lift_0801_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 759234559 78) = 6 ^ 30 := by rw [m31_lift_0801_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0801_arithmetic.slope_below

theorem m31_lift_0802_arithmetic : RowArithmetic 776011775 70 27 672747940 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0802 : LiftedFamily where
  residue := 776011775
  steps := 70
  odd_inputs := 27
  endpoint := 672747940
  arithmetic := m31_lift_0802_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 776011775 70
    · calc
        collatzIter 776011775 70 = 672747940 := m31_lift_0802_arithmetic.endpoint
        _ < 776011775 := m31_lift_0802_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 776011775 70) = 6 ^ 27 := by rw [m31_lift_0802_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0802_arithmetic.slope_below

theorem m31_lift_0803_arithmetic : RowArithmetic 809566207 78 30 592175210 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0803 : LiftedFamily where
  residue := 809566207
  steps := 78
  odd_inputs := 30
  endpoint := 592175210
  arithmetic := m31_lift_0803_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 809566207 78
    · calc
        collatzIter 809566207 78 = 592175210 := m31_lift_0803_arithmetic.endpoint
        _ < 809566207 := m31_lift_0803_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 809566207 78) = 6 ^ 30 := by rw [m31_lift_0803_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0803_arithmetic.slope_below

theorem m31_lift_0804_arithmetic : RowArithmetic 876675071 68 26 506677318 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0804 : LiftedFamily where
  residue := 876675071
  steps := 68
  odd_inputs := 26
  endpoint := 506677318
  arithmetic := m31_lift_0804_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 876675071 68
    · calc
        collatzIter 876675071 68 = 506677318 := m31_lift_0804_arithmetic.endpoint
        _ < 876675071 := m31_lift_0804_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 876675071 68) = 6 ^ 26 := by rw [m31_lift_0804_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0804_arithmetic.slope_below

theorem m31_lift_0805_arithmetic : RowArithmetic 893452287 60 23 611998538 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0805 : LiftedFamily where
  residue := 893452287
  steps := 60
  odd_inputs := 23
  endpoint := 611998538
  arithmetic := m31_lift_0805_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 893452287 60
    · calc
        collatzIter 893452287 60 = 611998538 := m31_lift_0805_arithmetic.endpoint
        _ < 893452287 := m31_lift_0805_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 893452287 60) = 6 ^ 23 := by rw [m31_lift_0805_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0805_arithmetic.slope_below

theorem m31_lift_0806_arithmetic : RowArithmetic 910229503 68 26 526070215 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0806 : LiftedFamily where
  residue := 910229503
  steps := 68
  odd_inputs := 26
  endpoint := 526070215
  arithmetic := m31_lift_0806_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 910229503 68
    · calc
        collatzIter 910229503 68 = 526070215 := m31_lift_0806_arithmetic.endpoint
        _ < 910229503 := m31_lift_0806_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 910229503 68) = 6 ^ 26 := by rw [m31_lift_0806_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0806_arithmetic.slope_below

theorem m31_lift_0807_arithmetic : RowArithmetic 927006719 65 25 714355552 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0807 : LiftedFamily where
  residue := 927006719
  steps := 65
  odd_inputs := 25
  endpoint := 714355552
  arithmetic := m31_lift_0807_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 927006719 65
    · calc
        collatzIter 927006719 65 = 714355552 := m31_lift_0807_arithmetic.endpoint
        _ < 927006719 := m31_lift_0807_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 927006719 65) = 6 ^ 25 := by rw [m31_lift_0807_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0807_arithmetic.slope_below

theorem m31_lift_0808_arithmetic : RowArithmetic 943783935 94 36 491471120 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0808 : LiftedFamily where
  residue := 943783935
  steps := 94
  odd_inputs := 36
  endpoint := 491471120
  arithmetic := m31_lift_0808_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 943783935 94
    · calc
        collatzIter 943783935 94 = 491471120 := m31_lift_0808_arithmetic.endpoint
        _ < 943783935 := m31_lift_0808_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 943783935 94) = 6 ^ 36 := by rw [m31_lift_0808_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0808_arithmetic.slope_below

theorem m31_lift_0809_arithmetic : RowArithmetic 977338367 117 45 611422933 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0809 : LiftedFamily where
  residue := 977338367
  steps := 117
  odd_inputs := 45
  endpoint := 611422933
  arithmetic := m31_lift_0809_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 977338367 117
    · calc
        collatzIter 977338367 117 = 611422933 := m31_lift_0809_arithmetic.endpoint
        _ < 977338367 := m31_lift_0809_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 977338367 117) = 6 ^ 45 := by rw [m31_lift_0809_arithmetic.odd_inputs]
        _ < 2 ^ 117 := m31_lift_0809_arithmetic.slope_below

theorem m31_lift_0810_arithmetic : RowArithmetic 1010892799 70 27 876373360 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0810 : LiftedFamily where
  residue := 1010892799
  steps := 70
  odd_inputs := 27
  endpoint := 876373360
  arithmetic := m31_lift_0810_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1010892799 70
    · calc
        collatzIter 1010892799 70 = 876373360 := m31_lift_0810_arithmetic.endpoint
        _ < 1010892799 := m31_lift_0810_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1010892799 70) = 6 ^ 27 := by rw [m31_lift_0810_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0810_arithmetic.slope_below

theorem m31_lift_0811_arithmetic : RowArithmetic 1027670015 60 23 703935236 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0811 : LiftedFamily where
  residue := 1027670015
  steps := 60
  odd_inputs := 23
  endpoint := 703935236
  arithmetic := m31_lift_0811_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1027670015 60
    · calc
        collatzIter 1027670015 60 = 703935236 := m31_lift_0811_arithmetic.endpoint
        _ < 1027670015 := m31_lift_0811_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1027670015 60) = 6 ^ 23 := by rw [m31_lift_0811_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0811_arithmetic.slope_below

theorem m31_lift_0812_arithmetic : RowArithmetic 1044447231 57 22 953903098 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0812 : LiftedFamily where
  residue := 1044447231
  steps := 57
  odd_inputs := 22
  endpoint := 953903098
  arithmetic := m31_lift_0812_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1044447231 57
    · calc
        collatzIter 1044447231 57 = 953903098 := m31_lift_0812_arithmetic.endpoint
        _ < 1044447231 := m31_lift_0812_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1044447231 57) = 6 ^ 22 := by rw [m31_lift_0812_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0812_arithmetic.slope_below

theorem m31_lift_0813_arithmetic : RowArithmetic 1078001663 86 33 665320748 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0813 : LiftedFamily where
  residue := 1078001663
  steps := 86
  odd_inputs := 33
  endpoint := 665320748
  arithmetic := m31_lift_0813_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1078001663 86
    · calc
        collatzIter 1078001663 86 = 665320748 := m31_lift_0813_arithmetic.endpoint
        _ < 1078001663 := m31_lift_0813_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1078001663 86) = 6 ^ 33 := by rw [m31_lift_0813_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0813_arithmetic.slope_below

theorem m31_lift_0814_arithmetic : RowArithmetic 1094778879 57 22 999871447 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0814 : LiftedFamily where
  residue := 1094778879
  steps := 57
  odd_inputs := 22
  endpoint := 999871447
  arithmetic := m31_lift_0814_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1094778879 57
    · calc
        collatzIter 1094778879 57 = 999871447 := m31_lift_0814_arithmetic.endpoint
        _ < 1094778879 := m31_lift_0814_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1094778879 57) = 6 ^ 22 := by rw [m31_lift_0814_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0814_arithmetic.slope_below

theorem m31_lift_0815_arithmetic : RowArithmetic 1111556095 55 21 676796153 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0815 : LiftedFamily where
  residue := 1111556095
  steps := 55
  odd_inputs := 21
  endpoint := 676796153
  arithmetic := m31_lift_0815_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1111556095 55
    · calc
        collatzIter 1111556095 55 = 676796153 := m31_lift_0815_arithmetic.endpoint
        _ < 1111556095 := m31_lift_0815_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1111556095 55) = 6 ^ 21 := by rw [m31_lift_0815_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0815_arithmetic.slope_below

theorem m31_lift_0816_arithmetic : RowArithmetic 1145110527 135 52 765002780 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0816 : LiftedFamily where
  residue := 1145110527
  steps := 135
  odd_inputs := 52
  endpoint := 765002780
  arithmetic := m31_lift_0816_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1145110527 135
    · calc
        collatzIter 1145110527 135 = 765002780 := m31_lift_0816_arithmetic.endpoint
        _ < 1145110527 := m31_lift_0816_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1145110527 135) = 6 ^ 52 := by rw [m31_lift_0816_arithmetic.odd_inputs]
        _ < 2 ^ 135 := m31_lift_0816_arithmetic.slope_below

theorem m31_lift_0817_arithmetic : RowArithmetic 1161887743 57 22 1061162579 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0817 : LiftedFamily where
  residue := 1161887743
  steps := 57
  odd_inputs := 22
  endpoint := 1061162579
  arithmetic := m31_lift_0817_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1161887743 57
    · calc
        collatzIter 1161887743 57 = 1061162579 := m31_lift_0817_arithmetic.endpoint
        _ < 1161887743 := m31_lift_0817_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1161887743 57) = 6 ^ 22 := by rw [m31_lift_0817_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0817_arithmetic.slope_below

theorem m31_lift_0818_arithmetic : RowArithmetic 1178664959 63 24 605523016 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0818 : LiftedFamily where
  residue := 1178664959
  steps := 63
  odd_inputs := 24
  endpoint := 605523016
  arithmetic := m31_lift_0818_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1178664959 63
    · calc
        collatzIter 1178664959 63 = 605523016 := m31_lift_0818_arithmetic.endpoint
        _ < 1178664959 := m31_lift_0818_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1178664959 63) = 6 ^ 24 := by rw [m31_lift_0818_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0818_arithmetic.slope_below

theorem m31_lift_0819_arithmetic : RowArithmetic 1212219391 78 30 886704836 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0819 : LiftedFamily where
  residue := 1212219391
  steps := 78
  odd_inputs := 30
  endpoint := 886704836
  arithmetic := m31_lift_0819_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1212219391 78
    · calc
        collatzIter 1212219391 78 = 886704836 := m31_lift_0819_arithmetic.endpoint
        _ < 1212219391 := m31_lift_0819_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1212219391 78) = 6 ^ 30 := by rw [m31_lift_0819_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0819_arithmetic.slope_below

theorem m31_lift_0820_arithmetic : RowArithmetic 1228996607 68 26 710302739 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0820 : LiftedFamily where
  residue := 1228996607
  steps := 68
  odd_inputs := 26
  endpoint := 710302739
  arithmetic := m31_lift_0820_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1228996607 68
    · calc
        collatzIter 1228996607 68 = 710302739 := m31_lift_0820_arithmetic.endpoint
        _ < 1228996607 := m31_lift_0820_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1228996607 68) = 6 ^ 26 := by rw [m31_lift_0820_arithmetic.odd_inputs]
        _ < 2 ^ 68 := m31_lift_0820_arithmetic.slope_below

theorem m31_lift_0821_arithmetic : RowArithmetic 1279328255 65 25 985856113 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0821 : LiftedFamily where
  residue := 1279328255
  steps := 65
  odd_inputs := 25
  endpoint := 985856113
  arithmetic := m31_lift_0821_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1279328255 65
    · calc
        collatzIter 1279328255 65 = 985856113 := m31_lift_0821_arithmetic.endpoint
        _ < 1279328255 := m31_lift_0821_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1279328255 65) = 6 ^ 25 := by rw [m31_lift_0821_arithmetic.odd_inputs]
        _ < 2 ^ 65 := m31_lift_0821_arithmetic.slope_below

theorem m31_lift_0822_arithmetic : RowArithmetic 1296105471 60 23 887808632 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0822 : LiftedFamily where
  residue := 1296105471
  steps := 60
  odd_inputs := 23
  endpoint := 887808632
  arithmetic := m31_lift_0822_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1296105471 60
    · calc
        collatzIter 1296105471 60 = 887808632 := m31_lift_0822_arithmetic.endpoint
        _ < 1296105471 := m31_lift_0822_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1296105471 60) = 6 ^ 23 := by rw [m31_lift_0822_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0822_arithmetic.slope_below

theorem m31_lift_0823_arithmetic : RowArithmetic 1312882687 75 29 1280449658 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0823 : LiftedFamily where
  residue := 1312882687
  steps := 75
  odd_inputs := 29
  endpoint := 1280449658
  arithmetic := m31_lift_0823_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1312882687 75
    · calc
        collatzIter 1312882687 75 = 1280449658 := m31_lift_0823_arithmetic.endpoint
        _ < 1312882687 := m31_lift_0823_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1312882687 75) = 6 ^ 29 := by rw [m31_lift_0823_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0823_arithmetic.slope_below

theorem m31_lift_0824_arithmetic : RowArithmetic 1329659903 55 21 809593606 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0824 : LiftedFamily where
  residue := 1329659903
  steps := 55
  odd_inputs := 21
  endpoint := 809593606
  arithmetic := m31_lift_0824_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1329659903 55
    · calc
        collatzIter 1329659903 55 = 809593606 := m31_lift_0824_arithmetic.endpoint
        _ < 1329659903 := m31_lift_0824_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1329659903 55) = 6 ^ 21 := by rw [m31_lift_0824_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0824_arithmetic.slope_below

theorem m31_lift_0825_arithmetic : RowArithmetic 1346437119 70 27 1167266819 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0825 : LiftedFamily where
  residue := 1346437119
  steps := 70
  odd_inputs := 27
  endpoint := 1167266819
  arithmetic := m31_lift_0825_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1346437119 70
    · calc
        collatzIter 1346437119 70 = 1167266819 := m31_lift_0825_arithmetic.endpoint
        _ < 1346437119 := m31_lift_0825_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1346437119 70) = 6 ^ 27 := by rw [m31_lift_0825_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0825_arithmetic.slope_below

theorem m31_lift_0826_arithmetic : RowArithmetic 1379991551 106 41 1364263166 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0826 : LiftedFamily where
  residue := 1379991551
  steps := 106
  odd_inputs := 41
  endpoint := 1364263166
  arithmetic := m31_lift_0826_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1379991551 106
    · calc
        collatzIter 1379991551 106 = 1364263166 := m31_lift_0826_arithmetic.endpoint
        _ < 1379991551 := m31_lift_0826_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1379991551 106) = 6 ^ 41 := by rw [m31_lift_0826_arithmetic.odd_inputs]
        _ < 2 ^ 106 := m31_lift_0826_arithmetic.slope_below

theorem m31_lift_0827_arithmetic : RowArithmetic 1413545983 99 38 828109726 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0827 : LiftedFamily where
  residue := 1413545983
  steps := 99
  odd_inputs := 38
  endpoint := 828109726
  arithmetic := m31_lift_0827_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1413545983 99
    · calc
        collatzIter 1413545983 99 = 828109726 := m31_lift_0827_arithmetic.endpoint
        _ < 1413545983 := m31_lift_0827_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1413545983 99) = 6 ^ 38 := by rw [m31_lift_0827_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0827_arithmetic.slope_below

theorem m31_lift_0828_arithmetic : RowArithmetic 1430323199 70 27 1239990184 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0828 : LiftedFamily where
  residue := 1430323199
  steps := 70
  odd_inputs := 27
  endpoint := 1239990184
  arithmetic := m31_lift_0828_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1430323199 70
    · calc
        collatzIter 1430323199 70 = 1239990184 := m31_lift_0828_arithmetic.endpoint
        _ < 1430323199 := m31_lift_0828_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1430323199 70) = 6 ^ 27 := by rw [m31_lift_0828_arithmetic.odd_inputs]
        _ < 2 ^ 70 := m31_lift_0828_arithmetic.slope_below

theorem m31_lift_0829_arithmetic : RowArithmetic 1447100415 91 35 1004761132 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0829 : LiftedFamily where
  residue := 1447100415
  steps := 91
  odd_inputs := 35
  endpoint := 1004761132
  arithmetic := m31_lift_0829_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1447100415 91
    · calc
        collatzIter 1447100415 91 = 1004761132 := m31_lift_0829_arithmetic.endpoint
        _ < 1447100415 := m31_lift_0829_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1447100415 91) = 6 ^ 35 := by rw [m31_lift_0829_arithmetic.odd_inputs]
        _ < 2 ^ 91 := m31_lift_0829_arithmetic.slope_below

theorem m31_lift_0830_arithmetic : RowArithmetic 1463877631 57 22 1336972673 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0830 : LiftedFamily where
  residue := 1463877631
  steps := 57
  odd_inputs := 22
  endpoint := 1336972673
  arithmetic := m31_lift_0830_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1463877631 57
    · calc
        collatzIter 1463877631 57 = 1336972673 := m31_lift_0830_arithmetic.endpoint
        _ < 1463877631 := m31_lift_0830_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1463877631 57) = 6 ^ 22 := by rw [m31_lift_0830_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0830_arithmetic.slope_below

theorem m31_lift_0831_arithmetic : RowArithmetic 1480654847 99 38 867424685 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0831 : LiftedFamily where
  residue := 1480654847
  steps := 99
  odd_inputs := 38
  endpoint := 867424685
  arithmetic := m31_lift_0831_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1480654847 99
    · calc
        collatzIter 1480654847 99 = 867424685 := m31_lift_0831_arithmetic.endpoint
        _ < 1480654847 := m31_lift_0831_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1480654847 99) = 6 ^ 38 := by rw [m31_lift_0831_arithmetic.odd_inputs]
        _ < 2 ^ 99 := m31_lift_0831_arithmetic.slope_below

theorem m31_lift_0832_arithmetic : RowArithmetic 1497432063 57 22 1367618239 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0832 : LiftedFamily where
  residue := 1497432063
  steps := 57
  odd_inputs := 22
  endpoint := 1367618239
  arithmetic := m31_lift_0832_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1497432063 57
    · calc
        collatzIter 1497432063 57 = 1367618239 := m31_lift_0832_arithmetic.endpoint
        _ < 1497432063 := m31_lift_0832_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1497432063 57) = 6 ^ 22 := by rw [m31_lift_0832_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0832_arithmetic.slope_below

theorem m31_lift_0833_arithmetic : RowArithmetic 1514209279 60 23 1037205767 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0833 : LiftedFamily where
  residue := 1514209279
  steps := 60
  odd_inputs := 23
  endpoint := 1037205767
  arithmetic := m31_lift_0833_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1514209279 60
    · calc
        collatzIter 1514209279 60 = 1037205767 := m31_lift_0833_arithmetic.endpoint
        _ < 1514209279 := m31_lift_0833_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1514209279 60) = 6 ^ 23 := by rw [m31_lift_0833_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0833_arithmetic.slope_below

theorem m31_lift_0834_arithmetic : RowArithmetic 1547763711 57 22 1413586588 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0834 : LiftedFamily where
  residue := 1547763711
  steps := 57
  odd_inputs := 22
  endpoint := 1413586588
  arithmetic := m31_lift_0834_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1547763711 57
    · calc
        collatzIter 1547763711 57 = 1413586588 := m31_lift_0834_arithmetic.endpoint
        _ < 1547763711 := m31_lift_0834_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1547763711 57) = 6 ^ 22 := by rw [m31_lift_0834_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0834_arithmetic.slope_below

theorem m31_lift_0835_arithmetic : RowArithmetic 1564540927 158 61 1255665287 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0835 : LiftedFamily where
  residue := 1564540927
  steps := 158
  odd_inputs := 61
  endpoint := 1255665287
  arithmetic := m31_lift_0835_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1564540927 158
    · calc
        collatzIter 1564540927 158 = 1255665287 := m31_lift_0835_arithmetic.endpoint
        _ < 1564540927 := m31_lift_0835_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1564540927 158) = 6 ^ 61 := by rw [m31_lift_0835_arithmetic.odd_inputs]
        _ < 2 ^ 158 := m31_lift_0835_arithmetic.slope_below

theorem m31_lift_0836_arithmetic : RowArithmetic 1581318143 55 21 962821436 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0836 : LiftedFamily where
  residue := 1581318143
  steps := 55
  odd_inputs := 21
  endpoint := 962821436
  arithmetic := m31_lift_0836_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1581318143 55
    · calc
        collatzIter 1581318143 55 = 962821436 := m31_lift_0836_arithmetic.endpoint
        _ < 1581318143 := m31_lift_0836_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1581318143 55) = 6 ^ 21 := by rw [m31_lift_0836_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0836_arithmetic.slope_below

theorem m31_lift_0837_arithmetic : RowArithmetic 1614872575 57 22 1474877720 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0837 : LiftedFamily where
  residue := 1614872575
  steps := 57
  odd_inputs := 22
  endpoint := 1474877720
  arithmetic := m31_lift_0837_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1614872575 57
    · calc
        collatzIter 1614872575 57 = 1474877720 := m31_lift_0837_arithmetic.endpoint
        _ < 1614872575 := m31_lift_0837_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1614872575 57) = 6 ^ 22 := by rw [m31_lift_0837_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0837_arithmetic.slope_below

theorem m31_lift_0838_arithmetic : RowArithmetic 1631649791 94 36 849674084 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0838 : LiftedFamily where
  residue := 1631649791
  steps := 94
  odd_inputs := 36
  endpoint := 849674084
  arithmetic := m31_lift_0838_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1631649791 94
    · calc
        collatzIter 1631649791 94 = 849674084 := m31_lift_0838_arithmetic.endpoint
        _ < 1631649791 := m31_lift_0838_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1631649791 94) = 6 ^ 36 := by rw [m31_lift_0838_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0838_arithmetic.slope_below

theorem m31_lift_0839_arithmetic : RowArithmetic 1648427007 57 22 1505523286 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0839 : LiftedFamily where
  residue := 1648427007
  steps := 57
  odd_inputs := 22
  endpoint := 1505523286
  arithmetic := m31_lift_0839_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1648427007 57
    · calc
        collatzIter 1648427007 57 = 1505523286 := m31_lift_0839_arithmetic.endpoint
        _ < 1648427007 := m31_lift_0839_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1648427007 57) = 6 ^ 22 := by rw [m31_lift_0839_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0839_arithmetic.slope_below

theorem m31_lift_0840_arithmetic : RowArithmetic 1681981439 52 20 1365483424 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0840 : LiftedFamily where
  residue := 1681981439
  steps := 52
  odd_inputs := 20
  endpoint := 1365483424
  arithmetic := m31_lift_0840_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1681981439 52
    · calc
        collatzIter 1681981439 52 = 1365483424 := m31_lift_0840_arithmetic.endpoint
        _ < 1681981439 := m31_lift_0840_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1681981439 52) = 6 ^ 20 := by rw [m31_lift_0840_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0840_arithmetic.slope_below

theorem m31_lift_0841_arithmetic : RowArithmetic 1698758655 63 24 872714045 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0841 : LiftedFamily where
  residue := 1698758655
  steps := 63
  odd_inputs := 24
  endpoint := 872714045
  arithmetic := m31_lift_0841_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1698758655 63
    · calc
        collatzIter 1698758655 63 = 872714045 := m31_lift_0841_arithmetic.endpoint
        _ < 1698758655 := m31_lift_0841_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1698758655 63) = 6 ^ 24 := by rw [m31_lift_0841_arithmetic.odd_inputs]
        _ < 2 ^ 63 := m31_lift_0841_arithmetic.slope_below

theorem m31_lift_0842_arithmetic : RowArithmetic 1715535871 78 30 1254866870 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0842 : LiftedFamily where
  residue := 1715535871
  steps := 78
  odd_inputs := 30
  endpoint := 1254866870
  arithmetic := m31_lift_0842_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1715535871 78
    · calc
        collatzIter 1715535871 78 = 1254866870 := m31_lift_0842_arithmetic.endpoint
        _ < 1715535871 := m31_lift_0842_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1715535871 78) = 6 ^ 30 := by rw [m31_lift_0842_arithmetic.odd_inputs]
        _ < 2 ^ 78 := m31_lift_0842_arithmetic.slope_below

theorem m31_lift_0843_arithmetic : RowArithmetic 1732313087 60 23 1186602901 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0843 : LiftedFamily where
  residue := 1732313087
  steps := 60
  odd_inputs := 23
  endpoint := 1186602901
  arithmetic := m31_lift_0843_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1732313087 60
    · calc
        collatzIter 1732313087 60 = 1186602901 := m31_lift_0843_arithmetic.endpoint
        _ < 1732313087 := m31_lift_0843_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1732313087 60) = 6 ^ 23 := by rw [m31_lift_0843_arithmetic.odd_inputs]
        _ < 2 ^ 60 := m31_lift_0843_arithmetic.slope_below

theorem m31_lift_0844_arithmetic : RowArithmetic 1749090303 81 31 959558254 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0844 : LiftedFamily where
  residue := 1749090303
  steps := 81
  odd_inputs := 31
  endpoint := 959558254
  arithmetic := m31_lift_0844_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1749090303 81
    · calc
        collatzIter 1749090303 81 = 959558254 := m31_lift_0844_arithmetic.endpoint
        _ < 1749090303 := m31_lift_0844_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1749090303 81) = 6 ^ 31 := by rw [m31_lift_0844_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0844_arithmetic.slope_below

theorem m31_lift_0845_arithmetic : RowArithmetic 1765867519 101 39 1551769894 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0845 : LiftedFamily where
  residue := 1765867519
  steps := 101
  odd_inputs := 39
  endpoint := 1551769894
  arithmetic := m31_lift_0845_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1765867519 101
    · calc
        collatzIter 1765867519 101 = 1551769894 := m31_lift_0845_arithmetic.endpoint
        _ < 1765867519 := m31_lift_0845_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1765867519 101) = 6 ^ 39 := by rw [m31_lift_0845_arithmetic.odd_inputs]
        _ < 2 ^ 101 := m31_lift_0845_arithmetic.slope_below

theorem m31_lift_0846_arithmetic : RowArithmetic 1816199167 57 22 1658751116 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0846 : LiftedFamily where
  residue := 1816199167
  steps := 57
  odd_inputs := 22
  endpoint := 1658751116
  arithmetic := m31_lift_0846_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1816199167 57
    · calc
        collatzIter 1816199167 57 = 1658751116 := m31_lift_0846_arithmetic.endpoint
        _ < 1816199167 := m31_lift_0846_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1816199167 57) = 6 ^ 22 := by rw [m31_lift_0846_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0846_arithmetic.slope_below

theorem m31_lift_0847_arithmetic : RowArithmetic 1832976383 86 33 1131275822 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0847 : LiftedFamily where
  residue := 1832976383
  steps := 86
  odd_inputs := 33
  endpoint := 1131275822
  arithmetic := m31_lift_0847_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1832976383 86
    · calc
        collatzIter 1832976383 86 = 1131275822 := m31_lift_0847_arithmetic.endpoint
        _ < 1832976383 := m31_lift_0847_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1832976383 86) = 6 ^ 33 := by rw [m31_lift_0847_arithmetic.odd_inputs]
        _ < 2 ^ 86 := m31_lift_0847_arithmetic.slope_below

theorem m31_lift_0848_arithmetic : RowArithmetic 1849753599 135 52 1235746780 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0848 : LiftedFamily where
  residue := 1849753599
  steps := 135
  odd_inputs := 52
  endpoint := 1235746780
  arithmetic := m31_lift_0848_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1849753599 135
    · calc
        collatzIter 1849753599 135 = 1235746780 := m31_lift_0848_arithmetic.endpoint
        _ < 1849753599 := m31_lift_0848_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1849753599 135) = 6 ^ 52 := by rw [m31_lift_0848_arithmetic.odd_inputs]
        _ < 2 ^ 135 := m31_lift_0848_arithmetic.slope_below

theorem m31_lift_0849_arithmetic : RowArithmetic 1866530815 75 29 1820420641 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0849 : LiftedFamily where
  residue := 1866530815
  steps := 75
  odd_inputs := 29
  endpoint := 1820420641
  arithmetic := m31_lift_0849_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1866530815 75
    · calc
        collatzIter 1866530815 75 = 1820420641 := m31_lift_0849_arithmetic.endpoint
        _ < 1866530815 := m31_lift_0849_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1866530815 75) = 6 ^ 29 := by rw [m31_lift_0849_arithmetic.odd_inputs]
        _ < 2 ^ 75 := m31_lift_0849_arithmetic.slope_below

theorem m31_lift_0850_arithmetic : RowArithmetic 1883308031 94 36 980723948 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0850 : LiftedFamily where
  residue := 1883308031
  steps := 94
  odd_inputs := 36
  endpoint := 980723948
  arithmetic := m31_lift_0850_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1883308031 94
    · calc
        collatzIter 1883308031 94 = 980723948 := m31_lift_0850_arithmetic.endpoint
        _ < 1883308031 := m31_lift_0850_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1883308031 94) = 6 ^ 36 := by rw [m31_lift_0850_arithmetic.odd_inputs]
        _ < 2 ^ 94 := m31_lift_0850_arithmetic.slope_below

theorem m31_lift_0851_arithmetic : RowArithmetic 1916862463 52 20 1556166946 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0851 : LiftedFamily where
  residue := 1916862463
  steps := 52
  odd_inputs := 20
  endpoint := 1556166946
  arithmetic := m31_lift_0851_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1916862463 52
    · calc
        collatzIter 1916862463 52 = 1556166946 := m31_lift_0851_arithmetic.endpoint
        _ < 1916862463 := m31_lift_0851_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1916862463 52) = 6 ^ 20 := by rw [m31_lift_0851_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0851_arithmetic.slope_below

theorem m31_lift_0852_arithmetic : RowArithmetic 1950416895 83 32 1605010297 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0852 : LiftedFamily where
  residue := 1950416895
  steps := 83
  odd_inputs := 32
  endpoint := 1605010297
  arithmetic := m31_lift_0852_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1950416895 83
    · calc
        collatzIter 1950416895 83 = 1605010297 := m31_lift_0852_arithmetic.endpoint
        _ < 1950416895 := m31_lift_0852_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1950416895 83) = 6 ^ 32 := by rw [m31_lift_0852_arithmetic.odd_inputs]
        _ < 2 ^ 83 := m31_lift_0852_arithmetic.slope_below

theorem m31_lift_0853_arithmetic : RowArithmetic 1967194111 109 42 1458579836 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0853 : LiftedFamily where
  residue := 1967194111
  steps := 109
  odd_inputs := 42
  endpoint := 1458579836
  arithmetic := m31_lift_0853_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1967194111 109
    · calc
        collatzIter 1967194111 109 = 1458579836 := m31_lift_0853_arithmetic.endpoint
        _ < 1967194111 := m31_lift_0853_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1967194111 109) = 6 ^ 42 := by rw [m31_lift_0853_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0853_arithmetic.slope_below

theorem m31_lift_0854_arithmetic : RowArithmetic 1983971327 52 20 1610647952 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0854 : LiftedFamily where
  residue := 1983971327
  steps := 52
  odd_inputs := 20
  endpoint := 1610647952
  arithmetic := m31_lift_0854_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 1983971327 52
    · calc
        collatzIter 1983971327 52 = 1610647952 := m31_lift_0854_arithmetic.endpoint
        _ < 1983971327 := m31_lift_0854_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 1983971327 52) = 6 ^ 20 := by rw [m31_lift_0854_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0854_arithmetic.slope_below

theorem m31_lift_0855_arithmetic : RowArithmetic 2000748543 109 42 1483458833 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0855 : LiftedFamily where
  residue := 2000748543
  steps := 109
  odd_inputs := 42
  endpoint := 1483458833
  arithmetic := m31_lift_0855_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2000748543 109
    · calc
        collatzIter 2000748543 109 = 1483458833 := m31_lift_0855_arithmetic.endpoint
        _ < 2000748543 := m31_lift_0855_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2000748543 109) = 6 ^ 42 := by rw [m31_lift_0855_arithmetic.odd_inputs]
        _ < 2 ^ 109 := m31_lift_0855_arithmetic.slope_below

theorem m31_lift_0856_arithmetic : RowArithmetic 2017525759 57 22 1842624512 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0856 : LiftedFamily where
  residue := 2017525759
  steps := 57
  odd_inputs := 22
  endpoint := 1842624512
  arithmetic := m31_lift_0856_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2017525759 57
    · calc
        collatzIter 2017525759 57 = 1842624512 := m31_lift_0856_arithmetic.endpoint
        _ < 2017525759 := m31_lift_0856_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2017525759 57) = 6 ^ 22 := by rw [m31_lift_0856_arithmetic.odd_inputs]
        _ < 2 ^ 57 := m31_lift_0856_arithmetic.slope_below

theorem m31_lift_0857_arithmetic : RowArithmetic 2034302975 52 20 1651508707 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0857 : LiftedFamily where
  residue := 2034302975
  steps := 52
  odd_inputs := 20
  endpoint := 1651508707
  arithmetic := m31_lift_0857_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2034302975 52
    · calc
        collatzIter 2034302975 52 = 1651508707 := m31_lift_0857_arithmetic.endpoint
        _ < 2034302975 := m31_lift_0857_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2034302975 52) = 6 ^ 20 := by rw [m31_lift_0857_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0857_arithmetic.slope_below

theorem m31_lift_0858_arithmetic : RowArithmetic 2051080191 55 21 1248846719 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0858 : LiftedFamily where
  residue := 2051080191
  steps := 55
  odd_inputs := 21
  endpoint := 1248846719
  arithmetic := m31_lift_0858_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2051080191 55
    · calc
        collatzIter 2051080191 55 = 1248846719 := m31_lift_0858_arithmetic.endpoint
        _ < 2051080191 := m31_lift_0858_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2051080191 55) = 6 ^ 21 := by rw [m31_lift_0858_arithmetic.odd_inputs]
        _ < 2 ^ 55 := m31_lift_0858_arithmetic.slope_below

theorem m31_lift_0859_arithmetic : RowArithmetic 2084634623 81 31 1143639271 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0859 : LiftedFamily where
  residue := 2084634623
  steps := 81
  odd_inputs := 31
  endpoint := 1143639271
  arithmetic := m31_lift_0859_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2084634623 81
    · calc
        collatzIter 2084634623 81 = 1143639271 := m31_lift_0859_arithmetic.endpoint
        _ < 2084634623 := m31_lift_0859_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2084634623 81) = 6 ^ 31 := by rw [m31_lift_0859_arithmetic.odd_inputs]
        _ < 2 ^ 81 := m31_lift_0859_arithmetic.slope_below

theorem m31_lift_0860_arithmetic : RowArithmetic 2101411839 52 20 1705989713 := by
  constructor
  · decide
  · decide
  · decide
  · decide
def m31_lift_0860 : LiftedFamily where
  residue := 2101411839
  steps := 52
  odd_inputs := 20
  endpoint := 1705989713
  arithmetic := m31_lift_0860_arithmetic
  every_k_descends := by
    apply collatz_lifted_strict_descent 2101411839 52
    · calc
        collatzIter 2101411839 52 = 1705989713 := m31_lift_0860_arithmetic.endpoint
        _ < 2101411839 := m31_lift_0860_arithmetic.endpoint_below
    · calc
        6 ^ (collatzOddInputs 2101411839 52) = 6 ^ 20 := by rw [m31_lift_0860_arithmetic.odd_inputs]
        _ < 2 ^ 52 := m31_lift_0860_arithmetic.slope_below

def liftedFamilies : List LiftedFamily := [
  m31_lift_0001,
  m31_lift_0002,
  m31_lift_0003,
  m31_lift_0004,
  m31_lift_0005,
  m31_lift_0006,
  m31_lift_0007,
  m31_lift_0008,
  m31_lift_0009,
  m31_lift_0010,
  m31_lift_0011,
  m31_lift_0012,
  m31_lift_0013,
  m31_lift_0014,
  m31_lift_0015,
  m31_lift_0016,
  m31_lift_0017,
  m31_lift_0018,
  m31_lift_0019,
  m31_lift_0020,
  m31_lift_0021,
  m31_lift_0022,
  m31_lift_0023,
  m31_lift_0024,
  m31_lift_0025,
  m31_lift_0026,
  m31_lift_0027,
  m31_lift_0028,
  m31_lift_0029,
  m31_lift_0030,
  m31_lift_0031,
  m31_lift_0032,
  m31_lift_0033,
  m31_lift_0034,
  m31_lift_0035,
  m31_lift_0036,
  m31_lift_0037,
  m31_lift_0038,
  m31_lift_0039,
  m31_lift_0040,
  m31_lift_0041,
  m31_lift_0042,
  m31_lift_0043,
  m31_lift_0044,
  m31_lift_0045,
  m31_lift_0046,
  m31_lift_0047,
  m31_lift_0048,
  m31_lift_0049,
  m31_lift_0050,
  m31_lift_0051,
  m31_lift_0052,
  m31_lift_0053,
  m31_lift_0054,
  m31_lift_0055,
  m31_lift_0056,
  m31_lift_0057,
  m31_lift_0058,
  m31_lift_0059,
  m31_lift_0060,
  m31_lift_0061,
  m31_lift_0062,
  m31_lift_0063,
  m31_lift_0064,
  m31_lift_0065,
  m31_lift_0066,
  m31_lift_0067,
  m31_lift_0068,
  m31_lift_0069,
  m31_lift_0070,
  m31_lift_0071,
  m31_lift_0072,
  m31_lift_0073,
  m31_lift_0074,
  m31_lift_0075,
  m31_lift_0076,
  m31_lift_0077,
  m31_lift_0078,
  m31_lift_0079,
  m31_lift_0080,
  m31_lift_0081,
  m31_lift_0082,
  m31_lift_0083,
  m31_lift_0084,
  m31_lift_0085,
  m31_lift_0086,
  m31_lift_0087,
  m31_lift_0088,
  m31_lift_0089,
  m31_lift_0090,
  m31_lift_0091,
  m31_lift_0092,
  m31_lift_0093,
  m31_lift_0094,
  m31_lift_0095,
  m31_lift_0096,
  m31_lift_0097,
  m31_lift_0098,
  m31_lift_0099,
  m31_lift_0100,
  m31_lift_0101,
  m31_lift_0102,
  m31_lift_0103,
  m31_lift_0104,
  m31_lift_0105,
  m31_lift_0106,
  m31_lift_0107,
  m31_lift_0108,
  m31_lift_0109,
  m31_lift_0110,
  m31_lift_0111,
  m31_lift_0112,
  m31_lift_0113,
  m31_lift_0114,
  m31_lift_0115,
  m31_lift_0116,
  m31_lift_0117,
  m31_lift_0118,
  m31_lift_0119,
  m31_lift_0120,
  m31_lift_0121,
  m31_lift_0122,
  m31_lift_0123,
  m31_lift_0124,
  m31_lift_0125,
  m31_lift_0126,
  m31_lift_0127,
  m31_lift_0128,
  m31_lift_0129,
  m31_lift_0130,
  m31_lift_0131,
  m31_lift_0132,
  m31_lift_0133,
  m31_lift_0134,
  m31_lift_0135,
  m31_lift_0136,
  m31_lift_0137,
  m31_lift_0138,
  m31_lift_0139,
  m31_lift_0140,
  m31_lift_0141,
  m31_lift_0142,
  m31_lift_0143,
  m31_lift_0144,
  m31_lift_0145,
  m31_lift_0146,
  m31_lift_0147,
  m31_lift_0148,
  m31_lift_0149,
  m31_lift_0150,
  m31_lift_0151,
  m31_lift_0152,
  m31_lift_0153,
  m31_lift_0154,
  m31_lift_0155,
  m31_lift_0156,
  m31_lift_0157,
  m31_lift_0158,
  m31_lift_0159,
  m31_lift_0160,
  m31_lift_0161,
  m31_lift_0162,
  m31_lift_0163,
  m31_lift_0164,
  m31_lift_0165,
  m31_lift_0166,
  m31_lift_0167,
  m31_lift_0168,
  m31_lift_0169,
  m31_lift_0170,
  m31_lift_0171,
  m31_lift_0172,
  m31_lift_0173,
  m31_lift_0174,
  m31_lift_0175,
  m31_lift_0176,
  m31_lift_0177,
  m31_lift_0178,
  m31_lift_0179,
  m31_lift_0180,
  m31_lift_0181,
  m31_lift_0182,
  m31_lift_0183,
  m31_lift_0184,
  m31_lift_0185,
  m31_lift_0186,
  m31_lift_0187,
  m31_lift_0188,
  m31_lift_0189,
  m31_lift_0190,
  m31_lift_0191,
  m31_lift_0192,
  m31_lift_0193,
  m31_lift_0194,
  m31_lift_0195,
  m31_lift_0196,
  m31_lift_0197,
  m31_lift_0198,
  m31_lift_0199,
  m31_lift_0200,
  m31_lift_0201,
  m31_lift_0202,
  m31_lift_0203,
  m31_lift_0204,
  m31_lift_0205,
  m31_lift_0206,
  m31_lift_0207,
  m31_lift_0208,
  m31_lift_0209,
  m31_lift_0210,
  m31_lift_0211,
  m31_lift_0212,
  m31_lift_0213,
  m31_lift_0214,
  m31_lift_0215,
  m31_lift_0216,
  m31_lift_0217,
  m31_lift_0218,
  m31_lift_0219,
  m31_lift_0220,
  m31_lift_0221,
  m31_lift_0222,
  m31_lift_0223,
  m31_lift_0224,
  m31_lift_0225,
  m31_lift_0226,
  m31_lift_0227,
  m31_lift_0228,
  m31_lift_0229,
  m31_lift_0230,
  m31_lift_0231,
  m31_lift_0232,
  m31_lift_0233,
  m31_lift_0234,
  m31_lift_0235,
  m31_lift_0236,
  m31_lift_0237,
  m31_lift_0238,
  m31_lift_0239,
  m31_lift_0240,
  m31_lift_0241,
  m31_lift_0242,
  m31_lift_0243,
  m31_lift_0244,
  m31_lift_0245,
  m31_lift_0246,
  m31_lift_0247,
  m31_lift_0248,
  m31_lift_0249,
  m31_lift_0250,
  m31_lift_0251,
  m31_lift_0252,
  m31_lift_0253,
  m31_lift_0254,
  m31_lift_0255,
  m31_lift_0256,
  m31_lift_0257,
  m31_lift_0258,
  m31_lift_0259,
  m31_lift_0260,
  m31_lift_0261,
  m31_lift_0262,
  m31_lift_0263,
  m31_lift_0264,
  m31_lift_0265,
  m31_lift_0266,
  m31_lift_0267,
  m31_lift_0268,
  m31_lift_0269,
  m31_lift_0270,
  m31_lift_0271,
  m31_lift_0272,
  m31_lift_0273,
  m31_lift_0274,
  m31_lift_0275,
  m31_lift_0276,
  m31_lift_0277,
  m31_lift_0278,
  m31_lift_0279,
  m31_lift_0280,
  m31_lift_0281,
  m31_lift_0282,
  m31_lift_0283,
  m31_lift_0284,
  m31_lift_0285,
  m31_lift_0286,
  m31_lift_0287,
  m31_lift_0288,
  m31_lift_0289,
  m31_lift_0290,
  m31_lift_0291,
  m31_lift_0292,
  m31_lift_0293,
  m31_lift_0294,
  m31_lift_0295,
  m31_lift_0296,
  m31_lift_0297,
  m31_lift_0298,
  m31_lift_0299,
  m31_lift_0300,
  m31_lift_0301,
  m31_lift_0302,
  m31_lift_0303,
  m31_lift_0304,
  m31_lift_0305,
  m31_lift_0306,
  m31_lift_0307,
  m31_lift_0308,
  m31_lift_0309,
  m31_lift_0310,
  m31_lift_0311,
  m31_lift_0312,
  m31_lift_0313,
  m31_lift_0314,
  m31_lift_0315,
  m31_lift_0316,
  m31_lift_0317,
  m31_lift_0318,
  m31_lift_0319,
  m31_lift_0320,
  m31_lift_0321,
  m31_lift_0322,
  m31_lift_0323,
  m31_lift_0324,
  m31_lift_0325,
  m31_lift_0326,
  m31_lift_0327,
  m31_lift_0328,
  m31_lift_0329,
  m31_lift_0330,
  m31_lift_0331,
  m31_lift_0332,
  m31_lift_0333,
  m31_lift_0334,
  m31_lift_0335,
  m31_lift_0336,
  m31_lift_0337,
  m31_lift_0338,
  m31_lift_0339,
  m31_lift_0340,
  m31_lift_0341,
  m31_lift_0342,
  m31_lift_0343,
  m31_lift_0344,
  m31_lift_0345,
  m31_lift_0346,
  m31_lift_0347,
  m31_lift_0348,
  m31_lift_0349,
  m31_lift_0350,
  m31_lift_0351,
  m31_lift_0352,
  m31_lift_0353,
  m31_lift_0354,
  m31_lift_0355,
  m31_lift_0356,
  m31_lift_0357,
  m31_lift_0358,
  m31_lift_0359,
  m31_lift_0360,
  m31_lift_0361,
  m31_lift_0362,
  m31_lift_0363,
  m31_lift_0364,
  m31_lift_0365,
  m31_lift_0366,
  m31_lift_0367,
  m31_lift_0368,
  m31_lift_0369,
  m31_lift_0370,
  m31_lift_0371,
  m31_lift_0372,
  m31_lift_0373,
  m31_lift_0374,
  m31_lift_0375,
  m31_lift_0376,
  m31_lift_0377,
  m31_lift_0378,
  m31_lift_0379,
  m31_lift_0380,
  m31_lift_0381,
  m31_lift_0382,
  m31_lift_0383,
  m31_lift_0384,
  m31_lift_0385,
  m31_lift_0386,
  m31_lift_0387,
  m31_lift_0388,
  m31_lift_0389,
  m31_lift_0390,
  m31_lift_0391,
  m31_lift_0392,
  m31_lift_0393,
  m31_lift_0394,
  m31_lift_0395,
  m31_lift_0396,
  m31_lift_0397,
  m31_lift_0398,
  m31_lift_0399,
  m31_lift_0400,
  m31_lift_0401,
  m31_lift_0402,
  m31_lift_0403,
  m31_lift_0404,
  m31_lift_0405,
  m31_lift_0406,
  m31_lift_0407,
  m31_lift_0408,
  m31_lift_0409,
  m31_lift_0410,
  m31_lift_0411,
  m31_lift_0412,
  m31_lift_0413,
  m31_lift_0414,
  m31_lift_0415,
  m31_lift_0416,
  m31_lift_0417,
  m31_lift_0418,
  m31_lift_0419,
  m31_lift_0420,
  m31_lift_0421,
  m31_lift_0422,
  m31_lift_0423,
  m31_lift_0424,
  m31_lift_0425,
  m31_lift_0426,
  m31_lift_0427,
  m31_lift_0428,
  m31_lift_0429,
  m31_lift_0430,
  m31_lift_0431,
  m31_lift_0432,
  m31_lift_0433,
  m31_lift_0434,
  m31_lift_0435,
  m31_lift_0436,
  m31_lift_0437,
  m31_lift_0438,
  m31_lift_0439,
  m31_lift_0440,
  m31_lift_0441,
  m31_lift_0442,
  m31_lift_0443,
  m31_lift_0444,
  m31_lift_0445,
  m31_lift_0446,
  m31_lift_0447,
  m31_lift_0448,
  m31_lift_0449,
  m31_lift_0450,
  m31_lift_0451,
  m31_lift_0452,
  m31_lift_0453,
  m31_lift_0454,
  m31_lift_0455,
  m31_lift_0456,
  m31_lift_0457,
  m31_lift_0458,
  m31_lift_0459,
  m31_lift_0460,
  m31_lift_0461,
  m31_lift_0462,
  m31_lift_0463,
  m31_lift_0464,
  m31_lift_0465,
  m31_lift_0466,
  m31_lift_0467,
  m31_lift_0468,
  m31_lift_0469,
  m31_lift_0470,
  m31_lift_0471,
  m31_lift_0472,
  m31_lift_0473,
  m31_lift_0474,
  m31_lift_0475,
  m31_lift_0476,
  m31_lift_0477,
  m31_lift_0478,
  m31_lift_0479,
  m31_lift_0480,
  m31_lift_0481,
  m31_lift_0482,
  m31_lift_0483,
  m31_lift_0484,
  m31_lift_0485,
  m31_lift_0486,
  m31_lift_0487,
  m31_lift_0488,
  m31_lift_0489,
  m31_lift_0490,
  m31_lift_0491,
  m31_lift_0492,
  m31_lift_0493,
  m31_lift_0494,
  m31_lift_0495,
  m31_lift_0496,
  m31_lift_0497,
  m31_lift_0498,
  m31_lift_0499,
  m31_lift_0500,
  m31_lift_0501,
  m31_lift_0502,
  m31_lift_0503,
  m31_lift_0504,
  m31_lift_0505,
  m31_lift_0506,
  m31_lift_0507,
  m31_lift_0508,
  m31_lift_0509,
  m31_lift_0510,
  m31_lift_0511,
  m31_lift_0512,
  m31_lift_0513,
  m31_lift_0514,
  m31_lift_0515,
  m31_lift_0516,
  m31_lift_0517,
  m31_lift_0518,
  m31_lift_0519,
  m31_lift_0520,
  m31_lift_0521,
  m31_lift_0522,
  m31_lift_0523,
  m31_lift_0524,
  m31_lift_0525,
  m31_lift_0526,
  m31_lift_0527,
  m31_lift_0528,
  m31_lift_0529,
  m31_lift_0530,
  m31_lift_0531,
  m31_lift_0532,
  m31_lift_0533,
  m31_lift_0534,
  m31_lift_0535,
  m31_lift_0536,
  m31_lift_0537,
  m31_lift_0538,
  m31_lift_0539,
  m31_lift_0540,
  m31_lift_0541,
  m31_lift_0542,
  m31_lift_0543,
  m31_lift_0544,
  m31_lift_0545,
  m31_lift_0546,
  m31_lift_0547,
  m31_lift_0548,
  m31_lift_0549,
  m31_lift_0550,
  m31_lift_0551,
  m31_lift_0552,
  m31_lift_0553,
  m31_lift_0554,
  m31_lift_0555,
  m31_lift_0556,
  m31_lift_0557,
  m31_lift_0558,
  m31_lift_0559,
  m31_lift_0560,
  m31_lift_0561,
  m31_lift_0562,
  m31_lift_0563,
  m31_lift_0564,
  m31_lift_0565,
  m31_lift_0566,
  m31_lift_0567,
  m31_lift_0568,
  m31_lift_0569,
  m31_lift_0570,
  m31_lift_0571,
  m31_lift_0572,
  m31_lift_0573,
  m31_lift_0574,
  m31_lift_0575,
  m31_lift_0576,
  m31_lift_0577,
  m31_lift_0578,
  m31_lift_0579,
  m31_lift_0580,
  m31_lift_0581,
  m31_lift_0582,
  m31_lift_0583,
  m31_lift_0584,
  m31_lift_0585,
  m31_lift_0586,
  m31_lift_0587,
  m31_lift_0588,
  m31_lift_0589,
  m31_lift_0590,
  m31_lift_0591,
  m31_lift_0592,
  m31_lift_0593,
  m31_lift_0594,
  m31_lift_0595,
  m31_lift_0596,
  m31_lift_0597,
  m31_lift_0598,
  m31_lift_0599,
  m31_lift_0600,
  m31_lift_0601,
  m31_lift_0602,
  m31_lift_0603,
  m31_lift_0604,
  m31_lift_0605,
  m31_lift_0606,
  m31_lift_0607,
  m31_lift_0608,
  m31_lift_0609,
  m31_lift_0610,
  m31_lift_0611,
  m31_lift_0612,
  m31_lift_0613,
  m31_lift_0614,
  m31_lift_0615,
  m31_lift_0616,
  m31_lift_0617,
  m31_lift_0618,
  m31_lift_0619,
  m31_lift_0620,
  m31_lift_0621,
  m31_lift_0622,
  m31_lift_0623,
  m31_lift_0624,
  m31_lift_0625,
  m31_lift_0626,
  m31_lift_0627,
  m31_lift_0628,
  m31_lift_0629,
  m31_lift_0630,
  m31_lift_0631,
  m31_lift_0632,
  m31_lift_0633,
  m31_lift_0634,
  m31_lift_0635,
  m31_lift_0636,
  m31_lift_0637,
  m31_lift_0638,
  m31_lift_0639,
  m31_lift_0640,
  m31_lift_0641,
  m31_lift_0642,
  m31_lift_0643,
  m31_lift_0644,
  m31_lift_0645,
  m31_lift_0646,
  m31_lift_0647,
  m31_lift_0648,
  m31_lift_0649,
  m31_lift_0650,
  m31_lift_0651,
  m31_lift_0652,
  m31_lift_0653,
  m31_lift_0654,
  m31_lift_0655,
  m31_lift_0656,
  m31_lift_0657,
  m31_lift_0658,
  m31_lift_0659,
  m31_lift_0660,
  m31_lift_0661,
  m31_lift_0662,
  m31_lift_0663,
  m31_lift_0664,
  m31_lift_0665,
  m31_lift_0666,
  m31_lift_0667,
  m31_lift_0668,
  m31_lift_0669,
  m31_lift_0670,
  m31_lift_0671,
  m31_lift_0672,
  m31_lift_0673,
  m31_lift_0674,
  m31_lift_0675,
  m31_lift_0676,
  m31_lift_0677,
  m31_lift_0678,
  m31_lift_0679,
  m31_lift_0680,
  m31_lift_0681,
  m31_lift_0682,
  m31_lift_0683,
  m31_lift_0684,
  m31_lift_0685,
  m31_lift_0686,
  m31_lift_0687,
  m31_lift_0688,
  m31_lift_0689,
  m31_lift_0690,
  m31_lift_0691,
  m31_lift_0692,
  m31_lift_0693,
  m31_lift_0694,
  m31_lift_0695,
  m31_lift_0696,
  m31_lift_0697,
  m31_lift_0698,
  m31_lift_0699,
  m31_lift_0700,
  m31_lift_0701,
  m31_lift_0702,
  m31_lift_0703,
  m31_lift_0704,
  m31_lift_0705,
  m31_lift_0706,
  m31_lift_0707,
  m31_lift_0708,
  m31_lift_0709,
  m31_lift_0710,
  m31_lift_0711,
  m31_lift_0712,
  m31_lift_0713,
  m31_lift_0714,
  m31_lift_0715,
  m31_lift_0716,
  m31_lift_0717,
  m31_lift_0718,
  m31_lift_0719,
  m31_lift_0720,
  m31_lift_0721,
  m31_lift_0722,
  m31_lift_0723,
  m31_lift_0724,
  m31_lift_0725,
  m31_lift_0726,
  m31_lift_0727,
  m31_lift_0728,
  m31_lift_0729,
  m31_lift_0730,
  m31_lift_0731,
  m31_lift_0732,
  m31_lift_0733,
  m31_lift_0734,
  m31_lift_0735,
  m31_lift_0736,
  m31_lift_0737,
  m31_lift_0738,
  m31_lift_0739,
  m31_lift_0740,
  m31_lift_0741,
  m31_lift_0742,
  m31_lift_0743,
  m31_lift_0744,
  m31_lift_0745,
  m31_lift_0746,
  m31_lift_0747,
  m31_lift_0748,
  m31_lift_0749,
  m31_lift_0750,
  m31_lift_0751,
  m31_lift_0752,
  m31_lift_0753,
  m31_lift_0754,
  m31_lift_0755,
  m31_lift_0756,
  m31_lift_0757,
  m31_lift_0758,
  m31_lift_0759,
  m31_lift_0760,
  m31_lift_0761,
  m31_lift_0762,
  m31_lift_0763,
  m31_lift_0764,
  m31_lift_0765,
  m31_lift_0766,
  m31_lift_0767,
  m31_lift_0768,
  m31_lift_0769,
  m31_lift_0770,
  m31_lift_0771,
  m31_lift_0772,
  m31_lift_0773,
  m31_lift_0774,
  m31_lift_0775,
  m31_lift_0776,
  m31_lift_0777,
  m31_lift_0778,
  m31_lift_0779,
  m31_lift_0780,
  m31_lift_0781,
  m31_lift_0782,
  m31_lift_0783,
  m31_lift_0784,
  m31_lift_0785,
  m31_lift_0786,
  m31_lift_0787,
  m31_lift_0788,
  m31_lift_0789,
  m31_lift_0790,
  m31_lift_0791,
  m31_lift_0792,
  m31_lift_0793,
  m31_lift_0794,
  m31_lift_0795,
  m31_lift_0796,
  m31_lift_0797,
  m31_lift_0798,
  m31_lift_0799,
  m31_lift_0800,
  m31_lift_0801,
  m31_lift_0802,
  m31_lift_0803,
  m31_lift_0804,
  m31_lift_0805,
  m31_lift_0806,
  m31_lift_0807,
  m31_lift_0808,
  m31_lift_0809,
  m31_lift_0810,
  m31_lift_0811,
  m31_lift_0812,
  m31_lift_0813,
  m31_lift_0814,
  m31_lift_0815,
  m31_lift_0816,
  m31_lift_0817,
  m31_lift_0818,
  m31_lift_0819,
  m31_lift_0820,
  m31_lift_0821,
  m31_lift_0822,
  m31_lift_0823,
  m31_lift_0824,
  m31_lift_0825,
  m31_lift_0826,
  m31_lift_0827,
  m31_lift_0828,
  m31_lift_0829,
  m31_lift_0830,
  m31_lift_0831,
  m31_lift_0832,
  m31_lift_0833,
  m31_lift_0834,
  m31_lift_0835,
  m31_lift_0836,
  m31_lift_0837,
  m31_lift_0838,
  m31_lift_0839,
  m31_lift_0840,
  m31_lift_0841,
  m31_lift_0842,
  m31_lift_0843,
  m31_lift_0844,
  m31_lift_0845,
  m31_lift_0846,
  m31_lift_0847,
  m31_lift_0848,
  m31_lift_0849,
  m31_lift_0850,
  m31_lift_0851,
  m31_lift_0852,
  m31_lift_0853,
  m31_lift_0854,
  m31_lift_0855,
  m31_lift_0856,
  m31_lift_0857,
  m31_lift_0858,
  m31_lift_0859,
  m31_lift_0860
]

theorem liftedFamilies_count : liftedFamilies.length = 860 := by rfl
#print axioms collatz_iterate_pow2_lift
#print axioms collatz_lifted_strict_descent
#print axioms liftedFamilies
#print axioms liftedFamilies_count
