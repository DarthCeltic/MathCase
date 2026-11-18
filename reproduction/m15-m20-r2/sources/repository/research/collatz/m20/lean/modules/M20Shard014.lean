import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard014

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_90879 : ∀ k : Nat,
    iterate (1048576 * k + 90879) 32 = 531441 * k + 46060 ∧
      531441 * k + 46060 < 1048576 * k + 90879 := by
  intro k
  have h1 : C (1048576 * k + 90879) = 3145728 * k + 272638 := by
    unfold C
    simp [show (1048576 * k + 90879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 272638) = 1572864 * k + 136319 := by
    unfold C
    simp [show (3145728 * k + 272638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 136319) = 4718592 * k + 408958 := by
    unfold C
    simp [show (1572864 * k + 136319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 408958) = 2359296 * k + 204479 := by
    unfold C
    simp [show (4718592 * k + 408958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 204479) = 7077888 * k + 613438 := by
    unfold C
    simp [show (2359296 * k + 204479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 613438) = 3538944 * k + 306719 := by
    unfold C
    simp [show (7077888 * k + 613438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 306719) = 10616832 * k + 920158 := by
    unfold C
    simp [show (3538944 * k + 306719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 920158) = 5308416 * k + 460079 := by
    unfold C
    simp [show (10616832 * k + 920158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 460079) = 15925248 * k + 1380238 := by
    unfold C
    simp [show (5308416 * k + 460079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1380238) = 7962624 * k + 690119 := by
    unfold C
    simp [show (15925248 * k + 1380238) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 690119) = 23887872 * k + 2070358 := by
    unfold C
    simp [show (7962624 * k + 690119) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2070358) = 11943936 * k + 1035179 := by
    unfold C
    simp [show (23887872 * k + 2070358) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1035179) = 35831808 * k + 3105538 := by
    unfold C
    simp [show (11943936 * k + 1035179) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3105538) = 17915904 * k + 1552769 := by
    unfold C
    simp [show (35831808 * k + 3105538) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1552769) = 53747712 * k + 4658308 := by
    unfold C
    simp [show (17915904 * k + 1552769) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 4658308) = 26873856 * k + 2329154 := by
    unfold C
    simp [show (53747712 * k + 4658308) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 2329154) = 13436928 * k + 1164577 := by
    unfold C
    simp [show (26873856 * k + 2329154) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1164577) = 40310784 * k + 3493732 := by
    unfold C
    simp [show (13436928 * k + 1164577) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3493732) = 20155392 * k + 1746866 := by
    unfold C
    simp [show (40310784 * k + 3493732) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1746866) = 10077696 * k + 873433 := by
    unfold C
    simp [show (20155392 * k + 1746866) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 873433) = 30233088 * k + 2620300 := by
    unfold C
    simp [show (10077696 * k + 873433) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2620300) = 15116544 * k + 1310150 := by
    unfold C
    simp [show (30233088 * k + 2620300) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1310150) = 7558272 * k + 655075 := by
    unfold C
    simp [show (15116544 * k + 1310150) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 655075) = 22674816 * k + 1965226 := by
    unfold C
    simp [show (7558272 * k + 655075) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1965226) = 11337408 * k + 982613 := by
    unfold C
    simp [show (22674816 * k + 1965226) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 982613) = 34012224 * k + 2947840 := by
    unfold C
    simp [show (11337408 * k + 982613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 2947840) = 17006112 * k + 1473920 := by
    unfold C
    simp [show (34012224 * k + 2947840) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1473920) = 8503056 * k + 736960 := by
    unfold C
    simp [show (17006112 * k + 1473920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 736960) = 4251528 * k + 368480 := by
    unfold C
    simp [show (8503056 * k + 736960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 368480) = 2125764 * k + 184240 := by
    unfold C
    simp [show (4251528 * k + 368480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 184240) = 1062882 * k + 92120 := by
    unfold C
    simp [show (2125764 * k + 184240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 92120) = 531441 * k + 46060 := by
    unfold C
    simp [show (1062882 * k + 92120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 90879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 90879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_91419 : ∀ k : Nat,
    iterate (1048576 * k + 91419) 32 = 531441 * k + 46334 ∧
      531441 * k + 46334 < 1048576 * k + 91419 := by
  intro k
  have h1 : C (1048576 * k + 91419) = 3145728 * k + 274258 := by
    unfold C
    simp [show (1048576 * k + 91419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 274258) = 1572864 * k + 137129 := by
    unfold C
    simp [show (3145728 * k + 274258) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 137129) = 4718592 * k + 411388 := by
    unfold C
    simp [show (1572864 * k + 137129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 411388) = 2359296 * k + 205694 := by
    unfold C
    simp [show (4718592 * k + 411388) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 205694) = 1179648 * k + 102847 := by
    unfold C
    simp [show (2359296 * k + 205694) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 102847) = 3538944 * k + 308542 := by
    unfold C
    simp [show (1179648 * k + 102847) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 308542) = 1769472 * k + 154271 := by
    unfold C
    simp [show (3538944 * k + 308542) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 154271) = 5308416 * k + 462814 := by
    unfold C
    simp [show (1769472 * k + 154271) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 462814) = 2654208 * k + 231407 := by
    unfold C
    simp [show (5308416 * k + 462814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 231407) = 7962624 * k + 694222 := by
    unfold C
    simp [show (2654208 * k + 231407) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 694222) = 3981312 * k + 347111 := by
    unfold C
    simp [show (7962624 * k + 694222) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 347111) = 11943936 * k + 1041334 := by
    unfold C
    simp [show (3981312 * k + 347111) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1041334) = 5971968 * k + 520667 := by
    unfold C
    simp [show (11943936 * k + 1041334) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 520667) = 17915904 * k + 1562002 := by
    unfold C
    simp [show (5971968 * k + 520667) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1562002) = 8957952 * k + 781001 := by
    unfold C
    simp [show (17915904 * k + 1562002) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 781001) = 26873856 * k + 2343004 := by
    unfold C
    simp [show (8957952 * k + 781001) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2343004) = 13436928 * k + 1171502 := by
    unfold C
    simp [show (26873856 * k + 2343004) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1171502) = 6718464 * k + 585751 := by
    unfold C
    simp [show (13436928 * k + 1171502) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 585751) = 20155392 * k + 1757254 := by
    unfold C
    simp [show (6718464 * k + 585751) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1757254) = 10077696 * k + 878627 := by
    unfold C
    simp [show (20155392 * k + 1757254) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 878627) = 30233088 * k + 2635882 := by
    unfold C
    simp [show (10077696 * k + 878627) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2635882) = 15116544 * k + 1317941 := by
    unfold C
    simp [show (30233088 * k + 2635882) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1317941) = 45349632 * k + 3953824 := by
    unfold C
    simp [show (15116544 * k + 1317941) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3953824) = 22674816 * k + 1976912 := by
    unfold C
    simp [show (45349632 * k + 3953824) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1976912) = 11337408 * k + 988456 := by
    unfold C
    simp [show (22674816 * k + 1976912) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 988456) = 5668704 * k + 494228 := by
    unfold C
    simp [show (11337408 * k + 988456) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 494228) = 2834352 * k + 247114 := by
    unfold C
    simp [show (5668704 * k + 494228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 247114) = 1417176 * k + 123557 := by
    unfold C
    simp [show (2834352 * k + 247114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 123557) = 4251528 * k + 370672 := by
    unfold C
    simp [show (1417176 * k + 123557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 370672) = 2125764 * k + 185336 := by
    unfold C
    simp [show (4251528 * k + 370672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 185336) = 1062882 * k + 92668 := by
    unfold C
    simp [show (2125764 * k + 185336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 92668) = 531441 * k + 46334 := by
    unfold C
    simp [show (1062882 * k + 92668) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 91419) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 91419)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_91855 : ∀ k : Nat,
    iterate (1048576 * k + 91855) 32 = 531441 * k + 46555 ∧
      531441 * k + 46555 < 1048576 * k + 91855 := by
  intro k
  have h1 : C (1048576 * k + 91855) = 3145728 * k + 275566 := by
    unfold C
    simp [show (1048576 * k + 91855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 275566) = 1572864 * k + 137783 := by
    unfold C
    simp [show (3145728 * k + 275566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 137783) = 4718592 * k + 413350 := by
    unfold C
    simp [show (1572864 * k + 137783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 413350) = 2359296 * k + 206675 := by
    unfold C
    simp [show (4718592 * k + 413350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 206675) = 7077888 * k + 620026 := by
    unfold C
    simp [show (2359296 * k + 206675) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 620026) = 3538944 * k + 310013 := by
    unfold C
    simp [show (7077888 * k + 620026) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 310013) = 10616832 * k + 930040 := by
    unfold C
    simp [show (3538944 * k + 310013) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 930040) = 5308416 * k + 465020 := by
    unfold C
    simp [show (10616832 * k + 930040) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 465020) = 2654208 * k + 232510 := by
    unfold C
    simp [show (5308416 * k + 465020) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 232510) = 1327104 * k + 116255 := by
    unfold C
    simp [show (2654208 * k + 232510) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 116255) = 3981312 * k + 348766 := by
    unfold C
    simp [show (1327104 * k + 116255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 348766) = 1990656 * k + 174383 := by
    unfold C
    simp [show (3981312 * k + 348766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 174383) = 5971968 * k + 523150 := by
    unfold C
    simp [show (1990656 * k + 174383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 523150) = 2985984 * k + 261575 := by
    unfold C
    simp [show (5971968 * k + 523150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 261575) = 8957952 * k + 784726 := by
    unfold C
    simp [show (2985984 * k + 261575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 784726) = 4478976 * k + 392363 := by
    unfold C
    simp [show (8957952 * k + 784726) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 392363) = 13436928 * k + 1177090 := by
    unfold C
    simp [show (4478976 * k + 392363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1177090) = 6718464 * k + 588545 := by
    unfold C
    simp [show (13436928 * k + 1177090) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 588545) = 20155392 * k + 1765636 := by
    unfold C
    simp [show (6718464 * k + 588545) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1765636) = 10077696 * k + 882818 := by
    unfold C
    simp [show (20155392 * k + 1765636) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 882818) = 5038848 * k + 441409 := by
    unfold C
    simp [show (10077696 * k + 882818) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 441409) = 15116544 * k + 1324228 := by
    unfold C
    simp [show (5038848 * k + 441409) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1324228) = 7558272 * k + 662114 := by
    unfold C
    simp [show (15116544 * k + 1324228) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 662114) = 3779136 * k + 331057 := by
    unfold C
    simp [show (7558272 * k + 662114) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 331057) = 11337408 * k + 993172 := by
    unfold C
    simp [show (3779136 * k + 331057) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 993172) = 5668704 * k + 496586 := by
    unfold C
    simp [show (11337408 * k + 993172) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 496586) = 2834352 * k + 248293 := by
    unfold C
    simp [show (5668704 * k + 496586) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 248293) = 8503056 * k + 744880 := by
    unfold C
    simp [show (2834352 * k + 248293) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 744880) = 4251528 * k + 372440 := by
    unfold C
    simp [show (8503056 * k + 744880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 372440) = 2125764 * k + 186220 := by
    unfold C
    simp [show (4251528 * k + 372440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 186220) = 1062882 * k + 93110 := by
    unfold C
    simp [show (2125764 * k + 186220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 93110) = 531441 * k + 46555 := by
    unfold C
    simp [show (1062882 * k + 93110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 91855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 91855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_92411 : ∀ k : Nat,
    iterate (1048576 * k + 92411) 32 = 531441 * k + 46837 ∧
      531441 * k + 46837 < 1048576 * k + 92411 := by
  intro k
  have h1 : C (1048576 * k + 92411) = 3145728 * k + 277234 := by
    unfold C
    simp [show (1048576 * k + 92411) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 277234) = 1572864 * k + 138617 := by
    unfold C
    simp [show (3145728 * k + 277234) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 138617) = 4718592 * k + 415852 := by
    unfold C
    simp [show (1572864 * k + 138617) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 415852) = 2359296 * k + 207926 := by
    unfold C
    simp [show (4718592 * k + 415852) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 207926) = 1179648 * k + 103963 := by
    unfold C
    simp [show (2359296 * k + 207926) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 103963) = 3538944 * k + 311890 := by
    unfold C
    simp [show (1179648 * k + 103963) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 311890) = 1769472 * k + 155945 := by
    unfold C
    simp [show (3538944 * k + 311890) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 155945) = 5308416 * k + 467836 := by
    unfold C
    simp [show (1769472 * k + 155945) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 467836) = 2654208 * k + 233918 := by
    unfold C
    simp [show (5308416 * k + 467836) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 233918) = 1327104 * k + 116959 := by
    unfold C
    simp [show (2654208 * k + 233918) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 116959) = 3981312 * k + 350878 := by
    unfold C
    simp [show (1327104 * k + 116959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 350878) = 1990656 * k + 175439 := by
    unfold C
    simp [show (3981312 * k + 350878) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 175439) = 5971968 * k + 526318 := by
    unfold C
    simp [show (1990656 * k + 175439) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 526318) = 2985984 * k + 263159 := by
    unfold C
    simp [show (5971968 * k + 526318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 263159) = 8957952 * k + 789478 := by
    unfold C
    simp [show (2985984 * k + 263159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 789478) = 4478976 * k + 394739 := by
    unfold C
    simp [show (8957952 * k + 789478) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 394739) = 13436928 * k + 1184218 := by
    unfold C
    simp [show (4478976 * k + 394739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1184218) = 6718464 * k + 592109 := by
    unfold C
    simp [show (13436928 * k + 1184218) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 592109) = 20155392 * k + 1776328 := by
    unfold C
    simp [show (6718464 * k + 592109) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1776328) = 10077696 * k + 888164 := by
    unfold C
    simp [show (20155392 * k + 1776328) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 888164) = 5038848 * k + 444082 := by
    unfold C
    simp [show (10077696 * k + 888164) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 444082) = 2519424 * k + 222041 := by
    unfold C
    simp [show (5038848 * k + 444082) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 222041) = 7558272 * k + 666124 := by
    unfold C
    simp [show (2519424 * k + 222041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 666124) = 3779136 * k + 333062 := by
    unfold C
    simp [show (7558272 * k + 666124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 333062) = 1889568 * k + 166531 := by
    unfold C
    simp [show (3779136 * k + 333062) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 166531) = 5668704 * k + 499594 := by
    unfold C
    simp [show (1889568 * k + 166531) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 499594) = 2834352 * k + 249797 := by
    unfold C
    simp [show (5668704 * k + 499594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 249797) = 8503056 * k + 749392 := by
    unfold C
    simp [show (2834352 * k + 249797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 749392) = 4251528 * k + 374696 := by
    unfold C
    simp [show (8503056 * k + 749392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 374696) = 2125764 * k + 187348 := by
    unfold C
    simp [show (4251528 * k + 374696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 187348) = 1062882 * k + 93674 := by
    unfold C
    simp [show (2125764 * k + 187348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 93674) = 531441 * k + 46837 := by
    unfold C
    simp [show (1062882 * k + 93674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 92411) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 92411)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_92571 : ∀ k : Nat,
    iterate (1048576 * k + 92571) 32 = 531441 * k + 46918 ∧
      531441 * k + 46918 < 1048576 * k + 92571 := by
  intro k
  have h1 : C (1048576 * k + 92571) = 3145728 * k + 277714 := by
    unfold C
    simp [show (1048576 * k + 92571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 277714) = 1572864 * k + 138857 := by
    unfold C
    simp [show (3145728 * k + 277714) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 138857) = 4718592 * k + 416572 := by
    unfold C
    simp [show (1572864 * k + 138857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 416572) = 2359296 * k + 208286 := by
    unfold C
    simp [show (4718592 * k + 416572) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 208286) = 1179648 * k + 104143 := by
    unfold C
    simp [show (2359296 * k + 208286) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 104143) = 3538944 * k + 312430 := by
    unfold C
    simp [show (1179648 * k + 104143) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 312430) = 1769472 * k + 156215 := by
    unfold C
    simp [show (3538944 * k + 312430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 156215) = 5308416 * k + 468646 := by
    unfold C
    simp [show (1769472 * k + 156215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 468646) = 2654208 * k + 234323 := by
    unfold C
    simp [show (5308416 * k + 468646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 234323) = 7962624 * k + 702970 := by
    unfold C
    simp [show (2654208 * k + 234323) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 702970) = 3981312 * k + 351485 := by
    unfold C
    simp [show (7962624 * k + 702970) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 351485) = 11943936 * k + 1054456 := by
    unfold C
    simp [show (3981312 * k + 351485) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1054456) = 5971968 * k + 527228 := by
    unfold C
    simp [show (11943936 * k + 1054456) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 527228) = 2985984 * k + 263614 := by
    unfold C
    simp [show (5971968 * k + 527228) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 263614) = 1492992 * k + 131807 := by
    unfold C
    simp [show (2985984 * k + 263614) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 131807) = 4478976 * k + 395422 := by
    unfold C
    simp [show (1492992 * k + 131807) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 395422) = 2239488 * k + 197711 := by
    unfold C
    simp [show (4478976 * k + 395422) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 197711) = 6718464 * k + 593134 := by
    unfold C
    simp [show (2239488 * k + 197711) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 593134) = 3359232 * k + 296567 := by
    unfold C
    simp [show (6718464 * k + 593134) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 296567) = 10077696 * k + 889702 := by
    unfold C
    simp [show (3359232 * k + 296567) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 889702) = 5038848 * k + 444851 := by
    unfold C
    simp [show (10077696 * k + 889702) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 444851) = 15116544 * k + 1334554 := by
    unfold C
    simp [show (5038848 * k + 444851) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1334554) = 7558272 * k + 667277 := by
    unfold C
    simp [show (15116544 * k + 1334554) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 667277) = 22674816 * k + 2001832 := by
    unfold C
    simp [show (7558272 * k + 667277) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2001832) = 11337408 * k + 1000916 := by
    unfold C
    simp [show (22674816 * k + 2001832) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1000916) = 5668704 * k + 500458 := by
    unfold C
    simp [show (11337408 * k + 1000916) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 500458) = 2834352 * k + 250229 := by
    unfold C
    simp [show (5668704 * k + 500458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 250229) = 8503056 * k + 750688 := by
    unfold C
    simp [show (2834352 * k + 250229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 750688) = 4251528 * k + 375344 := by
    unfold C
    simp [show (8503056 * k + 750688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 375344) = 2125764 * k + 187672 := by
    unfold C
    simp [show (4251528 * k + 375344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 187672) = 1062882 * k + 93836 := by
    unfold C
    simp [show (2125764 * k + 187672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 93836) = 531441 * k + 46918 := by
    unfold C
    simp [show (1062882 * k + 93836) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 92571) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 92571)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_92903 : ∀ k : Nat,
    iterate (1048576 * k + 92903) 32 = 531441 * k + 47086 ∧
      531441 * k + 47086 < 1048576 * k + 92903 := by
  intro k
  have h1 : C (1048576 * k + 92903) = 3145728 * k + 278710 := by
    unfold C
    simp [show (1048576 * k + 92903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 278710) = 1572864 * k + 139355 := by
    unfold C
    simp [show (3145728 * k + 278710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 139355) = 4718592 * k + 418066 := by
    unfold C
    simp [show (1572864 * k + 139355) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 418066) = 2359296 * k + 209033 := by
    unfold C
    simp [show (4718592 * k + 418066) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 209033) = 7077888 * k + 627100 := by
    unfold C
    simp [show (2359296 * k + 209033) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 627100) = 3538944 * k + 313550 := by
    unfold C
    simp [show (7077888 * k + 627100) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 313550) = 1769472 * k + 156775 := by
    unfold C
    simp [show (3538944 * k + 313550) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 156775) = 5308416 * k + 470326 := by
    unfold C
    simp [show (1769472 * k + 156775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 470326) = 2654208 * k + 235163 := by
    unfold C
    simp [show (5308416 * k + 470326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 235163) = 7962624 * k + 705490 := by
    unfold C
    simp [show (2654208 * k + 235163) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 705490) = 3981312 * k + 352745 := by
    unfold C
    simp [show (7962624 * k + 705490) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 352745) = 11943936 * k + 1058236 := by
    unfold C
    simp [show (3981312 * k + 352745) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1058236) = 5971968 * k + 529118 := by
    unfold C
    simp [show (11943936 * k + 1058236) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 529118) = 2985984 * k + 264559 := by
    unfold C
    simp [show (5971968 * k + 529118) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 264559) = 8957952 * k + 793678 := by
    unfold C
    simp [show (2985984 * k + 264559) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 793678) = 4478976 * k + 396839 := by
    unfold C
    simp [show (8957952 * k + 793678) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 396839) = 13436928 * k + 1190518 := by
    unfold C
    simp [show (4478976 * k + 396839) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1190518) = 6718464 * k + 595259 := by
    unfold C
    simp [show (13436928 * k + 1190518) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 595259) = 20155392 * k + 1785778 := by
    unfold C
    simp [show (6718464 * k + 595259) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1785778) = 10077696 * k + 892889 := by
    unfold C
    simp [show (20155392 * k + 1785778) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 892889) = 30233088 * k + 2678668 := by
    unfold C
    simp [show (10077696 * k + 892889) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2678668) = 15116544 * k + 1339334 := by
    unfold C
    simp [show (30233088 * k + 2678668) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1339334) = 7558272 * k + 669667 := by
    unfold C
    simp [show (15116544 * k + 1339334) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 669667) = 22674816 * k + 2009002 := by
    unfold C
    simp [show (7558272 * k + 669667) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2009002) = 11337408 * k + 1004501 := by
    unfold C
    simp [show (22674816 * k + 2009002) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1004501) = 34012224 * k + 3013504 := by
    unfold C
    simp [show (11337408 * k + 1004501) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 3013504) = 17006112 * k + 1506752 := by
    unfold C
    simp [show (34012224 * k + 3013504) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1506752) = 8503056 * k + 753376 := by
    unfold C
    simp [show (17006112 * k + 1506752) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 753376) = 4251528 * k + 376688 := by
    unfold C
    simp [show (8503056 * k + 753376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 376688) = 2125764 * k + 188344 := by
    unfold C
    simp [show (4251528 * k + 376688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 188344) = 1062882 * k + 94172 := by
    unfold C
    simp [show (2125764 * k + 188344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 94172) = 531441 * k + 47086 := by
    unfold C
    simp [show (1062882 * k + 94172) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 92903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 92903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_93467 : ∀ k : Nat,
    iterate (1048576 * k + 93467) 32 = 531441 * k + 47372 ∧
      531441 * k + 47372 < 1048576 * k + 93467 := by
  intro k
  have h1 : C (1048576 * k + 93467) = 3145728 * k + 280402 := by
    unfold C
    simp [show (1048576 * k + 93467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 280402) = 1572864 * k + 140201 := by
    unfold C
    simp [show (3145728 * k + 280402) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 140201) = 4718592 * k + 420604 := by
    unfold C
    simp [show (1572864 * k + 140201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 420604) = 2359296 * k + 210302 := by
    unfold C
    simp [show (4718592 * k + 420604) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 210302) = 1179648 * k + 105151 := by
    unfold C
    simp [show (2359296 * k + 210302) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 105151) = 3538944 * k + 315454 := by
    unfold C
    simp [show (1179648 * k + 105151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 315454) = 1769472 * k + 157727 := by
    unfold C
    simp [show (3538944 * k + 315454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 157727) = 5308416 * k + 473182 := by
    unfold C
    simp [show (1769472 * k + 157727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 473182) = 2654208 * k + 236591 := by
    unfold C
    simp [show (5308416 * k + 473182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 236591) = 7962624 * k + 709774 := by
    unfold C
    simp [show (2654208 * k + 236591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 709774) = 3981312 * k + 354887 := by
    unfold C
    simp [show (7962624 * k + 709774) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 354887) = 11943936 * k + 1064662 := by
    unfold C
    simp [show (3981312 * k + 354887) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1064662) = 5971968 * k + 532331 := by
    unfold C
    simp [show (11943936 * k + 1064662) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 532331) = 17915904 * k + 1596994 := by
    unfold C
    simp [show (5971968 * k + 532331) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1596994) = 8957952 * k + 798497 := by
    unfold C
    simp [show (17915904 * k + 1596994) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 798497) = 26873856 * k + 2395492 := by
    unfold C
    simp [show (8957952 * k + 798497) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2395492) = 13436928 * k + 1197746 := by
    unfold C
    simp [show (26873856 * k + 2395492) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1197746) = 6718464 * k + 598873 := by
    unfold C
    simp [show (13436928 * k + 1197746) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 598873) = 20155392 * k + 1796620 := by
    unfold C
    simp [show (6718464 * k + 598873) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1796620) = 10077696 * k + 898310 := by
    unfold C
    simp [show (20155392 * k + 1796620) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 898310) = 5038848 * k + 449155 := by
    unfold C
    simp [show (10077696 * k + 898310) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 449155) = 15116544 * k + 1347466 := by
    unfold C
    simp [show (5038848 * k + 449155) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1347466) = 7558272 * k + 673733 := by
    unfold C
    simp [show (15116544 * k + 1347466) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 673733) = 22674816 * k + 2021200 := by
    unfold C
    simp [show (7558272 * k + 673733) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2021200) = 11337408 * k + 1010600 := by
    unfold C
    simp [show (22674816 * k + 2021200) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1010600) = 5668704 * k + 505300 := by
    unfold C
    simp [show (11337408 * k + 1010600) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 505300) = 2834352 * k + 252650 := by
    unfold C
    simp [show (5668704 * k + 505300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 252650) = 1417176 * k + 126325 := by
    unfold C
    simp [show (2834352 * k + 252650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 126325) = 4251528 * k + 378976 := by
    unfold C
    simp [show (1417176 * k + 126325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 378976) = 2125764 * k + 189488 := by
    unfold C
    simp [show (4251528 * k + 378976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 189488) = 1062882 * k + 94744 := by
    unfold C
    simp [show (2125764 * k + 189488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 94744) = 531441 * k + 47372 := by
    unfold C
    simp [show (1062882 * k + 94744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 93467) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 93467)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_93903 : ∀ k : Nat,
    iterate (1048576 * k + 93903) 32 = 531441 * k + 47593 ∧
      531441 * k + 47593 < 1048576 * k + 93903 := by
  intro k
  have h1 : C (1048576 * k + 93903) = 3145728 * k + 281710 := by
    unfold C
    simp [show (1048576 * k + 93903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 281710) = 1572864 * k + 140855 := by
    unfold C
    simp [show (3145728 * k + 281710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 140855) = 4718592 * k + 422566 := by
    unfold C
    simp [show (1572864 * k + 140855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 422566) = 2359296 * k + 211283 := by
    unfold C
    simp [show (4718592 * k + 422566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 211283) = 7077888 * k + 633850 := by
    unfold C
    simp [show (2359296 * k + 211283) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 633850) = 3538944 * k + 316925 := by
    unfold C
    simp [show (7077888 * k + 633850) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 316925) = 10616832 * k + 950776 := by
    unfold C
    simp [show (3538944 * k + 316925) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 950776) = 5308416 * k + 475388 := by
    unfold C
    simp [show (10616832 * k + 950776) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 475388) = 2654208 * k + 237694 := by
    unfold C
    simp [show (5308416 * k + 475388) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 237694) = 1327104 * k + 118847 := by
    unfold C
    simp [show (2654208 * k + 237694) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 118847) = 3981312 * k + 356542 := by
    unfold C
    simp [show (1327104 * k + 118847) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 356542) = 1990656 * k + 178271 := by
    unfold C
    simp [show (3981312 * k + 356542) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 178271) = 5971968 * k + 534814 := by
    unfold C
    simp [show (1990656 * k + 178271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 534814) = 2985984 * k + 267407 := by
    unfold C
    simp [show (5971968 * k + 534814) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 267407) = 8957952 * k + 802222 := by
    unfold C
    simp [show (2985984 * k + 267407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 802222) = 4478976 * k + 401111 := by
    unfold C
    simp [show (8957952 * k + 802222) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 401111) = 13436928 * k + 1203334 := by
    unfold C
    simp [show (4478976 * k + 401111) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1203334) = 6718464 * k + 601667 := by
    unfold C
    simp [show (13436928 * k + 1203334) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 601667) = 20155392 * k + 1805002 := by
    unfold C
    simp [show (6718464 * k + 601667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1805002) = 10077696 * k + 902501 := by
    unfold C
    simp [show (20155392 * k + 1805002) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 902501) = 30233088 * k + 2707504 := by
    unfold C
    simp [show (10077696 * k + 902501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2707504) = 15116544 * k + 1353752 := by
    unfold C
    simp [show (30233088 * k + 2707504) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1353752) = 7558272 * k + 676876 := by
    unfold C
    simp [show (15116544 * k + 1353752) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 676876) = 3779136 * k + 338438 := by
    unfold C
    simp [show (7558272 * k + 676876) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 338438) = 1889568 * k + 169219 := by
    unfold C
    simp [show (3779136 * k + 338438) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 169219) = 5668704 * k + 507658 := by
    unfold C
    simp [show (1889568 * k + 169219) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 507658) = 2834352 * k + 253829 := by
    unfold C
    simp [show (5668704 * k + 507658) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 253829) = 8503056 * k + 761488 := by
    unfold C
    simp [show (2834352 * k + 253829) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 761488) = 4251528 * k + 380744 := by
    unfold C
    simp [show (8503056 * k + 761488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 380744) = 2125764 * k + 190372 := by
    unfold C
    simp [show (4251528 * k + 380744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 190372) = 1062882 * k + 95186 := by
    unfold C
    simp [show (2125764 * k + 190372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 95186) = 531441 * k + 47593 := by
    unfold C
    simp [show (1062882 * k + 95186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 93903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 93903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_93935 : ∀ k : Nat,
    iterate (1048576 * k + 93935) 32 = 531441 * k + 47609 ∧
      531441 * k + 47609 < 1048576 * k + 93935 := by
  intro k
  have h1 : C (1048576 * k + 93935) = 3145728 * k + 281806 := by
    unfold C
    simp [show (1048576 * k + 93935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 281806) = 1572864 * k + 140903 := by
    unfold C
    simp [show (3145728 * k + 281806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 140903) = 4718592 * k + 422710 := by
    unfold C
    simp [show (1572864 * k + 140903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 422710) = 2359296 * k + 211355 := by
    unfold C
    simp [show (4718592 * k + 422710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 211355) = 7077888 * k + 634066 := by
    unfold C
    simp [show (2359296 * k + 211355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 634066) = 3538944 * k + 317033 := by
    unfold C
    simp [show (7077888 * k + 634066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 317033) = 10616832 * k + 951100 := by
    unfold C
    simp [show (3538944 * k + 317033) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 951100) = 5308416 * k + 475550 := by
    unfold C
    simp [show (10616832 * k + 951100) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 475550) = 2654208 * k + 237775 := by
    unfold C
    simp [show (5308416 * k + 475550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 237775) = 7962624 * k + 713326 := by
    unfold C
    simp [show (2654208 * k + 237775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 713326) = 3981312 * k + 356663 := by
    unfold C
    simp [show (7962624 * k + 713326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 356663) = 11943936 * k + 1069990 := by
    unfold C
    simp [show (3981312 * k + 356663) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1069990) = 5971968 * k + 534995 := by
    unfold C
    simp [show (11943936 * k + 1069990) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 534995) = 17915904 * k + 1604986 := by
    unfold C
    simp [show (5971968 * k + 534995) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1604986) = 8957952 * k + 802493 := by
    unfold C
    simp [show (17915904 * k + 1604986) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 802493) = 26873856 * k + 2407480 := by
    unfold C
    simp [show (8957952 * k + 802493) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2407480) = 13436928 * k + 1203740 := by
    unfold C
    simp [show (26873856 * k + 2407480) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1203740) = 6718464 * k + 601870 := by
    unfold C
    simp [show (13436928 * k + 1203740) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 601870) = 3359232 * k + 300935 := by
    unfold C
    simp [show (6718464 * k + 601870) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 300935) = 10077696 * k + 902806 := by
    unfold C
    simp [show (3359232 * k + 300935) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 902806) = 5038848 * k + 451403 := by
    unfold C
    simp [show (10077696 * k + 902806) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 451403) = 15116544 * k + 1354210 := by
    unfold C
    simp [show (5038848 * k + 451403) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1354210) = 7558272 * k + 677105 := by
    unfold C
    simp [show (15116544 * k + 1354210) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 677105) = 22674816 * k + 2031316 := by
    unfold C
    simp [show (7558272 * k + 677105) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2031316) = 11337408 * k + 1015658 := by
    unfold C
    simp [show (22674816 * k + 2031316) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1015658) = 5668704 * k + 507829 := by
    unfold C
    simp [show (11337408 * k + 1015658) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 507829) = 17006112 * k + 1523488 := by
    unfold C
    simp [show (5668704 * k + 507829) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1523488) = 8503056 * k + 761744 := by
    unfold C
    simp [show (17006112 * k + 1523488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 761744) = 4251528 * k + 380872 := by
    unfold C
    simp [show (8503056 * k + 761744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 380872) = 2125764 * k + 190436 := by
    unfold C
    simp [show (4251528 * k + 380872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 190436) = 1062882 * k + 95218 := by
    unfold C
    simp [show (2125764 * k + 190436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 95218) = 531441 * k + 47609 := by
    unfold C
    simp [show (1062882 * k + 95218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 93935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 93935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_94887 : ∀ k : Nat,
    iterate (1048576 * k + 94887) 32 = 531441 * k + 48092 ∧
      531441 * k + 48092 < 1048576 * k + 94887 := by
  intro k
  have h1 : C (1048576 * k + 94887) = 3145728 * k + 284662 := by
    unfold C
    simp [show (1048576 * k + 94887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 284662) = 1572864 * k + 142331 := by
    unfold C
    simp [show (3145728 * k + 284662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 142331) = 4718592 * k + 426994 := by
    unfold C
    simp [show (1572864 * k + 142331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 426994) = 2359296 * k + 213497 := by
    unfold C
    simp [show (4718592 * k + 426994) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 213497) = 7077888 * k + 640492 := by
    unfold C
    simp [show (2359296 * k + 213497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 640492) = 3538944 * k + 320246 := by
    unfold C
    simp [show (7077888 * k + 640492) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 320246) = 1769472 * k + 160123 := by
    unfold C
    simp [show (3538944 * k + 320246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 160123) = 5308416 * k + 480370 := by
    unfold C
    simp [show (1769472 * k + 160123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 480370) = 2654208 * k + 240185 := by
    unfold C
    simp [show (5308416 * k + 480370) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 240185) = 7962624 * k + 720556 := by
    unfold C
    simp [show (2654208 * k + 240185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 720556) = 3981312 * k + 360278 := by
    unfold C
    simp [show (7962624 * k + 720556) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 360278) = 1990656 * k + 180139 := by
    unfold C
    simp [show (3981312 * k + 360278) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 180139) = 5971968 * k + 540418 := by
    unfold C
    simp [show (1990656 * k + 180139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 540418) = 2985984 * k + 270209 := by
    unfold C
    simp [show (5971968 * k + 540418) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 270209) = 8957952 * k + 810628 := by
    unfold C
    simp [show (2985984 * k + 270209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 810628) = 4478976 * k + 405314 := by
    unfold C
    simp [show (8957952 * k + 810628) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 405314) = 2239488 * k + 202657 := by
    unfold C
    simp [show (4478976 * k + 405314) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 202657) = 6718464 * k + 607972 := by
    unfold C
    simp [show (2239488 * k + 202657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 607972) = 3359232 * k + 303986 := by
    unfold C
    simp [show (6718464 * k + 607972) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 303986) = 1679616 * k + 151993 := by
    unfold C
    simp [show (3359232 * k + 303986) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 151993) = 5038848 * k + 455980 := by
    unfold C
    simp [show (1679616 * k + 151993) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 455980) = 2519424 * k + 227990 := by
    unfold C
    simp [show (5038848 * k + 455980) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 227990) = 1259712 * k + 113995 := by
    unfold C
    simp [show (2519424 * k + 227990) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 113995) = 3779136 * k + 341986 := by
    unfold C
    simp [show (1259712 * k + 113995) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 341986) = 1889568 * k + 170993 := by
    unfold C
    simp [show (3779136 * k + 341986) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 170993) = 5668704 * k + 512980 := by
    unfold C
    simp [show (1889568 * k + 170993) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 512980) = 2834352 * k + 256490 := by
    unfold C
    simp [show (5668704 * k + 512980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 256490) = 1417176 * k + 128245 := by
    unfold C
    simp [show (2834352 * k + 256490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 128245) = 4251528 * k + 384736 := by
    unfold C
    simp [show (1417176 * k + 128245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 384736) = 2125764 * k + 192368 := by
    unfold C
    simp [show (4251528 * k + 384736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 192368) = 1062882 * k + 96184 := by
    unfold C
    simp [show (2125764 * k + 192368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 96184) = 531441 * k + 48092 := by
    unfold C
    simp [show (1062882 * k + 96184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 94887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 94887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_95047 : ∀ k : Nat,
    iterate (1048576 * k + 95047) 32 = 531441 * k + 48173 ∧
      531441 * k + 48173 < 1048576 * k + 95047 := by
  intro k
  have h1 : C (1048576 * k + 95047) = 3145728 * k + 285142 := by
    unfold C
    simp [show (1048576 * k + 95047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 285142) = 1572864 * k + 142571 := by
    unfold C
    simp [show (3145728 * k + 285142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 142571) = 4718592 * k + 427714 := by
    unfold C
    simp [show (1572864 * k + 142571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 427714) = 2359296 * k + 213857 := by
    unfold C
    simp [show (4718592 * k + 427714) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 213857) = 7077888 * k + 641572 := by
    unfold C
    simp [show (2359296 * k + 213857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 641572) = 3538944 * k + 320786 := by
    unfold C
    simp [show (7077888 * k + 641572) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 320786) = 1769472 * k + 160393 := by
    unfold C
    simp [show (3538944 * k + 320786) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 160393) = 5308416 * k + 481180 := by
    unfold C
    simp [show (1769472 * k + 160393) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 481180) = 2654208 * k + 240590 := by
    unfold C
    simp [show (5308416 * k + 481180) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 240590) = 1327104 * k + 120295 := by
    unfold C
    simp [show (2654208 * k + 240590) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 120295) = 3981312 * k + 360886 := by
    unfold C
    simp [show (1327104 * k + 120295) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 360886) = 1990656 * k + 180443 := by
    unfold C
    simp [show (3981312 * k + 360886) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 180443) = 5971968 * k + 541330 := by
    unfold C
    simp [show (1990656 * k + 180443) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 541330) = 2985984 * k + 270665 := by
    unfold C
    simp [show (5971968 * k + 541330) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 270665) = 8957952 * k + 811996 := by
    unfold C
    simp [show (2985984 * k + 270665) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 811996) = 4478976 * k + 405998 := by
    unfold C
    simp [show (8957952 * k + 811996) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 405998) = 2239488 * k + 202999 := by
    unfold C
    simp [show (4478976 * k + 405998) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 202999) = 6718464 * k + 608998 := by
    unfold C
    simp [show (2239488 * k + 202999) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 608998) = 3359232 * k + 304499 := by
    unfold C
    simp [show (6718464 * k + 608998) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 304499) = 10077696 * k + 913498 := by
    unfold C
    simp [show (3359232 * k + 304499) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 913498) = 5038848 * k + 456749 := by
    unfold C
    simp [show (10077696 * k + 913498) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 456749) = 15116544 * k + 1370248 := by
    unfold C
    simp [show (5038848 * k + 456749) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1370248) = 7558272 * k + 685124 := by
    unfold C
    simp [show (15116544 * k + 1370248) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 685124) = 3779136 * k + 342562 := by
    unfold C
    simp [show (7558272 * k + 685124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 342562) = 1889568 * k + 171281 := by
    unfold C
    simp [show (3779136 * k + 342562) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 171281) = 5668704 * k + 513844 := by
    unfold C
    simp [show (1889568 * k + 171281) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 513844) = 2834352 * k + 256922 := by
    unfold C
    simp [show (5668704 * k + 513844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 256922) = 1417176 * k + 128461 := by
    unfold C
    simp [show (2834352 * k + 256922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 128461) = 4251528 * k + 385384 := by
    unfold C
    simp [show (1417176 * k + 128461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 385384) = 2125764 * k + 192692 := by
    unfold C
    simp [show (4251528 * k + 385384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 192692) = 1062882 * k + 96346 := by
    unfold C
    simp [show (2125764 * k + 192692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 96346) = 531441 * k + 48173 := by
    unfold C
    simp [show (1062882 * k + 96346) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 95047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 95047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_95975 : ∀ k : Nat,
    iterate (1048576 * k + 95975) 32 = 531441 * k + 48643 ∧
      531441 * k + 48643 < 1048576 * k + 95975 := by
  intro k
  have h1 : C (1048576 * k + 95975) = 3145728 * k + 287926 := by
    unfold C
    simp [show (1048576 * k + 95975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 287926) = 1572864 * k + 143963 := by
    unfold C
    simp [show (3145728 * k + 287926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 143963) = 4718592 * k + 431890 := by
    unfold C
    simp [show (1572864 * k + 143963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 431890) = 2359296 * k + 215945 := by
    unfold C
    simp [show (4718592 * k + 431890) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 215945) = 7077888 * k + 647836 := by
    unfold C
    simp [show (2359296 * k + 215945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 647836) = 3538944 * k + 323918 := by
    unfold C
    simp [show (7077888 * k + 647836) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 323918) = 1769472 * k + 161959 := by
    unfold C
    simp [show (3538944 * k + 323918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 161959) = 5308416 * k + 485878 := by
    unfold C
    simp [show (1769472 * k + 161959) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 485878) = 2654208 * k + 242939 := by
    unfold C
    simp [show (5308416 * k + 485878) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 242939) = 7962624 * k + 728818 := by
    unfold C
    simp [show (2654208 * k + 242939) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 728818) = 3981312 * k + 364409 := by
    unfold C
    simp [show (7962624 * k + 728818) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 364409) = 11943936 * k + 1093228 := by
    unfold C
    simp [show (3981312 * k + 364409) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1093228) = 5971968 * k + 546614 := by
    unfold C
    simp [show (11943936 * k + 1093228) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 546614) = 2985984 * k + 273307 := by
    unfold C
    simp [show (5971968 * k + 546614) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 273307) = 8957952 * k + 819922 := by
    unfold C
    simp [show (2985984 * k + 273307) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 819922) = 4478976 * k + 409961 := by
    unfold C
    simp [show (8957952 * k + 819922) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 409961) = 13436928 * k + 1229884 := by
    unfold C
    simp [show (4478976 * k + 409961) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1229884) = 6718464 * k + 614942 := by
    unfold C
    simp [show (13436928 * k + 1229884) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 614942) = 3359232 * k + 307471 := by
    unfold C
    simp [show (6718464 * k + 614942) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 307471) = 10077696 * k + 922414 := by
    unfold C
    simp [show (3359232 * k + 307471) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 922414) = 5038848 * k + 461207 := by
    unfold C
    simp [show (10077696 * k + 922414) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 461207) = 15116544 * k + 1383622 := by
    unfold C
    simp [show (5038848 * k + 461207) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1383622) = 7558272 * k + 691811 := by
    unfold C
    simp [show (15116544 * k + 1383622) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 691811) = 22674816 * k + 2075434 := by
    unfold C
    simp [show (7558272 * k + 691811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2075434) = 11337408 * k + 1037717 := by
    unfold C
    simp [show (22674816 * k + 2075434) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1037717) = 34012224 * k + 3113152 := by
    unfold C
    simp [show (11337408 * k + 1037717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 3113152) = 17006112 * k + 1556576 := by
    unfold C
    simp [show (34012224 * k + 3113152) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1556576) = 8503056 * k + 778288 := by
    unfold C
    simp [show (17006112 * k + 1556576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 778288) = 4251528 * k + 389144 := by
    unfold C
    simp [show (8503056 * k + 778288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 389144) = 2125764 * k + 194572 := by
    unfold C
    simp [show (4251528 * k + 389144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 194572) = 1062882 * k + 97286 := by
    unfold C
    simp [show (2125764 * k + 194572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 97286) = 531441 * k + 48643 := by
    unfold C
    simp [show (1062882 * k + 97286) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 95975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 95975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_96539 : ∀ k : Nat,
    iterate (1048576 * k + 96539) 32 = 531441 * k + 48929 ∧
      531441 * k + 48929 < 1048576 * k + 96539 := by
  intro k
  have h1 : C (1048576 * k + 96539) = 3145728 * k + 289618 := by
    unfold C
    simp [show (1048576 * k + 96539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 289618) = 1572864 * k + 144809 := by
    unfold C
    simp [show (3145728 * k + 289618) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 144809) = 4718592 * k + 434428 := by
    unfold C
    simp [show (1572864 * k + 144809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 434428) = 2359296 * k + 217214 := by
    unfold C
    simp [show (4718592 * k + 434428) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 217214) = 1179648 * k + 108607 := by
    unfold C
    simp [show (2359296 * k + 217214) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 108607) = 3538944 * k + 325822 := by
    unfold C
    simp [show (1179648 * k + 108607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 325822) = 1769472 * k + 162911 := by
    unfold C
    simp [show (3538944 * k + 325822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 162911) = 5308416 * k + 488734 := by
    unfold C
    simp [show (1769472 * k + 162911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 488734) = 2654208 * k + 244367 := by
    unfold C
    simp [show (5308416 * k + 488734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 244367) = 7962624 * k + 733102 := by
    unfold C
    simp [show (2654208 * k + 244367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 733102) = 3981312 * k + 366551 := by
    unfold C
    simp [show (7962624 * k + 733102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 366551) = 11943936 * k + 1099654 := by
    unfold C
    simp [show (3981312 * k + 366551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1099654) = 5971968 * k + 549827 := by
    unfold C
    simp [show (11943936 * k + 1099654) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 549827) = 17915904 * k + 1649482 := by
    unfold C
    simp [show (5971968 * k + 549827) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1649482) = 8957952 * k + 824741 := by
    unfold C
    simp [show (17915904 * k + 1649482) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 824741) = 26873856 * k + 2474224 := by
    unfold C
    simp [show (8957952 * k + 824741) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2474224) = 13436928 * k + 1237112 := by
    unfold C
    simp [show (26873856 * k + 2474224) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1237112) = 6718464 * k + 618556 := by
    unfold C
    simp [show (13436928 * k + 1237112) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 618556) = 3359232 * k + 309278 := by
    unfold C
    simp [show (6718464 * k + 618556) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 309278) = 1679616 * k + 154639 := by
    unfold C
    simp [show (3359232 * k + 309278) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 154639) = 5038848 * k + 463918 := by
    unfold C
    simp [show (1679616 * k + 154639) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 463918) = 2519424 * k + 231959 := by
    unfold C
    simp [show (5038848 * k + 463918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 231959) = 7558272 * k + 695878 := by
    unfold C
    simp [show (2519424 * k + 231959) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 695878) = 3779136 * k + 347939 := by
    unfold C
    simp [show (7558272 * k + 695878) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 347939) = 11337408 * k + 1043818 := by
    unfold C
    simp [show (3779136 * k + 347939) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1043818) = 5668704 * k + 521909 := by
    unfold C
    simp [show (11337408 * k + 1043818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 521909) = 17006112 * k + 1565728 := by
    unfold C
    simp [show (5668704 * k + 521909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1565728) = 8503056 * k + 782864 := by
    unfold C
    simp [show (17006112 * k + 1565728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 782864) = 4251528 * k + 391432 := by
    unfold C
    simp [show (8503056 * k + 782864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 391432) = 2125764 * k + 195716 := by
    unfold C
    simp [show (4251528 * k + 391432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 195716) = 1062882 * k + 97858 := by
    unfold C
    simp [show (2125764 * k + 195716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 97858) = 531441 * k + 48929 := by
    unfold C
    simp [show (1062882 * k + 97858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 96539) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 96539)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_96575 : ∀ k : Nat,
    iterate (1048576 * k + 96575) 32 = 531441 * k + 48947 ∧
      531441 * k + 48947 < 1048576 * k + 96575 := by
  intro k
  have h1 : C (1048576 * k + 96575) = 3145728 * k + 289726 := by
    unfold C
    simp [show (1048576 * k + 96575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 289726) = 1572864 * k + 144863 := by
    unfold C
    simp [show (3145728 * k + 289726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 144863) = 4718592 * k + 434590 := by
    unfold C
    simp [show (1572864 * k + 144863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 434590) = 2359296 * k + 217295 := by
    unfold C
    simp [show (4718592 * k + 434590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 217295) = 7077888 * k + 651886 := by
    unfold C
    simp [show (2359296 * k + 217295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 651886) = 3538944 * k + 325943 := by
    unfold C
    simp [show (7077888 * k + 651886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 325943) = 10616832 * k + 977830 := by
    unfold C
    simp [show (3538944 * k + 325943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 977830) = 5308416 * k + 488915 := by
    unfold C
    simp [show (10616832 * k + 977830) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 488915) = 15925248 * k + 1466746 := by
    unfold C
    simp [show (5308416 * k + 488915) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1466746) = 7962624 * k + 733373 := by
    unfold C
    simp [show (15925248 * k + 1466746) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 733373) = 23887872 * k + 2200120 := by
    unfold C
    simp [show (7962624 * k + 733373) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2200120) = 11943936 * k + 1100060 := by
    unfold C
    simp [show (23887872 * k + 2200120) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1100060) = 5971968 * k + 550030 := by
    unfold C
    simp [show (11943936 * k + 1100060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 550030) = 2985984 * k + 275015 := by
    unfold C
    simp [show (5971968 * k + 550030) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 275015) = 8957952 * k + 825046 := by
    unfold C
    simp [show (2985984 * k + 275015) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 825046) = 4478976 * k + 412523 := by
    unfold C
    simp [show (8957952 * k + 825046) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 412523) = 13436928 * k + 1237570 := by
    unfold C
    simp [show (4478976 * k + 412523) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1237570) = 6718464 * k + 618785 := by
    unfold C
    simp [show (13436928 * k + 1237570) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 618785) = 20155392 * k + 1856356 := by
    unfold C
    simp [show (6718464 * k + 618785) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1856356) = 10077696 * k + 928178 := by
    unfold C
    simp [show (20155392 * k + 1856356) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 928178) = 5038848 * k + 464089 := by
    unfold C
    simp [show (10077696 * k + 928178) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 464089) = 15116544 * k + 1392268 := by
    unfold C
    simp [show (5038848 * k + 464089) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1392268) = 7558272 * k + 696134 := by
    unfold C
    simp [show (15116544 * k + 1392268) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 696134) = 3779136 * k + 348067 := by
    unfold C
    simp [show (7558272 * k + 696134) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 348067) = 11337408 * k + 1044202 := by
    unfold C
    simp [show (3779136 * k + 348067) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1044202) = 5668704 * k + 522101 := by
    unfold C
    simp [show (11337408 * k + 1044202) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 522101) = 17006112 * k + 1566304 := by
    unfold C
    simp [show (5668704 * k + 522101) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1566304) = 8503056 * k + 783152 := by
    unfold C
    simp [show (17006112 * k + 1566304) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 783152) = 4251528 * k + 391576 := by
    unfold C
    simp [show (8503056 * k + 783152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 391576) = 2125764 * k + 195788 := by
    unfold C
    simp [show (4251528 * k + 391576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 195788) = 1062882 * k + 97894 := by
    unfold C
    simp [show (2125764 * k + 195788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 97894) = 531441 * k + 48947 := by
    unfold C
    simp [show (1062882 * k + 97894) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 96575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 96575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_96667 : ∀ k : Nat,
    iterate (1048576 * k + 96667) 32 = 531441 * k + 48994 ∧
      531441 * k + 48994 < 1048576 * k + 96667 := by
  intro k
  have h1 : C (1048576 * k + 96667) = 3145728 * k + 290002 := by
    unfold C
    simp [show (1048576 * k + 96667) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 290002) = 1572864 * k + 145001 := by
    unfold C
    simp [show (3145728 * k + 290002) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 145001) = 4718592 * k + 435004 := by
    unfold C
    simp [show (1572864 * k + 145001) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 435004) = 2359296 * k + 217502 := by
    unfold C
    simp [show (4718592 * k + 435004) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 217502) = 1179648 * k + 108751 := by
    unfold C
    simp [show (2359296 * k + 217502) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 108751) = 3538944 * k + 326254 := by
    unfold C
    simp [show (1179648 * k + 108751) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 326254) = 1769472 * k + 163127 := by
    unfold C
    simp [show (3538944 * k + 326254) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 163127) = 5308416 * k + 489382 := by
    unfold C
    simp [show (1769472 * k + 163127) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 489382) = 2654208 * k + 244691 := by
    unfold C
    simp [show (5308416 * k + 489382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 244691) = 7962624 * k + 734074 := by
    unfold C
    simp [show (2654208 * k + 244691) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 734074) = 3981312 * k + 367037 := by
    unfold C
    simp [show (7962624 * k + 734074) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 367037) = 11943936 * k + 1101112 := by
    unfold C
    simp [show (3981312 * k + 367037) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1101112) = 5971968 * k + 550556 := by
    unfold C
    simp [show (11943936 * k + 1101112) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 550556) = 2985984 * k + 275278 := by
    unfold C
    simp [show (5971968 * k + 550556) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 275278) = 1492992 * k + 137639 := by
    unfold C
    simp [show (2985984 * k + 275278) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 137639) = 4478976 * k + 412918 := by
    unfold C
    simp [show (1492992 * k + 137639) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 412918) = 2239488 * k + 206459 := by
    unfold C
    simp [show (4478976 * k + 412918) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 206459) = 6718464 * k + 619378 := by
    unfold C
    simp [show (2239488 * k + 206459) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 619378) = 3359232 * k + 309689 := by
    unfold C
    simp [show (6718464 * k + 619378) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 309689) = 10077696 * k + 929068 := by
    unfold C
    simp [show (3359232 * k + 309689) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 929068) = 5038848 * k + 464534 := by
    unfold C
    simp [show (10077696 * k + 929068) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 464534) = 2519424 * k + 232267 := by
    unfold C
    simp [show (5038848 * k + 464534) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 232267) = 7558272 * k + 696802 := by
    unfold C
    simp [show (2519424 * k + 232267) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 696802) = 3779136 * k + 348401 := by
    unfold C
    simp [show (7558272 * k + 696802) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 348401) = 11337408 * k + 1045204 := by
    unfold C
    simp [show (3779136 * k + 348401) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1045204) = 5668704 * k + 522602 := by
    unfold C
    simp [show (11337408 * k + 1045204) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 522602) = 2834352 * k + 261301 := by
    unfold C
    simp [show (5668704 * k + 522602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 261301) = 8503056 * k + 783904 := by
    unfold C
    simp [show (2834352 * k + 261301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 783904) = 4251528 * k + 391952 := by
    unfold C
    simp [show (8503056 * k + 783904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 391952) = 2125764 * k + 195976 := by
    unfold C
    simp [show (4251528 * k + 391952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 195976) = 1062882 * k + 97988 := by
    unfold C
    simp [show (2125764 * k + 195976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 97988) = 531441 * k + 48994 := by
    unfold C
    simp [show (1062882 * k + 97988) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 96667) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 96667)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_96815 : ∀ k : Nat,
    iterate (1048576 * k + 96815) 32 = 531441 * k + 49069 ∧
      531441 * k + 49069 < 1048576 * k + 96815 := by
  intro k
  have h1 : C (1048576 * k + 96815) = 3145728 * k + 290446 := by
    unfold C
    simp [show (1048576 * k + 96815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 290446) = 1572864 * k + 145223 := by
    unfold C
    simp [show (3145728 * k + 290446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 145223) = 4718592 * k + 435670 := by
    unfold C
    simp [show (1572864 * k + 145223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 435670) = 2359296 * k + 217835 := by
    unfold C
    simp [show (4718592 * k + 435670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 217835) = 7077888 * k + 653506 := by
    unfold C
    simp [show (2359296 * k + 217835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 653506) = 3538944 * k + 326753 := by
    unfold C
    simp [show (7077888 * k + 653506) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 326753) = 10616832 * k + 980260 := by
    unfold C
    simp [show (3538944 * k + 326753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 980260) = 5308416 * k + 490130 := by
    unfold C
    simp [show (10616832 * k + 980260) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 490130) = 2654208 * k + 245065 := by
    unfold C
    simp [show (5308416 * k + 490130) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 245065) = 7962624 * k + 735196 := by
    unfold C
    simp [show (2654208 * k + 245065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 735196) = 3981312 * k + 367598 := by
    unfold C
    simp [show (7962624 * k + 735196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 367598) = 1990656 * k + 183799 := by
    unfold C
    simp [show (3981312 * k + 367598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 183799) = 5971968 * k + 551398 := by
    unfold C
    simp [show (1990656 * k + 183799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 551398) = 2985984 * k + 275699 := by
    unfold C
    simp [show (5971968 * k + 551398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 275699) = 8957952 * k + 827098 := by
    unfold C
    simp [show (2985984 * k + 275699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 827098) = 4478976 * k + 413549 := by
    unfold C
    simp [show (8957952 * k + 827098) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 413549) = 13436928 * k + 1240648 := by
    unfold C
    simp [show (4478976 * k + 413549) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1240648) = 6718464 * k + 620324 := by
    unfold C
    simp [show (13436928 * k + 1240648) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 620324) = 3359232 * k + 310162 := by
    unfold C
    simp [show (6718464 * k + 620324) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 310162) = 1679616 * k + 155081 := by
    unfold C
    simp [show (3359232 * k + 310162) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 155081) = 5038848 * k + 465244 := by
    unfold C
    simp [show (1679616 * k + 155081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 465244) = 2519424 * k + 232622 := by
    unfold C
    simp [show (5038848 * k + 465244) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 232622) = 1259712 * k + 116311 := by
    unfold C
    simp [show (2519424 * k + 232622) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 116311) = 3779136 * k + 348934 := by
    unfold C
    simp [show (1259712 * k + 116311) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 348934) = 1889568 * k + 174467 := by
    unfold C
    simp [show (3779136 * k + 348934) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 174467) = 5668704 * k + 523402 := by
    unfold C
    simp [show (1889568 * k + 174467) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 523402) = 2834352 * k + 261701 := by
    unfold C
    simp [show (5668704 * k + 523402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 261701) = 8503056 * k + 785104 := by
    unfold C
    simp [show (2834352 * k + 261701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 785104) = 4251528 * k + 392552 := by
    unfold C
    simp [show (8503056 * k + 785104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 392552) = 2125764 * k + 196276 := by
    unfold C
    simp [show (4251528 * k + 392552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 196276) = 1062882 * k + 98138 := by
    unfold C
    simp [show (2125764 * k + 196276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 98138) = 531441 * k + 49069 := by
    unfold C
    simp [show (1062882 * k + 98138) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 96815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 96815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_96975 : ∀ k : Nat,
    iterate (1048576 * k + 96975) 32 = 531441 * k + 49150 ∧
      531441 * k + 49150 < 1048576 * k + 96975 := by
  intro k
  have h1 : C (1048576 * k + 96975) = 3145728 * k + 290926 := by
    unfold C
    simp [show (1048576 * k + 96975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 290926) = 1572864 * k + 145463 := by
    unfold C
    simp [show (3145728 * k + 290926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 145463) = 4718592 * k + 436390 := by
    unfold C
    simp [show (1572864 * k + 145463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 436390) = 2359296 * k + 218195 := by
    unfold C
    simp [show (4718592 * k + 436390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 218195) = 7077888 * k + 654586 := by
    unfold C
    simp [show (2359296 * k + 218195) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 654586) = 3538944 * k + 327293 := by
    unfold C
    simp [show (7077888 * k + 654586) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 327293) = 10616832 * k + 981880 := by
    unfold C
    simp [show (3538944 * k + 327293) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 981880) = 5308416 * k + 490940 := by
    unfold C
    simp [show (10616832 * k + 981880) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 490940) = 2654208 * k + 245470 := by
    unfold C
    simp [show (5308416 * k + 490940) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 245470) = 1327104 * k + 122735 := by
    unfold C
    simp [show (2654208 * k + 245470) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 122735) = 3981312 * k + 368206 := by
    unfold C
    simp [show (1327104 * k + 122735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 368206) = 1990656 * k + 184103 := by
    unfold C
    simp [show (3981312 * k + 368206) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 184103) = 5971968 * k + 552310 := by
    unfold C
    simp [show (1990656 * k + 184103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 552310) = 2985984 * k + 276155 := by
    unfold C
    simp [show (5971968 * k + 552310) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 276155) = 8957952 * k + 828466 := by
    unfold C
    simp [show (2985984 * k + 276155) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 828466) = 4478976 * k + 414233 := by
    unfold C
    simp [show (8957952 * k + 828466) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 414233) = 13436928 * k + 1242700 := by
    unfold C
    simp [show (4478976 * k + 414233) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1242700) = 6718464 * k + 621350 := by
    unfold C
    simp [show (13436928 * k + 1242700) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 621350) = 3359232 * k + 310675 := by
    unfold C
    simp [show (6718464 * k + 621350) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 310675) = 10077696 * k + 932026 := by
    unfold C
    simp [show (3359232 * k + 310675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 932026) = 5038848 * k + 466013 := by
    unfold C
    simp [show (10077696 * k + 932026) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 466013) = 15116544 * k + 1398040 := by
    unfold C
    simp [show (5038848 * k + 466013) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1398040) = 7558272 * k + 699020 := by
    unfold C
    simp [show (15116544 * k + 1398040) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 699020) = 3779136 * k + 349510 := by
    unfold C
    simp [show (7558272 * k + 699020) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 349510) = 1889568 * k + 174755 := by
    unfold C
    simp [show (3779136 * k + 349510) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 174755) = 5668704 * k + 524266 := by
    unfold C
    simp [show (1889568 * k + 174755) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 524266) = 2834352 * k + 262133 := by
    unfold C
    simp [show (5668704 * k + 524266) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 262133) = 8503056 * k + 786400 := by
    unfold C
    simp [show (2834352 * k + 262133) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 786400) = 4251528 * k + 393200 := by
    unfold C
    simp [show (8503056 * k + 786400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 393200) = 2125764 * k + 196600 := by
    unfold C
    simp [show (4251528 * k + 393200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 196600) = 1062882 * k + 98300 := by
    unfold C
    simp [show (2125764 * k + 196600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 98300) = 531441 * k + 49150 := by
    unfold C
    simp [show (1062882 * k + 98300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 96975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 96975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_97023 : ∀ k : Nat,
    iterate (1048576 * k + 97023) 32 = 531441 * k + 49174 ∧
      531441 * k + 49174 < 1048576 * k + 97023 := by
  intro k
  have h1 : C (1048576 * k + 97023) = 3145728 * k + 291070 := by
    unfold C
    simp [show (1048576 * k + 97023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 291070) = 1572864 * k + 145535 := by
    unfold C
    simp [show (3145728 * k + 291070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 145535) = 4718592 * k + 436606 := by
    unfold C
    simp [show (1572864 * k + 145535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 436606) = 2359296 * k + 218303 := by
    unfold C
    simp [show (4718592 * k + 436606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 218303) = 7077888 * k + 654910 := by
    unfold C
    simp [show (2359296 * k + 218303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 654910) = 3538944 * k + 327455 := by
    unfold C
    simp [show (7077888 * k + 654910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 327455) = 10616832 * k + 982366 := by
    unfold C
    simp [show (3538944 * k + 327455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 982366) = 5308416 * k + 491183 := by
    unfold C
    simp [show (10616832 * k + 982366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 491183) = 15925248 * k + 1473550 := by
    unfold C
    simp [show (5308416 * k + 491183) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1473550) = 7962624 * k + 736775 := by
    unfold C
    simp [show (15925248 * k + 1473550) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 736775) = 23887872 * k + 2210326 := by
    unfold C
    simp [show (7962624 * k + 736775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2210326) = 11943936 * k + 1105163 := by
    unfold C
    simp [show (23887872 * k + 2210326) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1105163) = 35831808 * k + 3315490 := by
    unfold C
    simp [show (11943936 * k + 1105163) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3315490) = 17915904 * k + 1657745 := by
    unfold C
    simp [show (35831808 * k + 3315490) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1657745) = 53747712 * k + 4973236 := by
    unfold C
    simp [show (17915904 * k + 1657745) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 4973236) = 26873856 * k + 2486618 := by
    unfold C
    simp [show (53747712 * k + 4973236) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 2486618) = 13436928 * k + 1243309 := by
    unfold C
    simp [show (26873856 * k + 2486618) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1243309) = 40310784 * k + 3729928 := by
    unfold C
    simp [show (13436928 * k + 1243309) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3729928) = 20155392 * k + 1864964 := by
    unfold C
    simp [show (40310784 * k + 3729928) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1864964) = 10077696 * k + 932482 := by
    unfold C
    simp [show (20155392 * k + 1864964) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 932482) = 5038848 * k + 466241 := by
    unfold C
    simp [show (10077696 * k + 932482) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 466241) = 15116544 * k + 1398724 := by
    unfold C
    simp [show (5038848 * k + 466241) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1398724) = 7558272 * k + 699362 := by
    unfold C
    simp [show (15116544 * k + 1398724) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 699362) = 3779136 * k + 349681 := by
    unfold C
    simp [show (7558272 * k + 699362) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 349681) = 11337408 * k + 1049044 := by
    unfold C
    simp [show (3779136 * k + 349681) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1049044) = 5668704 * k + 524522 := by
    unfold C
    simp [show (11337408 * k + 1049044) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 524522) = 2834352 * k + 262261 := by
    unfold C
    simp [show (5668704 * k + 524522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 262261) = 8503056 * k + 786784 := by
    unfold C
    simp [show (2834352 * k + 262261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 786784) = 4251528 * k + 393392 := by
    unfold C
    simp [show (8503056 * k + 786784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 393392) = 2125764 * k + 196696 := by
    unfold C
    simp [show (4251528 * k + 393392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 196696) = 1062882 * k + 98348 := by
    unfold C
    simp [show (2125764 * k + 196696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 98348) = 531441 * k + 49174 := by
    unfold C
    simp [show (1062882 * k + 98348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 97023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 97023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_97563 : ∀ k : Nat,
    iterate (1048576 * k + 97563) 32 = 531441 * k + 49448 ∧
      531441 * k + 49448 < 1048576 * k + 97563 := by
  intro k
  have h1 : C (1048576 * k + 97563) = 3145728 * k + 292690 := by
    unfold C
    simp [show (1048576 * k + 97563) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 292690) = 1572864 * k + 146345 := by
    unfold C
    simp [show (3145728 * k + 292690) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 146345) = 4718592 * k + 439036 := by
    unfold C
    simp [show (1572864 * k + 146345) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 439036) = 2359296 * k + 219518 := by
    unfold C
    simp [show (4718592 * k + 439036) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 219518) = 1179648 * k + 109759 := by
    unfold C
    simp [show (2359296 * k + 219518) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 109759) = 3538944 * k + 329278 := by
    unfold C
    simp [show (1179648 * k + 109759) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 329278) = 1769472 * k + 164639 := by
    unfold C
    simp [show (3538944 * k + 329278) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 164639) = 5308416 * k + 493918 := by
    unfold C
    simp [show (1769472 * k + 164639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 493918) = 2654208 * k + 246959 := by
    unfold C
    simp [show (5308416 * k + 493918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 246959) = 7962624 * k + 740878 := by
    unfold C
    simp [show (2654208 * k + 246959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 740878) = 3981312 * k + 370439 := by
    unfold C
    simp [show (7962624 * k + 740878) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 370439) = 11943936 * k + 1111318 := by
    unfold C
    simp [show (3981312 * k + 370439) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1111318) = 5971968 * k + 555659 := by
    unfold C
    simp [show (11943936 * k + 1111318) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 555659) = 17915904 * k + 1666978 := by
    unfold C
    simp [show (5971968 * k + 555659) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1666978) = 8957952 * k + 833489 := by
    unfold C
    simp [show (17915904 * k + 1666978) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 833489) = 26873856 * k + 2500468 := by
    unfold C
    simp [show (8957952 * k + 833489) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2500468) = 13436928 * k + 1250234 := by
    unfold C
    simp [show (26873856 * k + 2500468) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1250234) = 6718464 * k + 625117 := by
    unfold C
    simp [show (13436928 * k + 1250234) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 625117) = 20155392 * k + 1875352 := by
    unfold C
    simp [show (6718464 * k + 625117) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1875352) = 10077696 * k + 937676 := by
    unfold C
    simp [show (20155392 * k + 1875352) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 937676) = 5038848 * k + 468838 := by
    unfold C
    simp [show (10077696 * k + 937676) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 468838) = 2519424 * k + 234419 := by
    unfold C
    simp [show (5038848 * k + 468838) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 234419) = 7558272 * k + 703258 := by
    unfold C
    simp [show (2519424 * k + 234419) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 703258) = 3779136 * k + 351629 := by
    unfold C
    simp [show (7558272 * k + 703258) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 351629) = 11337408 * k + 1054888 := by
    unfold C
    simp [show (3779136 * k + 351629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1054888) = 5668704 * k + 527444 := by
    unfold C
    simp [show (11337408 * k + 1054888) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 527444) = 2834352 * k + 263722 := by
    unfold C
    simp [show (5668704 * k + 527444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 263722) = 1417176 * k + 131861 := by
    unfold C
    simp [show (2834352 * k + 263722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 131861) = 4251528 * k + 395584 := by
    unfold C
    simp [show (1417176 * k + 131861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 395584) = 2125764 * k + 197792 := by
    unfold C
    simp [show (4251528 * k + 395584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 197792) = 1062882 * k + 98896 := by
    unfold C
    simp [show (2125764 * k + 197792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 98896) = 531441 * k + 49448 := by
    unfold C
    simp [show (1062882 * k + 98896) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 97563) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 97563)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_97919 : ∀ k : Nat,
    iterate (1048576 * k + 97919) 32 = 531441 * k + 49628 ∧
      531441 * k + 49628 < 1048576 * k + 97919 := by
  intro k
  have h1 : C (1048576 * k + 97919) = 3145728 * k + 293758 := by
    unfold C
    simp [show (1048576 * k + 97919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 293758) = 1572864 * k + 146879 := by
    unfold C
    simp [show (3145728 * k + 293758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 146879) = 4718592 * k + 440638 := by
    unfold C
    simp [show (1572864 * k + 146879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 440638) = 2359296 * k + 220319 := by
    unfold C
    simp [show (4718592 * k + 440638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 220319) = 7077888 * k + 660958 := by
    unfold C
    simp [show (2359296 * k + 220319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 660958) = 3538944 * k + 330479 := by
    unfold C
    simp [show (7077888 * k + 660958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 330479) = 10616832 * k + 991438 := by
    unfold C
    simp [show (3538944 * k + 330479) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 991438) = 5308416 * k + 495719 := by
    unfold C
    simp [show (10616832 * k + 991438) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 495719) = 15925248 * k + 1487158 := by
    unfold C
    simp [show (5308416 * k + 495719) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1487158) = 7962624 * k + 743579 := by
    unfold C
    simp [show (15925248 * k + 1487158) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 743579) = 23887872 * k + 2230738 := by
    unfold C
    simp [show (7962624 * k + 743579) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2230738) = 11943936 * k + 1115369 := by
    unfold C
    simp [show (23887872 * k + 2230738) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1115369) = 35831808 * k + 3346108 := by
    unfold C
    simp [show (11943936 * k + 1115369) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3346108) = 17915904 * k + 1673054 := by
    unfold C
    simp [show (35831808 * k + 3346108) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1673054) = 8957952 * k + 836527 := by
    unfold C
    simp [show (17915904 * k + 1673054) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 836527) = 26873856 * k + 2509582 := by
    unfold C
    simp [show (8957952 * k + 836527) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2509582) = 13436928 * k + 1254791 := by
    unfold C
    simp [show (26873856 * k + 2509582) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1254791) = 40310784 * k + 3764374 := by
    unfold C
    simp [show (13436928 * k + 1254791) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3764374) = 20155392 * k + 1882187 := by
    unfold C
    simp [show (40310784 * k + 3764374) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1882187) = 60466176 * k + 5646562 := by
    unfold C
    simp [show (20155392 * k + 1882187) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 5646562) = 30233088 * k + 2823281 := by
    unfold C
    simp [show (60466176 * k + 5646562) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2823281) = 90699264 * k + 8469844 := by
    unfold C
    simp [show (30233088 * k + 2823281) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 8469844) = 45349632 * k + 4234922 := by
    unfold C
    simp [show (90699264 * k + 8469844) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 4234922) = 22674816 * k + 2117461 := by
    unfold C
    simp [show (45349632 * k + 4234922) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2117461) = 68024448 * k + 6352384 := by
    unfold C
    simp [show (22674816 * k + 2117461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 6352384) = 34012224 * k + 3176192 := by
    unfold C
    simp [show (68024448 * k + 6352384) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 3176192) = 17006112 * k + 1588096 := by
    unfold C
    simp [show (34012224 * k + 3176192) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1588096) = 8503056 * k + 794048 := by
    unfold C
    simp [show (17006112 * k + 1588096) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 794048) = 4251528 * k + 397024 := by
    unfold C
    simp [show (8503056 * k + 794048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 397024) = 2125764 * k + 198512 := by
    unfold C
    simp [show (4251528 * k + 397024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 198512) = 1062882 * k + 99256 := by
    unfold C
    simp [show (2125764 * k + 198512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 99256) = 531441 * k + 49628 := by
    unfold C
    simp [show (1062882 * k + 99256) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 97919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 97919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard014
