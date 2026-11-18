import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard067

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_515231 : ∀ k : Nat,
    iterate (1048576 * k + 515231) 32 = 531441 * k + 261131 ∧
      531441 * k + 261131 < 1048576 * k + 515231 := by
  intro k
  have h1 : C (1048576 * k + 515231) = 3145728 * k + 1545694 := by
    unfold C
    simp [show (1048576 * k + 515231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1545694) = 1572864 * k + 772847 := by
    unfold C
    simp [show (3145728 * k + 1545694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 772847) = 4718592 * k + 2318542 := by
    unfold C
    simp [show (1572864 * k + 772847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2318542) = 2359296 * k + 1159271 := by
    unfold C
    simp [show (4718592 * k + 2318542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1159271) = 7077888 * k + 3477814 := by
    unfold C
    simp [show (2359296 * k + 1159271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3477814) = 3538944 * k + 1738907 := by
    unfold C
    simp [show (7077888 * k + 3477814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1738907) = 10616832 * k + 5216722 := by
    unfold C
    simp [show (3538944 * k + 1738907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5216722) = 5308416 * k + 2608361 := by
    unfold C
    simp [show (10616832 * k + 5216722) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2608361) = 15925248 * k + 7825084 := by
    unfold C
    simp [show (5308416 * k + 2608361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7825084) = 7962624 * k + 3912542 := by
    unfold C
    simp [show (15925248 * k + 7825084) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3912542) = 3981312 * k + 1956271 := by
    unfold C
    simp [show (7962624 * k + 3912542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1956271) = 11943936 * k + 5868814 := by
    unfold C
    simp [show (3981312 * k + 1956271) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5868814) = 5971968 * k + 2934407 := by
    unfold C
    simp [show (11943936 * k + 5868814) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2934407) = 17915904 * k + 8803222 := by
    unfold C
    simp [show (5971968 * k + 2934407) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8803222) = 8957952 * k + 4401611 := by
    unfold C
    simp [show (17915904 * k + 8803222) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4401611) = 26873856 * k + 13204834 := by
    unfold C
    simp [show (8957952 * k + 4401611) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13204834) = 13436928 * k + 6602417 := by
    unfold C
    simp [show (26873856 * k + 13204834) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6602417) = 40310784 * k + 19807252 := by
    unfold C
    simp [show (13436928 * k + 6602417) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19807252) = 20155392 * k + 9903626 := by
    unfold C
    simp [show (40310784 * k + 19807252) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9903626) = 10077696 * k + 4951813 := by
    unfold C
    simp [show (20155392 * k + 9903626) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4951813) = 30233088 * k + 14855440 := by
    unfold C
    simp [show (10077696 * k + 4951813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14855440) = 15116544 * k + 7427720 := by
    unfold C
    simp [show (30233088 * k + 14855440) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7427720) = 7558272 * k + 3713860 := by
    unfold C
    simp [show (15116544 * k + 7427720) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3713860) = 3779136 * k + 1856930 := by
    unfold C
    simp [show (7558272 * k + 3713860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1856930) = 1889568 * k + 928465 := by
    unfold C
    simp [show (3779136 * k + 1856930) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 928465) = 5668704 * k + 2785396 := by
    unfold C
    simp [show (1889568 * k + 928465) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2785396) = 2834352 * k + 1392698 := by
    unfold C
    simp [show (5668704 * k + 2785396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1392698) = 1417176 * k + 696349 := by
    unfold C
    simp [show (2834352 * k + 1392698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 696349) = 4251528 * k + 2089048 := by
    unfold C
    simp [show (1417176 * k + 696349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2089048) = 2125764 * k + 1044524 := by
    unfold C
    simp [show (4251528 * k + 2089048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1044524) = 1062882 * k + 522262 := by
    unfold C
    simp [show (2125764 * k + 1044524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 522262) = 531441 * k + 261131 := by
    unfold C
    simp [show (1062882 * k + 522262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 515231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 515231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_516379 : ∀ k : Nat,
    iterate (1048576 * k + 516379) 32 = 531441 * k + 261713 ∧
      531441 * k + 261713 < 1048576 * k + 516379 := by
  intro k
  have h1 : C (1048576 * k + 516379) = 3145728 * k + 1549138 := by
    unfold C
    simp [show (1048576 * k + 516379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1549138) = 1572864 * k + 774569 := by
    unfold C
    simp [show (3145728 * k + 1549138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 774569) = 4718592 * k + 2323708 := by
    unfold C
    simp [show (1572864 * k + 774569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2323708) = 2359296 * k + 1161854 := by
    unfold C
    simp [show (4718592 * k + 2323708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1161854) = 1179648 * k + 580927 := by
    unfold C
    simp [show (2359296 * k + 1161854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 580927) = 3538944 * k + 1742782 := by
    unfold C
    simp [show (1179648 * k + 580927) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1742782) = 1769472 * k + 871391 := by
    unfold C
    simp [show (3538944 * k + 1742782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 871391) = 5308416 * k + 2614174 := by
    unfold C
    simp [show (1769472 * k + 871391) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2614174) = 2654208 * k + 1307087 := by
    unfold C
    simp [show (5308416 * k + 2614174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1307087) = 7962624 * k + 3921262 := by
    unfold C
    simp [show (2654208 * k + 1307087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3921262) = 3981312 * k + 1960631 := by
    unfold C
    simp [show (7962624 * k + 3921262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1960631) = 11943936 * k + 5881894 := by
    unfold C
    simp [show (3981312 * k + 1960631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5881894) = 5971968 * k + 2940947 := by
    unfold C
    simp [show (11943936 * k + 5881894) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2940947) = 17915904 * k + 8822842 := by
    unfold C
    simp [show (5971968 * k + 2940947) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8822842) = 8957952 * k + 4411421 := by
    unfold C
    simp [show (17915904 * k + 8822842) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4411421) = 26873856 * k + 13234264 := by
    unfold C
    simp [show (8957952 * k + 4411421) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13234264) = 13436928 * k + 6617132 := by
    unfold C
    simp [show (26873856 * k + 13234264) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6617132) = 6718464 * k + 3308566 := by
    unfold C
    simp [show (13436928 * k + 6617132) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3308566) = 3359232 * k + 1654283 := by
    unfold C
    simp [show (6718464 * k + 3308566) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1654283) = 10077696 * k + 4962850 := by
    unfold C
    simp [show (3359232 * k + 1654283) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4962850) = 5038848 * k + 2481425 := by
    unfold C
    simp [show (10077696 * k + 4962850) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2481425) = 15116544 * k + 7444276 := by
    unfold C
    simp [show (5038848 * k + 2481425) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7444276) = 7558272 * k + 3722138 := by
    unfold C
    simp [show (15116544 * k + 7444276) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3722138) = 3779136 * k + 1861069 := by
    unfold C
    simp [show (7558272 * k + 3722138) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1861069) = 11337408 * k + 5583208 := by
    unfold C
    simp [show (3779136 * k + 1861069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5583208) = 5668704 * k + 2791604 := by
    unfold C
    simp [show (11337408 * k + 5583208) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2791604) = 2834352 * k + 1395802 := by
    unfold C
    simp [show (5668704 * k + 2791604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1395802) = 1417176 * k + 697901 := by
    unfold C
    simp [show (2834352 * k + 1395802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 697901) = 4251528 * k + 2093704 := by
    unfold C
    simp [show (1417176 * k + 697901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2093704) = 2125764 * k + 1046852 := by
    unfold C
    simp [show (4251528 * k + 2093704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1046852) = 1062882 * k + 523426 := by
    unfold C
    simp [show (2125764 * k + 1046852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 523426) = 531441 * k + 261713 := by
    unfold C
    simp [show (1062882 * k + 523426) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 516379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 516379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_516839 : ∀ k : Nat,
    iterate (1048576 * k + 516839) 32 = 531441 * k + 261946 ∧
      531441 * k + 261946 < 1048576 * k + 516839 := by
  intro k
  have h1 : C (1048576 * k + 516839) = 3145728 * k + 1550518 := by
    unfold C
    simp [show (1048576 * k + 516839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1550518) = 1572864 * k + 775259 := by
    unfold C
    simp [show (3145728 * k + 1550518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 775259) = 4718592 * k + 2325778 := by
    unfold C
    simp [show (1572864 * k + 775259) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2325778) = 2359296 * k + 1162889 := by
    unfold C
    simp [show (4718592 * k + 2325778) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1162889) = 7077888 * k + 3488668 := by
    unfold C
    simp [show (2359296 * k + 1162889) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3488668) = 3538944 * k + 1744334 := by
    unfold C
    simp [show (7077888 * k + 3488668) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1744334) = 1769472 * k + 872167 := by
    unfold C
    simp [show (3538944 * k + 1744334) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 872167) = 5308416 * k + 2616502 := by
    unfold C
    simp [show (1769472 * k + 872167) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2616502) = 2654208 * k + 1308251 := by
    unfold C
    simp [show (5308416 * k + 2616502) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1308251) = 7962624 * k + 3924754 := by
    unfold C
    simp [show (2654208 * k + 1308251) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3924754) = 3981312 * k + 1962377 := by
    unfold C
    simp [show (7962624 * k + 3924754) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1962377) = 11943936 * k + 5887132 := by
    unfold C
    simp [show (3981312 * k + 1962377) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5887132) = 5971968 * k + 2943566 := by
    unfold C
    simp [show (11943936 * k + 5887132) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2943566) = 2985984 * k + 1471783 := by
    unfold C
    simp [show (5971968 * k + 2943566) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1471783) = 8957952 * k + 4415350 := by
    unfold C
    simp [show (2985984 * k + 1471783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4415350) = 4478976 * k + 2207675 := by
    unfold C
    simp [show (8957952 * k + 4415350) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2207675) = 13436928 * k + 6623026 := by
    unfold C
    simp [show (4478976 * k + 2207675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6623026) = 6718464 * k + 3311513 := by
    unfold C
    simp [show (13436928 * k + 6623026) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3311513) = 20155392 * k + 9934540 := by
    unfold C
    simp [show (6718464 * k + 3311513) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9934540) = 10077696 * k + 4967270 := by
    unfold C
    simp [show (20155392 * k + 9934540) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4967270) = 5038848 * k + 2483635 := by
    unfold C
    simp [show (10077696 * k + 4967270) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2483635) = 15116544 * k + 7450906 := by
    unfold C
    simp [show (5038848 * k + 2483635) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7450906) = 7558272 * k + 3725453 := by
    unfold C
    simp [show (15116544 * k + 7450906) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3725453) = 22674816 * k + 11176360 := by
    unfold C
    simp [show (7558272 * k + 3725453) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11176360) = 11337408 * k + 5588180 := by
    unfold C
    simp [show (22674816 * k + 11176360) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5588180) = 5668704 * k + 2794090 := by
    unfold C
    simp [show (11337408 * k + 5588180) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2794090) = 2834352 * k + 1397045 := by
    unfold C
    simp [show (5668704 * k + 2794090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1397045) = 8503056 * k + 4191136 := by
    unfold C
    simp [show (2834352 * k + 1397045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4191136) = 4251528 * k + 2095568 := by
    unfold C
    simp [show (8503056 * k + 4191136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2095568) = 2125764 * k + 1047784 := by
    unfold C
    simp [show (4251528 * k + 2095568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1047784) = 1062882 * k + 523892 := by
    unfold C
    simp [show (2125764 * k + 1047784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 523892) = 531441 * k + 261946 := by
    unfold C
    simp [show (1062882 * k + 523892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 516839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 516839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_516847 : ∀ k : Nat,
    iterate (1048576 * k + 516847) 32 = 531441 * k + 261950 ∧
      531441 * k + 261950 < 1048576 * k + 516847 := by
  intro k
  have h1 : C (1048576 * k + 516847) = 3145728 * k + 1550542 := by
    unfold C
    simp [show (1048576 * k + 516847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1550542) = 1572864 * k + 775271 := by
    unfold C
    simp [show (3145728 * k + 1550542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 775271) = 4718592 * k + 2325814 := by
    unfold C
    simp [show (1572864 * k + 775271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2325814) = 2359296 * k + 1162907 := by
    unfold C
    simp [show (4718592 * k + 2325814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1162907) = 7077888 * k + 3488722 := by
    unfold C
    simp [show (2359296 * k + 1162907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3488722) = 3538944 * k + 1744361 := by
    unfold C
    simp [show (7077888 * k + 3488722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1744361) = 10616832 * k + 5233084 := by
    unfold C
    simp [show (3538944 * k + 1744361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5233084) = 5308416 * k + 2616542 := by
    unfold C
    simp [show (10616832 * k + 5233084) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2616542) = 2654208 * k + 1308271 := by
    unfold C
    simp [show (5308416 * k + 2616542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1308271) = 7962624 * k + 3924814 := by
    unfold C
    simp [show (2654208 * k + 1308271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3924814) = 3981312 * k + 1962407 := by
    unfold C
    simp [show (7962624 * k + 3924814) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1962407) = 11943936 * k + 5887222 := by
    unfold C
    simp [show (3981312 * k + 1962407) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5887222) = 5971968 * k + 2943611 := by
    unfold C
    simp [show (11943936 * k + 5887222) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2943611) = 17915904 * k + 8830834 := by
    unfold C
    simp [show (5971968 * k + 2943611) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8830834) = 8957952 * k + 4415417 := by
    unfold C
    simp [show (17915904 * k + 8830834) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4415417) = 26873856 * k + 13246252 := by
    unfold C
    simp [show (8957952 * k + 4415417) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13246252) = 13436928 * k + 6623126 := by
    unfold C
    simp [show (26873856 * k + 13246252) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6623126) = 6718464 * k + 3311563 := by
    unfold C
    simp [show (13436928 * k + 6623126) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3311563) = 20155392 * k + 9934690 := by
    unfold C
    simp [show (6718464 * k + 3311563) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9934690) = 10077696 * k + 4967345 := by
    unfold C
    simp [show (20155392 * k + 9934690) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4967345) = 30233088 * k + 14902036 := by
    unfold C
    simp [show (10077696 * k + 4967345) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14902036) = 15116544 * k + 7451018 := by
    unfold C
    simp [show (30233088 * k + 14902036) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7451018) = 7558272 * k + 3725509 := by
    unfold C
    simp [show (15116544 * k + 7451018) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3725509) = 22674816 * k + 11176528 := by
    unfold C
    simp [show (7558272 * k + 3725509) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11176528) = 11337408 * k + 5588264 := by
    unfold C
    simp [show (22674816 * k + 11176528) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5588264) = 5668704 * k + 2794132 := by
    unfold C
    simp [show (11337408 * k + 5588264) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2794132) = 2834352 * k + 1397066 := by
    unfold C
    simp [show (5668704 * k + 2794132) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1397066) = 1417176 * k + 698533 := by
    unfold C
    simp [show (2834352 * k + 1397066) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 698533) = 4251528 * k + 2095600 := by
    unfold C
    simp [show (1417176 * k + 698533) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2095600) = 2125764 * k + 1047800 := by
    unfold C
    simp [show (4251528 * k + 2095600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1047800) = 1062882 * k + 523900 := by
    unfold C
    simp [show (2125764 * k + 1047800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 523900) = 531441 * k + 261950 := by
    unfold C
    simp [show (1062882 * k + 523900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 516847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 516847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_516935 : ∀ k : Nat,
    iterate (1048576 * k + 516935) 32 = 531441 * k + 261995 ∧
      531441 * k + 261995 < 1048576 * k + 516935 := by
  intro k
  have h1 : C (1048576 * k + 516935) = 3145728 * k + 1550806 := by
    unfold C
    simp [show (1048576 * k + 516935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1550806) = 1572864 * k + 775403 := by
    unfold C
    simp [show (3145728 * k + 1550806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 775403) = 4718592 * k + 2326210 := by
    unfold C
    simp [show (1572864 * k + 775403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2326210) = 2359296 * k + 1163105 := by
    unfold C
    simp [show (4718592 * k + 2326210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1163105) = 7077888 * k + 3489316 := by
    unfold C
    simp [show (2359296 * k + 1163105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3489316) = 3538944 * k + 1744658 := by
    unfold C
    simp [show (7077888 * k + 3489316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1744658) = 1769472 * k + 872329 := by
    unfold C
    simp [show (3538944 * k + 1744658) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 872329) = 5308416 * k + 2616988 := by
    unfold C
    simp [show (1769472 * k + 872329) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2616988) = 2654208 * k + 1308494 := by
    unfold C
    simp [show (5308416 * k + 2616988) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1308494) = 1327104 * k + 654247 := by
    unfold C
    simp [show (2654208 * k + 1308494) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 654247) = 3981312 * k + 1962742 := by
    unfold C
    simp [show (1327104 * k + 654247) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1962742) = 1990656 * k + 981371 := by
    unfold C
    simp [show (3981312 * k + 1962742) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 981371) = 5971968 * k + 2944114 := by
    unfold C
    simp [show (1990656 * k + 981371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2944114) = 2985984 * k + 1472057 := by
    unfold C
    simp [show (5971968 * k + 2944114) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1472057) = 8957952 * k + 4416172 := by
    unfold C
    simp [show (2985984 * k + 1472057) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4416172) = 4478976 * k + 2208086 := by
    unfold C
    simp [show (8957952 * k + 4416172) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2208086) = 2239488 * k + 1104043 := by
    unfold C
    simp [show (4478976 * k + 2208086) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1104043) = 6718464 * k + 3312130 := by
    unfold C
    simp [show (2239488 * k + 1104043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3312130) = 3359232 * k + 1656065 := by
    unfold C
    simp [show (6718464 * k + 3312130) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1656065) = 10077696 * k + 4968196 := by
    unfold C
    simp [show (3359232 * k + 1656065) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4968196) = 5038848 * k + 2484098 := by
    unfold C
    simp [show (10077696 * k + 4968196) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2484098) = 2519424 * k + 1242049 := by
    unfold C
    simp [show (5038848 * k + 2484098) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1242049) = 7558272 * k + 3726148 := by
    unfold C
    simp [show (2519424 * k + 1242049) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3726148) = 3779136 * k + 1863074 := by
    unfold C
    simp [show (7558272 * k + 3726148) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1863074) = 1889568 * k + 931537 := by
    unfold C
    simp [show (3779136 * k + 1863074) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 931537) = 5668704 * k + 2794612 := by
    unfold C
    simp [show (1889568 * k + 931537) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2794612) = 2834352 * k + 1397306 := by
    unfold C
    simp [show (5668704 * k + 2794612) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1397306) = 1417176 * k + 698653 := by
    unfold C
    simp [show (2834352 * k + 1397306) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 698653) = 4251528 * k + 2095960 := by
    unfold C
    simp [show (1417176 * k + 698653) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2095960) = 2125764 * k + 1047980 := by
    unfold C
    simp [show (4251528 * k + 2095960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1047980) = 1062882 * k + 523990 := by
    unfold C
    simp [show (2125764 * k + 1047980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 523990) = 531441 * k + 261995 := by
    unfold C
    simp [show (1062882 * k + 523990) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 516935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 516935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_517371 : ∀ k : Nat,
    iterate (1048576 * k + 517371) 32 = 531441 * k + 262216 ∧
      531441 * k + 262216 < 1048576 * k + 517371 := by
  intro k
  have h1 : C (1048576 * k + 517371) = 3145728 * k + 1552114 := by
    unfold C
    simp [show (1048576 * k + 517371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1552114) = 1572864 * k + 776057 := by
    unfold C
    simp [show (3145728 * k + 1552114) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 776057) = 4718592 * k + 2328172 := by
    unfold C
    simp [show (1572864 * k + 776057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2328172) = 2359296 * k + 1164086 := by
    unfold C
    simp [show (4718592 * k + 2328172) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1164086) = 1179648 * k + 582043 := by
    unfold C
    simp [show (2359296 * k + 1164086) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 582043) = 3538944 * k + 1746130 := by
    unfold C
    simp [show (1179648 * k + 582043) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1746130) = 1769472 * k + 873065 := by
    unfold C
    simp [show (3538944 * k + 1746130) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 873065) = 5308416 * k + 2619196 := by
    unfold C
    simp [show (1769472 * k + 873065) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2619196) = 2654208 * k + 1309598 := by
    unfold C
    simp [show (5308416 * k + 2619196) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1309598) = 1327104 * k + 654799 := by
    unfold C
    simp [show (2654208 * k + 1309598) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 654799) = 3981312 * k + 1964398 := by
    unfold C
    simp [show (1327104 * k + 654799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1964398) = 1990656 * k + 982199 := by
    unfold C
    simp [show (3981312 * k + 1964398) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 982199) = 5971968 * k + 2946598 := by
    unfold C
    simp [show (1990656 * k + 982199) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2946598) = 2985984 * k + 1473299 := by
    unfold C
    simp [show (5971968 * k + 2946598) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1473299) = 8957952 * k + 4419898 := by
    unfold C
    simp [show (2985984 * k + 1473299) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4419898) = 4478976 * k + 2209949 := by
    unfold C
    simp [show (8957952 * k + 4419898) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2209949) = 13436928 * k + 6629848 := by
    unfold C
    simp [show (4478976 * k + 2209949) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6629848) = 6718464 * k + 3314924 := by
    unfold C
    simp [show (13436928 * k + 6629848) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3314924) = 3359232 * k + 1657462 := by
    unfold C
    simp [show (6718464 * k + 3314924) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1657462) = 1679616 * k + 828731 := by
    unfold C
    simp [show (3359232 * k + 1657462) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 828731) = 5038848 * k + 2486194 := by
    unfold C
    simp [show (1679616 * k + 828731) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2486194) = 2519424 * k + 1243097 := by
    unfold C
    simp [show (5038848 * k + 2486194) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1243097) = 7558272 * k + 3729292 := by
    unfold C
    simp [show (2519424 * k + 1243097) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3729292) = 3779136 * k + 1864646 := by
    unfold C
    simp [show (7558272 * k + 3729292) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1864646) = 1889568 * k + 932323 := by
    unfold C
    simp [show (3779136 * k + 1864646) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 932323) = 5668704 * k + 2796970 := by
    unfold C
    simp [show (1889568 * k + 932323) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2796970) = 2834352 * k + 1398485 := by
    unfold C
    simp [show (5668704 * k + 2796970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1398485) = 8503056 * k + 4195456 := by
    unfold C
    simp [show (2834352 * k + 1398485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4195456) = 4251528 * k + 2097728 := by
    unfold C
    simp [show (8503056 * k + 4195456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2097728) = 2125764 * k + 1048864 := by
    unfold C
    simp [show (4251528 * k + 2097728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1048864) = 1062882 * k + 524432 := by
    unfold C
    simp [show (2125764 * k + 1048864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 524432) = 531441 * k + 262216 := by
    unfold C
    simp [show (1062882 * k + 524432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 517371) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 517371)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_517759 : ∀ k : Nat,
    iterate (1048576 * k + 517759) 32 = 531441 * k + 262412 ∧
      531441 * k + 262412 < 1048576 * k + 517759 := by
  intro k
  have h1 : C (1048576 * k + 517759) = 3145728 * k + 1553278 := by
    unfold C
    simp [show (1048576 * k + 517759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1553278) = 1572864 * k + 776639 := by
    unfold C
    simp [show (3145728 * k + 1553278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 776639) = 4718592 * k + 2329918 := by
    unfold C
    simp [show (1572864 * k + 776639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2329918) = 2359296 * k + 1164959 := by
    unfold C
    simp [show (4718592 * k + 2329918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1164959) = 7077888 * k + 3494878 := by
    unfold C
    simp [show (2359296 * k + 1164959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3494878) = 3538944 * k + 1747439 := by
    unfold C
    simp [show (7077888 * k + 3494878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1747439) = 10616832 * k + 5242318 := by
    unfold C
    simp [show (3538944 * k + 1747439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5242318) = 5308416 * k + 2621159 := by
    unfold C
    simp [show (10616832 * k + 5242318) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2621159) = 15925248 * k + 7863478 := by
    unfold C
    simp [show (5308416 * k + 2621159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7863478) = 7962624 * k + 3931739 := by
    unfold C
    simp [show (15925248 * k + 7863478) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3931739) = 23887872 * k + 11795218 := by
    unfold C
    simp [show (7962624 * k + 3931739) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11795218) = 11943936 * k + 5897609 := by
    unfold C
    simp [show (23887872 * k + 11795218) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5897609) = 35831808 * k + 17692828 := by
    unfold C
    simp [show (11943936 * k + 5897609) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17692828) = 17915904 * k + 8846414 := by
    unfold C
    simp [show (35831808 * k + 17692828) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8846414) = 8957952 * k + 4423207 := by
    unfold C
    simp [show (17915904 * k + 8846414) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4423207) = 26873856 * k + 13269622 := by
    unfold C
    simp [show (8957952 * k + 4423207) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13269622) = 13436928 * k + 6634811 := by
    unfold C
    simp [show (26873856 * k + 13269622) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6634811) = 40310784 * k + 19904434 := by
    unfold C
    simp [show (13436928 * k + 6634811) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19904434) = 20155392 * k + 9952217 := by
    unfold C
    simp [show (40310784 * k + 19904434) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9952217) = 60466176 * k + 29856652 := by
    unfold C
    simp [show (20155392 * k + 9952217) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 29856652) = 30233088 * k + 14928326 := by
    unfold C
    simp [show (60466176 * k + 29856652) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14928326) = 15116544 * k + 7464163 := by
    unfold C
    simp [show (30233088 * k + 14928326) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7464163) = 45349632 * k + 22392490 := by
    unfold C
    simp [show (15116544 * k + 7464163) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 22392490) = 22674816 * k + 11196245 := by
    unfold C
    simp [show (45349632 * k + 22392490) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11196245) = 68024448 * k + 33588736 := by
    unfold C
    simp [show (22674816 * k + 11196245) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 33588736) = 34012224 * k + 16794368 := by
    unfold C
    simp [show (68024448 * k + 33588736) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 16794368) = 17006112 * k + 8397184 := by
    unfold C
    simp [show (34012224 * k + 16794368) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8397184) = 8503056 * k + 4198592 := by
    unfold C
    simp [show (17006112 * k + 8397184) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4198592) = 4251528 * k + 2099296 := by
    unfold C
    simp [show (8503056 * k + 4198592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2099296) = 2125764 * k + 1049648 := by
    unfold C
    simp [show (4251528 * k + 2099296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1049648) = 1062882 * k + 524824 := by
    unfold C
    simp [show (2125764 * k + 1049648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 524824) = 531441 * k + 262412 := by
    unfold C
    simp [show (1062882 * k + 524824) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 517759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 517759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_517887 : ∀ k : Nat,
    iterate (1048576 * k + 517887) 32 = 531441 * k + 262477 ∧
      531441 * k + 262477 < 1048576 * k + 517887 := by
  intro k
  have h1 : C (1048576 * k + 517887) = 3145728 * k + 1553662 := by
    unfold C
    simp [show (1048576 * k + 517887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1553662) = 1572864 * k + 776831 := by
    unfold C
    simp [show (3145728 * k + 1553662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 776831) = 4718592 * k + 2330494 := by
    unfold C
    simp [show (1572864 * k + 776831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2330494) = 2359296 * k + 1165247 := by
    unfold C
    simp [show (4718592 * k + 2330494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1165247) = 7077888 * k + 3495742 := by
    unfold C
    simp [show (2359296 * k + 1165247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3495742) = 3538944 * k + 1747871 := by
    unfold C
    simp [show (7077888 * k + 3495742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1747871) = 10616832 * k + 5243614 := by
    unfold C
    simp [show (3538944 * k + 1747871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5243614) = 5308416 * k + 2621807 := by
    unfold C
    simp [show (10616832 * k + 5243614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2621807) = 15925248 * k + 7865422 := by
    unfold C
    simp [show (5308416 * k + 2621807) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7865422) = 7962624 * k + 3932711 := by
    unfold C
    simp [show (15925248 * k + 7865422) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3932711) = 23887872 * k + 11798134 := by
    unfold C
    simp [show (7962624 * k + 3932711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11798134) = 11943936 * k + 5899067 := by
    unfold C
    simp [show (23887872 * k + 11798134) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5899067) = 35831808 * k + 17697202 := by
    unfold C
    simp [show (11943936 * k + 5899067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17697202) = 17915904 * k + 8848601 := by
    unfold C
    simp [show (35831808 * k + 17697202) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8848601) = 53747712 * k + 26545804 := by
    unfold C
    simp [show (17915904 * k + 8848601) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26545804) = 26873856 * k + 13272902 := by
    unfold C
    simp [show (53747712 * k + 26545804) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13272902) = 13436928 * k + 6636451 := by
    unfold C
    simp [show (26873856 * k + 13272902) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6636451) = 40310784 * k + 19909354 := by
    unfold C
    simp [show (13436928 * k + 6636451) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19909354) = 20155392 * k + 9954677 := by
    unfold C
    simp [show (40310784 * k + 19909354) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9954677) = 60466176 * k + 29864032 := by
    unfold C
    simp [show (20155392 * k + 9954677) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 29864032) = 30233088 * k + 14932016 := by
    unfold C
    simp [show (60466176 * k + 29864032) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14932016) = 15116544 * k + 7466008 := by
    unfold C
    simp [show (30233088 * k + 14932016) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7466008) = 7558272 * k + 3733004 := by
    unfold C
    simp [show (15116544 * k + 7466008) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3733004) = 3779136 * k + 1866502 := by
    unfold C
    simp [show (7558272 * k + 3733004) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1866502) = 1889568 * k + 933251 := by
    unfold C
    simp [show (3779136 * k + 1866502) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 933251) = 5668704 * k + 2799754 := by
    unfold C
    simp [show (1889568 * k + 933251) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2799754) = 2834352 * k + 1399877 := by
    unfold C
    simp [show (5668704 * k + 2799754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1399877) = 8503056 * k + 4199632 := by
    unfold C
    simp [show (2834352 * k + 1399877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4199632) = 4251528 * k + 2099816 := by
    unfold C
    simp [show (8503056 * k + 4199632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2099816) = 2125764 * k + 1049908 := by
    unfold C
    simp [show (4251528 * k + 2099816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1049908) = 1062882 * k + 524954 := by
    unfold C
    simp [show (2125764 * k + 1049908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 524954) = 531441 * k + 262477 := by
    unfold C
    simp [show (1062882 * k + 524954) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 517887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 517887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_518463 : ∀ k : Nat,
    iterate (1048576 * k + 518463) 32 = 531441 * k + 262769 ∧
      531441 * k + 262769 < 1048576 * k + 518463 := by
  intro k
  have h1 : C (1048576 * k + 518463) = 3145728 * k + 1555390 := by
    unfold C
    simp [show (1048576 * k + 518463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1555390) = 1572864 * k + 777695 := by
    unfold C
    simp [show (3145728 * k + 1555390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 777695) = 4718592 * k + 2333086 := by
    unfold C
    simp [show (1572864 * k + 777695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2333086) = 2359296 * k + 1166543 := by
    unfold C
    simp [show (4718592 * k + 2333086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1166543) = 7077888 * k + 3499630 := by
    unfold C
    simp [show (2359296 * k + 1166543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3499630) = 3538944 * k + 1749815 := by
    unfold C
    simp [show (7077888 * k + 3499630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1749815) = 10616832 * k + 5249446 := by
    unfold C
    simp [show (3538944 * k + 1749815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5249446) = 5308416 * k + 2624723 := by
    unfold C
    simp [show (10616832 * k + 5249446) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2624723) = 15925248 * k + 7874170 := by
    unfold C
    simp [show (5308416 * k + 2624723) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7874170) = 7962624 * k + 3937085 := by
    unfold C
    simp [show (15925248 * k + 7874170) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3937085) = 23887872 * k + 11811256 := by
    unfold C
    simp [show (7962624 * k + 3937085) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11811256) = 11943936 * k + 5905628 := by
    unfold C
    simp [show (23887872 * k + 11811256) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5905628) = 5971968 * k + 2952814 := by
    unfold C
    simp [show (11943936 * k + 5905628) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2952814) = 2985984 * k + 1476407 := by
    unfold C
    simp [show (5971968 * k + 2952814) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1476407) = 8957952 * k + 4429222 := by
    unfold C
    simp [show (2985984 * k + 1476407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4429222) = 4478976 * k + 2214611 := by
    unfold C
    simp [show (8957952 * k + 4429222) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2214611) = 13436928 * k + 6643834 := by
    unfold C
    simp [show (4478976 * k + 2214611) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6643834) = 6718464 * k + 3321917 := by
    unfold C
    simp [show (13436928 * k + 6643834) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3321917) = 20155392 * k + 9965752 := by
    unfold C
    simp [show (6718464 * k + 3321917) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9965752) = 10077696 * k + 4982876 := by
    unfold C
    simp [show (20155392 * k + 9965752) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4982876) = 5038848 * k + 2491438 := by
    unfold C
    simp [show (10077696 * k + 4982876) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2491438) = 2519424 * k + 1245719 := by
    unfold C
    simp [show (5038848 * k + 2491438) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1245719) = 7558272 * k + 3737158 := by
    unfold C
    simp [show (2519424 * k + 1245719) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3737158) = 3779136 * k + 1868579 := by
    unfold C
    simp [show (7558272 * k + 3737158) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1868579) = 11337408 * k + 5605738 := by
    unfold C
    simp [show (3779136 * k + 1868579) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5605738) = 5668704 * k + 2802869 := by
    unfold C
    simp [show (11337408 * k + 5605738) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2802869) = 17006112 * k + 8408608 := by
    unfold C
    simp [show (5668704 * k + 2802869) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8408608) = 8503056 * k + 4204304 := by
    unfold C
    simp [show (17006112 * k + 8408608) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4204304) = 4251528 * k + 2102152 := by
    unfold C
    simp [show (8503056 * k + 4204304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2102152) = 2125764 * k + 1051076 := by
    unfold C
    simp [show (4251528 * k + 2102152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1051076) = 1062882 * k + 525538 := by
    unfold C
    simp [show (2125764 * k + 1051076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 525538) = 531441 * k + 262769 := by
    unfold C
    simp [show (1062882 * k + 525538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 518463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 518463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_518863 : ∀ k : Nat,
    iterate (1048576 * k + 518863) 32 = 531441 * k + 262972 ∧
      531441 * k + 262972 < 1048576 * k + 518863 := by
  intro k
  have h1 : C (1048576 * k + 518863) = 3145728 * k + 1556590 := by
    unfold C
    simp [show (1048576 * k + 518863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1556590) = 1572864 * k + 778295 := by
    unfold C
    simp [show (3145728 * k + 1556590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 778295) = 4718592 * k + 2334886 := by
    unfold C
    simp [show (1572864 * k + 778295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2334886) = 2359296 * k + 1167443 := by
    unfold C
    simp [show (4718592 * k + 2334886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1167443) = 7077888 * k + 3502330 := by
    unfold C
    simp [show (2359296 * k + 1167443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3502330) = 3538944 * k + 1751165 := by
    unfold C
    simp [show (7077888 * k + 3502330) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1751165) = 10616832 * k + 5253496 := by
    unfold C
    simp [show (3538944 * k + 1751165) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5253496) = 5308416 * k + 2626748 := by
    unfold C
    simp [show (10616832 * k + 5253496) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2626748) = 2654208 * k + 1313374 := by
    unfold C
    simp [show (5308416 * k + 2626748) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1313374) = 1327104 * k + 656687 := by
    unfold C
    simp [show (2654208 * k + 1313374) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 656687) = 3981312 * k + 1970062 := by
    unfold C
    simp [show (1327104 * k + 656687) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1970062) = 1990656 * k + 985031 := by
    unfold C
    simp [show (3981312 * k + 1970062) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 985031) = 5971968 * k + 2955094 := by
    unfold C
    simp [show (1990656 * k + 985031) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2955094) = 2985984 * k + 1477547 := by
    unfold C
    simp [show (5971968 * k + 2955094) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1477547) = 8957952 * k + 4432642 := by
    unfold C
    simp [show (2985984 * k + 1477547) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4432642) = 4478976 * k + 2216321 := by
    unfold C
    simp [show (8957952 * k + 4432642) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2216321) = 13436928 * k + 6648964 := by
    unfold C
    simp [show (4478976 * k + 2216321) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6648964) = 6718464 * k + 3324482 := by
    unfold C
    simp [show (13436928 * k + 6648964) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3324482) = 3359232 * k + 1662241 := by
    unfold C
    simp [show (6718464 * k + 3324482) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1662241) = 10077696 * k + 4986724 := by
    unfold C
    simp [show (3359232 * k + 1662241) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4986724) = 5038848 * k + 2493362 := by
    unfold C
    simp [show (10077696 * k + 4986724) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2493362) = 2519424 * k + 1246681 := by
    unfold C
    simp [show (5038848 * k + 2493362) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1246681) = 7558272 * k + 3740044 := by
    unfold C
    simp [show (2519424 * k + 1246681) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3740044) = 3779136 * k + 1870022 := by
    unfold C
    simp [show (7558272 * k + 3740044) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1870022) = 1889568 * k + 935011 := by
    unfold C
    simp [show (3779136 * k + 1870022) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 935011) = 5668704 * k + 2805034 := by
    unfold C
    simp [show (1889568 * k + 935011) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2805034) = 2834352 * k + 1402517 := by
    unfold C
    simp [show (5668704 * k + 2805034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1402517) = 8503056 * k + 4207552 := by
    unfold C
    simp [show (2834352 * k + 1402517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4207552) = 4251528 * k + 2103776 := by
    unfold C
    simp [show (8503056 * k + 4207552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2103776) = 2125764 * k + 1051888 := by
    unfold C
    simp [show (4251528 * k + 2103776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1051888) = 1062882 * k + 525944 := by
    unfold C
    simp [show (2125764 * k + 1051888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 525944) = 531441 * k + 262972 := by
    unfold C
    simp [show (1062882 * k + 525944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 518863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 518863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_518911 : ∀ k : Nat,
    iterate (1048576 * k + 518911) 32 = 531441 * k + 262996 ∧
      531441 * k + 262996 < 1048576 * k + 518911 := by
  intro k
  have h1 : C (1048576 * k + 518911) = 3145728 * k + 1556734 := by
    unfold C
    simp [show (1048576 * k + 518911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1556734) = 1572864 * k + 778367 := by
    unfold C
    simp [show (3145728 * k + 1556734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 778367) = 4718592 * k + 2335102 := by
    unfold C
    simp [show (1572864 * k + 778367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2335102) = 2359296 * k + 1167551 := by
    unfold C
    simp [show (4718592 * k + 2335102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1167551) = 7077888 * k + 3502654 := by
    unfold C
    simp [show (2359296 * k + 1167551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3502654) = 3538944 * k + 1751327 := by
    unfold C
    simp [show (7077888 * k + 3502654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1751327) = 10616832 * k + 5253982 := by
    unfold C
    simp [show (3538944 * k + 1751327) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5253982) = 5308416 * k + 2626991 := by
    unfold C
    simp [show (10616832 * k + 5253982) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2626991) = 15925248 * k + 7880974 := by
    unfold C
    simp [show (5308416 * k + 2626991) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7880974) = 7962624 * k + 3940487 := by
    unfold C
    simp [show (15925248 * k + 7880974) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3940487) = 23887872 * k + 11821462 := by
    unfold C
    simp [show (7962624 * k + 3940487) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11821462) = 11943936 * k + 5910731 := by
    unfold C
    simp [show (23887872 * k + 11821462) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5910731) = 35831808 * k + 17732194 := by
    unfold C
    simp [show (11943936 * k + 5910731) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17732194) = 17915904 * k + 8866097 := by
    unfold C
    simp [show (35831808 * k + 17732194) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8866097) = 53747712 * k + 26598292 := by
    unfold C
    simp [show (17915904 * k + 8866097) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 26598292) = 26873856 * k + 13299146 := by
    unfold C
    simp [show (53747712 * k + 26598292) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13299146) = 13436928 * k + 6649573 := by
    unfold C
    simp [show (26873856 * k + 13299146) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6649573) = 40310784 * k + 19948720 := by
    unfold C
    simp [show (13436928 * k + 6649573) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19948720) = 20155392 * k + 9974360 := by
    unfold C
    simp [show (40310784 * k + 19948720) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9974360) = 10077696 * k + 4987180 := by
    unfold C
    simp [show (20155392 * k + 9974360) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4987180) = 5038848 * k + 2493590 := by
    unfold C
    simp [show (10077696 * k + 4987180) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2493590) = 2519424 * k + 1246795 := by
    unfold C
    simp [show (5038848 * k + 2493590) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1246795) = 7558272 * k + 3740386 := by
    unfold C
    simp [show (2519424 * k + 1246795) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3740386) = 3779136 * k + 1870193 := by
    unfold C
    simp [show (7558272 * k + 3740386) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1870193) = 11337408 * k + 5610580 := by
    unfold C
    simp [show (3779136 * k + 1870193) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5610580) = 5668704 * k + 2805290 := by
    unfold C
    simp [show (11337408 * k + 5610580) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2805290) = 2834352 * k + 1402645 := by
    unfold C
    simp [show (5668704 * k + 2805290) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1402645) = 8503056 * k + 4207936 := by
    unfold C
    simp [show (2834352 * k + 1402645) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4207936) = 4251528 * k + 2103968 := by
    unfold C
    simp [show (8503056 * k + 4207936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2103968) = 2125764 * k + 1051984 := by
    unfold C
    simp [show (4251528 * k + 2103968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1051984) = 1062882 * k + 525992 := by
    unfold C
    simp [show (2125764 * k + 1051984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 525992) = 531441 * k + 262996 := by
    unfold C
    simp [show (1062882 * k + 525992) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 518911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 518911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_519847 : ∀ k : Nat,
    iterate (1048576 * k + 519847) 32 = 531441 * k + 263471 ∧
      531441 * k + 263471 < 1048576 * k + 519847 := by
  intro k
  have h1 : C (1048576 * k + 519847) = 3145728 * k + 1559542 := by
    unfold C
    simp [show (1048576 * k + 519847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1559542) = 1572864 * k + 779771 := by
    unfold C
    simp [show (3145728 * k + 1559542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 779771) = 4718592 * k + 2339314 := by
    unfold C
    simp [show (1572864 * k + 779771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2339314) = 2359296 * k + 1169657 := by
    unfold C
    simp [show (4718592 * k + 2339314) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1169657) = 7077888 * k + 3508972 := by
    unfold C
    simp [show (2359296 * k + 1169657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3508972) = 3538944 * k + 1754486 := by
    unfold C
    simp [show (7077888 * k + 3508972) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1754486) = 1769472 * k + 877243 := by
    unfold C
    simp [show (3538944 * k + 1754486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 877243) = 5308416 * k + 2631730 := by
    unfold C
    simp [show (1769472 * k + 877243) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2631730) = 2654208 * k + 1315865 := by
    unfold C
    simp [show (5308416 * k + 2631730) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1315865) = 7962624 * k + 3947596 := by
    unfold C
    simp [show (2654208 * k + 1315865) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3947596) = 3981312 * k + 1973798 := by
    unfold C
    simp [show (7962624 * k + 3947596) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1973798) = 1990656 * k + 986899 := by
    unfold C
    simp [show (3981312 * k + 1973798) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 986899) = 5971968 * k + 2960698 := by
    unfold C
    simp [show (1990656 * k + 986899) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2960698) = 2985984 * k + 1480349 := by
    unfold C
    simp [show (5971968 * k + 2960698) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1480349) = 8957952 * k + 4441048 := by
    unfold C
    simp [show (2985984 * k + 1480349) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4441048) = 4478976 * k + 2220524 := by
    unfold C
    simp [show (8957952 * k + 4441048) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2220524) = 2239488 * k + 1110262 := by
    unfold C
    simp [show (4478976 * k + 2220524) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1110262) = 1119744 * k + 555131 := by
    unfold C
    simp [show (2239488 * k + 1110262) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 555131) = 3359232 * k + 1665394 := by
    unfold C
    simp [show (1119744 * k + 555131) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1665394) = 1679616 * k + 832697 := by
    unfold C
    simp [show (3359232 * k + 1665394) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 832697) = 5038848 * k + 2498092 := by
    unfold C
    simp [show (1679616 * k + 832697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2498092) = 2519424 * k + 1249046 := by
    unfold C
    simp [show (5038848 * k + 2498092) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1249046) = 1259712 * k + 624523 := by
    unfold C
    simp [show (2519424 * k + 1249046) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 624523) = 3779136 * k + 1873570 := by
    unfold C
    simp [show (1259712 * k + 624523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1873570) = 1889568 * k + 936785 := by
    unfold C
    simp [show (3779136 * k + 1873570) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 936785) = 5668704 * k + 2810356 := by
    unfold C
    simp [show (1889568 * k + 936785) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2810356) = 2834352 * k + 1405178 := by
    unfold C
    simp [show (5668704 * k + 2810356) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1405178) = 1417176 * k + 702589 := by
    unfold C
    simp [show (2834352 * k + 1405178) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 702589) = 4251528 * k + 2107768 := by
    unfold C
    simp [show (1417176 * k + 702589) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2107768) = 2125764 * k + 1053884 := by
    unfold C
    simp [show (4251528 * k + 2107768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1053884) = 1062882 * k + 526942 := by
    unfold C
    simp [show (2125764 * k + 1053884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 526942) = 531441 * k + 263471 := by
    unfold C
    simp [show (1062882 * k + 526942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 519847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 519847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_519919 : ∀ k : Nat,
    iterate (1048576 * k + 519919) 32 = 531441 * k + 263507 ∧
      531441 * k + 263507 < 1048576 * k + 519919 := by
  intro k
  have h1 : C (1048576 * k + 519919) = 3145728 * k + 1559758 := by
    unfold C
    simp [show (1048576 * k + 519919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1559758) = 1572864 * k + 779879 := by
    unfold C
    simp [show (3145728 * k + 1559758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 779879) = 4718592 * k + 2339638 := by
    unfold C
    simp [show (1572864 * k + 779879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2339638) = 2359296 * k + 1169819 := by
    unfold C
    simp [show (4718592 * k + 2339638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1169819) = 7077888 * k + 3509458 := by
    unfold C
    simp [show (2359296 * k + 1169819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3509458) = 3538944 * k + 1754729 := by
    unfold C
    simp [show (7077888 * k + 3509458) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1754729) = 10616832 * k + 5264188 := by
    unfold C
    simp [show (3538944 * k + 1754729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5264188) = 5308416 * k + 2632094 := by
    unfold C
    simp [show (10616832 * k + 5264188) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2632094) = 2654208 * k + 1316047 := by
    unfold C
    simp [show (5308416 * k + 2632094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1316047) = 7962624 * k + 3948142 := by
    unfold C
    simp [show (2654208 * k + 1316047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3948142) = 3981312 * k + 1974071 := by
    unfold C
    simp [show (7962624 * k + 3948142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1974071) = 11943936 * k + 5922214 := by
    unfold C
    simp [show (3981312 * k + 1974071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5922214) = 5971968 * k + 2961107 := by
    unfold C
    simp [show (11943936 * k + 5922214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2961107) = 17915904 * k + 8883322 := by
    unfold C
    simp [show (5971968 * k + 2961107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8883322) = 8957952 * k + 4441661 := by
    unfold C
    simp [show (17915904 * k + 8883322) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4441661) = 26873856 * k + 13324984 := by
    unfold C
    simp [show (8957952 * k + 4441661) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13324984) = 13436928 * k + 6662492 := by
    unfold C
    simp [show (26873856 * k + 13324984) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6662492) = 6718464 * k + 3331246 := by
    unfold C
    simp [show (13436928 * k + 6662492) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3331246) = 3359232 * k + 1665623 := by
    unfold C
    simp [show (6718464 * k + 3331246) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1665623) = 10077696 * k + 4996870 := by
    unfold C
    simp [show (3359232 * k + 1665623) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4996870) = 5038848 * k + 2498435 := by
    unfold C
    simp [show (10077696 * k + 4996870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2498435) = 15116544 * k + 7495306 := by
    unfold C
    simp [show (5038848 * k + 2498435) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7495306) = 7558272 * k + 3747653 := by
    unfold C
    simp [show (15116544 * k + 7495306) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3747653) = 22674816 * k + 11242960 := by
    unfold C
    simp [show (7558272 * k + 3747653) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11242960) = 11337408 * k + 5621480 := by
    unfold C
    simp [show (22674816 * k + 11242960) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5621480) = 5668704 * k + 2810740 := by
    unfold C
    simp [show (11337408 * k + 5621480) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2810740) = 2834352 * k + 1405370 := by
    unfold C
    simp [show (5668704 * k + 2810740) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1405370) = 1417176 * k + 702685 := by
    unfold C
    simp [show (2834352 * k + 1405370) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 702685) = 4251528 * k + 2108056 := by
    unfold C
    simp [show (1417176 * k + 702685) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2108056) = 2125764 * k + 1054028 := by
    unfold C
    simp [show (4251528 * k + 2108056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1054028) = 1062882 * k + 527014 := by
    unfold C
    simp [show (2125764 * k + 1054028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 527014) = 531441 * k + 263507 := by
    unfold C
    simp [show (1062882 * k + 527014) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 519919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 519919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_520831 : ∀ k : Nat,
    iterate (1048576 * k + 520831) 32 = 531441 * k + 263969 ∧
      531441 * k + 263969 < 1048576 * k + 520831 := by
  intro k
  have h1 : C (1048576 * k + 520831) = 3145728 * k + 1562494 := by
    unfold C
    simp [show (1048576 * k + 520831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1562494) = 1572864 * k + 781247 := by
    unfold C
    simp [show (3145728 * k + 1562494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 781247) = 4718592 * k + 2343742 := by
    unfold C
    simp [show (1572864 * k + 781247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2343742) = 2359296 * k + 1171871 := by
    unfold C
    simp [show (4718592 * k + 2343742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1171871) = 7077888 * k + 3515614 := by
    unfold C
    simp [show (2359296 * k + 1171871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3515614) = 3538944 * k + 1757807 := by
    unfold C
    simp [show (7077888 * k + 3515614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1757807) = 10616832 * k + 5273422 := by
    unfold C
    simp [show (3538944 * k + 1757807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5273422) = 5308416 * k + 2636711 := by
    unfold C
    simp [show (10616832 * k + 5273422) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2636711) = 15925248 * k + 7910134 := by
    unfold C
    simp [show (5308416 * k + 2636711) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7910134) = 7962624 * k + 3955067 := by
    unfold C
    simp [show (15925248 * k + 7910134) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3955067) = 23887872 * k + 11865202 := by
    unfold C
    simp [show (7962624 * k + 3955067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11865202) = 11943936 * k + 5932601 := by
    unfold C
    simp [show (23887872 * k + 11865202) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5932601) = 35831808 * k + 17797804 := by
    unfold C
    simp [show (11943936 * k + 5932601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17797804) = 17915904 * k + 8898902 := by
    unfold C
    simp [show (35831808 * k + 17797804) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8898902) = 8957952 * k + 4449451 := by
    unfold C
    simp [show (17915904 * k + 8898902) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4449451) = 26873856 * k + 13348354 := by
    unfold C
    simp [show (8957952 * k + 4449451) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13348354) = 13436928 * k + 6674177 := by
    unfold C
    simp [show (26873856 * k + 13348354) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6674177) = 40310784 * k + 20022532 := by
    unfold C
    simp [show (13436928 * k + 6674177) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 20022532) = 20155392 * k + 10011266 := by
    unfold C
    simp [show (40310784 * k + 20022532) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10011266) = 10077696 * k + 5005633 := by
    unfold C
    simp [show (20155392 * k + 10011266) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5005633) = 30233088 * k + 15016900 := by
    unfold C
    simp [show (10077696 * k + 5005633) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15016900) = 15116544 * k + 7508450 := by
    unfold C
    simp [show (30233088 * k + 15016900) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7508450) = 7558272 * k + 3754225 := by
    unfold C
    simp [show (15116544 * k + 7508450) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3754225) = 22674816 * k + 11262676 := by
    unfold C
    simp [show (7558272 * k + 3754225) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11262676) = 11337408 * k + 5631338 := by
    unfold C
    simp [show (22674816 * k + 11262676) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5631338) = 5668704 * k + 2815669 := by
    unfold C
    simp [show (11337408 * k + 5631338) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2815669) = 17006112 * k + 8447008 := by
    unfold C
    simp [show (5668704 * k + 2815669) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8447008) = 8503056 * k + 4223504 := by
    unfold C
    simp [show (17006112 * k + 8447008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4223504) = 4251528 * k + 2111752 := by
    unfold C
    simp [show (8503056 * k + 4223504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2111752) = 2125764 * k + 1055876 := by
    unfold C
    simp [show (4251528 * k + 2111752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1055876) = 1062882 * k + 527938 := by
    unfold C
    simp [show (2125764 * k + 1055876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 527938) = 531441 * k + 263969 := by
    unfold C
    simp [show (1062882 * k + 527938) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 520831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 520831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_520935 : ∀ k : Nat,
    iterate (1048576 * k + 520935) 32 = 531441 * k + 264022 ∧
      531441 * k + 264022 < 1048576 * k + 520935 := by
  intro k
  have h1 : C (1048576 * k + 520935) = 3145728 * k + 1562806 := by
    unfold C
    simp [show (1048576 * k + 520935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1562806) = 1572864 * k + 781403 := by
    unfold C
    simp [show (3145728 * k + 1562806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 781403) = 4718592 * k + 2344210 := by
    unfold C
    simp [show (1572864 * k + 781403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2344210) = 2359296 * k + 1172105 := by
    unfold C
    simp [show (4718592 * k + 2344210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1172105) = 7077888 * k + 3516316 := by
    unfold C
    simp [show (2359296 * k + 1172105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3516316) = 3538944 * k + 1758158 := by
    unfold C
    simp [show (7077888 * k + 3516316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1758158) = 1769472 * k + 879079 := by
    unfold C
    simp [show (3538944 * k + 1758158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 879079) = 5308416 * k + 2637238 := by
    unfold C
    simp [show (1769472 * k + 879079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2637238) = 2654208 * k + 1318619 := by
    unfold C
    simp [show (5308416 * k + 2637238) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1318619) = 7962624 * k + 3955858 := by
    unfold C
    simp [show (2654208 * k + 1318619) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3955858) = 3981312 * k + 1977929 := by
    unfold C
    simp [show (7962624 * k + 3955858) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1977929) = 11943936 * k + 5933788 := by
    unfold C
    simp [show (3981312 * k + 1977929) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5933788) = 5971968 * k + 2966894 := by
    unfold C
    simp [show (11943936 * k + 5933788) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2966894) = 2985984 * k + 1483447 := by
    unfold C
    simp [show (5971968 * k + 2966894) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1483447) = 8957952 * k + 4450342 := by
    unfold C
    simp [show (2985984 * k + 1483447) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4450342) = 4478976 * k + 2225171 := by
    unfold C
    simp [show (8957952 * k + 4450342) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2225171) = 13436928 * k + 6675514 := by
    unfold C
    simp [show (4478976 * k + 2225171) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6675514) = 6718464 * k + 3337757 := by
    unfold C
    simp [show (13436928 * k + 6675514) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3337757) = 20155392 * k + 10013272 := by
    unfold C
    simp [show (6718464 * k + 3337757) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10013272) = 10077696 * k + 5006636 := by
    unfold C
    simp [show (20155392 * k + 10013272) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5006636) = 5038848 * k + 2503318 := by
    unfold C
    simp [show (10077696 * k + 5006636) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2503318) = 2519424 * k + 1251659 := by
    unfold C
    simp [show (5038848 * k + 2503318) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1251659) = 7558272 * k + 3754978 := by
    unfold C
    simp [show (2519424 * k + 1251659) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3754978) = 3779136 * k + 1877489 := by
    unfold C
    simp [show (7558272 * k + 3754978) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1877489) = 11337408 * k + 5632468 := by
    unfold C
    simp [show (3779136 * k + 1877489) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5632468) = 5668704 * k + 2816234 := by
    unfold C
    simp [show (11337408 * k + 5632468) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2816234) = 2834352 * k + 1408117 := by
    unfold C
    simp [show (5668704 * k + 2816234) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1408117) = 8503056 * k + 4224352 := by
    unfold C
    simp [show (2834352 * k + 1408117) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4224352) = 4251528 * k + 2112176 := by
    unfold C
    simp [show (8503056 * k + 4224352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2112176) = 2125764 * k + 1056088 := by
    unfold C
    simp [show (4251528 * k + 2112176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1056088) = 1062882 * k + 528044 := by
    unfold C
    simp [show (2125764 * k + 1056088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 528044) = 531441 * k + 264022 := by
    unfold C
    simp [show (1062882 * k + 528044) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 520935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 520935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_521855 : ∀ k : Nat,
    iterate (1048576 * k + 521855) 32 = 531441 * k + 264488 ∧
      531441 * k + 264488 < 1048576 * k + 521855 := by
  intro k
  have h1 : C (1048576 * k + 521855) = 3145728 * k + 1565566 := by
    unfold C
    simp [show (1048576 * k + 521855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1565566) = 1572864 * k + 782783 := by
    unfold C
    simp [show (3145728 * k + 1565566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 782783) = 4718592 * k + 2348350 := by
    unfold C
    simp [show (1572864 * k + 782783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2348350) = 2359296 * k + 1174175 := by
    unfold C
    simp [show (4718592 * k + 2348350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1174175) = 7077888 * k + 3522526 := by
    unfold C
    simp [show (2359296 * k + 1174175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3522526) = 3538944 * k + 1761263 := by
    unfold C
    simp [show (7077888 * k + 3522526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1761263) = 10616832 * k + 5283790 := by
    unfold C
    simp [show (3538944 * k + 1761263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5283790) = 5308416 * k + 2641895 := by
    unfold C
    simp [show (10616832 * k + 5283790) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2641895) = 15925248 * k + 7925686 := by
    unfold C
    simp [show (5308416 * k + 2641895) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7925686) = 7962624 * k + 3962843 := by
    unfold C
    simp [show (15925248 * k + 7925686) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3962843) = 23887872 * k + 11888530 := by
    unfold C
    simp [show (7962624 * k + 3962843) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11888530) = 11943936 * k + 5944265 := by
    unfold C
    simp [show (23887872 * k + 11888530) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5944265) = 35831808 * k + 17832796 := by
    unfold C
    simp [show (11943936 * k + 5944265) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17832796) = 17915904 * k + 8916398 := by
    unfold C
    simp [show (35831808 * k + 17832796) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8916398) = 8957952 * k + 4458199 := by
    unfold C
    simp [show (17915904 * k + 8916398) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4458199) = 26873856 * k + 13374598 := by
    unfold C
    simp [show (8957952 * k + 4458199) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13374598) = 13436928 * k + 6687299 := by
    unfold C
    simp [show (26873856 * k + 13374598) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6687299) = 40310784 * k + 20061898 := by
    unfold C
    simp [show (13436928 * k + 6687299) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 20061898) = 20155392 * k + 10030949 := by
    unfold C
    simp [show (40310784 * k + 20061898) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10030949) = 60466176 * k + 30092848 := by
    unfold C
    simp [show (20155392 * k + 10030949) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 30092848) = 30233088 * k + 15046424 := by
    unfold C
    simp [show (60466176 * k + 30092848) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 15046424) = 15116544 * k + 7523212 := by
    unfold C
    simp [show (30233088 * k + 15046424) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7523212) = 7558272 * k + 3761606 := by
    unfold C
    simp [show (15116544 * k + 7523212) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3761606) = 3779136 * k + 1880803 := by
    unfold C
    simp [show (7558272 * k + 3761606) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1880803) = 11337408 * k + 5642410 := by
    unfold C
    simp [show (3779136 * k + 1880803) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5642410) = 5668704 * k + 2821205 := by
    unfold C
    simp [show (11337408 * k + 5642410) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2821205) = 17006112 * k + 8463616 := by
    unfold C
    simp [show (5668704 * k + 2821205) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8463616) = 8503056 * k + 4231808 := by
    unfold C
    simp [show (17006112 * k + 8463616) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4231808) = 4251528 * k + 2115904 := by
    unfold C
    simp [show (8503056 * k + 4231808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2115904) = 2125764 * k + 1057952 := by
    unfold C
    simp [show (4251528 * k + 2115904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1057952) = 1062882 * k + 528976 := by
    unfold C
    simp [show (2125764 * k + 1057952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 528976) = 531441 * k + 264488 := by
    unfold C
    simp [show (1062882 * k + 528976) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 521855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 521855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_521935 : ∀ k : Nat,
    iterate (1048576 * k + 521935) 32 = 531441 * k + 264529 ∧
      531441 * k + 264529 < 1048576 * k + 521935 := by
  intro k
  have h1 : C (1048576 * k + 521935) = 3145728 * k + 1565806 := by
    unfold C
    simp [show (1048576 * k + 521935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1565806) = 1572864 * k + 782903 := by
    unfold C
    simp [show (3145728 * k + 1565806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 782903) = 4718592 * k + 2348710 := by
    unfold C
    simp [show (1572864 * k + 782903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2348710) = 2359296 * k + 1174355 := by
    unfold C
    simp [show (4718592 * k + 2348710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1174355) = 7077888 * k + 3523066 := by
    unfold C
    simp [show (2359296 * k + 1174355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3523066) = 3538944 * k + 1761533 := by
    unfold C
    simp [show (7077888 * k + 3523066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1761533) = 10616832 * k + 5284600 := by
    unfold C
    simp [show (3538944 * k + 1761533) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5284600) = 5308416 * k + 2642300 := by
    unfold C
    simp [show (10616832 * k + 5284600) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2642300) = 2654208 * k + 1321150 := by
    unfold C
    simp [show (5308416 * k + 2642300) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1321150) = 1327104 * k + 660575 := by
    unfold C
    simp [show (2654208 * k + 1321150) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 660575) = 3981312 * k + 1981726 := by
    unfold C
    simp [show (1327104 * k + 660575) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1981726) = 1990656 * k + 990863 := by
    unfold C
    simp [show (3981312 * k + 1981726) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 990863) = 5971968 * k + 2972590 := by
    unfold C
    simp [show (1990656 * k + 990863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2972590) = 2985984 * k + 1486295 := by
    unfold C
    simp [show (5971968 * k + 2972590) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1486295) = 8957952 * k + 4458886 := by
    unfold C
    simp [show (2985984 * k + 1486295) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4458886) = 4478976 * k + 2229443 := by
    unfold C
    simp [show (8957952 * k + 4458886) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2229443) = 13436928 * k + 6688330 := by
    unfold C
    simp [show (4478976 * k + 2229443) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6688330) = 6718464 * k + 3344165 := by
    unfold C
    simp [show (13436928 * k + 6688330) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3344165) = 20155392 * k + 10032496 := by
    unfold C
    simp [show (6718464 * k + 3344165) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10032496) = 10077696 * k + 5016248 := by
    unfold C
    simp [show (20155392 * k + 10032496) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5016248) = 5038848 * k + 2508124 := by
    unfold C
    simp [show (10077696 * k + 5016248) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2508124) = 2519424 * k + 1254062 := by
    unfold C
    simp [show (5038848 * k + 2508124) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1254062) = 1259712 * k + 627031 := by
    unfold C
    simp [show (2519424 * k + 1254062) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 627031) = 3779136 * k + 1881094 := by
    unfold C
    simp [show (1259712 * k + 627031) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1881094) = 1889568 * k + 940547 := by
    unfold C
    simp [show (3779136 * k + 1881094) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 940547) = 5668704 * k + 2821642 := by
    unfold C
    simp [show (1889568 * k + 940547) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2821642) = 2834352 * k + 1410821 := by
    unfold C
    simp [show (5668704 * k + 2821642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1410821) = 8503056 * k + 4232464 := by
    unfold C
    simp [show (2834352 * k + 1410821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4232464) = 4251528 * k + 2116232 := by
    unfold C
    simp [show (8503056 * k + 4232464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2116232) = 2125764 * k + 1058116 := by
    unfold C
    simp [show (4251528 * k + 2116232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1058116) = 1062882 * k + 529058 := by
    unfold C
    simp [show (2125764 * k + 1058116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 529058) = 531441 * k + 264529 := by
    unfold C
    simp [show (1062882 * k + 529058) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 521935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 521935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_522095 : ∀ k : Nat,
    iterate (1048576 * k + 522095) 32 = 531441 * k + 264610 ∧
      531441 * k + 264610 < 1048576 * k + 522095 := by
  intro k
  have h1 : C (1048576 * k + 522095) = 3145728 * k + 1566286 := by
    unfold C
    simp [show (1048576 * k + 522095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1566286) = 1572864 * k + 783143 := by
    unfold C
    simp [show (3145728 * k + 1566286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 783143) = 4718592 * k + 2349430 := by
    unfold C
    simp [show (1572864 * k + 783143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2349430) = 2359296 * k + 1174715 := by
    unfold C
    simp [show (4718592 * k + 2349430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1174715) = 7077888 * k + 3524146 := by
    unfold C
    simp [show (2359296 * k + 1174715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3524146) = 3538944 * k + 1762073 := by
    unfold C
    simp [show (7077888 * k + 3524146) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1762073) = 10616832 * k + 5286220 := by
    unfold C
    simp [show (3538944 * k + 1762073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5286220) = 5308416 * k + 2643110 := by
    unfold C
    simp [show (10616832 * k + 5286220) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2643110) = 2654208 * k + 1321555 := by
    unfold C
    simp [show (5308416 * k + 2643110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1321555) = 7962624 * k + 3964666 := by
    unfold C
    simp [show (2654208 * k + 1321555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3964666) = 3981312 * k + 1982333 := by
    unfold C
    simp [show (7962624 * k + 3964666) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1982333) = 11943936 * k + 5947000 := by
    unfold C
    simp [show (3981312 * k + 1982333) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5947000) = 5971968 * k + 2973500 := by
    unfold C
    simp [show (11943936 * k + 5947000) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2973500) = 2985984 * k + 1486750 := by
    unfold C
    simp [show (5971968 * k + 2973500) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1486750) = 1492992 * k + 743375 := by
    unfold C
    simp [show (2985984 * k + 1486750) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 743375) = 4478976 * k + 2230126 := by
    unfold C
    simp [show (1492992 * k + 743375) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2230126) = 2239488 * k + 1115063 := by
    unfold C
    simp [show (4478976 * k + 2230126) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1115063) = 6718464 * k + 3345190 := by
    unfold C
    simp [show (2239488 * k + 1115063) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3345190) = 3359232 * k + 1672595 := by
    unfold C
    simp [show (6718464 * k + 3345190) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1672595) = 10077696 * k + 5017786 := by
    unfold C
    simp [show (3359232 * k + 1672595) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5017786) = 5038848 * k + 2508893 := by
    unfold C
    simp [show (10077696 * k + 5017786) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2508893) = 15116544 * k + 7526680 := by
    unfold C
    simp [show (5038848 * k + 2508893) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7526680) = 7558272 * k + 3763340 := by
    unfold C
    simp [show (15116544 * k + 7526680) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3763340) = 3779136 * k + 1881670 := by
    unfold C
    simp [show (7558272 * k + 3763340) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1881670) = 1889568 * k + 940835 := by
    unfold C
    simp [show (3779136 * k + 1881670) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 940835) = 5668704 * k + 2822506 := by
    unfold C
    simp [show (1889568 * k + 940835) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2822506) = 2834352 * k + 1411253 := by
    unfold C
    simp [show (5668704 * k + 2822506) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1411253) = 8503056 * k + 4233760 := by
    unfold C
    simp [show (2834352 * k + 1411253) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4233760) = 4251528 * k + 2116880 := by
    unfold C
    simp [show (8503056 * k + 4233760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2116880) = 2125764 * k + 1058440 := by
    unfold C
    simp [show (4251528 * k + 2116880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1058440) = 1062882 * k + 529220 := by
    unfold C
    simp [show (2125764 * k + 1058440) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 529220) = 531441 * k + 264610 := by
    unfold C
    simp [show (1062882 * k + 529220) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 522095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 522095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_522523 : ∀ k : Nat,
    iterate (1048576 * k + 522523) 32 = 531441 * k + 264827 ∧
      531441 * k + 264827 < 1048576 * k + 522523 := by
  intro k
  have h1 : C (1048576 * k + 522523) = 3145728 * k + 1567570 := by
    unfold C
    simp [show (1048576 * k + 522523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1567570) = 1572864 * k + 783785 := by
    unfold C
    simp [show (3145728 * k + 1567570) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 783785) = 4718592 * k + 2351356 := by
    unfold C
    simp [show (1572864 * k + 783785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2351356) = 2359296 * k + 1175678 := by
    unfold C
    simp [show (4718592 * k + 2351356) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1175678) = 1179648 * k + 587839 := by
    unfold C
    simp [show (2359296 * k + 1175678) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 587839) = 3538944 * k + 1763518 := by
    unfold C
    simp [show (1179648 * k + 587839) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1763518) = 1769472 * k + 881759 := by
    unfold C
    simp [show (3538944 * k + 1763518) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 881759) = 5308416 * k + 2645278 := by
    unfold C
    simp [show (1769472 * k + 881759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2645278) = 2654208 * k + 1322639 := by
    unfold C
    simp [show (5308416 * k + 2645278) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1322639) = 7962624 * k + 3967918 := by
    unfold C
    simp [show (2654208 * k + 1322639) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3967918) = 3981312 * k + 1983959 := by
    unfold C
    simp [show (7962624 * k + 3967918) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1983959) = 11943936 * k + 5951878 := by
    unfold C
    simp [show (3981312 * k + 1983959) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5951878) = 5971968 * k + 2975939 := by
    unfold C
    simp [show (11943936 * k + 5951878) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2975939) = 17915904 * k + 8927818 := by
    unfold C
    simp [show (5971968 * k + 2975939) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8927818) = 8957952 * k + 4463909 := by
    unfold C
    simp [show (17915904 * k + 8927818) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4463909) = 26873856 * k + 13391728 := by
    unfold C
    simp [show (8957952 * k + 4463909) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13391728) = 13436928 * k + 6695864 := by
    unfold C
    simp [show (26873856 * k + 13391728) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6695864) = 6718464 * k + 3347932 := by
    unfold C
    simp [show (13436928 * k + 6695864) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3347932) = 3359232 * k + 1673966 := by
    unfold C
    simp [show (6718464 * k + 3347932) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1673966) = 1679616 * k + 836983 := by
    unfold C
    simp [show (3359232 * k + 1673966) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 836983) = 5038848 * k + 2510950 := by
    unfold C
    simp [show (1679616 * k + 836983) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2510950) = 2519424 * k + 1255475 := by
    unfold C
    simp [show (5038848 * k + 2510950) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1255475) = 7558272 * k + 3766426 := by
    unfold C
    simp [show (2519424 * k + 1255475) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3766426) = 3779136 * k + 1883213 := by
    unfold C
    simp [show (7558272 * k + 3766426) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1883213) = 11337408 * k + 5649640 := by
    unfold C
    simp [show (3779136 * k + 1883213) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5649640) = 5668704 * k + 2824820 := by
    unfold C
    simp [show (11337408 * k + 5649640) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2824820) = 2834352 * k + 1412410 := by
    unfold C
    simp [show (5668704 * k + 2824820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1412410) = 1417176 * k + 706205 := by
    unfold C
    simp [show (2834352 * k + 1412410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 706205) = 4251528 * k + 2118616 := by
    unfold C
    simp [show (1417176 * k + 706205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2118616) = 2125764 * k + 1059308 := by
    unfold C
    simp [show (4251528 * k + 2118616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1059308) = 1062882 * k + 529654 := by
    unfold C
    simp [show (2125764 * k + 1059308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 529654) = 531441 * k + 264827 := by
    unfold C
    simp [show (1062882 * k + 529654) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 522523) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 522523)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_522559 : ∀ k : Nat,
    iterate (1048576 * k + 522559) 32 = 531441 * k + 264845 ∧
      531441 * k + 264845 < 1048576 * k + 522559 := by
  intro k
  have h1 : C (1048576 * k + 522559) = 3145728 * k + 1567678 := by
    unfold C
    simp [show (1048576 * k + 522559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1567678) = 1572864 * k + 783839 := by
    unfold C
    simp [show (3145728 * k + 1567678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 783839) = 4718592 * k + 2351518 := by
    unfold C
    simp [show (1572864 * k + 783839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2351518) = 2359296 * k + 1175759 := by
    unfold C
    simp [show (4718592 * k + 2351518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1175759) = 7077888 * k + 3527278 := by
    unfold C
    simp [show (2359296 * k + 1175759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3527278) = 3538944 * k + 1763639 := by
    unfold C
    simp [show (7077888 * k + 3527278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1763639) = 10616832 * k + 5290918 := by
    unfold C
    simp [show (3538944 * k + 1763639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5290918) = 5308416 * k + 2645459 := by
    unfold C
    simp [show (10616832 * k + 5290918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2645459) = 15925248 * k + 7936378 := by
    unfold C
    simp [show (5308416 * k + 2645459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7936378) = 7962624 * k + 3968189 := by
    unfold C
    simp [show (15925248 * k + 7936378) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3968189) = 23887872 * k + 11904568 := by
    unfold C
    simp [show (7962624 * k + 3968189) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11904568) = 11943936 * k + 5952284 := by
    unfold C
    simp [show (23887872 * k + 11904568) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5952284) = 5971968 * k + 2976142 := by
    unfold C
    simp [show (11943936 * k + 5952284) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2976142) = 2985984 * k + 1488071 := by
    unfold C
    simp [show (5971968 * k + 2976142) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1488071) = 8957952 * k + 4464214 := by
    unfold C
    simp [show (2985984 * k + 1488071) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4464214) = 4478976 * k + 2232107 := by
    unfold C
    simp [show (8957952 * k + 4464214) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2232107) = 13436928 * k + 6696322 := by
    unfold C
    simp [show (4478976 * k + 2232107) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6696322) = 6718464 * k + 3348161 := by
    unfold C
    simp [show (13436928 * k + 6696322) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3348161) = 20155392 * k + 10044484 := by
    unfold C
    simp [show (6718464 * k + 3348161) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10044484) = 10077696 * k + 5022242 := by
    unfold C
    simp [show (20155392 * k + 10044484) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5022242) = 5038848 * k + 2511121 := by
    unfold C
    simp [show (10077696 * k + 5022242) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2511121) = 15116544 * k + 7533364 := by
    unfold C
    simp [show (5038848 * k + 2511121) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7533364) = 7558272 * k + 3766682 := by
    unfold C
    simp [show (15116544 * k + 7533364) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3766682) = 3779136 * k + 1883341 := by
    unfold C
    simp [show (7558272 * k + 3766682) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1883341) = 11337408 * k + 5650024 := by
    unfold C
    simp [show (3779136 * k + 1883341) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5650024) = 5668704 * k + 2825012 := by
    unfold C
    simp [show (11337408 * k + 5650024) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2825012) = 2834352 * k + 1412506 := by
    unfold C
    simp [show (5668704 * k + 2825012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1412506) = 1417176 * k + 706253 := by
    unfold C
    simp [show (2834352 * k + 1412506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 706253) = 4251528 * k + 2118760 := by
    unfold C
    simp [show (1417176 * k + 706253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2118760) = 2125764 * k + 1059380 := by
    unfold C
    simp [show (4251528 * k + 2118760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1059380) = 1062882 * k + 529690 := by
    unfold C
    simp [show (2125764 * k + 1059380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 529690) = 531441 * k + 264845 := by
    unfold C
    simp [show (1062882 * k + 529690) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 522559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 522559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard067
