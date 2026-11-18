import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard056

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_439263 : ∀ k : Nat,
    iterate (1048576 * k + 439263) 32 = 531441 * k + 222629 ∧
      531441 * k + 222629 < 1048576 * k + 439263 := by
  intro k
  have h1 : C (1048576 * k + 439263) = 3145728 * k + 1317790 := by
    unfold C
    simp [show (1048576 * k + 439263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1317790) = 1572864 * k + 658895 := by
    unfold C
    simp [show (3145728 * k + 1317790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 658895) = 4718592 * k + 1976686 := by
    unfold C
    simp [show (1572864 * k + 658895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1976686) = 2359296 * k + 988343 := by
    unfold C
    simp [show (4718592 * k + 1976686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 988343) = 7077888 * k + 2965030 := by
    unfold C
    simp [show (2359296 * k + 988343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2965030) = 3538944 * k + 1482515 := by
    unfold C
    simp [show (7077888 * k + 2965030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1482515) = 10616832 * k + 4447546 := by
    unfold C
    simp [show (3538944 * k + 1482515) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4447546) = 5308416 * k + 2223773 := by
    unfold C
    simp [show (10616832 * k + 4447546) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2223773) = 15925248 * k + 6671320 := by
    unfold C
    simp [show (5308416 * k + 2223773) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6671320) = 7962624 * k + 3335660 := by
    unfold C
    simp [show (15925248 * k + 6671320) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3335660) = 3981312 * k + 1667830 := by
    unfold C
    simp [show (7962624 * k + 3335660) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1667830) = 1990656 * k + 833915 := by
    unfold C
    simp [show (3981312 * k + 1667830) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 833915) = 5971968 * k + 2501746 := by
    unfold C
    simp [show (1990656 * k + 833915) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2501746) = 2985984 * k + 1250873 := by
    unfold C
    simp [show (5971968 * k + 2501746) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1250873) = 8957952 * k + 3752620 := by
    unfold C
    simp [show (2985984 * k + 1250873) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3752620) = 4478976 * k + 1876310 := by
    unfold C
    simp [show (8957952 * k + 3752620) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1876310) = 2239488 * k + 938155 := by
    unfold C
    simp [show (4478976 * k + 1876310) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 938155) = 6718464 * k + 2814466 := by
    unfold C
    simp [show (2239488 * k + 938155) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2814466) = 3359232 * k + 1407233 := by
    unfold C
    simp [show (6718464 * k + 2814466) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1407233) = 10077696 * k + 4221700 := by
    unfold C
    simp [show (3359232 * k + 1407233) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4221700) = 5038848 * k + 2110850 := by
    unfold C
    simp [show (10077696 * k + 4221700) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2110850) = 2519424 * k + 1055425 := by
    unfold C
    simp [show (5038848 * k + 2110850) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1055425) = 7558272 * k + 3166276 := by
    unfold C
    simp [show (2519424 * k + 1055425) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3166276) = 3779136 * k + 1583138 := by
    unfold C
    simp [show (7558272 * k + 3166276) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1583138) = 1889568 * k + 791569 := by
    unfold C
    simp [show (3779136 * k + 1583138) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 791569) = 5668704 * k + 2374708 := by
    unfold C
    simp [show (1889568 * k + 791569) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2374708) = 2834352 * k + 1187354 := by
    unfold C
    simp [show (5668704 * k + 2374708) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1187354) = 1417176 * k + 593677 := by
    unfold C
    simp [show (2834352 * k + 1187354) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 593677) = 4251528 * k + 1781032 := by
    unfold C
    simp [show (1417176 * k + 593677) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1781032) = 2125764 * k + 890516 := by
    unfold C
    simp [show (4251528 * k + 1781032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 890516) = 1062882 * k + 445258 := by
    unfold C
    simp [show (2125764 * k + 890516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 445258) = 531441 * k + 222629 := by
    unfold C
    simp [show (1062882 * k + 445258) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 439263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 439263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_440063 : ∀ k : Nat,
    iterate (1048576 * k + 440063) 32 = 531441 * k + 223034 ∧
      531441 * k + 223034 < 1048576 * k + 440063 := by
  intro k
  have h1 : C (1048576 * k + 440063) = 3145728 * k + 1320190 := by
    unfold C
    simp [show (1048576 * k + 440063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1320190) = 1572864 * k + 660095 := by
    unfold C
    simp [show (3145728 * k + 1320190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 660095) = 4718592 * k + 1980286 := by
    unfold C
    simp [show (1572864 * k + 660095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1980286) = 2359296 * k + 990143 := by
    unfold C
    simp [show (4718592 * k + 1980286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 990143) = 7077888 * k + 2970430 := by
    unfold C
    simp [show (2359296 * k + 990143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2970430) = 3538944 * k + 1485215 := by
    unfold C
    simp [show (7077888 * k + 2970430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1485215) = 10616832 * k + 4455646 := by
    unfold C
    simp [show (3538944 * k + 1485215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4455646) = 5308416 * k + 2227823 := by
    unfold C
    simp [show (10616832 * k + 4455646) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2227823) = 15925248 * k + 6683470 := by
    unfold C
    simp [show (5308416 * k + 2227823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6683470) = 7962624 * k + 3341735 := by
    unfold C
    simp [show (15925248 * k + 6683470) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3341735) = 23887872 * k + 10025206 := by
    unfold C
    simp [show (7962624 * k + 3341735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10025206) = 11943936 * k + 5012603 := by
    unfold C
    simp [show (23887872 * k + 10025206) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5012603) = 35831808 * k + 15037810 := by
    unfold C
    simp [show (11943936 * k + 5012603) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15037810) = 17915904 * k + 7518905 := by
    unfold C
    simp [show (35831808 * k + 15037810) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7518905) = 53747712 * k + 22556716 := by
    unfold C
    simp [show (17915904 * k + 7518905) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 22556716) = 26873856 * k + 11278358 := by
    unfold C
    simp [show (53747712 * k + 22556716) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11278358) = 13436928 * k + 5639179 := by
    unfold C
    simp [show (26873856 * k + 11278358) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5639179) = 40310784 * k + 16917538 := by
    unfold C
    simp [show (13436928 * k + 5639179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16917538) = 20155392 * k + 8458769 := by
    unfold C
    simp [show (40310784 * k + 16917538) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8458769) = 60466176 * k + 25376308 := by
    unfold C
    simp [show (20155392 * k + 8458769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 25376308) = 30233088 * k + 12688154 := by
    unfold C
    simp [show (60466176 * k + 25376308) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12688154) = 15116544 * k + 6344077 := by
    unfold C
    simp [show (30233088 * k + 12688154) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6344077) = 45349632 * k + 19032232 := by
    unfold C
    simp [show (15116544 * k + 6344077) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19032232) = 22674816 * k + 9516116 := by
    unfold C
    simp [show (45349632 * k + 19032232) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9516116) = 11337408 * k + 4758058 := by
    unfold C
    simp [show (22674816 * k + 9516116) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4758058) = 5668704 * k + 2379029 := by
    unfold C
    simp [show (11337408 * k + 4758058) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2379029) = 17006112 * k + 7137088 := by
    unfold C
    simp [show (5668704 * k + 2379029) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7137088) = 8503056 * k + 3568544 := by
    unfold C
    simp [show (17006112 * k + 7137088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3568544) = 4251528 * k + 1784272 := by
    unfold C
    simp [show (8503056 * k + 3568544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1784272) = 2125764 * k + 892136 := by
    unfold C
    simp [show (4251528 * k + 1784272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 892136) = 1062882 * k + 446068 := by
    unfold C
    simp [show (2125764 * k + 892136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 446068) = 531441 * k + 223034 := by
    unfold C
    simp [show (1062882 * k + 446068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 440063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 440063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_440571 : ∀ k : Nat,
    iterate (1048576 * k + 440571) 32 = 531441 * k + 223292 ∧
      531441 * k + 223292 < 1048576 * k + 440571 := by
  intro k
  have h1 : C (1048576 * k + 440571) = 3145728 * k + 1321714 := by
    unfold C
    simp [show (1048576 * k + 440571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1321714) = 1572864 * k + 660857 := by
    unfold C
    simp [show (3145728 * k + 1321714) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 660857) = 4718592 * k + 1982572 := by
    unfold C
    simp [show (1572864 * k + 660857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1982572) = 2359296 * k + 991286 := by
    unfold C
    simp [show (4718592 * k + 1982572) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 991286) = 1179648 * k + 495643 := by
    unfold C
    simp [show (2359296 * k + 991286) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 495643) = 3538944 * k + 1486930 := by
    unfold C
    simp [show (1179648 * k + 495643) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1486930) = 1769472 * k + 743465 := by
    unfold C
    simp [show (3538944 * k + 1486930) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 743465) = 5308416 * k + 2230396 := by
    unfold C
    simp [show (1769472 * k + 743465) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2230396) = 2654208 * k + 1115198 := by
    unfold C
    simp [show (5308416 * k + 2230396) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1115198) = 1327104 * k + 557599 := by
    unfold C
    simp [show (2654208 * k + 1115198) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 557599) = 3981312 * k + 1672798 := by
    unfold C
    simp [show (1327104 * k + 557599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1672798) = 1990656 * k + 836399 := by
    unfold C
    simp [show (3981312 * k + 1672798) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 836399) = 5971968 * k + 2509198 := by
    unfold C
    simp [show (1990656 * k + 836399) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2509198) = 2985984 * k + 1254599 := by
    unfold C
    simp [show (5971968 * k + 2509198) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1254599) = 8957952 * k + 3763798 := by
    unfold C
    simp [show (2985984 * k + 1254599) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3763798) = 4478976 * k + 1881899 := by
    unfold C
    simp [show (8957952 * k + 3763798) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1881899) = 13436928 * k + 5645698 := by
    unfold C
    simp [show (4478976 * k + 1881899) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5645698) = 6718464 * k + 2822849 := by
    unfold C
    simp [show (13436928 * k + 5645698) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2822849) = 20155392 * k + 8468548 := by
    unfold C
    simp [show (6718464 * k + 2822849) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8468548) = 10077696 * k + 4234274 := by
    unfold C
    simp [show (20155392 * k + 8468548) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4234274) = 5038848 * k + 2117137 := by
    unfold C
    simp [show (10077696 * k + 4234274) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2117137) = 15116544 * k + 6351412 := by
    unfold C
    simp [show (5038848 * k + 2117137) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6351412) = 7558272 * k + 3175706 := by
    unfold C
    simp [show (15116544 * k + 6351412) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3175706) = 3779136 * k + 1587853 := by
    unfold C
    simp [show (7558272 * k + 3175706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1587853) = 11337408 * k + 4763560 := by
    unfold C
    simp [show (3779136 * k + 1587853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4763560) = 5668704 * k + 2381780 := by
    unfold C
    simp [show (11337408 * k + 4763560) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2381780) = 2834352 * k + 1190890 := by
    unfold C
    simp [show (5668704 * k + 2381780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1190890) = 1417176 * k + 595445 := by
    unfold C
    simp [show (2834352 * k + 1190890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 595445) = 4251528 * k + 1786336 := by
    unfold C
    simp [show (1417176 * k + 595445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1786336) = 2125764 * k + 893168 := by
    unfold C
    simp [show (4251528 * k + 1786336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 893168) = 1062882 * k + 446584 := by
    unfold C
    simp [show (2125764 * k + 893168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 446584) = 531441 * k + 223292 := by
    unfold C
    simp [show (1062882 * k + 446584) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 440571) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 440571)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_441039 : ∀ k : Nat,
    iterate (1048576 * k + 441039) 32 = 531441 * k + 223529 ∧
      531441 * k + 223529 < 1048576 * k + 441039 := by
  intro k
  have h1 : C (1048576 * k + 441039) = 3145728 * k + 1323118 := by
    unfold C
    simp [show (1048576 * k + 441039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1323118) = 1572864 * k + 661559 := by
    unfold C
    simp [show (3145728 * k + 1323118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 661559) = 4718592 * k + 1984678 := by
    unfold C
    simp [show (1572864 * k + 661559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1984678) = 2359296 * k + 992339 := by
    unfold C
    simp [show (4718592 * k + 1984678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 992339) = 7077888 * k + 2977018 := by
    unfold C
    simp [show (2359296 * k + 992339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2977018) = 3538944 * k + 1488509 := by
    unfold C
    simp [show (7077888 * k + 2977018) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1488509) = 10616832 * k + 4465528 := by
    unfold C
    simp [show (3538944 * k + 1488509) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4465528) = 5308416 * k + 2232764 := by
    unfold C
    simp [show (10616832 * k + 4465528) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2232764) = 2654208 * k + 1116382 := by
    unfold C
    simp [show (5308416 * k + 2232764) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1116382) = 1327104 * k + 558191 := by
    unfold C
    simp [show (2654208 * k + 1116382) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 558191) = 3981312 * k + 1674574 := by
    unfold C
    simp [show (1327104 * k + 558191) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1674574) = 1990656 * k + 837287 := by
    unfold C
    simp [show (3981312 * k + 1674574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 837287) = 5971968 * k + 2511862 := by
    unfold C
    simp [show (1990656 * k + 837287) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2511862) = 2985984 * k + 1255931 := by
    unfold C
    simp [show (5971968 * k + 2511862) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1255931) = 8957952 * k + 3767794 := by
    unfold C
    simp [show (2985984 * k + 1255931) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3767794) = 4478976 * k + 1883897 := by
    unfold C
    simp [show (8957952 * k + 3767794) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1883897) = 13436928 * k + 5651692 := by
    unfold C
    simp [show (4478976 * k + 1883897) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5651692) = 6718464 * k + 2825846 := by
    unfold C
    simp [show (13436928 * k + 5651692) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2825846) = 3359232 * k + 1412923 := by
    unfold C
    simp [show (6718464 * k + 2825846) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1412923) = 10077696 * k + 4238770 := by
    unfold C
    simp [show (3359232 * k + 1412923) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4238770) = 5038848 * k + 2119385 := by
    unfold C
    simp [show (10077696 * k + 4238770) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2119385) = 15116544 * k + 6358156 := by
    unfold C
    simp [show (5038848 * k + 2119385) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6358156) = 7558272 * k + 3179078 := by
    unfold C
    simp [show (15116544 * k + 6358156) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3179078) = 3779136 * k + 1589539 := by
    unfold C
    simp [show (7558272 * k + 3179078) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1589539) = 11337408 * k + 4768618 := by
    unfold C
    simp [show (3779136 * k + 1589539) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4768618) = 5668704 * k + 2384309 := by
    unfold C
    simp [show (11337408 * k + 4768618) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2384309) = 17006112 * k + 7152928 := by
    unfold C
    simp [show (5668704 * k + 2384309) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7152928) = 8503056 * k + 3576464 := by
    unfold C
    simp [show (17006112 * k + 7152928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3576464) = 4251528 * k + 1788232 := by
    unfold C
    simp [show (8503056 * k + 3576464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1788232) = 2125764 * k + 894116 := by
    unfold C
    simp [show (4251528 * k + 1788232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 894116) = 1062882 * k + 447058 := by
    unfold C
    simp [show (2125764 * k + 894116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 447058) = 531441 * k + 223529 := by
    unfold C
    simp [show (1062882 * k + 447058) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 441039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 441039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_441063 : ∀ k : Nat,
    iterate (1048576 * k + 441063) 32 = 531441 * k + 223541 ∧
      531441 * k + 223541 < 1048576 * k + 441063 := by
  intro k
  have h1 : C (1048576 * k + 441063) = 3145728 * k + 1323190 := by
    unfold C
    simp [show (1048576 * k + 441063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1323190) = 1572864 * k + 661595 := by
    unfold C
    simp [show (3145728 * k + 1323190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 661595) = 4718592 * k + 1984786 := by
    unfold C
    simp [show (1572864 * k + 661595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1984786) = 2359296 * k + 992393 := by
    unfold C
    simp [show (4718592 * k + 1984786) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 992393) = 7077888 * k + 2977180 := by
    unfold C
    simp [show (2359296 * k + 992393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2977180) = 3538944 * k + 1488590 := by
    unfold C
    simp [show (7077888 * k + 2977180) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1488590) = 1769472 * k + 744295 := by
    unfold C
    simp [show (3538944 * k + 1488590) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 744295) = 5308416 * k + 2232886 := by
    unfold C
    simp [show (1769472 * k + 744295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2232886) = 2654208 * k + 1116443 := by
    unfold C
    simp [show (5308416 * k + 2232886) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1116443) = 7962624 * k + 3349330 := by
    unfold C
    simp [show (2654208 * k + 1116443) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3349330) = 3981312 * k + 1674665 := by
    unfold C
    simp [show (7962624 * k + 3349330) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1674665) = 11943936 * k + 5023996 := by
    unfold C
    simp [show (3981312 * k + 1674665) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5023996) = 5971968 * k + 2511998 := by
    unfold C
    simp [show (11943936 * k + 5023996) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2511998) = 2985984 * k + 1255999 := by
    unfold C
    simp [show (5971968 * k + 2511998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1255999) = 8957952 * k + 3767998 := by
    unfold C
    simp [show (2985984 * k + 1255999) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3767998) = 4478976 * k + 1883999 := by
    unfold C
    simp [show (8957952 * k + 3767998) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1883999) = 13436928 * k + 5651998 := by
    unfold C
    simp [show (4478976 * k + 1883999) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5651998) = 6718464 * k + 2825999 := by
    unfold C
    simp [show (13436928 * k + 5651998) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2825999) = 20155392 * k + 8477998 := by
    unfold C
    simp [show (6718464 * k + 2825999) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8477998) = 10077696 * k + 4238999 := by
    unfold C
    simp [show (20155392 * k + 8477998) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4238999) = 30233088 * k + 12716998 := by
    unfold C
    simp [show (10077696 * k + 4238999) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12716998) = 15116544 * k + 6358499 := by
    unfold C
    simp [show (30233088 * k + 12716998) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6358499) = 45349632 * k + 19075498 := by
    unfold C
    simp [show (15116544 * k + 6358499) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19075498) = 22674816 * k + 9537749 := by
    unfold C
    simp [show (45349632 * k + 19075498) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9537749) = 68024448 * k + 28613248 := by
    unfold C
    simp [show (22674816 * k + 9537749) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 28613248) = 34012224 * k + 14306624 := by
    unfold C
    simp [show (68024448 * k + 28613248) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 14306624) = 17006112 * k + 7153312 := by
    unfold C
    simp [show (34012224 * k + 14306624) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7153312) = 8503056 * k + 3576656 := by
    unfold C
    simp [show (17006112 * k + 7153312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3576656) = 4251528 * k + 1788328 := by
    unfold C
    simp [show (8503056 * k + 3576656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1788328) = 2125764 * k + 894164 := by
    unfold C
    simp [show (4251528 * k + 1788328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 894164) = 1062882 * k + 447082 := by
    unfold C
    simp [show (2125764 * k + 894164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 447082) = 531441 * k + 223541 := by
    unfold C
    simp [show (1062882 * k + 447082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 441063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 441063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_441191 : ∀ k : Nat,
    iterate (1048576 * k + 441191) 32 = 531441 * k + 223606 ∧
      531441 * k + 223606 < 1048576 * k + 441191 := by
  intro k
  have h1 : C (1048576 * k + 441191) = 3145728 * k + 1323574 := by
    unfold C
    simp [show (1048576 * k + 441191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1323574) = 1572864 * k + 661787 := by
    unfold C
    simp [show (3145728 * k + 1323574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 661787) = 4718592 * k + 1985362 := by
    unfold C
    simp [show (1572864 * k + 661787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1985362) = 2359296 * k + 992681 := by
    unfold C
    simp [show (4718592 * k + 1985362) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 992681) = 7077888 * k + 2978044 := by
    unfold C
    simp [show (2359296 * k + 992681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2978044) = 3538944 * k + 1489022 := by
    unfold C
    simp [show (7077888 * k + 2978044) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1489022) = 1769472 * k + 744511 := by
    unfold C
    simp [show (3538944 * k + 1489022) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 744511) = 5308416 * k + 2233534 := by
    unfold C
    simp [show (1769472 * k + 744511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2233534) = 2654208 * k + 1116767 := by
    unfold C
    simp [show (5308416 * k + 2233534) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1116767) = 7962624 * k + 3350302 := by
    unfold C
    simp [show (2654208 * k + 1116767) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3350302) = 3981312 * k + 1675151 := by
    unfold C
    simp [show (7962624 * k + 3350302) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1675151) = 11943936 * k + 5025454 := by
    unfold C
    simp [show (3981312 * k + 1675151) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5025454) = 5971968 * k + 2512727 := by
    unfold C
    simp [show (11943936 * k + 5025454) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2512727) = 17915904 * k + 7538182 := by
    unfold C
    simp [show (5971968 * k + 2512727) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7538182) = 8957952 * k + 3769091 := by
    unfold C
    simp [show (17915904 * k + 7538182) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3769091) = 26873856 * k + 11307274 := by
    unfold C
    simp [show (8957952 * k + 3769091) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11307274) = 13436928 * k + 5653637 := by
    unfold C
    simp [show (26873856 * k + 11307274) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5653637) = 40310784 * k + 16960912 := by
    unfold C
    simp [show (13436928 * k + 5653637) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16960912) = 20155392 * k + 8480456 := by
    unfold C
    simp [show (40310784 * k + 16960912) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8480456) = 10077696 * k + 4240228 := by
    unfold C
    simp [show (20155392 * k + 8480456) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4240228) = 5038848 * k + 2120114 := by
    unfold C
    simp [show (10077696 * k + 4240228) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2120114) = 2519424 * k + 1060057 := by
    unfold C
    simp [show (5038848 * k + 2120114) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1060057) = 7558272 * k + 3180172 := by
    unfold C
    simp [show (2519424 * k + 1060057) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3180172) = 3779136 * k + 1590086 := by
    unfold C
    simp [show (7558272 * k + 3180172) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1590086) = 1889568 * k + 795043 := by
    unfold C
    simp [show (3779136 * k + 1590086) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 795043) = 5668704 * k + 2385130 := by
    unfold C
    simp [show (1889568 * k + 795043) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2385130) = 2834352 * k + 1192565 := by
    unfold C
    simp [show (5668704 * k + 2385130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1192565) = 8503056 * k + 3577696 := by
    unfold C
    simp [show (2834352 * k + 1192565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3577696) = 4251528 * k + 1788848 := by
    unfold C
    simp [show (8503056 * k + 3577696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1788848) = 2125764 * k + 894424 := by
    unfold C
    simp [show (4251528 * k + 1788848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 894424) = 1062882 * k + 447212 := by
    unfold C
    simp [show (2125764 * k + 894424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 447212) = 531441 * k + 223606 := by
    unfold C
    simp [show (1062882 * k + 447212) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 441191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 441191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_442063 : ∀ k : Nat,
    iterate (1048576 * k + 442063) 32 = 531441 * k + 224048 ∧
      531441 * k + 224048 < 1048576 * k + 442063 := by
  intro k
  have h1 : C (1048576 * k + 442063) = 3145728 * k + 1326190 := by
    unfold C
    simp [show (1048576 * k + 442063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1326190) = 1572864 * k + 663095 := by
    unfold C
    simp [show (3145728 * k + 1326190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 663095) = 4718592 * k + 1989286 := by
    unfold C
    simp [show (1572864 * k + 663095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1989286) = 2359296 * k + 994643 := by
    unfold C
    simp [show (4718592 * k + 1989286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 994643) = 7077888 * k + 2983930 := by
    unfold C
    simp [show (2359296 * k + 994643) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2983930) = 3538944 * k + 1491965 := by
    unfold C
    simp [show (7077888 * k + 2983930) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1491965) = 10616832 * k + 4475896 := by
    unfold C
    simp [show (3538944 * k + 1491965) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4475896) = 5308416 * k + 2237948 := by
    unfold C
    simp [show (10616832 * k + 4475896) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2237948) = 2654208 * k + 1118974 := by
    unfold C
    simp [show (5308416 * k + 2237948) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1118974) = 1327104 * k + 559487 := by
    unfold C
    simp [show (2654208 * k + 1118974) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 559487) = 3981312 * k + 1678462 := by
    unfold C
    simp [show (1327104 * k + 559487) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1678462) = 1990656 * k + 839231 := by
    unfold C
    simp [show (3981312 * k + 1678462) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 839231) = 5971968 * k + 2517694 := by
    unfold C
    simp [show (1990656 * k + 839231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2517694) = 2985984 * k + 1258847 := by
    unfold C
    simp [show (5971968 * k + 2517694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1258847) = 8957952 * k + 3776542 := by
    unfold C
    simp [show (2985984 * k + 1258847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3776542) = 4478976 * k + 1888271 := by
    unfold C
    simp [show (8957952 * k + 3776542) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1888271) = 13436928 * k + 5664814 := by
    unfold C
    simp [show (4478976 * k + 1888271) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5664814) = 6718464 * k + 2832407 := by
    unfold C
    simp [show (13436928 * k + 5664814) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2832407) = 20155392 * k + 8497222 := by
    unfold C
    simp [show (6718464 * k + 2832407) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8497222) = 10077696 * k + 4248611 := by
    unfold C
    simp [show (20155392 * k + 8497222) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4248611) = 30233088 * k + 12745834 := by
    unfold C
    simp [show (10077696 * k + 4248611) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12745834) = 15116544 * k + 6372917 := by
    unfold C
    simp [show (30233088 * k + 12745834) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6372917) = 45349632 * k + 19118752 := by
    unfold C
    simp [show (15116544 * k + 6372917) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19118752) = 22674816 * k + 9559376 := by
    unfold C
    simp [show (45349632 * k + 19118752) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9559376) = 11337408 * k + 4779688 := by
    unfold C
    simp [show (22674816 * k + 9559376) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4779688) = 5668704 * k + 2389844 := by
    unfold C
    simp [show (11337408 * k + 4779688) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2389844) = 2834352 * k + 1194922 := by
    unfold C
    simp [show (5668704 * k + 2389844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1194922) = 1417176 * k + 597461 := by
    unfold C
    simp [show (2834352 * k + 1194922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 597461) = 4251528 * k + 1792384 := by
    unfold C
    simp [show (1417176 * k + 597461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1792384) = 2125764 * k + 896192 := by
    unfold C
    simp [show (4251528 * k + 1792384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 896192) = 1062882 * k + 448096 := by
    unfold C
    simp [show (2125764 * k + 896192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 448096) = 531441 * k + 224048 := by
    unfold C
    simp [show (1062882 * k + 448096) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 442063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 442063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_442175 : ∀ k : Nat,
    iterate (1048576 * k + 442175) 32 = 531441 * k + 224105 ∧
      531441 * k + 224105 < 1048576 * k + 442175 := by
  intro k
  have h1 : C (1048576 * k + 442175) = 3145728 * k + 1326526 := by
    unfold C
    simp [show (1048576 * k + 442175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1326526) = 1572864 * k + 663263 := by
    unfold C
    simp [show (3145728 * k + 1326526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 663263) = 4718592 * k + 1989790 := by
    unfold C
    simp [show (1572864 * k + 663263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1989790) = 2359296 * k + 994895 := by
    unfold C
    simp [show (4718592 * k + 1989790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 994895) = 7077888 * k + 2984686 := by
    unfold C
    simp [show (2359296 * k + 994895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2984686) = 3538944 * k + 1492343 := by
    unfold C
    simp [show (7077888 * k + 2984686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1492343) = 10616832 * k + 4477030 := by
    unfold C
    simp [show (3538944 * k + 1492343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4477030) = 5308416 * k + 2238515 := by
    unfold C
    simp [show (10616832 * k + 4477030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2238515) = 15925248 * k + 6715546 := by
    unfold C
    simp [show (5308416 * k + 2238515) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6715546) = 7962624 * k + 3357773 := by
    unfold C
    simp [show (15925248 * k + 6715546) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3357773) = 23887872 * k + 10073320 := by
    unfold C
    simp [show (7962624 * k + 3357773) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10073320) = 11943936 * k + 5036660 := by
    unfold C
    simp [show (23887872 * k + 10073320) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5036660) = 5971968 * k + 2518330 := by
    unfold C
    simp [show (11943936 * k + 5036660) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2518330) = 2985984 * k + 1259165 := by
    unfold C
    simp [show (5971968 * k + 2518330) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1259165) = 8957952 * k + 3777496 := by
    unfold C
    simp [show (2985984 * k + 1259165) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3777496) = 4478976 * k + 1888748 := by
    unfold C
    simp [show (8957952 * k + 3777496) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1888748) = 2239488 * k + 944374 := by
    unfold C
    simp [show (4478976 * k + 1888748) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 944374) = 1119744 * k + 472187 := by
    unfold C
    simp [show (2239488 * k + 944374) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 472187) = 3359232 * k + 1416562 := by
    unfold C
    simp [show (1119744 * k + 472187) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1416562) = 1679616 * k + 708281 := by
    unfold C
    simp [show (3359232 * k + 1416562) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 708281) = 5038848 * k + 2124844 := by
    unfold C
    simp [show (1679616 * k + 708281) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2124844) = 2519424 * k + 1062422 := by
    unfold C
    simp [show (5038848 * k + 2124844) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1062422) = 1259712 * k + 531211 := by
    unfold C
    simp [show (2519424 * k + 1062422) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 531211) = 3779136 * k + 1593634 := by
    unfold C
    simp [show (1259712 * k + 531211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1593634) = 1889568 * k + 796817 := by
    unfold C
    simp [show (3779136 * k + 1593634) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 796817) = 5668704 * k + 2390452 := by
    unfold C
    simp [show (1889568 * k + 796817) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2390452) = 2834352 * k + 1195226 := by
    unfold C
    simp [show (5668704 * k + 2390452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1195226) = 1417176 * k + 597613 := by
    unfold C
    simp [show (2834352 * k + 1195226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 597613) = 4251528 * k + 1792840 := by
    unfold C
    simp [show (1417176 * k + 597613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1792840) = 2125764 * k + 896420 := by
    unfold C
    simp [show (4251528 * k + 1792840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 896420) = 1062882 * k + 448210 := by
    unfold C
    simp [show (2125764 * k + 896420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 448210) = 531441 * k + 224105 := by
    unfold C
    simp [show (1062882 * k + 448210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 442175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 442175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_442495 : ∀ k : Nat,
    iterate (1048576 * k + 442495) 32 = 531441 * k + 224267 ∧
      531441 * k + 224267 < 1048576 * k + 442495 := by
  intro k
  have h1 : C (1048576 * k + 442495) = 3145728 * k + 1327486 := by
    unfold C
    simp [show (1048576 * k + 442495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1327486) = 1572864 * k + 663743 := by
    unfold C
    simp [show (3145728 * k + 1327486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 663743) = 4718592 * k + 1991230 := by
    unfold C
    simp [show (1572864 * k + 663743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1991230) = 2359296 * k + 995615 := by
    unfold C
    simp [show (4718592 * k + 1991230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 995615) = 7077888 * k + 2986846 := by
    unfold C
    simp [show (2359296 * k + 995615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2986846) = 3538944 * k + 1493423 := by
    unfold C
    simp [show (7077888 * k + 2986846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1493423) = 10616832 * k + 4480270 := by
    unfold C
    simp [show (3538944 * k + 1493423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4480270) = 5308416 * k + 2240135 := by
    unfold C
    simp [show (10616832 * k + 4480270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2240135) = 15925248 * k + 6720406 := by
    unfold C
    simp [show (5308416 * k + 2240135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6720406) = 7962624 * k + 3360203 := by
    unfold C
    simp [show (15925248 * k + 6720406) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3360203) = 23887872 * k + 10080610 := by
    unfold C
    simp [show (7962624 * k + 3360203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10080610) = 11943936 * k + 5040305 := by
    unfold C
    simp [show (23887872 * k + 10080610) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5040305) = 35831808 * k + 15120916 := by
    unfold C
    simp [show (11943936 * k + 5040305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15120916) = 17915904 * k + 7560458 := by
    unfold C
    simp [show (35831808 * k + 15120916) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7560458) = 8957952 * k + 3780229 := by
    unfold C
    simp [show (17915904 * k + 7560458) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3780229) = 26873856 * k + 11340688 := by
    unfold C
    simp [show (8957952 * k + 3780229) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11340688) = 13436928 * k + 5670344 := by
    unfold C
    simp [show (26873856 * k + 11340688) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5670344) = 6718464 * k + 2835172 := by
    unfold C
    simp [show (13436928 * k + 5670344) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2835172) = 3359232 * k + 1417586 := by
    unfold C
    simp [show (6718464 * k + 2835172) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1417586) = 1679616 * k + 708793 := by
    unfold C
    simp [show (3359232 * k + 1417586) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 708793) = 5038848 * k + 2126380 := by
    unfold C
    simp [show (1679616 * k + 708793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2126380) = 2519424 * k + 1063190 := by
    unfold C
    simp [show (5038848 * k + 2126380) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1063190) = 1259712 * k + 531595 := by
    unfold C
    simp [show (2519424 * k + 1063190) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 531595) = 3779136 * k + 1594786 := by
    unfold C
    simp [show (1259712 * k + 531595) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1594786) = 1889568 * k + 797393 := by
    unfold C
    simp [show (3779136 * k + 1594786) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 797393) = 5668704 * k + 2392180 := by
    unfold C
    simp [show (1889568 * k + 797393) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2392180) = 2834352 * k + 1196090 := by
    unfold C
    simp [show (5668704 * k + 2392180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1196090) = 1417176 * k + 598045 := by
    unfold C
    simp [show (2834352 * k + 1196090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 598045) = 4251528 * k + 1794136 := by
    unfold C
    simp [show (1417176 * k + 598045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1794136) = 2125764 * k + 897068 := by
    unfold C
    simp [show (4251528 * k + 1794136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 897068) = 1062882 * k + 448534 := by
    unfold C
    simp [show (2125764 * k + 897068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 448534) = 531441 * k + 224267 := by
    unfold C
    simp [show (1062882 * k + 448534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 442495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 442495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_442619 : ∀ k : Nat,
    iterate (1048576 * k + 442619) 32 = 531441 * k + 224330 ∧
      531441 * k + 224330 < 1048576 * k + 442619 := by
  intro k
  have h1 : C (1048576 * k + 442619) = 3145728 * k + 1327858 := by
    unfold C
    simp [show (1048576 * k + 442619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1327858) = 1572864 * k + 663929 := by
    unfold C
    simp [show (3145728 * k + 1327858) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 663929) = 4718592 * k + 1991788 := by
    unfold C
    simp [show (1572864 * k + 663929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1991788) = 2359296 * k + 995894 := by
    unfold C
    simp [show (4718592 * k + 1991788) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 995894) = 1179648 * k + 497947 := by
    unfold C
    simp [show (2359296 * k + 995894) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 497947) = 3538944 * k + 1493842 := by
    unfold C
    simp [show (1179648 * k + 497947) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1493842) = 1769472 * k + 746921 := by
    unfold C
    simp [show (3538944 * k + 1493842) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 746921) = 5308416 * k + 2240764 := by
    unfold C
    simp [show (1769472 * k + 746921) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2240764) = 2654208 * k + 1120382 := by
    unfold C
    simp [show (5308416 * k + 2240764) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1120382) = 1327104 * k + 560191 := by
    unfold C
    simp [show (2654208 * k + 1120382) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 560191) = 3981312 * k + 1680574 := by
    unfold C
    simp [show (1327104 * k + 560191) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1680574) = 1990656 * k + 840287 := by
    unfold C
    simp [show (3981312 * k + 1680574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 840287) = 5971968 * k + 2520862 := by
    unfold C
    simp [show (1990656 * k + 840287) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2520862) = 2985984 * k + 1260431 := by
    unfold C
    simp [show (5971968 * k + 2520862) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1260431) = 8957952 * k + 3781294 := by
    unfold C
    simp [show (2985984 * k + 1260431) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3781294) = 4478976 * k + 1890647 := by
    unfold C
    simp [show (8957952 * k + 3781294) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1890647) = 13436928 * k + 5671942 := by
    unfold C
    simp [show (4478976 * k + 1890647) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5671942) = 6718464 * k + 2835971 := by
    unfold C
    simp [show (13436928 * k + 5671942) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2835971) = 20155392 * k + 8507914 := by
    unfold C
    simp [show (6718464 * k + 2835971) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8507914) = 10077696 * k + 4253957 := by
    unfold C
    simp [show (20155392 * k + 8507914) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4253957) = 30233088 * k + 12761872 := by
    unfold C
    simp [show (10077696 * k + 4253957) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12761872) = 15116544 * k + 6380936 := by
    unfold C
    simp [show (30233088 * k + 12761872) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6380936) = 7558272 * k + 3190468 := by
    unfold C
    simp [show (15116544 * k + 6380936) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3190468) = 3779136 * k + 1595234 := by
    unfold C
    simp [show (7558272 * k + 3190468) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1595234) = 1889568 * k + 797617 := by
    unfold C
    simp [show (3779136 * k + 1595234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 797617) = 5668704 * k + 2392852 := by
    unfold C
    simp [show (1889568 * k + 797617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2392852) = 2834352 * k + 1196426 := by
    unfold C
    simp [show (5668704 * k + 2392852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1196426) = 1417176 * k + 598213 := by
    unfold C
    simp [show (2834352 * k + 1196426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 598213) = 4251528 * k + 1794640 := by
    unfold C
    simp [show (1417176 * k + 598213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1794640) = 2125764 * k + 897320 := by
    unfold C
    simp [show (4251528 * k + 1794640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 897320) = 1062882 * k + 448660 := by
    unfold C
    simp [show (2125764 * k + 897320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 448660) = 531441 * k + 224330 := by
    unfold C
    simp [show (1062882 * k + 448660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 442619) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 442619)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_442815 : ∀ k : Nat,
    iterate (1048576 * k + 442815) 32 = 531441 * k + 224429 ∧
      531441 * k + 224429 < 1048576 * k + 442815 := by
  intro k
  have h1 : C (1048576 * k + 442815) = 3145728 * k + 1328446 := by
    unfold C
    simp [show (1048576 * k + 442815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1328446) = 1572864 * k + 664223 := by
    unfold C
    simp [show (3145728 * k + 1328446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 664223) = 4718592 * k + 1992670 := by
    unfold C
    simp [show (1572864 * k + 664223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1992670) = 2359296 * k + 996335 := by
    unfold C
    simp [show (4718592 * k + 1992670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 996335) = 7077888 * k + 2989006 := by
    unfold C
    simp [show (2359296 * k + 996335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2989006) = 3538944 * k + 1494503 := by
    unfold C
    simp [show (7077888 * k + 2989006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1494503) = 10616832 * k + 4483510 := by
    unfold C
    simp [show (3538944 * k + 1494503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4483510) = 5308416 * k + 2241755 := by
    unfold C
    simp [show (10616832 * k + 4483510) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2241755) = 15925248 * k + 6725266 := by
    unfold C
    simp [show (5308416 * k + 2241755) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6725266) = 7962624 * k + 3362633 := by
    unfold C
    simp [show (15925248 * k + 6725266) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3362633) = 23887872 * k + 10087900 := by
    unfold C
    simp [show (7962624 * k + 3362633) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10087900) = 11943936 * k + 5043950 := by
    unfold C
    simp [show (23887872 * k + 10087900) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5043950) = 5971968 * k + 2521975 := by
    unfold C
    simp [show (11943936 * k + 5043950) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2521975) = 17915904 * k + 7565926 := by
    unfold C
    simp [show (5971968 * k + 2521975) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7565926) = 8957952 * k + 3782963 := by
    unfold C
    simp [show (17915904 * k + 7565926) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3782963) = 26873856 * k + 11348890 := by
    unfold C
    simp [show (8957952 * k + 3782963) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11348890) = 13436928 * k + 5674445 := by
    unfold C
    simp [show (26873856 * k + 11348890) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5674445) = 40310784 * k + 17023336 := by
    unfold C
    simp [show (13436928 * k + 5674445) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17023336) = 20155392 * k + 8511668 := by
    unfold C
    simp [show (40310784 * k + 17023336) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8511668) = 10077696 * k + 4255834 := by
    unfold C
    simp [show (20155392 * k + 8511668) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4255834) = 5038848 * k + 2127917 := by
    unfold C
    simp [show (10077696 * k + 4255834) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2127917) = 15116544 * k + 6383752 := by
    unfold C
    simp [show (5038848 * k + 2127917) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6383752) = 7558272 * k + 3191876 := by
    unfold C
    simp [show (15116544 * k + 6383752) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3191876) = 3779136 * k + 1595938 := by
    unfold C
    simp [show (7558272 * k + 3191876) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1595938) = 1889568 * k + 797969 := by
    unfold C
    simp [show (3779136 * k + 1595938) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 797969) = 5668704 * k + 2393908 := by
    unfold C
    simp [show (1889568 * k + 797969) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2393908) = 2834352 * k + 1196954 := by
    unfold C
    simp [show (5668704 * k + 2393908) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1196954) = 1417176 * k + 598477 := by
    unfold C
    simp [show (2834352 * k + 1196954) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 598477) = 4251528 * k + 1795432 := by
    unfold C
    simp [show (1417176 * k + 598477) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1795432) = 2125764 * k + 897716 := by
    unfold C
    simp [show (4251528 * k + 1795432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 897716) = 1062882 * k + 448858 := by
    unfold C
    simp [show (2125764 * k + 897716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 448858) = 531441 * k + 224429 := by
    unfold C
    simp [show (1062882 * k + 448858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 442815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 442815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_443135 : ∀ k : Nat,
    iterate (1048576 * k + 443135) 32 = 531441 * k + 224591 ∧
      531441 * k + 224591 < 1048576 * k + 443135 := by
  intro k
  have h1 : C (1048576 * k + 443135) = 3145728 * k + 1329406 := by
    unfold C
    simp [show (1048576 * k + 443135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1329406) = 1572864 * k + 664703 := by
    unfold C
    simp [show (3145728 * k + 1329406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 664703) = 4718592 * k + 1994110 := by
    unfold C
    simp [show (1572864 * k + 664703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1994110) = 2359296 * k + 997055 := by
    unfold C
    simp [show (4718592 * k + 1994110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 997055) = 7077888 * k + 2991166 := by
    unfold C
    simp [show (2359296 * k + 997055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2991166) = 3538944 * k + 1495583 := by
    unfold C
    simp [show (7077888 * k + 2991166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1495583) = 10616832 * k + 4486750 := by
    unfold C
    simp [show (3538944 * k + 1495583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4486750) = 5308416 * k + 2243375 := by
    unfold C
    simp [show (10616832 * k + 4486750) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2243375) = 15925248 * k + 6730126 := by
    unfold C
    simp [show (5308416 * k + 2243375) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6730126) = 7962624 * k + 3365063 := by
    unfold C
    simp [show (15925248 * k + 6730126) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3365063) = 23887872 * k + 10095190 := by
    unfold C
    simp [show (7962624 * k + 3365063) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10095190) = 11943936 * k + 5047595 := by
    unfold C
    simp [show (23887872 * k + 10095190) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5047595) = 35831808 * k + 15142786 := by
    unfold C
    simp [show (11943936 * k + 5047595) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15142786) = 17915904 * k + 7571393 := by
    unfold C
    simp [show (35831808 * k + 15142786) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7571393) = 53747712 * k + 22714180 := by
    unfold C
    simp [show (17915904 * k + 7571393) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 22714180) = 26873856 * k + 11357090 := by
    unfold C
    simp [show (53747712 * k + 22714180) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11357090) = 13436928 * k + 5678545 := by
    unfold C
    simp [show (26873856 * k + 11357090) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5678545) = 40310784 * k + 17035636 := by
    unfold C
    simp [show (13436928 * k + 5678545) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17035636) = 20155392 * k + 8517818 := by
    unfold C
    simp [show (40310784 * k + 17035636) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8517818) = 10077696 * k + 4258909 := by
    unfold C
    simp [show (20155392 * k + 8517818) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4258909) = 30233088 * k + 12776728 := by
    unfold C
    simp [show (10077696 * k + 4258909) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12776728) = 15116544 * k + 6388364 := by
    unfold C
    simp [show (30233088 * k + 12776728) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6388364) = 7558272 * k + 3194182 := by
    unfold C
    simp [show (15116544 * k + 6388364) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3194182) = 3779136 * k + 1597091 := by
    unfold C
    simp [show (7558272 * k + 3194182) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1597091) = 11337408 * k + 4791274 := by
    unfold C
    simp [show (3779136 * k + 1597091) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4791274) = 5668704 * k + 2395637 := by
    unfold C
    simp [show (11337408 * k + 4791274) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2395637) = 17006112 * k + 7186912 := by
    unfold C
    simp [show (5668704 * k + 2395637) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7186912) = 8503056 * k + 3593456 := by
    unfold C
    simp [show (17006112 * k + 7186912) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3593456) = 4251528 * k + 1796728 := by
    unfold C
    simp [show (8503056 * k + 3593456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1796728) = 2125764 * k + 898364 := by
    unfold C
    simp [show (4251528 * k + 1796728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 898364) = 1062882 * k + 449182 := by
    unfold C
    simp [show (2125764 * k + 898364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 449182) = 531441 * k + 224591 := by
    unfold C
    simp [show (1062882 * k + 449182) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 443135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 443135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_443263 : ∀ k : Nat,
    iterate (1048576 * k + 443263) 32 = 531441 * k + 224656 ∧
      531441 * k + 224656 < 1048576 * k + 443263 := by
  intro k
  have h1 : C (1048576 * k + 443263) = 3145728 * k + 1329790 := by
    unfold C
    simp [show (1048576 * k + 443263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1329790) = 1572864 * k + 664895 := by
    unfold C
    simp [show (3145728 * k + 1329790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 664895) = 4718592 * k + 1994686 := by
    unfold C
    simp [show (1572864 * k + 664895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1994686) = 2359296 * k + 997343 := by
    unfold C
    simp [show (4718592 * k + 1994686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 997343) = 7077888 * k + 2992030 := by
    unfold C
    simp [show (2359296 * k + 997343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2992030) = 3538944 * k + 1496015 := by
    unfold C
    simp [show (7077888 * k + 2992030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1496015) = 10616832 * k + 4488046 := by
    unfold C
    simp [show (3538944 * k + 1496015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4488046) = 5308416 * k + 2244023 := by
    unfold C
    simp [show (10616832 * k + 4488046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2244023) = 15925248 * k + 6732070 := by
    unfold C
    simp [show (5308416 * k + 2244023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6732070) = 7962624 * k + 3366035 := by
    unfold C
    simp [show (15925248 * k + 6732070) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3366035) = 23887872 * k + 10098106 := by
    unfold C
    simp [show (7962624 * k + 3366035) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10098106) = 11943936 * k + 5049053 := by
    unfold C
    simp [show (23887872 * k + 10098106) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5049053) = 35831808 * k + 15147160 := by
    unfold C
    simp [show (11943936 * k + 5049053) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15147160) = 17915904 * k + 7573580 := by
    unfold C
    simp [show (35831808 * k + 15147160) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7573580) = 8957952 * k + 3786790 := by
    unfold C
    simp [show (17915904 * k + 7573580) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3786790) = 4478976 * k + 1893395 := by
    unfold C
    simp [show (8957952 * k + 3786790) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1893395) = 13436928 * k + 5680186 := by
    unfold C
    simp [show (4478976 * k + 1893395) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5680186) = 6718464 * k + 2840093 := by
    unfold C
    simp [show (13436928 * k + 5680186) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2840093) = 20155392 * k + 8520280 := by
    unfold C
    simp [show (6718464 * k + 2840093) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8520280) = 10077696 * k + 4260140 := by
    unfold C
    simp [show (20155392 * k + 8520280) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4260140) = 5038848 * k + 2130070 := by
    unfold C
    simp [show (10077696 * k + 4260140) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2130070) = 2519424 * k + 1065035 := by
    unfold C
    simp [show (5038848 * k + 2130070) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1065035) = 7558272 * k + 3195106 := by
    unfold C
    simp [show (2519424 * k + 1065035) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3195106) = 3779136 * k + 1597553 := by
    unfold C
    simp [show (7558272 * k + 3195106) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1597553) = 11337408 * k + 4792660 := by
    unfold C
    simp [show (3779136 * k + 1597553) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4792660) = 5668704 * k + 2396330 := by
    unfold C
    simp [show (11337408 * k + 4792660) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2396330) = 2834352 * k + 1198165 := by
    unfold C
    simp [show (5668704 * k + 2396330) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1198165) = 8503056 * k + 3594496 := by
    unfold C
    simp [show (2834352 * k + 1198165) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3594496) = 4251528 * k + 1797248 := by
    unfold C
    simp [show (8503056 * k + 3594496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1797248) = 2125764 * k + 898624 := by
    unfold C
    simp [show (4251528 * k + 1797248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 898624) = 1062882 * k + 449312 := by
    unfold C
    simp [show (2125764 * k + 898624) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 449312) = 531441 * k + 224656 := by
    unfold C
    simp [show (1062882 * k + 449312) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 443263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 443263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_443375 : ∀ k : Nat,
    iterate (1048576 * k + 443375) 32 = 531441 * k + 224713 ∧
      531441 * k + 224713 < 1048576 * k + 443375 := by
  intro k
  have h1 : C (1048576 * k + 443375) = 3145728 * k + 1330126 := by
    unfold C
    simp [show (1048576 * k + 443375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1330126) = 1572864 * k + 665063 := by
    unfold C
    simp [show (3145728 * k + 1330126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 665063) = 4718592 * k + 1995190 := by
    unfold C
    simp [show (1572864 * k + 665063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1995190) = 2359296 * k + 997595 := by
    unfold C
    simp [show (4718592 * k + 1995190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 997595) = 7077888 * k + 2992786 := by
    unfold C
    simp [show (2359296 * k + 997595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2992786) = 3538944 * k + 1496393 := by
    unfold C
    simp [show (7077888 * k + 2992786) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1496393) = 10616832 * k + 4489180 := by
    unfold C
    simp [show (3538944 * k + 1496393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4489180) = 5308416 * k + 2244590 := by
    unfold C
    simp [show (10616832 * k + 4489180) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2244590) = 2654208 * k + 1122295 := by
    unfold C
    simp [show (5308416 * k + 2244590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1122295) = 7962624 * k + 3366886 := by
    unfold C
    simp [show (2654208 * k + 1122295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3366886) = 3981312 * k + 1683443 := by
    unfold C
    simp [show (7962624 * k + 3366886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1683443) = 11943936 * k + 5050330 := by
    unfold C
    simp [show (3981312 * k + 1683443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5050330) = 5971968 * k + 2525165 := by
    unfold C
    simp [show (11943936 * k + 5050330) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2525165) = 17915904 * k + 7575496 := by
    unfold C
    simp [show (5971968 * k + 2525165) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7575496) = 8957952 * k + 3787748 := by
    unfold C
    simp [show (17915904 * k + 7575496) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3787748) = 4478976 * k + 1893874 := by
    unfold C
    simp [show (8957952 * k + 3787748) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1893874) = 2239488 * k + 946937 := by
    unfold C
    simp [show (4478976 * k + 1893874) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 946937) = 6718464 * k + 2840812 := by
    unfold C
    simp [show (2239488 * k + 946937) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2840812) = 3359232 * k + 1420406 := by
    unfold C
    simp [show (6718464 * k + 2840812) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1420406) = 1679616 * k + 710203 := by
    unfold C
    simp [show (3359232 * k + 1420406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 710203) = 5038848 * k + 2130610 := by
    unfold C
    simp [show (1679616 * k + 710203) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2130610) = 2519424 * k + 1065305 := by
    unfold C
    simp [show (5038848 * k + 2130610) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1065305) = 7558272 * k + 3195916 := by
    unfold C
    simp [show (2519424 * k + 1065305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3195916) = 3779136 * k + 1597958 := by
    unfold C
    simp [show (7558272 * k + 3195916) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1597958) = 1889568 * k + 798979 := by
    unfold C
    simp [show (3779136 * k + 1597958) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 798979) = 5668704 * k + 2396938 := by
    unfold C
    simp [show (1889568 * k + 798979) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2396938) = 2834352 * k + 1198469 := by
    unfold C
    simp [show (5668704 * k + 2396938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1198469) = 8503056 * k + 3595408 := by
    unfold C
    simp [show (2834352 * k + 1198469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3595408) = 4251528 * k + 1797704 := by
    unfold C
    simp [show (8503056 * k + 3595408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1797704) = 2125764 * k + 898852 := by
    unfold C
    simp [show (4251528 * k + 1797704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 898852) = 1062882 * k + 449426 := by
    unfold C
    simp [show (2125764 * k + 898852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 449426) = 531441 * k + 224713 := by
    unfold C
    simp [show (1062882 * k + 449426) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 443375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 443375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_443463 : ∀ k : Nat,
    iterate (1048576 * k + 443463) 32 = 531441 * k + 224758 ∧
      531441 * k + 224758 < 1048576 * k + 443463 := by
  intro k
  have h1 : C (1048576 * k + 443463) = 3145728 * k + 1330390 := by
    unfold C
    simp [show (1048576 * k + 443463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1330390) = 1572864 * k + 665195 := by
    unfold C
    simp [show (3145728 * k + 1330390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 665195) = 4718592 * k + 1995586 := by
    unfold C
    simp [show (1572864 * k + 665195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1995586) = 2359296 * k + 997793 := by
    unfold C
    simp [show (4718592 * k + 1995586) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 997793) = 7077888 * k + 2993380 := by
    unfold C
    simp [show (2359296 * k + 997793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2993380) = 3538944 * k + 1496690 := by
    unfold C
    simp [show (7077888 * k + 2993380) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1496690) = 1769472 * k + 748345 := by
    unfold C
    simp [show (3538944 * k + 1496690) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 748345) = 5308416 * k + 2245036 := by
    unfold C
    simp [show (1769472 * k + 748345) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2245036) = 2654208 * k + 1122518 := by
    unfold C
    simp [show (5308416 * k + 2245036) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1122518) = 1327104 * k + 561259 := by
    unfold C
    simp [show (2654208 * k + 1122518) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 561259) = 3981312 * k + 1683778 := by
    unfold C
    simp [show (1327104 * k + 561259) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1683778) = 1990656 * k + 841889 := by
    unfold C
    simp [show (3981312 * k + 1683778) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 841889) = 5971968 * k + 2525668 := by
    unfold C
    simp [show (1990656 * k + 841889) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2525668) = 2985984 * k + 1262834 := by
    unfold C
    simp [show (5971968 * k + 2525668) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1262834) = 1492992 * k + 631417 := by
    unfold C
    simp [show (2985984 * k + 1262834) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 631417) = 4478976 * k + 1894252 := by
    unfold C
    simp [show (1492992 * k + 631417) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1894252) = 2239488 * k + 947126 := by
    unfold C
    simp [show (4478976 * k + 1894252) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 947126) = 1119744 * k + 473563 := by
    unfold C
    simp [show (2239488 * k + 947126) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 473563) = 3359232 * k + 1420690 := by
    unfold C
    simp [show (1119744 * k + 473563) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1420690) = 1679616 * k + 710345 := by
    unfold C
    simp [show (3359232 * k + 1420690) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 710345) = 5038848 * k + 2131036 := by
    unfold C
    simp [show (1679616 * k + 710345) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2131036) = 2519424 * k + 1065518 := by
    unfold C
    simp [show (5038848 * k + 2131036) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1065518) = 1259712 * k + 532759 := by
    unfold C
    simp [show (2519424 * k + 1065518) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 532759) = 3779136 * k + 1598278 := by
    unfold C
    simp [show (1259712 * k + 532759) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1598278) = 1889568 * k + 799139 := by
    unfold C
    simp [show (3779136 * k + 1598278) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 799139) = 5668704 * k + 2397418 := by
    unfold C
    simp [show (1889568 * k + 799139) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2397418) = 2834352 * k + 1198709 := by
    unfold C
    simp [show (5668704 * k + 2397418) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1198709) = 8503056 * k + 3596128 := by
    unfold C
    simp [show (2834352 * k + 1198709) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3596128) = 4251528 * k + 1798064 := by
    unfold C
    simp [show (8503056 * k + 3596128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1798064) = 2125764 * k + 899032 := by
    unfold C
    simp [show (4251528 * k + 1798064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 899032) = 1062882 * k + 449516 := by
    unfold C
    simp [show (2125764 * k + 899032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 449516) = 531441 * k + 224758 := by
    unfold C
    simp [show (1062882 * k + 449516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 443463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 443463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_444111 : ∀ k : Nat,
    iterate (1048576 * k + 444111) 32 = 531441 * k + 225086 ∧
      531441 * k + 225086 < 1048576 * k + 444111 := by
  intro k
  have h1 : C (1048576 * k + 444111) = 3145728 * k + 1332334 := by
    unfold C
    simp [show (1048576 * k + 444111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1332334) = 1572864 * k + 666167 := by
    unfold C
    simp [show (3145728 * k + 1332334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 666167) = 4718592 * k + 1998502 := by
    unfold C
    simp [show (1572864 * k + 666167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1998502) = 2359296 * k + 999251 := by
    unfold C
    simp [show (4718592 * k + 1998502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 999251) = 7077888 * k + 2997754 := by
    unfold C
    simp [show (2359296 * k + 999251) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2997754) = 3538944 * k + 1498877 := by
    unfold C
    simp [show (7077888 * k + 2997754) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1498877) = 10616832 * k + 4496632 := by
    unfold C
    simp [show (3538944 * k + 1498877) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4496632) = 5308416 * k + 2248316 := by
    unfold C
    simp [show (10616832 * k + 4496632) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2248316) = 2654208 * k + 1124158 := by
    unfold C
    simp [show (5308416 * k + 2248316) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1124158) = 1327104 * k + 562079 := by
    unfold C
    simp [show (2654208 * k + 1124158) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 562079) = 3981312 * k + 1686238 := by
    unfold C
    simp [show (1327104 * k + 562079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1686238) = 1990656 * k + 843119 := by
    unfold C
    simp [show (3981312 * k + 1686238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 843119) = 5971968 * k + 2529358 := by
    unfold C
    simp [show (1990656 * k + 843119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2529358) = 2985984 * k + 1264679 := by
    unfold C
    simp [show (5971968 * k + 2529358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1264679) = 8957952 * k + 3794038 := by
    unfold C
    simp [show (2985984 * k + 1264679) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3794038) = 4478976 * k + 1897019 := by
    unfold C
    simp [show (8957952 * k + 3794038) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1897019) = 13436928 * k + 5691058 := by
    unfold C
    simp [show (4478976 * k + 1897019) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5691058) = 6718464 * k + 2845529 := by
    unfold C
    simp [show (13436928 * k + 5691058) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2845529) = 20155392 * k + 8536588 := by
    unfold C
    simp [show (6718464 * k + 2845529) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8536588) = 10077696 * k + 4268294 := by
    unfold C
    simp [show (20155392 * k + 8536588) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4268294) = 5038848 * k + 2134147 := by
    unfold C
    simp [show (10077696 * k + 4268294) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2134147) = 15116544 * k + 6402442 := by
    unfold C
    simp [show (5038848 * k + 2134147) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6402442) = 7558272 * k + 3201221 := by
    unfold C
    simp [show (15116544 * k + 6402442) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3201221) = 22674816 * k + 9603664 := by
    unfold C
    simp [show (7558272 * k + 3201221) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9603664) = 11337408 * k + 4801832 := by
    unfold C
    simp [show (22674816 * k + 9603664) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4801832) = 5668704 * k + 2400916 := by
    unfold C
    simp [show (11337408 * k + 4801832) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2400916) = 2834352 * k + 1200458 := by
    unfold C
    simp [show (5668704 * k + 2400916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1200458) = 1417176 * k + 600229 := by
    unfold C
    simp [show (2834352 * k + 1200458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 600229) = 4251528 * k + 1800688 := by
    unfold C
    simp [show (1417176 * k + 600229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1800688) = 2125764 * k + 900344 := by
    unfold C
    simp [show (4251528 * k + 1800688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 900344) = 1062882 * k + 450172 := by
    unfold C
    simp [show (2125764 * k + 900344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 450172) = 531441 * k + 225086 := by
    unfold C
    simp [show (1062882 * k + 450172) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 444111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 444111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_445159 : ∀ k : Nat,
    iterate (1048576 * k + 445159) 32 = 531441 * k + 225617 ∧
      531441 * k + 225617 < 1048576 * k + 445159 := by
  intro k
  have h1 : C (1048576 * k + 445159) = 3145728 * k + 1335478 := by
    unfold C
    simp [show (1048576 * k + 445159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1335478) = 1572864 * k + 667739 := by
    unfold C
    simp [show (3145728 * k + 1335478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 667739) = 4718592 * k + 2003218 := by
    unfold C
    simp [show (1572864 * k + 667739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2003218) = 2359296 * k + 1001609 := by
    unfold C
    simp [show (4718592 * k + 2003218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1001609) = 7077888 * k + 3004828 := by
    unfold C
    simp [show (2359296 * k + 1001609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3004828) = 3538944 * k + 1502414 := by
    unfold C
    simp [show (7077888 * k + 3004828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1502414) = 1769472 * k + 751207 := by
    unfold C
    simp [show (3538944 * k + 1502414) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 751207) = 5308416 * k + 2253622 := by
    unfold C
    simp [show (1769472 * k + 751207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2253622) = 2654208 * k + 1126811 := by
    unfold C
    simp [show (5308416 * k + 2253622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1126811) = 7962624 * k + 3380434 := by
    unfold C
    simp [show (2654208 * k + 1126811) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3380434) = 3981312 * k + 1690217 := by
    unfold C
    simp [show (7962624 * k + 3380434) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1690217) = 11943936 * k + 5070652 := by
    unfold C
    simp [show (3981312 * k + 1690217) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5070652) = 5971968 * k + 2535326 := by
    unfold C
    simp [show (11943936 * k + 5070652) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2535326) = 2985984 * k + 1267663 := by
    unfold C
    simp [show (5971968 * k + 2535326) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1267663) = 8957952 * k + 3802990 := by
    unfold C
    simp [show (2985984 * k + 1267663) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3802990) = 4478976 * k + 1901495 := by
    unfold C
    simp [show (8957952 * k + 3802990) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1901495) = 13436928 * k + 5704486 := by
    unfold C
    simp [show (4478976 * k + 1901495) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5704486) = 6718464 * k + 2852243 := by
    unfold C
    simp [show (13436928 * k + 5704486) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2852243) = 20155392 * k + 8556730 := by
    unfold C
    simp [show (6718464 * k + 2852243) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8556730) = 10077696 * k + 4278365 := by
    unfold C
    simp [show (20155392 * k + 8556730) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4278365) = 30233088 * k + 12835096 := by
    unfold C
    simp [show (10077696 * k + 4278365) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12835096) = 15116544 * k + 6417548 := by
    unfold C
    simp [show (30233088 * k + 12835096) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6417548) = 7558272 * k + 3208774 := by
    unfold C
    simp [show (15116544 * k + 6417548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3208774) = 3779136 * k + 1604387 := by
    unfold C
    simp [show (7558272 * k + 3208774) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1604387) = 11337408 * k + 4813162 := by
    unfold C
    simp [show (3779136 * k + 1604387) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4813162) = 5668704 * k + 2406581 := by
    unfold C
    simp [show (11337408 * k + 4813162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2406581) = 17006112 * k + 7219744 := by
    unfold C
    simp [show (5668704 * k + 2406581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7219744) = 8503056 * k + 3609872 := by
    unfold C
    simp [show (17006112 * k + 7219744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3609872) = 4251528 * k + 1804936 := by
    unfold C
    simp [show (8503056 * k + 3609872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1804936) = 2125764 * k + 902468 := by
    unfold C
    simp [show (4251528 * k + 1804936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 902468) = 1062882 * k + 451234 := by
    unfold C
    simp [show (2125764 * k + 902468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 451234) = 531441 * k + 225617 := by
    unfold C
    simp [show (1062882 * k + 451234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 445159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 445159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_445531 : ∀ k : Nat,
    iterate (1048576 * k + 445531) 32 = 531441 * k + 225806 ∧
      531441 * k + 225806 < 1048576 * k + 445531 := by
  intro k
  have h1 : C (1048576 * k + 445531) = 3145728 * k + 1336594 := by
    unfold C
    simp [show (1048576 * k + 445531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1336594) = 1572864 * k + 668297 := by
    unfold C
    simp [show (3145728 * k + 1336594) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 668297) = 4718592 * k + 2004892 := by
    unfold C
    simp [show (1572864 * k + 668297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2004892) = 2359296 * k + 1002446 := by
    unfold C
    simp [show (4718592 * k + 2004892) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1002446) = 1179648 * k + 501223 := by
    unfold C
    simp [show (2359296 * k + 1002446) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 501223) = 3538944 * k + 1503670 := by
    unfold C
    simp [show (1179648 * k + 501223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1503670) = 1769472 * k + 751835 := by
    unfold C
    simp [show (3538944 * k + 1503670) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 751835) = 5308416 * k + 2255506 := by
    unfold C
    simp [show (1769472 * k + 751835) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2255506) = 2654208 * k + 1127753 := by
    unfold C
    simp [show (5308416 * k + 2255506) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1127753) = 7962624 * k + 3383260 := by
    unfold C
    simp [show (2654208 * k + 1127753) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3383260) = 3981312 * k + 1691630 := by
    unfold C
    simp [show (7962624 * k + 3383260) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1691630) = 1990656 * k + 845815 := by
    unfold C
    simp [show (3981312 * k + 1691630) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 845815) = 5971968 * k + 2537446 := by
    unfold C
    simp [show (1990656 * k + 845815) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2537446) = 2985984 * k + 1268723 := by
    unfold C
    simp [show (5971968 * k + 2537446) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1268723) = 8957952 * k + 3806170 := by
    unfold C
    simp [show (2985984 * k + 1268723) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3806170) = 4478976 * k + 1903085 := by
    unfold C
    simp [show (8957952 * k + 3806170) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1903085) = 13436928 * k + 5709256 := by
    unfold C
    simp [show (4478976 * k + 1903085) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5709256) = 6718464 * k + 2854628 := by
    unfold C
    simp [show (13436928 * k + 5709256) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2854628) = 3359232 * k + 1427314 := by
    unfold C
    simp [show (6718464 * k + 2854628) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1427314) = 1679616 * k + 713657 := by
    unfold C
    simp [show (3359232 * k + 1427314) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 713657) = 5038848 * k + 2140972 := by
    unfold C
    simp [show (1679616 * k + 713657) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2140972) = 2519424 * k + 1070486 := by
    unfold C
    simp [show (5038848 * k + 2140972) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1070486) = 1259712 * k + 535243 := by
    unfold C
    simp [show (2519424 * k + 1070486) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 535243) = 3779136 * k + 1605730 := by
    unfold C
    simp [show (1259712 * k + 535243) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1605730) = 1889568 * k + 802865 := by
    unfold C
    simp [show (3779136 * k + 1605730) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 802865) = 5668704 * k + 2408596 := by
    unfold C
    simp [show (1889568 * k + 802865) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2408596) = 2834352 * k + 1204298 := by
    unfold C
    simp [show (5668704 * k + 2408596) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1204298) = 1417176 * k + 602149 := by
    unfold C
    simp [show (2834352 * k + 1204298) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 602149) = 4251528 * k + 1806448 := by
    unfold C
    simp [show (1417176 * k + 602149) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1806448) = 2125764 * k + 903224 := by
    unfold C
    simp [show (4251528 * k + 1806448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 903224) = 1062882 * k + 451612 := by
    unfold C
    simp [show (2125764 * k + 903224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 451612) = 531441 * k + 225806 := by
    unfold C
    simp [show (1062882 * k + 451612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 445531) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 445531)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_445691 : ∀ k : Nat,
    iterate (1048576 * k + 445691) 32 = 531441 * k + 225887 ∧
      531441 * k + 225887 < 1048576 * k + 445691 := by
  intro k
  have h1 : C (1048576 * k + 445691) = 3145728 * k + 1337074 := by
    unfold C
    simp [show (1048576 * k + 445691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1337074) = 1572864 * k + 668537 := by
    unfold C
    simp [show (3145728 * k + 1337074) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 668537) = 4718592 * k + 2005612 := by
    unfold C
    simp [show (1572864 * k + 668537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2005612) = 2359296 * k + 1002806 := by
    unfold C
    simp [show (4718592 * k + 2005612) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1002806) = 1179648 * k + 501403 := by
    unfold C
    simp [show (2359296 * k + 1002806) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 501403) = 3538944 * k + 1504210 := by
    unfold C
    simp [show (1179648 * k + 501403) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1504210) = 1769472 * k + 752105 := by
    unfold C
    simp [show (3538944 * k + 1504210) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 752105) = 5308416 * k + 2256316 := by
    unfold C
    simp [show (1769472 * k + 752105) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2256316) = 2654208 * k + 1128158 := by
    unfold C
    simp [show (5308416 * k + 2256316) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1128158) = 1327104 * k + 564079 := by
    unfold C
    simp [show (2654208 * k + 1128158) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 564079) = 3981312 * k + 1692238 := by
    unfold C
    simp [show (1327104 * k + 564079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1692238) = 1990656 * k + 846119 := by
    unfold C
    simp [show (3981312 * k + 1692238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 846119) = 5971968 * k + 2538358 := by
    unfold C
    simp [show (1990656 * k + 846119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2538358) = 2985984 * k + 1269179 := by
    unfold C
    simp [show (5971968 * k + 2538358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1269179) = 8957952 * k + 3807538 := by
    unfold C
    simp [show (2985984 * k + 1269179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3807538) = 4478976 * k + 1903769 := by
    unfold C
    simp [show (8957952 * k + 3807538) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1903769) = 13436928 * k + 5711308 := by
    unfold C
    simp [show (4478976 * k + 1903769) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5711308) = 6718464 * k + 2855654 := by
    unfold C
    simp [show (13436928 * k + 5711308) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2855654) = 3359232 * k + 1427827 := by
    unfold C
    simp [show (6718464 * k + 2855654) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1427827) = 10077696 * k + 4283482 := by
    unfold C
    simp [show (3359232 * k + 1427827) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4283482) = 5038848 * k + 2141741 := by
    unfold C
    simp [show (10077696 * k + 4283482) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2141741) = 15116544 * k + 6425224 := by
    unfold C
    simp [show (5038848 * k + 2141741) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6425224) = 7558272 * k + 3212612 := by
    unfold C
    simp [show (15116544 * k + 6425224) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3212612) = 3779136 * k + 1606306 := by
    unfold C
    simp [show (7558272 * k + 3212612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1606306) = 1889568 * k + 803153 := by
    unfold C
    simp [show (3779136 * k + 1606306) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 803153) = 5668704 * k + 2409460 := by
    unfold C
    simp [show (1889568 * k + 803153) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2409460) = 2834352 * k + 1204730 := by
    unfold C
    simp [show (5668704 * k + 2409460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1204730) = 1417176 * k + 602365 := by
    unfold C
    simp [show (2834352 * k + 1204730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 602365) = 4251528 * k + 1807096 := by
    unfold C
    simp [show (1417176 * k + 602365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1807096) = 2125764 * k + 903548 := by
    unfold C
    simp [show (4251528 * k + 1807096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 903548) = 1062882 * k + 451774 := by
    unfold C
    simp [show (2125764 * k + 903548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 451774) = 531441 * k + 225887 := by
    unfold C
    simp [show (1062882 * k + 451774) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 445691) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 445691)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_446207 : ∀ k : Nat,
    iterate (1048576 * k + 446207) 32 = 531441 * k + 226148 ∧
      531441 * k + 226148 < 1048576 * k + 446207 := by
  intro k
  have h1 : C (1048576 * k + 446207) = 3145728 * k + 1338622 := by
    unfold C
    simp [show (1048576 * k + 446207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1338622) = 1572864 * k + 669311 := by
    unfold C
    simp [show (3145728 * k + 1338622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 669311) = 4718592 * k + 2007934 := by
    unfold C
    simp [show (1572864 * k + 669311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2007934) = 2359296 * k + 1003967 := by
    unfold C
    simp [show (4718592 * k + 2007934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1003967) = 7077888 * k + 3011902 := by
    unfold C
    simp [show (2359296 * k + 1003967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3011902) = 3538944 * k + 1505951 := by
    unfold C
    simp [show (7077888 * k + 3011902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1505951) = 10616832 * k + 4517854 := by
    unfold C
    simp [show (3538944 * k + 1505951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4517854) = 5308416 * k + 2258927 := by
    unfold C
    simp [show (10616832 * k + 4517854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2258927) = 15925248 * k + 6776782 := by
    unfold C
    simp [show (5308416 * k + 2258927) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6776782) = 7962624 * k + 3388391 := by
    unfold C
    simp [show (15925248 * k + 6776782) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3388391) = 23887872 * k + 10165174 := by
    unfold C
    simp [show (7962624 * k + 3388391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10165174) = 11943936 * k + 5082587 := by
    unfold C
    simp [show (23887872 * k + 10165174) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5082587) = 35831808 * k + 15247762 := by
    unfold C
    simp [show (11943936 * k + 5082587) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15247762) = 17915904 * k + 7623881 := by
    unfold C
    simp [show (35831808 * k + 15247762) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7623881) = 53747712 * k + 22871644 := by
    unfold C
    simp [show (17915904 * k + 7623881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 22871644) = 26873856 * k + 11435822 := by
    unfold C
    simp [show (53747712 * k + 22871644) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11435822) = 13436928 * k + 5717911 := by
    unfold C
    simp [show (26873856 * k + 11435822) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5717911) = 40310784 * k + 17153734 := by
    unfold C
    simp [show (13436928 * k + 5717911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17153734) = 20155392 * k + 8576867 := by
    unfold C
    simp [show (40310784 * k + 17153734) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8576867) = 60466176 * k + 25730602 := by
    unfold C
    simp [show (20155392 * k + 8576867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 25730602) = 30233088 * k + 12865301 := by
    unfold C
    simp [show (60466176 * k + 25730602) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12865301) = 90699264 * k + 38595904 := by
    unfold C
    simp [show (30233088 * k + 12865301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 38595904) = 45349632 * k + 19297952 := by
    unfold C
    simp [show (90699264 * k + 38595904) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 19297952) = 22674816 * k + 9648976 := by
    unfold C
    simp [show (45349632 * k + 19297952) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9648976) = 11337408 * k + 4824488 := by
    unfold C
    simp [show (22674816 * k + 9648976) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4824488) = 5668704 * k + 2412244 := by
    unfold C
    simp [show (11337408 * k + 4824488) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2412244) = 2834352 * k + 1206122 := by
    unfold C
    simp [show (5668704 * k + 2412244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1206122) = 1417176 * k + 603061 := by
    unfold C
    simp [show (2834352 * k + 1206122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 603061) = 4251528 * k + 1809184 := by
    unfold C
    simp [show (1417176 * k + 603061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1809184) = 2125764 * k + 904592 := by
    unfold C
    simp [show (4251528 * k + 1809184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 904592) = 1062882 * k + 452296 := by
    unfold C
    simp [show (2125764 * k + 904592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 452296) = 531441 * k + 226148 := by
    unfold C
    simp [show (1062882 * k + 452296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 446207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 446207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard056
