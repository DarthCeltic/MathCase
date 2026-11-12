import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard007

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_40091 : ∀ k : Nat,
    iterate (1048576 * k + 40091) 32 = 531441 * k + 20320 ∧
      531441 * k + 20320 < 1048576 * k + 40091 := by
  intro k
  have h1 : C (1048576 * k + 40091) = 3145728 * k + 120274 := by
    unfold C
    simp [show (1048576 * k + 40091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 120274) = 1572864 * k + 60137 := by
    unfold C
    simp [show (3145728 * k + 120274) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 60137) = 4718592 * k + 180412 := by
    unfold C
    simp [show (1572864 * k + 60137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 180412) = 2359296 * k + 90206 := by
    unfold C
    simp [show (4718592 * k + 180412) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 90206) = 1179648 * k + 45103 := by
    unfold C
    simp [show (2359296 * k + 90206) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 45103) = 3538944 * k + 135310 := by
    unfold C
    simp [show (1179648 * k + 45103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 135310) = 1769472 * k + 67655 := by
    unfold C
    simp [show (3538944 * k + 135310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 67655) = 5308416 * k + 202966 := by
    unfold C
    simp [show (1769472 * k + 67655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 202966) = 2654208 * k + 101483 := by
    unfold C
    simp [show (5308416 * k + 202966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 101483) = 7962624 * k + 304450 := by
    unfold C
    simp [show (2654208 * k + 101483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 304450) = 3981312 * k + 152225 := by
    unfold C
    simp [show (7962624 * k + 304450) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 152225) = 11943936 * k + 456676 := by
    unfold C
    simp [show (3981312 * k + 152225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 456676) = 5971968 * k + 228338 := by
    unfold C
    simp [show (11943936 * k + 456676) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 228338) = 2985984 * k + 114169 := by
    unfold C
    simp [show (5971968 * k + 228338) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 114169) = 8957952 * k + 342508 := by
    unfold C
    simp [show (2985984 * k + 114169) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 342508) = 4478976 * k + 171254 := by
    unfold C
    simp [show (8957952 * k + 342508) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 171254) = 2239488 * k + 85627 := by
    unfold C
    simp [show (4478976 * k + 171254) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 85627) = 6718464 * k + 256882 := by
    unfold C
    simp [show (2239488 * k + 85627) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 256882) = 3359232 * k + 128441 := by
    unfold C
    simp [show (6718464 * k + 256882) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 128441) = 10077696 * k + 385324 := by
    unfold C
    simp [show (3359232 * k + 128441) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 385324) = 5038848 * k + 192662 := by
    unfold C
    simp [show (10077696 * k + 385324) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 192662) = 2519424 * k + 96331 := by
    unfold C
    simp [show (5038848 * k + 192662) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 96331) = 7558272 * k + 288994 := by
    unfold C
    simp [show (2519424 * k + 96331) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 288994) = 3779136 * k + 144497 := by
    unfold C
    simp [show (7558272 * k + 288994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 144497) = 11337408 * k + 433492 := by
    unfold C
    simp [show (3779136 * k + 144497) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 433492) = 5668704 * k + 216746 := by
    unfold C
    simp [show (11337408 * k + 433492) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 216746) = 2834352 * k + 108373 := by
    unfold C
    simp [show (5668704 * k + 216746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 108373) = 8503056 * k + 325120 := by
    unfold C
    simp [show (2834352 * k + 108373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 325120) = 4251528 * k + 162560 := by
    unfold C
    simp [show (8503056 * k + 325120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 162560) = 2125764 * k + 81280 := by
    unfold C
    simp [show (4251528 * k + 162560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 81280) = 1062882 * k + 40640 := by
    unfold C
    simp [show (2125764 * k + 81280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 40640) = 531441 * k + 20320 := by
    unfold C
    simp [show (1062882 * k + 40640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 40091) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 40091)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_40127 : ∀ k : Nat,
    iterate (1048576 * k + 40127) 32 = 531441 * k + 20338 ∧
      531441 * k + 20338 < 1048576 * k + 40127 := by
  intro k
  have h1 : C (1048576 * k + 40127) = 3145728 * k + 120382 := by
    unfold C
    simp [show (1048576 * k + 40127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 120382) = 1572864 * k + 60191 := by
    unfold C
    simp [show (3145728 * k + 120382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 60191) = 4718592 * k + 180574 := by
    unfold C
    simp [show (1572864 * k + 60191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 180574) = 2359296 * k + 90287 := by
    unfold C
    simp [show (4718592 * k + 180574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 90287) = 7077888 * k + 270862 := by
    unfold C
    simp [show (2359296 * k + 90287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 270862) = 3538944 * k + 135431 := by
    unfold C
    simp [show (7077888 * k + 270862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 135431) = 10616832 * k + 406294 := by
    unfold C
    simp [show (3538944 * k + 135431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 406294) = 5308416 * k + 203147 := by
    unfold C
    simp [show (10616832 * k + 406294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 203147) = 15925248 * k + 609442 := by
    unfold C
    simp [show (5308416 * k + 203147) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 609442) = 7962624 * k + 304721 := by
    unfold C
    simp [show (15925248 * k + 609442) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 304721) = 23887872 * k + 914164 := by
    unfold C
    simp [show (7962624 * k + 304721) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 914164) = 11943936 * k + 457082 := by
    unfold C
    simp [show (23887872 * k + 914164) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 457082) = 5971968 * k + 228541 := by
    unfold C
    simp [show (11943936 * k + 457082) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 228541) = 17915904 * k + 685624 := by
    unfold C
    simp [show (5971968 * k + 228541) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 685624) = 8957952 * k + 342812 := by
    unfold C
    simp [show (17915904 * k + 685624) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 342812) = 4478976 * k + 171406 := by
    unfold C
    simp [show (8957952 * k + 342812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 171406) = 2239488 * k + 85703 := by
    unfold C
    simp [show (4478976 * k + 171406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 85703) = 6718464 * k + 257110 := by
    unfold C
    simp [show (2239488 * k + 85703) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 257110) = 3359232 * k + 128555 := by
    unfold C
    simp [show (6718464 * k + 257110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 128555) = 10077696 * k + 385666 := by
    unfold C
    simp [show (3359232 * k + 128555) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 385666) = 5038848 * k + 192833 := by
    unfold C
    simp [show (10077696 * k + 385666) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 192833) = 15116544 * k + 578500 := by
    unfold C
    simp [show (5038848 * k + 192833) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 578500) = 7558272 * k + 289250 := by
    unfold C
    simp [show (15116544 * k + 578500) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 289250) = 3779136 * k + 144625 := by
    unfold C
    simp [show (7558272 * k + 289250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 144625) = 11337408 * k + 433876 := by
    unfold C
    simp [show (3779136 * k + 144625) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 433876) = 5668704 * k + 216938 := by
    unfold C
    simp [show (11337408 * k + 433876) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 216938) = 2834352 * k + 108469 := by
    unfold C
    simp [show (5668704 * k + 216938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 108469) = 8503056 * k + 325408 := by
    unfold C
    simp [show (2834352 * k + 108469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 325408) = 4251528 * k + 162704 := by
    unfold C
    simp [show (8503056 * k + 325408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 162704) = 2125764 * k + 81352 := by
    unfold C
    simp [show (4251528 * k + 162704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 81352) = 1062882 * k + 40676 := by
    unfold C
    simp [show (2125764 * k + 81352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 40676) = 531441 * k + 20338 := by
    unfold C
    simp [show (1062882 * k + 40676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 40127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 40127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_40239 : ∀ k : Nat,
    iterate (1048576 * k + 40239) 32 = 531441 * k + 20395 ∧
      531441 * k + 20395 < 1048576 * k + 40239 := by
  intro k
  have h1 : C (1048576 * k + 40239) = 3145728 * k + 120718 := by
    unfold C
    simp [show (1048576 * k + 40239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 120718) = 1572864 * k + 60359 := by
    unfold C
    simp [show (3145728 * k + 120718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 60359) = 4718592 * k + 181078 := by
    unfold C
    simp [show (1572864 * k + 60359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 181078) = 2359296 * k + 90539 := by
    unfold C
    simp [show (4718592 * k + 181078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 90539) = 7077888 * k + 271618 := by
    unfold C
    simp [show (2359296 * k + 90539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 271618) = 3538944 * k + 135809 := by
    unfold C
    simp [show (7077888 * k + 271618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 135809) = 10616832 * k + 407428 := by
    unfold C
    simp [show (3538944 * k + 135809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 407428) = 5308416 * k + 203714 := by
    unfold C
    simp [show (10616832 * k + 407428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 203714) = 2654208 * k + 101857 := by
    unfold C
    simp [show (5308416 * k + 203714) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 101857) = 7962624 * k + 305572 := by
    unfold C
    simp [show (2654208 * k + 101857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 305572) = 3981312 * k + 152786 := by
    unfold C
    simp [show (7962624 * k + 305572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 152786) = 1990656 * k + 76393 := by
    unfold C
    simp [show (3981312 * k + 152786) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 76393) = 5971968 * k + 229180 := by
    unfold C
    simp [show (1990656 * k + 76393) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 229180) = 2985984 * k + 114590 := by
    unfold C
    simp [show (5971968 * k + 229180) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 114590) = 1492992 * k + 57295 := by
    unfold C
    simp [show (2985984 * k + 114590) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 57295) = 4478976 * k + 171886 := by
    unfold C
    simp [show (1492992 * k + 57295) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 171886) = 2239488 * k + 85943 := by
    unfold C
    simp [show (4478976 * k + 171886) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 85943) = 6718464 * k + 257830 := by
    unfold C
    simp [show (2239488 * k + 85943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 257830) = 3359232 * k + 128915 := by
    unfold C
    simp [show (6718464 * k + 257830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 128915) = 10077696 * k + 386746 := by
    unfold C
    simp [show (3359232 * k + 128915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 386746) = 5038848 * k + 193373 := by
    unfold C
    simp [show (10077696 * k + 386746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 193373) = 15116544 * k + 580120 := by
    unfold C
    simp [show (5038848 * k + 193373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 580120) = 7558272 * k + 290060 := by
    unfold C
    simp [show (15116544 * k + 580120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 290060) = 3779136 * k + 145030 := by
    unfold C
    simp [show (7558272 * k + 290060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 145030) = 1889568 * k + 72515 := by
    unfold C
    simp [show (3779136 * k + 145030) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 72515) = 5668704 * k + 217546 := by
    unfold C
    simp [show (1889568 * k + 72515) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 217546) = 2834352 * k + 108773 := by
    unfold C
    simp [show (5668704 * k + 217546) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 108773) = 8503056 * k + 326320 := by
    unfold C
    simp [show (2834352 * k + 108773) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 326320) = 4251528 * k + 163160 := by
    unfold C
    simp [show (8503056 * k + 326320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 163160) = 2125764 * k + 81580 := by
    unfold C
    simp [show (4251528 * k + 163160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 81580) = 1062882 * k + 40790 := by
    unfold C
    simp [show (2125764 * k + 81580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 40790) = 531441 * k + 20395 := by
    unfold C
    simp [show (1062882 * k + 40790) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 40239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 40239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_40347 : ∀ k : Nat,
    iterate (1048576 * k + 40347) 32 = 531441 * k + 20450 ∧
      531441 * k + 20450 < 1048576 * k + 40347 := by
  intro k
  have h1 : C (1048576 * k + 40347) = 3145728 * k + 121042 := by
    unfold C
    simp [show (1048576 * k + 40347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 121042) = 1572864 * k + 60521 := by
    unfold C
    simp [show (3145728 * k + 121042) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 60521) = 4718592 * k + 181564 := by
    unfold C
    simp [show (1572864 * k + 60521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 181564) = 2359296 * k + 90782 := by
    unfold C
    simp [show (4718592 * k + 181564) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 90782) = 1179648 * k + 45391 := by
    unfold C
    simp [show (2359296 * k + 90782) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 45391) = 3538944 * k + 136174 := by
    unfold C
    simp [show (1179648 * k + 45391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 136174) = 1769472 * k + 68087 := by
    unfold C
    simp [show (3538944 * k + 136174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 68087) = 5308416 * k + 204262 := by
    unfold C
    simp [show (1769472 * k + 68087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 204262) = 2654208 * k + 102131 := by
    unfold C
    simp [show (5308416 * k + 204262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 102131) = 7962624 * k + 306394 := by
    unfold C
    simp [show (2654208 * k + 102131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 306394) = 3981312 * k + 153197 := by
    unfold C
    simp [show (7962624 * k + 306394) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 153197) = 11943936 * k + 459592 := by
    unfold C
    simp [show (3981312 * k + 153197) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 459592) = 5971968 * k + 229796 := by
    unfold C
    simp [show (11943936 * k + 459592) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 229796) = 2985984 * k + 114898 := by
    unfold C
    simp [show (5971968 * k + 229796) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 114898) = 1492992 * k + 57449 := by
    unfold C
    simp [show (2985984 * k + 114898) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 57449) = 4478976 * k + 172348 := by
    unfold C
    simp [show (1492992 * k + 57449) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 172348) = 2239488 * k + 86174 := by
    unfold C
    simp [show (4478976 * k + 172348) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 86174) = 1119744 * k + 43087 := by
    unfold C
    simp [show (2239488 * k + 86174) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 43087) = 3359232 * k + 129262 := by
    unfold C
    simp [show (1119744 * k + 43087) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 129262) = 1679616 * k + 64631 := by
    unfold C
    simp [show (3359232 * k + 129262) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 64631) = 5038848 * k + 193894 := by
    unfold C
    simp [show (1679616 * k + 64631) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 193894) = 2519424 * k + 96947 := by
    unfold C
    simp [show (5038848 * k + 193894) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 96947) = 7558272 * k + 290842 := by
    unfold C
    simp [show (2519424 * k + 96947) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 290842) = 3779136 * k + 145421 := by
    unfold C
    simp [show (7558272 * k + 290842) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 145421) = 11337408 * k + 436264 := by
    unfold C
    simp [show (3779136 * k + 145421) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 436264) = 5668704 * k + 218132 := by
    unfold C
    simp [show (11337408 * k + 436264) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 218132) = 2834352 * k + 109066 := by
    unfold C
    simp [show (5668704 * k + 218132) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 109066) = 1417176 * k + 54533 := by
    unfold C
    simp [show (2834352 * k + 109066) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 54533) = 4251528 * k + 163600 := by
    unfold C
    simp [show (1417176 * k + 54533) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 163600) = 2125764 * k + 81800 := by
    unfold C
    simp [show (4251528 * k + 163600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 81800) = 1062882 * k + 40900 := by
    unfold C
    simp [show (2125764 * k + 81800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 40900) = 531441 * k + 20450 := by
    unfold C
    simp [show (1062882 * k + 40900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 40347) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 40347)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_40447 : ∀ k : Nat,
    iterate (1048576 * k + 40447) 32 = 531441 * k + 20500 ∧
      531441 * k + 20500 < 1048576 * k + 40447 := by
  intro k
  have h1 : C (1048576 * k + 40447) = 3145728 * k + 121342 := by
    unfold C
    simp [show (1048576 * k + 40447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 121342) = 1572864 * k + 60671 := by
    unfold C
    simp [show (3145728 * k + 121342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 60671) = 4718592 * k + 182014 := by
    unfold C
    simp [show (1572864 * k + 60671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 182014) = 2359296 * k + 91007 := by
    unfold C
    simp [show (4718592 * k + 182014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 91007) = 7077888 * k + 273022 := by
    unfold C
    simp [show (2359296 * k + 91007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 273022) = 3538944 * k + 136511 := by
    unfold C
    simp [show (7077888 * k + 273022) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 136511) = 10616832 * k + 409534 := by
    unfold C
    simp [show (3538944 * k + 136511) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 409534) = 5308416 * k + 204767 := by
    unfold C
    simp [show (10616832 * k + 409534) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 204767) = 15925248 * k + 614302 := by
    unfold C
    simp [show (5308416 * k + 204767) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 614302) = 7962624 * k + 307151 := by
    unfold C
    simp [show (15925248 * k + 614302) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 307151) = 23887872 * k + 921454 := by
    unfold C
    simp [show (7962624 * k + 307151) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 921454) = 11943936 * k + 460727 := by
    unfold C
    simp [show (23887872 * k + 921454) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 460727) = 35831808 * k + 1382182 := by
    unfold C
    simp [show (11943936 * k + 460727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1382182) = 17915904 * k + 691091 := by
    unfold C
    simp [show (35831808 * k + 1382182) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 691091) = 53747712 * k + 2073274 := by
    unfold C
    simp [show (17915904 * k + 691091) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 2073274) = 26873856 * k + 1036637 := by
    unfold C
    simp [show (53747712 * k + 2073274) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1036637) = 80621568 * k + 3109912 := by
    unfold C
    simp [show (26873856 * k + 1036637) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 3109912) = 40310784 * k + 1554956 := by
    unfold C
    simp [show (80621568 * k + 3109912) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1554956) = 20155392 * k + 777478 := by
    unfold C
    simp [show (40310784 * k + 1554956) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 777478) = 10077696 * k + 388739 := by
    unfold C
    simp [show (20155392 * k + 777478) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 388739) = 30233088 * k + 1166218 := by
    unfold C
    simp [show (10077696 * k + 388739) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1166218) = 15116544 * k + 583109 := by
    unfold C
    simp [show (30233088 * k + 1166218) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 583109) = 45349632 * k + 1749328 := by
    unfold C
    simp [show (15116544 * k + 583109) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1749328) = 22674816 * k + 874664 := by
    unfold C
    simp [show (45349632 * k + 1749328) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 874664) = 11337408 * k + 437332 := by
    unfold C
    simp [show (22674816 * k + 874664) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 437332) = 5668704 * k + 218666 := by
    unfold C
    simp [show (11337408 * k + 437332) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 218666) = 2834352 * k + 109333 := by
    unfold C
    simp [show (5668704 * k + 218666) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 109333) = 8503056 * k + 328000 := by
    unfold C
    simp [show (2834352 * k + 109333) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 328000) = 4251528 * k + 164000 := by
    unfold C
    simp [show (8503056 * k + 328000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 164000) = 2125764 * k + 82000 := by
    unfold C
    simp [show (4251528 * k + 164000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 82000) = 1062882 * k + 41000 := by
    unfold C
    simp [show (2125764 * k + 82000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 41000) = 531441 * k + 20500 := by
    unfold C
    simp [show (1062882 * k + 41000) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 40447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 40447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_41455 : ∀ k : Nat,
    iterate (1048576 * k + 41455) 32 = 531441 * k + 21011 ∧
      531441 * k + 21011 < 1048576 * k + 41455 := by
  intro k
  have h1 : C (1048576 * k + 41455) = 3145728 * k + 124366 := by
    unfold C
    simp [show (1048576 * k + 41455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 124366) = 1572864 * k + 62183 := by
    unfold C
    simp [show (3145728 * k + 124366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 62183) = 4718592 * k + 186550 := by
    unfold C
    simp [show (1572864 * k + 62183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 186550) = 2359296 * k + 93275 := by
    unfold C
    simp [show (4718592 * k + 186550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 93275) = 7077888 * k + 279826 := by
    unfold C
    simp [show (2359296 * k + 93275) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 279826) = 3538944 * k + 139913 := by
    unfold C
    simp [show (7077888 * k + 279826) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 139913) = 10616832 * k + 419740 := by
    unfold C
    simp [show (3538944 * k + 139913) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 419740) = 5308416 * k + 209870 := by
    unfold C
    simp [show (10616832 * k + 419740) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 209870) = 2654208 * k + 104935 := by
    unfold C
    simp [show (5308416 * k + 209870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 104935) = 7962624 * k + 314806 := by
    unfold C
    simp [show (2654208 * k + 104935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 314806) = 3981312 * k + 157403 := by
    unfold C
    simp [show (7962624 * k + 314806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 157403) = 11943936 * k + 472210 := by
    unfold C
    simp [show (3981312 * k + 157403) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 472210) = 5971968 * k + 236105 := by
    unfold C
    simp [show (11943936 * k + 472210) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 236105) = 17915904 * k + 708316 := by
    unfold C
    simp [show (5971968 * k + 236105) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 708316) = 8957952 * k + 354158 := by
    unfold C
    simp [show (17915904 * k + 708316) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 354158) = 4478976 * k + 177079 := by
    unfold C
    simp [show (8957952 * k + 354158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 177079) = 13436928 * k + 531238 := by
    unfold C
    simp [show (4478976 * k + 177079) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 531238) = 6718464 * k + 265619 := by
    unfold C
    simp [show (13436928 * k + 531238) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 265619) = 20155392 * k + 796858 := by
    unfold C
    simp [show (6718464 * k + 265619) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 796858) = 10077696 * k + 398429 := by
    unfold C
    simp [show (20155392 * k + 796858) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 398429) = 30233088 * k + 1195288 := by
    unfold C
    simp [show (10077696 * k + 398429) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1195288) = 15116544 * k + 597644 := by
    unfold C
    simp [show (30233088 * k + 1195288) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 597644) = 7558272 * k + 298822 := by
    unfold C
    simp [show (15116544 * k + 597644) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 298822) = 3779136 * k + 149411 := by
    unfold C
    simp [show (7558272 * k + 298822) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 149411) = 11337408 * k + 448234 := by
    unfold C
    simp [show (3779136 * k + 149411) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 448234) = 5668704 * k + 224117 := by
    unfold C
    simp [show (11337408 * k + 448234) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 224117) = 17006112 * k + 672352 := by
    unfold C
    simp [show (5668704 * k + 224117) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 672352) = 8503056 * k + 336176 := by
    unfold C
    simp [show (17006112 * k + 672352) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 336176) = 4251528 * k + 168088 := by
    unfold C
    simp [show (8503056 * k + 336176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 168088) = 2125764 * k + 84044 := by
    unfold C
    simp [show (4251528 * k + 168088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 84044) = 1062882 * k + 42022 := by
    unfold C
    simp [show (2125764 * k + 84044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 42022) = 531441 * k + 21011 := by
    unfold C
    simp [show (1062882 * k + 42022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 41455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 41455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_42495 : ∀ k : Nat,
    iterate (1048576 * k + 42495) 32 = 531441 * k + 21538 ∧
      531441 * k + 21538 < 1048576 * k + 42495 := by
  intro k
  have h1 : C (1048576 * k + 42495) = 3145728 * k + 127486 := by
    unfold C
    simp [show (1048576 * k + 42495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 127486) = 1572864 * k + 63743 := by
    unfold C
    simp [show (3145728 * k + 127486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 63743) = 4718592 * k + 191230 := by
    unfold C
    simp [show (1572864 * k + 63743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 191230) = 2359296 * k + 95615 := by
    unfold C
    simp [show (4718592 * k + 191230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 95615) = 7077888 * k + 286846 := by
    unfold C
    simp [show (2359296 * k + 95615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 286846) = 3538944 * k + 143423 := by
    unfold C
    simp [show (7077888 * k + 286846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 143423) = 10616832 * k + 430270 := by
    unfold C
    simp [show (3538944 * k + 143423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 430270) = 5308416 * k + 215135 := by
    unfold C
    simp [show (10616832 * k + 430270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 215135) = 15925248 * k + 645406 := by
    unfold C
    simp [show (5308416 * k + 215135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 645406) = 7962624 * k + 322703 := by
    unfold C
    simp [show (15925248 * k + 645406) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 322703) = 23887872 * k + 968110 := by
    unfold C
    simp [show (7962624 * k + 322703) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 968110) = 11943936 * k + 484055 := by
    unfold C
    simp [show (23887872 * k + 968110) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 484055) = 35831808 * k + 1452166 := by
    unfold C
    simp [show (11943936 * k + 484055) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1452166) = 17915904 * k + 726083 := by
    unfold C
    simp [show (35831808 * k + 1452166) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 726083) = 53747712 * k + 2178250 := by
    unfold C
    simp [show (17915904 * k + 726083) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 2178250) = 26873856 * k + 1089125 := by
    unfold C
    simp [show (53747712 * k + 2178250) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1089125) = 80621568 * k + 3267376 := by
    unfold C
    simp [show (26873856 * k + 1089125) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 3267376) = 40310784 * k + 1633688 := by
    unfold C
    simp [show (80621568 * k + 3267376) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1633688) = 20155392 * k + 816844 := by
    unfold C
    simp [show (40310784 * k + 1633688) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 816844) = 10077696 * k + 408422 := by
    unfold C
    simp [show (20155392 * k + 816844) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 408422) = 5038848 * k + 204211 := by
    unfold C
    simp [show (10077696 * k + 408422) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 204211) = 15116544 * k + 612634 := by
    unfold C
    simp [show (5038848 * k + 204211) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 612634) = 7558272 * k + 306317 := by
    unfold C
    simp [show (15116544 * k + 612634) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 306317) = 22674816 * k + 918952 := by
    unfold C
    simp [show (7558272 * k + 306317) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 918952) = 11337408 * k + 459476 := by
    unfold C
    simp [show (22674816 * k + 918952) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 459476) = 5668704 * k + 229738 := by
    unfold C
    simp [show (11337408 * k + 459476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 229738) = 2834352 * k + 114869 := by
    unfold C
    simp [show (5668704 * k + 229738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 114869) = 8503056 * k + 344608 := by
    unfold C
    simp [show (2834352 * k + 114869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 344608) = 4251528 * k + 172304 := by
    unfold C
    simp [show (8503056 * k + 344608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 172304) = 2125764 * k + 86152 := by
    unfold C
    simp [show (4251528 * k + 172304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 86152) = 1062882 * k + 43076 := by
    unfold C
    simp [show (2125764 * k + 86152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 43076) = 531441 * k + 21538 := by
    unfold C
    simp [show (1062882 * k + 43076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 42495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 42495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_43003 : ∀ k : Nat,
    iterate (1048576 * k + 43003) 32 = 531441 * k + 21796 ∧
      531441 * k + 21796 < 1048576 * k + 43003 := by
  intro k
  have h1 : C (1048576 * k + 43003) = 3145728 * k + 129010 := by
    unfold C
    simp [show (1048576 * k + 43003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 129010) = 1572864 * k + 64505 := by
    unfold C
    simp [show (3145728 * k + 129010) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 64505) = 4718592 * k + 193516 := by
    unfold C
    simp [show (1572864 * k + 64505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 193516) = 2359296 * k + 96758 := by
    unfold C
    simp [show (4718592 * k + 193516) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 96758) = 1179648 * k + 48379 := by
    unfold C
    simp [show (2359296 * k + 96758) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 48379) = 3538944 * k + 145138 := by
    unfold C
    simp [show (1179648 * k + 48379) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 145138) = 1769472 * k + 72569 := by
    unfold C
    simp [show (3538944 * k + 145138) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 72569) = 5308416 * k + 217708 := by
    unfold C
    simp [show (1769472 * k + 72569) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 217708) = 2654208 * k + 108854 := by
    unfold C
    simp [show (5308416 * k + 217708) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 108854) = 1327104 * k + 54427 := by
    unfold C
    simp [show (2654208 * k + 108854) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 54427) = 3981312 * k + 163282 := by
    unfold C
    simp [show (1327104 * k + 54427) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 163282) = 1990656 * k + 81641 := by
    unfold C
    simp [show (3981312 * k + 163282) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 81641) = 5971968 * k + 244924 := by
    unfold C
    simp [show (1990656 * k + 81641) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 244924) = 2985984 * k + 122462 := by
    unfold C
    simp [show (5971968 * k + 244924) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 122462) = 1492992 * k + 61231 := by
    unfold C
    simp [show (2985984 * k + 122462) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 61231) = 4478976 * k + 183694 := by
    unfold C
    simp [show (1492992 * k + 61231) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 183694) = 2239488 * k + 91847 := by
    unfold C
    simp [show (4478976 * k + 183694) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 91847) = 6718464 * k + 275542 := by
    unfold C
    simp [show (2239488 * k + 91847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 275542) = 3359232 * k + 137771 := by
    unfold C
    simp [show (6718464 * k + 275542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 137771) = 10077696 * k + 413314 := by
    unfold C
    simp [show (3359232 * k + 137771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 413314) = 5038848 * k + 206657 := by
    unfold C
    simp [show (10077696 * k + 413314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 206657) = 15116544 * k + 619972 := by
    unfold C
    simp [show (5038848 * k + 206657) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 619972) = 7558272 * k + 309986 := by
    unfold C
    simp [show (15116544 * k + 619972) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 309986) = 3779136 * k + 154993 := by
    unfold C
    simp [show (7558272 * k + 309986) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 154993) = 11337408 * k + 464980 := by
    unfold C
    simp [show (3779136 * k + 154993) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 464980) = 5668704 * k + 232490 := by
    unfold C
    simp [show (11337408 * k + 464980) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 232490) = 2834352 * k + 116245 := by
    unfold C
    simp [show (5668704 * k + 232490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 116245) = 8503056 * k + 348736 := by
    unfold C
    simp [show (2834352 * k + 116245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 348736) = 4251528 * k + 174368 := by
    unfold C
    simp [show (8503056 * k + 348736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 174368) = 2125764 * k + 87184 := by
    unfold C
    simp [show (4251528 * k + 174368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 87184) = 1062882 * k + 43592 := by
    unfold C
    simp [show (2125764 * k + 87184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 43592) = 531441 * k + 21796 := by
    unfold C
    simp [show (1062882 * k + 43592) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 43003) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 43003)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_44059 : ∀ k : Nat,
    iterate (1048576 * k + 44059) 32 = 531441 * k + 22331 ∧
      531441 * k + 22331 < 1048576 * k + 44059 := by
  intro k
  have h1 : C (1048576 * k + 44059) = 3145728 * k + 132178 := by
    unfold C
    simp [show (1048576 * k + 44059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 132178) = 1572864 * k + 66089 := by
    unfold C
    simp [show (3145728 * k + 132178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 66089) = 4718592 * k + 198268 := by
    unfold C
    simp [show (1572864 * k + 66089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 198268) = 2359296 * k + 99134 := by
    unfold C
    simp [show (4718592 * k + 198268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 99134) = 1179648 * k + 49567 := by
    unfold C
    simp [show (2359296 * k + 99134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 49567) = 3538944 * k + 148702 := by
    unfold C
    simp [show (1179648 * k + 49567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 148702) = 1769472 * k + 74351 := by
    unfold C
    simp [show (3538944 * k + 148702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 74351) = 5308416 * k + 223054 := by
    unfold C
    simp [show (1769472 * k + 74351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 223054) = 2654208 * k + 111527 := by
    unfold C
    simp [show (5308416 * k + 223054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 111527) = 7962624 * k + 334582 := by
    unfold C
    simp [show (2654208 * k + 111527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 334582) = 3981312 * k + 167291 := by
    unfold C
    simp [show (7962624 * k + 334582) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 167291) = 11943936 * k + 501874 := by
    unfold C
    simp [show (3981312 * k + 167291) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 501874) = 5971968 * k + 250937 := by
    unfold C
    simp [show (11943936 * k + 501874) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 250937) = 17915904 * k + 752812 := by
    unfold C
    simp [show (5971968 * k + 250937) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 752812) = 8957952 * k + 376406 := by
    unfold C
    simp [show (17915904 * k + 752812) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 376406) = 4478976 * k + 188203 := by
    unfold C
    simp [show (8957952 * k + 376406) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 188203) = 13436928 * k + 564610 := by
    unfold C
    simp [show (4478976 * k + 188203) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 564610) = 6718464 * k + 282305 := by
    unfold C
    simp [show (13436928 * k + 564610) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 282305) = 20155392 * k + 846916 := by
    unfold C
    simp [show (6718464 * k + 282305) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 846916) = 10077696 * k + 423458 := by
    unfold C
    simp [show (20155392 * k + 846916) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 423458) = 5038848 * k + 211729 := by
    unfold C
    simp [show (10077696 * k + 423458) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 211729) = 15116544 * k + 635188 := by
    unfold C
    simp [show (5038848 * k + 211729) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 635188) = 7558272 * k + 317594 := by
    unfold C
    simp [show (15116544 * k + 635188) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 317594) = 3779136 * k + 158797 := by
    unfold C
    simp [show (7558272 * k + 317594) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 158797) = 11337408 * k + 476392 := by
    unfold C
    simp [show (3779136 * k + 158797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 476392) = 5668704 * k + 238196 := by
    unfold C
    simp [show (11337408 * k + 476392) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 238196) = 2834352 * k + 119098 := by
    unfold C
    simp [show (5668704 * k + 238196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 119098) = 1417176 * k + 59549 := by
    unfold C
    simp [show (2834352 * k + 119098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 59549) = 4251528 * k + 178648 := by
    unfold C
    simp [show (1417176 * k + 59549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 178648) = 2125764 * k + 89324 := by
    unfold C
    simp [show (4251528 * k + 178648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 89324) = 1062882 * k + 44662 := by
    unfold C
    simp [show (2125764 * k + 89324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 44662) = 531441 * k + 22331 := by
    unfold C
    simp [show (1062882 * k + 44662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 44059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 44059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_44199 : ∀ k : Nat,
    iterate (1048576 * k + 44199) 32 = 531441 * k + 22402 ∧
      531441 * k + 22402 < 1048576 * k + 44199 := by
  intro k
  have h1 : C (1048576 * k + 44199) = 3145728 * k + 132598 := by
    unfold C
    simp [show (1048576 * k + 44199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 132598) = 1572864 * k + 66299 := by
    unfold C
    simp [show (3145728 * k + 132598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 66299) = 4718592 * k + 198898 := by
    unfold C
    simp [show (1572864 * k + 66299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 198898) = 2359296 * k + 99449 := by
    unfold C
    simp [show (4718592 * k + 198898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 99449) = 7077888 * k + 298348 := by
    unfold C
    simp [show (2359296 * k + 99449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 298348) = 3538944 * k + 149174 := by
    unfold C
    simp [show (7077888 * k + 298348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 149174) = 1769472 * k + 74587 := by
    unfold C
    simp [show (3538944 * k + 149174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 74587) = 5308416 * k + 223762 := by
    unfold C
    simp [show (1769472 * k + 74587) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 223762) = 2654208 * k + 111881 := by
    unfold C
    simp [show (5308416 * k + 223762) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 111881) = 7962624 * k + 335644 := by
    unfold C
    simp [show (2654208 * k + 111881) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 335644) = 3981312 * k + 167822 := by
    unfold C
    simp [show (7962624 * k + 335644) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 167822) = 1990656 * k + 83911 := by
    unfold C
    simp [show (3981312 * k + 167822) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 83911) = 5971968 * k + 251734 := by
    unfold C
    simp [show (1990656 * k + 83911) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 251734) = 2985984 * k + 125867 := by
    unfold C
    simp [show (5971968 * k + 251734) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 125867) = 8957952 * k + 377602 := by
    unfold C
    simp [show (2985984 * k + 125867) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 377602) = 4478976 * k + 188801 := by
    unfold C
    simp [show (8957952 * k + 377602) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 188801) = 13436928 * k + 566404 := by
    unfold C
    simp [show (4478976 * k + 188801) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 566404) = 6718464 * k + 283202 := by
    unfold C
    simp [show (13436928 * k + 566404) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 283202) = 3359232 * k + 141601 := by
    unfold C
    simp [show (6718464 * k + 283202) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 141601) = 10077696 * k + 424804 := by
    unfold C
    simp [show (3359232 * k + 141601) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 424804) = 5038848 * k + 212402 := by
    unfold C
    simp [show (10077696 * k + 424804) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 212402) = 2519424 * k + 106201 := by
    unfold C
    simp [show (5038848 * k + 212402) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 106201) = 7558272 * k + 318604 := by
    unfold C
    simp [show (2519424 * k + 106201) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 318604) = 3779136 * k + 159302 := by
    unfold C
    simp [show (7558272 * k + 318604) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 159302) = 1889568 * k + 79651 := by
    unfold C
    simp [show (3779136 * k + 159302) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 79651) = 5668704 * k + 238954 := by
    unfold C
    simp [show (1889568 * k + 79651) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 238954) = 2834352 * k + 119477 := by
    unfold C
    simp [show (5668704 * k + 238954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 119477) = 8503056 * k + 358432 := by
    unfold C
    simp [show (2834352 * k + 119477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 358432) = 4251528 * k + 179216 := by
    unfold C
    simp [show (8503056 * k + 358432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 179216) = 2125764 * k + 89608 := by
    unfold C
    simp [show (4251528 * k + 179216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 89608) = 1062882 * k + 44804 := by
    unfold C
    simp [show (2125764 * k + 89608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 44804) = 531441 * k + 22402 := by
    unfold C
    simp [show (1062882 * k + 44804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 44199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 44199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_44391 : ∀ k : Nat,
    iterate (1048576 * k + 44391) 32 = 531441 * k + 22499 ∧
      531441 * k + 22499 < 1048576 * k + 44391 := by
  intro k
  have h1 : C (1048576 * k + 44391) = 3145728 * k + 133174 := by
    unfold C
    simp [show (1048576 * k + 44391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 133174) = 1572864 * k + 66587 := by
    unfold C
    simp [show (3145728 * k + 133174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 66587) = 4718592 * k + 199762 := by
    unfold C
    simp [show (1572864 * k + 66587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 199762) = 2359296 * k + 99881 := by
    unfold C
    simp [show (4718592 * k + 199762) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 99881) = 7077888 * k + 299644 := by
    unfold C
    simp [show (2359296 * k + 99881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 299644) = 3538944 * k + 149822 := by
    unfold C
    simp [show (7077888 * k + 299644) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 149822) = 1769472 * k + 74911 := by
    unfold C
    simp [show (3538944 * k + 149822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 74911) = 5308416 * k + 224734 := by
    unfold C
    simp [show (1769472 * k + 74911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 224734) = 2654208 * k + 112367 := by
    unfold C
    simp [show (5308416 * k + 224734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 112367) = 7962624 * k + 337102 := by
    unfold C
    simp [show (2654208 * k + 112367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 337102) = 3981312 * k + 168551 := by
    unfold C
    simp [show (7962624 * k + 337102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 168551) = 11943936 * k + 505654 := by
    unfold C
    simp [show (3981312 * k + 168551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 505654) = 5971968 * k + 252827 := by
    unfold C
    simp [show (11943936 * k + 505654) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 252827) = 17915904 * k + 758482 := by
    unfold C
    simp [show (5971968 * k + 252827) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 758482) = 8957952 * k + 379241 := by
    unfold C
    simp [show (17915904 * k + 758482) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 379241) = 26873856 * k + 1137724 := by
    unfold C
    simp [show (8957952 * k + 379241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1137724) = 13436928 * k + 568862 := by
    unfold C
    simp [show (26873856 * k + 1137724) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 568862) = 6718464 * k + 284431 := by
    unfold C
    simp [show (13436928 * k + 568862) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 284431) = 20155392 * k + 853294 := by
    unfold C
    simp [show (6718464 * k + 284431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 853294) = 10077696 * k + 426647 := by
    unfold C
    simp [show (20155392 * k + 853294) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 426647) = 30233088 * k + 1279942 := by
    unfold C
    simp [show (10077696 * k + 426647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1279942) = 15116544 * k + 639971 := by
    unfold C
    simp [show (30233088 * k + 1279942) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 639971) = 45349632 * k + 1919914 := by
    unfold C
    simp [show (15116544 * k + 639971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1919914) = 22674816 * k + 959957 := by
    unfold C
    simp [show (45349632 * k + 1919914) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 959957) = 68024448 * k + 2879872 := by
    unfold C
    simp [show (22674816 * k + 959957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 2879872) = 34012224 * k + 1439936 := by
    unfold C
    simp [show (68024448 * k + 2879872) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 1439936) = 17006112 * k + 719968 := by
    unfold C
    simp [show (34012224 * k + 1439936) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 719968) = 8503056 * k + 359984 := by
    unfold C
    simp [show (17006112 * k + 719968) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 359984) = 4251528 * k + 179992 := by
    unfold C
    simp [show (8503056 * k + 359984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 179992) = 2125764 * k + 89996 := by
    unfold C
    simp [show (4251528 * k + 179992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 89996) = 1062882 * k + 44998 := by
    unfold C
    simp [show (2125764 * k + 89996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 44998) = 531441 * k + 22499 := by
    unfold C
    simp [show (1062882 * k + 44998) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 44391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 44391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_44527 : ∀ k : Nat,
    iterate (1048576 * k + 44527) 32 = 531441 * k + 22568 ∧
      531441 * k + 22568 < 1048576 * k + 44527 := by
  intro k
  have h1 : C (1048576 * k + 44527) = 3145728 * k + 133582 := by
    unfold C
    simp [show (1048576 * k + 44527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 133582) = 1572864 * k + 66791 := by
    unfold C
    simp [show (3145728 * k + 133582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 66791) = 4718592 * k + 200374 := by
    unfold C
    simp [show (1572864 * k + 66791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 200374) = 2359296 * k + 100187 := by
    unfold C
    simp [show (4718592 * k + 200374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 100187) = 7077888 * k + 300562 := by
    unfold C
    simp [show (2359296 * k + 100187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 300562) = 3538944 * k + 150281 := by
    unfold C
    simp [show (7077888 * k + 300562) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 150281) = 10616832 * k + 450844 := by
    unfold C
    simp [show (3538944 * k + 150281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 450844) = 5308416 * k + 225422 := by
    unfold C
    simp [show (10616832 * k + 450844) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 225422) = 2654208 * k + 112711 := by
    unfold C
    simp [show (5308416 * k + 225422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 112711) = 7962624 * k + 338134 := by
    unfold C
    simp [show (2654208 * k + 112711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 338134) = 3981312 * k + 169067 := by
    unfold C
    simp [show (7962624 * k + 338134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 169067) = 11943936 * k + 507202 := by
    unfold C
    simp [show (3981312 * k + 169067) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 507202) = 5971968 * k + 253601 := by
    unfold C
    simp [show (11943936 * k + 507202) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 253601) = 17915904 * k + 760804 := by
    unfold C
    simp [show (5971968 * k + 253601) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 760804) = 8957952 * k + 380402 := by
    unfold C
    simp [show (17915904 * k + 760804) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 380402) = 4478976 * k + 190201 := by
    unfold C
    simp [show (8957952 * k + 380402) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 190201) = 13436928 * k + 570604 := by
    unfold C
    simp [show (4478976 * k + 190201) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 570604) = 6718464 * k + 285302 := by
    unfold C
    simp [show (13436928 * k + 570604) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 285302) = 3359232 * k + 142651 := by
    unfold C
    simp [show (6718464 * k + 285302) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 142651) = 10077696 * k + 427954 := by
    unfold C
    simp [show (3359232 * k + 142651) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 427954) = 5038848 * k + 213977 := by
    unfold C
    simp [show (10077696 * k + 427954) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 213977) = 15116544 * k + 641932 := by
    unfold C
    simp [show (5038848 * k + 213977) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 641932) = 7558272 * k + 320966 := by
    unfold C
    simp [show (15116544 * k + 641932) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 320966) = 3779136 * k + 160483 := by
    unfold C
    simp [show (7558272 * k + 320966) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 160483) = 11337408 * k + 481450 := by
    unfold C
    simp [show (3779136 * k + 160483) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 481450) = 5668704 * k + 240725 := by
    unfold C
    simp [show (11337408 * k + 481450) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 240725) = 17006112 * k + 722176 := by
    unfold C
    simp [show (5668704 * k + 240725) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 722176) = 8503056 * k + 361088 := by
    unfold C
    simp [show (17006112 * k + 722176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 361088) = 4251528 * k + 180544 := by
    unfold C
    simp [show (8503056 * k + 361088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 180544) = 2125764 * k + 90272 := by
    unfold C
    simp [show (4251528 * k + 180544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 90272) = 1062882 * k + 45136 := by
    unfold C
    simp [show (2125764 * k + 90272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 45136) = 531441 * k + 22568 := by
    unfold C
    simp [show (1062882 * k + 45136) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 44527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 44527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_44775 : ∀ k : Nat,
    iterate (1048576 * k + 44775) 32 = 531441 * k + 22694 ∧
      531441 * k + 22694 < 1048576 * k + 44775 := by
  intro k
  have h1 : C (1048576 * k + 44775) = 3145728 * k + 134326 := by
    unfold C
    simp [show (1048576 * k + 44775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 134326) = 1572864 * k + 67163 := by
    unfold C
    simp [show (3145728 * k + 134326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 67163) = 4718592 * k + 201490 := by
    unfold C
    simp [show (1572864 * k + 67163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 201490) = 2359296 * k + 100745 := by
    unfold C
    simp [show (4718592 * k + 201490) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 100745) = 7077888 * k + 302236 := by
    unfold C
    simp [show (2359296 * k + 100745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 302236) = 3538944 * k + 151118 := by
    unfold C
    simp [show (7077888 * k + 302236) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 151118) = 1769472 * k + 75559 := by
    unfold C
    simp [show (3538944 * k + 151118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 75559) = 5308416 * k + 226678 := by
    unfold C
    simp [show (1769472 * k + 75559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 226678) = 2654208 * k + 113339 := by
    unfold C
    simp [show (5308416 * k + 226678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 113339) = 7962624 * k + 340018 := by
    unfold C
    simp [show (2654208 * k + 113339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 340018) = 3981312 * k + 170009 := by
    unfold C
    simp [show (7962624 * k + 340018) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 170009) = 11943936 * k + 510028 := by
    unfold C
    simp [show (3981312 * k + 170009) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 510028) = 5971968 * k + 255014 := by
    unfold C
    simp [show (11943936 * k + 510028) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 255014) = 2985984 * k + 127507 := by
    unfold C
    simp [show (5971968 * k + 255014) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 127507) = 8957952 * k + 382522 := by
    unfold C
    simp [show (2985984 * k + 127507) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 382522) = 4478976 * k + 191261 := by
    unfold C
    simp [show (8957952 * k + 382522) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 191261) = 13436928 * k + 573784 := by
    unfold C
    simp [show (4478976 * k + 191261) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 573784) = 6718464 * k + 286892 := by
    unfold C
    simp [show (13436928 * k + 573784) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 286892) = 3359232 * k + 143446 := by
    unfold C
    simp [show (6718464 * k + 286892) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 143446) = 1679616 * k + 71723 := by
    unfold C
    simp [show (3359232 * k + 143446) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 71723) = 5038848 * k + 215170 := by
    unfold C
    simp [show (1679616 * k + 71723) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 215170) = 2519424 * k + 107585 := by
    unfold C
    simp [show (5038848 * k + 215170) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 107585) = 7558272 * k + 322756 := by
    unfold C
    simp [show (2519424 * k + 107585) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 322756) = 3779136 * k + 161378 := by
    unfold C
    simp [show (7558272 * k + 322756) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 161378) = 1889568 * k + 80689 := by
    unfold C
    simp [show (3779136 * k + 161378) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 80689) = 5668704 * k + 242068 := by
    unfold C
    simp [show (1889568 * k + 80689) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 242068) = 2834352 * k + 121034 := by
    unfold C
    simp [show (5668704 * k + 242068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 121034) = 1417176 * k + 60517 := by
    unfold C
    simp [show (2834352 * k + 121034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 60517) = 4251528 * k + 181552 := by
    unfold C
    simp [show (1417176 * k + 60517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 181552) = 2125764 * k + 90776 := by
    unfold C
    simp [show (4251528 * k + 181552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 90776) = 1062882 * k + 45388 := by
    unfold C
    simp [show (2125764 * k + 90776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 45388) = 531441 * k + 22694 := by
    unfold C
    simp [show (1062882 * k + 45388) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 44775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 44775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_45087 : ∀ k : Nat,
    iterate (1048576 * k + 45087) 32 = 531441 * k + 22852 ∧
      531441 * k + 22852 < 1048576 * k + 45087 := by
  intro k
  have h1 : C (1048576 * k + 45087) = 3145728 * k + 135262 := by
    unfold C
    simp [show (1048576 * k + 45087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 135262) = 1572864 * k + 67631 := by
    unfold C
    simp [show (3145728 * k + 135262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 67631) = 4718592 * k + 202894 := by
    unfold C
    simp [show (1572864 * k + 67631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 202894) = 2359296 * k + 101447 := by
    unfold C
    simp [show (4718592 * k + 202894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 101447) = 7077888 * k + 304342 := by
    unfold C
    simp [show (2359296 * k + 101447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 304342) = 3538944 * k + 152171 := by
    unfold C
    simp [show (7077888 * k + 304342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 152171) = 10616832 * k + 456514 := by
    unfold C
    simp [show (3538944 * k + 152171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 456514) = 5308416 * k + 228257 := by
    unfold C
    simp [show (10616832 * k + 456514) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 228257) = 15925248 * k + 684772 := by
    unfold C
    simp [show (5308416 * k + 228257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 684772) = 7962624 * k + 342386 := by
    unfold C
    simp [show (15925248 * k + 684772) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 342386) = 3981312 * k + 171193 := by
    unfold C
    simp [show (7962624 * k + 342386) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 171193) = 11943936 * k + 513580 := by
    unfold C
    simp [show (3981312 * k + 171193) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 513580) = 5971968 * k + 256790 := by
    unfold C
    simp [show (11943936 * k + 513580) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 256790) = 2985984 * k + 128395 := by
    unfold C
    simp [show (5971968 * k + 256790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 128395) = 8957952 * k + 385186 := by
    unfold C
    simp [show (2985984 * k + 128395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 385186) = 4478976 * k + 192593 := by
    unfold C
    simp [show (8957952 * k + 385186) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 192593) = 13436928 * k + 577780 := by
    unfold C
    simp [show (4478976 * k + 192593) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 577780) = 6718464 * k + 288890 := by
    unfold C
    simp [show (13436928 * k + 577780) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 288890) = 3359232 * k + 144445 := by
    unfold C
    simp [show (6718464 * k + 288890) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 144445) = 10077696 * k + 433336 := by
    unfold C
    simp [show (3359232 * k + 144445) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 433336) = 5038848 * k + 216668 := by
    unfold C
    simp [show (10077696 * k + 433336) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 216668) = 2519424 * k + 108334 := by
    unfold C
    simp [show (5038848 * k + 216668) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 108334) = 1259712 * k + 54167 := by
    unfold C
    simp [show (2519424 * k + 108334) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 54167) = 3779136 * k + 162502 := by
    unfold C
    simp [show (1259712 * k + 54167) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 162502) = 1889568 * k + 81251 := by
    unfold C
    simp [show (3779136 * k + 162502) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 81251) = 5668704 * k + 243754 := by
    unfold C
    simp [show (1889568 * k + 81251) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 243754) = 2834352 * k + 121877 := by
    unfold C
    simp [show (5668704 * k + 243754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 121877) = 8503056 * k + 365632 := by
    unfold C
    simp [show (2834352 * k + 121877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 365632) = 4251528 * k + 182816 := by
    unfold C
    simp [show (8503056 * k + 365632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 182816) = 2125764 * k + 91408 := by
    unfold C
    simp [show (4251528 * k + 182816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 91408) = 1062882 * k + 45704 := by
    unfold C
    simp [show (2125764 * k + 91408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 45704) = 531441 * k + 22852 := by
    unfold C
    simp [show (1062882 * k + 45704) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 45087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 45087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_45551 : ∀ k : Nat,
    iterate (1048576 * k + 45551) 32 = 531441 * k + 23087 ∧
      531441 * k + 23087 < 1048576 * k + 45551 := by
  intro k
  have h1 : C (1048576 * k + 45551) = 3145728 * k + 136654 := by
    unfold C
    simp [show (1048576 * k + 45551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 136654) = 1572864 * k + 68327 := by
    unfold C
    simp [show (3145728 * k + 136654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 68327) = 4718592 * k + 204982 := by
    unfold C
    simp [show (1572864 * k + 68327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 204982) = 2359296 * k + 102491 := by
    unfold C
    simp [show (4718592 * k + 204982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 102491) = 7077888 * k + 307474 := by
    unfold C
    simp [show (2359296 * k + 102491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 307474) = 3538944 * k + 153737 := by
    unfold C
    simp [show (7077888 * k + 307474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 153737) = 10616832 * k + 461212 := by
    unfold C
    simp [show (3538944 * k + 153737) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 461212) = 5308416 * k + 230606 := by
    unfold C
    simp [show (10616832 * k + 461212) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 230606) = 2654208 * k + 115303 := by
    unfold C
    simp [show (5308416 * k + 230606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 115303) = 7962624 * k + 345910 := by
    unfold C
    simp [show (2654208 * k + 115303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 345910) = 3981312 * k + 172955 := by
    unfold C
    simp [show (7962624 * k + 345910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 172955) = 11943936 * k + 518866 := by
    unfold C
    simp [show (3981312 * k + 172955) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 518866) = 5971968 * k + 259433 := by
    unfold C
    simp [show (11943936 * k + 518866) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 259433) = 17915904 * k + 778300 := by
    unfold C
    simp [show (5971968 * k + 259433) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 778300) = 8957952 * k + 389150 := by
    unfold C
    simp [show (17915904 * k + 778300) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 389150) = 4478976 * k + 194575 := by
    unfold C
    simp [show (8957952 * k + 389150) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 194575) = 13436928 * k + 583726 := by
    unfold C
    simp [show (4478976 * k + 194575) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 583726) = 6718464 * k + 291863 := by
    unfold C
    simp [show (13436928 * k + 583726) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 291863) = 20155392 * k + 875590 := by
    unfold C
    simp [show (6718464 * k + 291863) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 875590) = 10077696 * k + 437795 := by
    unfold C
    simp [show (20155392 * k + 875590) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 437795) = 30233088 * k + 1313386 := by
    unfold C
    simp [show (10077696 * k + 437795) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1313386) = 15116544 * k + 656693 := by
    unfold C
    simp [show (30233088 * k + 1313386) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 656693) = 45349632 * k + 1970080 := by
    unfold C
    simp [show (15116544 * k + 656693) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1970080) = 22674816 * k + 985040 := by
    unfold C
    simp [show (45349632 * k + 1970080) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 985040) = 11337408 * k + 492520 := by
    unfold C
    simp [show (22674816 * k + 985040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 492520) = 5668704 * k + 246260 := by
    unfold C
    simp [show (11337408 * k + 492520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 246260) = 2834352 * k + 123130 := by
    unfold C
    simp [show (5668704 * k + 246260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 123130) = 1417176 * k + 61565 := by
    unfold C
    simp [show (2834352 * k + 123130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 61565) = 4251528 * k + 184696 := by
    unfold C
    simp [show (1417176 * k + 61565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 184696) = 2125764 * k + 92348 := by
    unfold C
    simp [show (4251528 * k + 184696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 92348) = 1062882 * k + 46174 := by
    unfold C
    simp [show (2125764 * k + 92348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 46174) = 531441 * k + 23087 := by
    unfold C
    simp [show (1062882 * k + 46174) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 45551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 45551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_45567 : ∀ k : Nat,
    iterate (1048576 * k + 45567) 32 = 531441 * k + 23095 ∧
      531441 * k + 23095 < 1048576 * k + 45567 := by
  intro k
  have h1 : C (1048576 * k + 45567) = 3145728 * k + 136702 := by
    unfold C
    simp [show (1048576 * k + 45567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 136702) = 1572864 * k + 68351 := by
    unfold C
    simp [show (3145728 * k + 136702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 68351) = 4718592 * k + 205054 := by
    unfold C
    simp [show (1572864 * k + 68351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 205054) = 2359296 * k + 102527 := by
    unfold C
    simp [show (4718592 * k + 205054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 102527) = 7077888 * k + 307582 := by
    unfold C
    simp [show (2359296 * k + 102527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 307582) = 3538944 * k + 153791 := by
    unfold C
    simp [show (7077888 * k + 307582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 153791) = 10616832 * k + 461374 := by
    unfold C
    simp [show (3538944 * k + 153791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 461374) = 5308416 * k + 230687 := by
    unfold C
    simp [show (10616832 * k + 461374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 230687) = 15925248 * k + 692062 := by
    unfold C
    simp [show (5308416 * k + 230687) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 692062) = 7962624 * k + 346031 := by
    unfold C
    simp [show (15925248 * k + 692062) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 346031) = 23887872 * k + 1038094 := by
    unfold C
    simp [show (7962624 * k + 346031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1038094) = 11943936 * k + 519047 := by
    unfold C
    simp [show (23887872 * k + 1038094) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 519047) = 35831808 * k + 1557142 := by
    unfold C
    simp [show (11943936 * k + 519047) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1557142) = 17915904 * k + 778571 := by
    unfold C
    simp [show (35831808 * k + 1557142) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 778571) = 53747712 * k + 2335714 := by
    unfold C
    simp [show (17915904 * k + 778571) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 2335714) = 26873856 * k + 1167857 := by
    unfold C
    simp [show (53747712 * k + 2335714) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1167857) = 80621568 * k + 3503572 := by
    unfold C
    simp [show (26873856 * k + 1167857) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 3503572) = 40310784 * k + 1751786 := by
    unfold C
    simp [show (80621568 * k + 3503572) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1751786) = 20155392 * k + 875893 := by
    unfold C
    simp [show (40310784 * k + 1751786) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 875893) = 60466176 * k + 2627680 := by
    unfold C
    simp [show (20155392 * k + 875893) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 2627680) = 30233088 * k + 1313840 := by
    unfold C
    simp [show (60466176 * k + 2627680) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1313840) = 15116544 * k + 656920 := by
    unfold C
    simp [show (30233088 * k + 1313840) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 656920) = 7558272 * k + 328460 := by
    unfold C
    simp [show (15116544 * k + 656920) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 328460) = 3779136 * k + 164230 := by
    unfold C
    simp [show (7558272 * k + 328460) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 164230) = 1889568 * k + 82115 := by
    unfold C
    simp [show (3779136 * k + 164230) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 82115) = 5668704 * k + 246346 := by
    unfold C
    simp [show (1889568 * k + 82115) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 246346) = 2834352 * k + 123173 := by
    unfold C
    simp [show (5668704 * k + 246346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 123173) = 8503056 * k + 369520 := by
    unfold C
    simp [show (2834352 * k + 123173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 369520) = 4251528 * k + 184760 := by
    unfold C
    simp [show (8503056 * k + 369520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 184760) = 2125764 * k + 92380 := by
    unfold C
    simp [show (4251528 * k + 184760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 92380) = 1062882 * k + 46190 := by
    unfold C
    simp [show (2125764 * k + 92380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 46190) = 531441 * k + 23095 := by
    unfold C
    simp [show (1062882 * k + 46190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 45567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 45567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_46107 : ∀ k : Nat,
    iterate (1048576 * k + 46107) 32 = 531441 * k + 23369 ∧
      531441 * k + 23369 < 1048576 * k + 46107 := by
  intro k
  have h1 : C (1048576 * k + 46107) = 3145728 * k + 138322 := by
    unfold C
    simp [show (1048576 * k + 46107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 138322) = 1572864 * k + 69161 := by
    unfold C
    simp [show (3145728 * k + 138322) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 69161) = 4718592 * k + 207484 := by
    unfold C
    simp [show (1572864 * k + 69161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 207484) = 2359296 * k + 103742 := by
    unfold C
    simp [show (4718592 * k + 207484) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 103742) = 1179648 * k + 51871 := by
    unfold C
    simp [show (2359296 * k + 103742) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 51871) = 3538944 * k + 155614 := by
    unfold C
    simp [show (1179648 * k + 51871) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 155614) = 1769472 * k + 77807 := by
    unfold C
    simp [show (3538944 * k + 155614) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 77807) = 5308416 * k + 233422 := by
    unfold C
    simp [show (1769472 * k + 77807) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 233422) = 2654208 * k + 116711 := by
    unfold C
    simp [show (5308416 * k + 233422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 116711) = 7962624 * k + 350134 := by
    unfold C
    simp [show (2654208 * k + 116711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 350134) = 3981312 * k + 175067 := by
    unfold C
    simp [show (7962624 * k + 350134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 175067) = 11943936 * k + 525202 := by
    unfold C
    simp [show (3981312 * k + 175067) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 525202) = 5971968 * k + 262601 := by
    unfold C
    simp [show (11943936 * k + 525202) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 262601) = 17915904 * k + 787804 := by
    unfold C
    simp [show (5971968 * k + 262601) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 787804) = 8957952 * k + 393902 := by
    unfold C
    simp [show (17915904 * k + 787804) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 393902) = 4478976 * k + 196951 := by
    unfold C
    simp [show (8957952 * k + 393902) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 196951) = 13436928 * k + 590854 := by
    unfold C
    simp [show (4478976 * k + 196951) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 590854) = 6718464 * k + 295427 := by
    unfold C
    simp [show (13436928 * k + 590854) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 295427) = 20155392 * k + 886282 := by
    unfold C
    simp [show (6718464 * k + 295427) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 886282) = 10077696 * k + 443141 := by
    unfold C
    simp [show (20155392 * k + 886282) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 443141) = 30233088 * k + 1329424 := by
    unfold C
    simp [show (10077696 * k + 443141) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1329424) = 15116544 * k + 664712 := by
    unfold C
    simp [show (30233088 * k + 1329424) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 664712) = 7558272 * k + 332356 := by
    unfold C
    simp [show (15116544 * k + 664712) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 332356) = 3779136 * k + 166178 := by
    unfold C
    simp [show (7558272 * k + 332356) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 166178) = 1889568 * k + 83089 := by
    unfold C
    simp [show (3779136 * k + 166178) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 83089) = 5668704 * k + 249268 := by
    unfold C
    simp [show (1889568 * k + 83089) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 249268) = 2834352 * k + 124634 := by
    unfold C
    simp [show (5668704 * k + 249268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 124634) = 1417176 * k + 62317 := by
    unfold C
    simp [show (2834352 * k + 124634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 62317) = 4251528 * k + 186952 := by
    unfold C
    simp [show (1417176 * k + 62317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 186952) = 2125764 * k + 93476 := by
    unfold C
    simp [show (4251528 * k + 186952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 93476) = 1062882 * k + 46738 := by
    unfold C
    simp [show (2125764 * k + 93476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 46738) = 531441 * k + 23369 := by
    unfold C
    simp [show (1062882 * k + 46738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 46107) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 46107)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_46271 : ∀ k : Nat,
    iterate (1048576 * k + 46271) 32 = 531441 * k + 23452 ∧
      531441 * k + 23452 < 1048576 * k + 46271 := by
  intro k
  have h1 : C (1048576 * k + 46271) = 3145728 * k + 138814 := by
    unfold C
    simp [show (1048576 * k + 46271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 138814) = 1572864 * k + 69407 := by
    unfold C
    simp [show (3145728 * k + 138814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 69407) = 4718592 * k + 208222 := by
    unfold C
    simp [show (1572864 * k + 69407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 208222) = 2359296 * k + 104111 := by
    unfold C
    simp [show (4718592 * k + 208222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 104111) = 7077888 * k + 312334 := by
    unfold C
    simp [show (2359296 * k + 104111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 312334) = 3538944 * k + 156167 := by
    unfold C
    simp [show (7077888 * k + 312334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 156167) = 10616832 * k + 468502 := by
    unfold C
    simp [show (3538944 * k + 156167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 468502) = 5308416 * k + 234251 := by
    unfold C
    simp [show (10616832 * k + 468502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 234251) = 15925248 * k + 702754 := by
    unfold C
    simp [show (5308416 * k + 234251) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 702754) = 7962624 * k + 351377 := by
    unfold C
    simp [show (15925248 * k + 702754) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 351377) = 23887872 * k + 1054132 := by
    unfold C
    simp [show (7962624 * k + 351377) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1054132) = 11943936 * k + 527066 := by
    unfold C
    simp [show (23887872 * k + 1054132) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 527066) = 5971968 * k + 263533 := by
    unfold C
    simp [show (11943936 * k + 527066) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 263533) = 17915904 * k + 790600 := by
    unfold C
    simp [show (5971968 * k + 263533) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 790600) = 8957952 * k + 395300 := by
    unfold C
    simp [show (17915904 * k + 790600) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 395300) = 4478976 * k + 197650 := by
    unfold C
    simp [show (8957952 * k + 395300) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 197650) = 2239488 * k + 98825 := by
    unfold C
    simp [show (4478976 * k + 197650) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 98825) = 6718464 * k + 296476 := by
    unfold C
    simp [show (2239488 * k + 98825) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 296476) = 3359232 * k + 148238 := by
    unfold C
    simp [show (6718464 * k + 296476) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 148238) = 1679616 * k + 74119 := by
    unfold C
    simp [show (3359232 * k + 148238) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 74119) = 5038848 * k + 222358 := by
    unfold C
    simp [show (1679616 * k + 74119) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 222358) = 2519424 * k + 111179 := by
    unfold C
    simp [show (5038848 * k + 222358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 111179) = 7558272 * k + 333538 := by
    unfold C
    simp [show (2519424 * k + 111179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 333538) = 3779136 * k + 166769 := by
    unfold C
    simp [show (7558272 * k + 333538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 166769) = 11337408 * k + 500308 := by
    unfold C
    simp [show (3779136 * k + 166769) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 500308) = 5668704 * k + 250154 := by
    unfold C
    simp [show (11337408 * k + 500308) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 250154) = 2834352 * k + 125077 := by
    unfold C
    simp [show (5668704 * k + 250154) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 125077) = 8503056 * k + 375232 := by
    unfold C
    simp [show (2834352 * k + 125077) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 375232) = 4251528 * k + 187616 := by
    unfold C
    simp [show (8503056 * k + 375232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 187616) = 2125764 * k + 93808 := by
    unfold C
    simp [show (4251528 * k + 187616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 93808) = 1062882 * k + 46904 := by
    unfold C
    simp [show (2125764 * k + 93808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 46904) = 531441 * k + 23452 := by
    unfold C
    simp [show (1062882 * k + 46904) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 46271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 46271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_46383 : ∀ k : Nat,
    iterate (1048576 * k + 46383) 32 = 531441 * k + 23509 ∧
      531441 * k + 23509 < 1048576 * k + 46383 := by
  intro k
  have h1 : C (1048576 * k + 46383) = 3145728 * k + 139150 := by
    unfold C
    simp [show (1048576 * k + 46383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 139150) = 1572864 * k + 69575 := by
    unfold C
    simp [show (3145728 * k + 139150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 69575) = 4718592 * k + 208726 := by
    unfold C
    simp [show (1572864 * k + 69575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 208726) = 2359296 * k + 104363 := by
    unfold C
    simp [show (4718592 * k + 208726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 104363) = 7077888 * k + 313090 := by
    unfold C
    simp [show (2359296 * k + 104363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 313090) = 3538944 * k + 156545 := by
    unfold C
    simp [show (7077888 * k + 313090) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 156545) = 10616832 * k + 469636 := by
    unfold C
    simp [show (3538944 * k + 156545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 469636) = 5308416 * k + 234818 := by
    unfold C
    simp [show (10616832 * k + 469636) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 234818) = 2654208 * k + 117409 := by
    unfold C
    simp [show (5308416 * k + 234818) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 117409) = 7962624 * k + 352228 := by
    unfold C
    simp [show (2654208 * k + 117409) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 352228) = 3981312 * k + 176114 := by
    unfold C
    simp [show (7962624 * k + 352228) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 176114) = 1990656 * k + 88057 := by
    unfold C
    simp [show (3981312 * k + 176114) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 88057) = 5971968 * k + 264172 := by
    unfold C
    simp [show (1990656 * k + 88057) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 264172) = 2985984 * k + 132086 := by
    unfold C
    simp [show (5971968 * k + 264172) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 132086) = 1492992 * k + 66043 := by
    unfold C
    simp [show (2985984 * k + 132086) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 66043) = 4478976 * k + 198130 := by
    unfold C
    simp [show (1492992 * k + 66043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 198130) = 2239488 * k + 99065 := by
    unfold C
    simp [show (4478976 * k + 198130) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 99065) = 6718464 * k + 297196 := by
    unfold C
    simp [show (2239488 * k + 99065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 297196) = 3359232 * k + 148598 := by
    unfold C
    simp [show (6718464 * k + 297196) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 148598) = 1679616 * k + 74299 := by
    unfold C
    simp [show (3359232 * k + 148598) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 74299) = 5038848 * k + 222898 := by
    unfold C
    simp [show (1679616 * k + 74299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 222898) = 2519424 * k + 111449 := by
    unfold C
    simp [show (5038848 * k + 222898) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 111449) = 7558272 * k + 334348 := by
    unfold C
    simp [show (2519424 * k + 111449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 334348) = 3779136 * k + 167174 := by
    unfold C
    simp [show (7558272 * k + 334348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 167174) = 1889568 * k + 83587 := by
    unfold C
    simp [show (3779136 * k + 167174) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 83587) = 5668704 * k + 250762 := by
    unfold C
    simp [show (1889568 * k + 83587) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 250762) = 2834352 * k + 125381 := by
    unfold C
    simp [show (5668704 * k + 250762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 125381) = 8503056 * k + 376144 := by
    unfold C
    simp [show (2834352 * k + 125381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 376144) = 4251528 * k + 188072 := by
    unfold C
    simp [show (8503056 * k + 376144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 188072) = 2125764 * k + 94036 := by
    unfold C
    simp [show (4251528 * k + 188072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 94036) = 1062882 * k + 47018 := by
    unfold C
    simp [show (2125764 * k + 94036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 47018) = 531441 * k + 23509 := by
    unfold C
    simp [show (1062882 * k + 47018) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 46383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 46383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_46543 : ∀ k : Nat,
    iterate (1048576 * k + 46543) 32 = 531441 * k + 23590 ∧
      531441 * k + 23590 < 1048576 * k + 46543 := by
  intro k
  have h1 : C (1048576 * k + 46543) = 3145728 * k + 139630 := by
    unfold C
    simp [show (1048576 * k + 46543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 139630) = 1572864 * k + 69815 := by
    unfold C
    simp [show (3145728 * k + 139630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 69815) = 4718592 * k + 209446 := by
    unfold C
    simp [show (1572864 * k + 69815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 209446) = 2359296 * k + 104723 := by
    unfold C
    simp [show (4718592 * k + 209446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 104723) = 7077888 * k + 314170 := by
    unfold C
    simp [show (2359296 * k + 104723) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 314170) = 3538944 * k + 157085 := by
    unfold C
    simp [show (7077888 * k + 314170) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 157085) = 10616832 * k + 471256 := by
    unfold C
    simp [show (3538944 * k + 157085) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 471256) = 5308416 * k + 235628 := by
    unfold C
    simp [show (10616832 * k + 471256) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 235628) = 2654208 * k + 117814 := by
    unfold C
    simp [show (5308416 * k + 235628) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 117814) = 1327104 * k + 58907 := by
    unfold C
    simp [show (2654208 * k + 117814) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 58907) = 3981312 * k + 176722 := by
    unfold C
    simp [show (1327104 * k + 58907) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 176722) = 1990656 * k + 88361 := by
    unfold C
    simp [show (3981312 * k + 176722) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 88361) = 5971968 * k + 265084 := by
    unfold C
    simp [show (1990656 * k + 88361) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 265084) = 2985984 * k + 132542 := by
    unfold C
    simp [show (5971968 * k + 265084) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 132542) = 1492992 * k + 66271 := by
    unfold C
    simp [show (2985984 * k + 132542) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 66271) = 4478976 * k + 198814 := by
    unfold C
    simp [show (1492992 * k + 66271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 198814) = 2239488 * k + 99407 := by
    unfold C
    simp [show (4478976 * k + 198814) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 99407) = 6718464 * k + 298222 := by
    unfold C
    simp [show (2239488 * k + 99407) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 298222) = 3359232 * k + 149111 := by
    unfold C
    simp [show (6718464 * k + 298222) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 149111) = 10077696 * k + 447334 := by
    unfold C
    simp [show (3359232 * k + 149111) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 447334) = 5038848 * k + 223667 := by
    unfold C
    simp [show (10077696 * k + 447334) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 223667) = 15116544 * k + 671002 := by
    unfold C
    simp [show (5038848 * k + 223667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 671002) = 7558272 * k + 335501 := by
    unfold C
    simp [show (15116544 * k + 671002) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 335501) = 22674816 * k + 1006504 := by
    unfold C
    simp [show (7558272 * k + 335501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1006504) = 11337408 * k + 503252 := by
    unfold C
    simp [show (22674816 * k + 1006504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 503252) = 5668704 * k + 251626 := by
    unfold C
    simp [show (11337408 * k + 503252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 251626) = 2834352 * k + 125813 := by
    unfold C
    simp [show (5668704 * k + 251626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 125813) = 8503056 * k + 377440 := by
    unfold C
    simp [show (2834352 * k + 125813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 377440) = 4251528 * k + 188720 := by
    unfold C
    simp [show (8503056 * k + 377440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 188720) = 2125764 * k + 94360 := by
    unfold C
    simp [show (4251528 * k + 188720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 94360) = 1062882 * k + 47180 := by
    unfold C
    simp [show (2125764 * k + 94360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 47180) = 531441 * k + 23590 := by
    unfold C
    simp [show (1062882 * k + 47180) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 46543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 46543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard007
