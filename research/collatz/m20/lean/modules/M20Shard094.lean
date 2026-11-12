import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard094

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_725743 : ∀ k : Nat,
    iterate (1048576 * k + 725743) 32 = 531441 * k + 367823 ∧
      531441 * k + 367823 < 1048576 * k + 725743 := by
  intro k
  have h1 : C (1048576 * k + 725743) = 3145728 * k + 2177230 := by
    unfold C
    simp [show (1048576 * k + 725743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2177230) = 1572864 * k + 1088615 := by
    unfold C
    simp [show (3145728 * k + 2177230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1088615) = 4718592 * k + 3265846 := by
    unfold C
    simp [show (1572864 * k + 1088615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3265846) = 2359296 * k + 1632923 := by
    unfold C
    simp [show (4718592 * k + 3265846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1632923) = 7077888 * k + 4898770 := by
    unfold C
    simp [show (2359296 * k + 1632923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4898770) = 3538944 * k + 2449385 := by
    unfold C
    simp [show (7077888 * k + 4898770) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2449385) = 10616832 * k + 7348156 := by
    unfold C
    simp [show (3538944 * k + 2449385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7348156) = 5308416 * k + 3674078 := by
    unfold C
    simp [show (10616832 * k + 7348156) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3674078) = 2654208 * k + 1837039 := by
    unfold C
    simp [show (5308416 * k + 3674078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1837039) = 7962624 * k + 5511118 := by
    unfold C
    simp [show (2654208 * k + 1837039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5511118) = 3981312 * k + 2755559 := by
    unfold C
    simp [show (7962624 * k + 5511118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2755559) = 11943936 * k + 8266678 := by
    unfold C
    simp [show (3981312 * k + 2755559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8266678) = 5971968 * k + 4133339 := by
    unfold C
    simp [show (11943936 * k + 8266678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4133339) = 17915904 * k + 12400018 := by
    unfold C
    simp [show (5971968 * k + 4133339) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12400018) = 8957952 * k + 6200009 := by
    unfold C
    simp [show (17915904 * k + 12400018) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6200009) = 26873856 * k + 18600028 := by
    unfold C
    simp [show (8957952 * k + 6200009) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18600028) = 13436928 * k + 9300014 := by
    unfold C
    simp [show (26873856 * k + 18600028) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9300014) = 6718464 * k + 4650007 := by
    unfold C
    simp [show (13436928 * k + 9300014) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4650007) = 20155392 * k + 13950022 := by
    unfold C
    simp [show (6718464 * k + 4650007) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13950022) = 10077696 * k + 6975011 := by
    unfold C
    simp [show (20155392 * k + 13950022) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6975011) = 30233088 * k + 20925034 := by
    unfold C
    simp [show (10077696 * k + 6975011) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20925034) = 15116544 * k + 10462517 := by
    unfold C
    simp [show (30233088 * k + 20925034) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10462517) = 45349632 * k + 31387552 := by
    unfold C
    simp [show (15116544 * k + 10462517) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 31387552) = 22674816 * k + 15693776 := by
    unfold C
    simp [show (45349632 * k + 31387552) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15693776) = 11337408 * k + 7846888 := by
    unfold C
    simp [show (22674816 * k + 15693776) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7846888) = 5668704 * k + 3923444 := by
    unfold C
    simp [show (11337408 * k + 7846888) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3923444) = 2834352 * k + 1961722 := by
    unfold C
    simp [show (5668704 * k + 3923444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1961722) = 1417176 * k + 980861 := by
    unfold C
    simp [show (2834352 * k + 1961722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 980861) = 4251528 * k + 2942584 := by
    unfold C
    simp [show (1417176 * k + 980861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2942584) = 2125764 * k + 1471292 := by
    unfold C
    simp [show (4251528 * k + 2942584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1471292) = 1062882 * k + 735646 := by
    unfold C
    simp [show (2125764 * k + 1471292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 735646) = 531441 * k + 367823 := by
    unfold C
    simp [show (1062882 * k + 735646) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 725743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 725743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_726175 : ∀ k : Nat,
    iterate (1048576 * k + 726175) 32 = 531441 * k + 368042 ∧
      531441 * k + 368042 < 1048576 * k + 726175 := by
  intro k
  have h1 : C (1048576 * k + 726175) = 3145728 * k + 2178526 := by
    unfold C
    simp [show (1048576 * k + 726175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2178526) = 1572864 * k + 1089263 := by
    unfold C
    simp [show (3145728 * k + 2178526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1089263) = 4718592 * k + 3267790 := by
    unfold C
    simp [show (1572864 * k + 1089263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3267790) = 2359296 * k + 1633895 := by
    unfold C
    simp [show (4718592 * k + 3267790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1633895) = 7077888 * k + 4901686 := by
    unfold C
    simp [show (2359296 * k + 1633895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4901686) = 3538944 * k + 2450843 := by
    unfold C
    simp [show (7077888 * k + 4901686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2450843) = 10616832 * k + 7352530 := by
    unfold C
    simp [show (3538944 * k + 2450843) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7352530) = 5308416 * k + 3676265 := by
    unfold C
    simp [show (10616832 * k + 7352530) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3676265) = 15925248 * k + 11028796 := by
    unfold C
    simp [show (5308416 * k + 3676265) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11028796) = 7962624 * k + 5514398 := by
    unfold C
    simp [show (15925248 * k + 11028796) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5514398) = 3981312 * k + 2757199 := by
    unfold C
    simp [show (7962624 * k + 5514398) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2757199) = 11943936 * k + 8271598 := by
    unfold C
    simp [show (3981312 * k + 2757199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8271598) = 5971968 * k + 4135799 := by
    unfold C
    simp [show (11943936 * k + 8271598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4135799) = 17915904 * k + 12407398 := by
    unfold C
    simp [show (5971968 * k + 4135799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12407398) = 8957952 * k + 6203699 := by
    unfold C
    simp [show (17915904 * k + 12407398) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6203699) = 26873856 * k + 18611098 := by
    unfold C
    simp [show (8957952 * k + 6203699) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18611098) = 13436928 * k + 9305549 := by
    unfold C
    simp [show (26873856 * k + 18611098) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9305549) = 40310784 * k + 27916648 := by
    unfold C
    simp [show (13436928 * k + 9305549) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27916648) = 20155392 * k + 13958324 := by
    unfold C
    simp [show (40310784 * k + 27916648) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13958324) = 10077696 * k + 6979162 := by
    unfold C
    simp [show (20155392 * k + 13958324) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6979162) = 5038848 * k + 3489581 := by
    unfold C
    simp [show (10077696 * k + 6979162) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3489581) = 15116544 * k + 10468744 := by
    unfold C
    simp [show (5038848 * k + 3489581) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10468744) = 7558272 * k + 5234372 := by
    unfold C
    simp [show (15116544 * k + 10468744) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5234372) = 3779136 * k + 2617186 := by
    unfold C
    simp [show (7558272 * k + 5234372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2617186) = 1889568 * k + 1308593 := by
    unfold C
    simp [show (3779136 * k + 2617186) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1308593) = 5668704 * k + 3925780 := by
    unfold C
    simp [show (1889568 * k + 1308593) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3925780) = 2834352 * k + 1962890 := by
    unfold C
    simp [show (5668704 * k + 3925780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1962890) = 1417176 * k + 981445 := by
    unfold C
    simp [show (2834352 * k + 1962890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 981445) = 4251528 * k + 2944336 := by
    unfold C
    simp [show (1417176 * k + 981445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2944336) = 2125764 * k + 1472168 := by
    unfold C
    simp [show (4251528 * k + 2944336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1472168) = 1062882 * k + 736084 := by
    unfold C
    simp [show (2125764 * k + 1472168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 736084) = 531441 * k + 368042 := by
    unfold C
    simp [show (1062882 * k + 736084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 726175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 726175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_726299 : ∀ k : Nat,
    iterate (1048576 * k + 726299) 32 = 531441 * k + 368105 ∧
      531441 * k + 368105 < 1048576 * k + 726299 := by
  intro k
  have h1 : C (1048576 * k + 726299) = 3145728 * k + 2178898 := by
    unfold C
    simp [show (1048576 * k + 726299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2178898) = 1572864 * k + 1089449 := by
    unfold C
    simp [show (3145728 * k + 2178898) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1089449) = 4718592 * k + 3268348 := by
    unfold C
    simp [show (1572864 * k + 1089449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3268348) = 2359296 * k + 1634174 := by
    unfold C
    simp [show (4718592 * k + 3268348) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1634174) = 1179648 * k + 817087 := by
    unfold C
    simp [show (2359296 * k + 1634174) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 817087) = 3538944 * k + 2451262 := by
    unfold C
    simp [show (1179648 * k + 817087) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2451262) = 1769472 * k + 1225631 := by
    unfold C
    simp [show (3538944 * k + 2451262) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1225631) = 5308416 * k + 3676894 := by
    unfold C
    simp [show (1769472 * k + 1225631) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3676894) = 2654208 * k + 1838447 := by
    unfold C
    simp [show (5308416 * k + 3676894) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1838447) = 7962624 * k + 5515342 := by
    unfold C
    simp [show (2654208 * k + 1838447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5515342) = 3981312 * k + 2757671 := by
    unfold C
    simp [show (7962624 * k + 5515342) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2757671) = 11943936 * k + 8273014 := by
    unfold C
    simp [show (3981312 * k + 2757671) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8273014) = 5971968 * k + 4136507 := by
    unfold C
    simp [show (11943936 * k + 8273014) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4136507) = 17915904 * k + 12409522 := by
    unfold C
    simp [show (5971968 * k + 4136507) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12409522) = 8957952 * k + 6204761 := by
    unfold C
    simp [show (17915904 * k + 12409522) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6204761) = 26873856 * k + 18614284 := by
    unfold C
    simp [show (8957952 * k + 6204761) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18614284) = 13436928 * k + 9307142 := by
    unfold C
    simp [show (26873856 * k + 18614284) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9307142) = 6718464 * k + 4653571 := by
    unfold C
    simp [show (13436928 * k + 9307142) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4653571) = 20155392 * k + 13960714 := by
    unfold C
    simp [show (6718464 * k + 4653571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13960714) = 10077696 * k + 6980357 := by
    unfold C
    simp [show (20155392 * k + 13960714) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6980357) = 30233088 * k + 20941072 := by
    unfold C
    simp [show (10077696 * k + 6980357) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20941072) = 15116544 * k + 10470536 := by
    unfold C
    simp [show (30233088 * k + 20941072) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10470536) = 7558272 * k + 5235268 := by
    unfold C
    simp [show (15116544 * k + 10470536) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5235268) = 3779136 * k + 2617634 := by
    unfold C
    simp [show (7558272 * k + 5235268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2617634) = 1889568 * k + 1308817 := by
    unfold C
    simp [show (3779136 * k + 2617634) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1308817) = 5668704 * k + 3926452 := by
    unfold C
    simp [show (1889568 * k + 1308817) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3926452) = 2834352 * k + 1963226 := by
    unfold C
    simp [show (5668704 * k + 3926452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1963226) = 1417176 * k + 981613 := by
    unfold C
    simp [show (2834352 * k + 1963226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 981613) = 4251528 * k + 2944840 := by
    unfold C
    simp [show (1417176 * k + 981613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2944840) = 2125764 * k + 1472420 := by
    unfold C
    simp [show (4251528 * k + 2944840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1472420) = 1062882 * k + 736210 := by
    unfold C
    simp [show (2125764 * k + 1472420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 736210) = 531441 * k + 368105 := by
    unfold C
    simp [show (1062882 * k + 736210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 726299) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 726299)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_726735 : ∀ k : Nat,
    iterate (1048576 * k + 726735) 32 = 531441 * k + 368326 ∧
      531441 * k + 368326 < 1048576 * k + 726735 := by
  intro k
  have h1 : C (1048576 * k + 726735) = 3145728 * k + 2180206 := by
    unfold C
    simp [show (1048576 * k + 726735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2180206) = 1572864 * k + 1090103 := by
    unfold C
    simp [show (3145728 * k + 2180206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1090103) = 4718592 * k + 3270310 := by
    unfold C
    simp [show (1572864 * k + 1090103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3270310) = 2359296 * k + 1635155 := by
    unfold C
    simp [show (4718592 * k + 3270310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1635155) = 7077888 * k + 4905466 := by
    unfold C
    simp [show (2359296 * k + 1635155) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4905466) = 3538944 * k + 2452733 := by
    unfold C
    simp [show (7077888 * k + 4905466) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2452733) = 10616832 * k + 7358200 := by
    unfold C
    simp [show (3538944 * k + 2452733) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7358200) = 5308416 * k + 3679100 := by
    unfold C
    simp [show (10616832 * k + 7358200) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3679100) = 2654208 * k + 1839550 := by
    unfold C
    simp [show (5308416 * k + 3679100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1839550) = 1327104 * k + 919775 := by
    unfold C
    simp [show (2654208 * k + 1839550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 919775) = 3981312 * k + 2759326 := by
    unfold C
    simp [show (1327104 * k + 919775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2759326) = 1990656 * k + 1379663 := by
    unfold C
    simp [show (3981312 * k + 2759326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1379663) = 5971968 * k + 4138990 := by
    unfold C
    simp [show (1990656 * k + 1379663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4138990) = 2985984 * k + 2069495 := by
    unfold C
    simp [show (5971968 * k + 4138990) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2069495) = 8957952 * k + 6208486 := by
    unfold C
    simp [show (2985984 * k + 2069495) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6208486) = 4478976 * k + 3104243 := by
    unfold C
    simp [show (8957952 * k + 6208486) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3104243) = 13436928 * k + 9312730 := by
    unfold C
    simp [show (4478976 * k + 3104243) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9312730) = 6718464 * k + 4656365 := by
    unfold C
    simp [show (13436928 * k + 9312730) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4656365) = 20155392 * k + 13969096 := by
    unfold C
    simp [show (6718464 * k + 4656365) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13969096) = 10077696 * k + 6984548 := by
    unfold C
    simp [show (20155392 * k + 13969096) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6984548) = 5038848 * k + 3492274 := by
    unfold C
    simp [show (10077696 * k + 6984548) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3492274) = 2519424 * k + 1746137 := by
    unfold C
    simp [show (5038848 * k + 3492274) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1746137) = 7558272 * k + 5238412 := by
    unfold C
    simp [show (2519424 * k + 1746137) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5238412) = 3779136 * k + 2619206 := by
    unfold C
    simp [show (7558272 * k + 5238412) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2619206) = 1889568 * k + 1309603 := by
    unfold C
    simp [show (3779136 * k + 2619206) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1309603) = 5668704 * k + 3928810 := by
    unfold C
    simp [show (1889568 * k + 1309603) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3928810) = 2834352 * k + 1964405 := by
    unfold C
    simp [show (5668704 * k + 3928810) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1964405) = 8503056 * k + 5893216 := by
    unfold C
    simp [show (2834352 * k + 1964405) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5893216) = 4251528 * k + 2946608 := by
    unfold C
    simp [show (8503056 * k + 5893216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2946608) = 2125764 * k + 1473304 := by
    unfold C
    simp [show (4251528 * k + 2946608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1473304) = 1062882 * k + 736652 := by
    unfold C
    simp [show (2125764 * k + 1473304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 736652) = 531441 * k + 368326 := by
    unfold C
    simp [show (1062882 * k + 736652) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 726735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 726735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_726895 : ∀ k : Nat,
    iterate (1048576 * k + 726895) 32 = 531441 * k + 368407 ∧
      531441 * k + 368407 < 1048576 * k + 726895 := by
  intro k
  have h1 : C (1048576 * k + 726895) = 3145728 * k + 2180686 := by
    unfold C
    simp [show (1048576 * k + 726895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2180686) = 1572864 * k + 1090343 := by
    unfold C
    simp [show (3145728 * k + 2180686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1090343) = 4718592 * k + 3271030 := by
    unfold C
    simp [show (1572864 * k + 1090343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3271030) = 2359296 * k + 1635515 := by
    unfold C
    simp [show (4718592 * k + 3271030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1635515) = 7077888 * k + 4906546 := by
    unfold C
    simp [show (2359296 * k + 1635515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4906546) = 3538944 * k + 2453273 := by
    unfold C
    simp [show (7077888 * k + 4906546) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2453273) = 10616832 * k + 7359820 := by
    unfold C
    simp [show (3538944 * k + 2453273) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7359820) = 5308416 * k + 3679910 := by
    unfold C
    simp [show (10616832 * k + 7359820) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3679910) = 2654208 * k + 1839955 := by
    unfold C
    simp [show (5308416 * k + 3679910) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1839955) = 7962624 * k + 5519866 := by
    unfold C
    simp [show (2654208 * k + 1839955) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5519866) = 3981312 * k + 2759933 := by
    unfold C
    simp [show (7962624 * k + 5519866) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2759933) = 11943936 * k + 8279800 := by
    unfold C
    simp [show (3981312 * k + 2759933) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8279800) = 5971968 * k + 4139900 := by
    unfold C
    simp [show (11943936 * k + 8279800) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4139900) = 2985984 * k + 2069950 := by
    unfold C
    simp [show (5971968 * k + 4139900) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2069950) = 1492992 * k + 1034975 := by
    unfold C
    simp [show (2985984 * k + 2069950) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1034975) = 4478976 * k + 3104926 := by
    unfold C
    simp [show (1492992 * k + 1034975) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3104926) = 2239488 * k + 1552463 := by
    unfold C
    simp [show (4478976 * k + 3104926) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1552463) = 6718464 * k + 4657390 := by
    unfold C
    simp [show (2239488 * k + 1552463) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4657390) = 3359232 * k + 2328695 := by
    unfold C
    simp [show (6718464 * k + 4657390) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2328695) = 10077696 * k + 6986086 := by
    unfold C
    simp [show (3359232 * k + 2328695) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6986086) = 5038848 * k + 3493043 := by
    unfold C
    simp [show (10077696 * k + 6986086) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3493043) = 15116544 * k + 10479130 := by
    unfold C
    simp [show (5038848 * k + 3493043) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10479130) = 7558272 * k + 5239565 := by
    unfold C
    simp [show (15116544 * k + 10479130) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5239565) = 22674816 * k + 15718696 := by
    unfold C
    simp [show (7558272 * k + 5239565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15718696) = 11337408 * k + 7859348 := by
    unfold C
    simp [show (22674816 * k + 15718696) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7859348) = 5668704 * k + 3929674 := by
    unfold C
    simp [show (11337408 * k + 7859348) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3929674) = 2834352 * k + 1964837 := by
    unfold C
    simp [show (5668704 * k + 3929674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1964837) = 8503056 * k + 5894512 := by
    unfold C
    simp [show (2834352 * k + 1964837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5894512) = 4251528 * k + 2947256 := by
    unfold C
    simp [show (8503056 * k + 5894512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2947256) = 2125764 * k + 1473628 := by
    unfold C
    simp [show (4251528 * k + 2947256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1473628) = 1062882 * k + 736814 := by
    unfold C
    simp [show (2125764 * k + 1473628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 736814) = 531441 * k + 368407 := by
    unfold C
    simp [show (1062882 * k + 736814) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 726895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 726895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_727791 : ∀ k : Nat,
    iterate (1048576 * k + 727791) 32 = 531441 * k + 368861 ∧
      531441 * k + 368861 < 1048576 * k + 727791 := by
  intro k
  have h1 : C (1048576 * k + 727791) = 3145728 * k + 2183374 := by
    unfold C
    simp [show (1048576 * k + 727791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2183374) = 1572864 * k + 1091687 := by
    unfold C
    simp [show (3145728 * k + 2183374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1091687) = 4718592 * k + 3275062 := by
    unfold C
    simp [show (1572864 * k + 1091687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3275062) = 2359296 * k + 1637531 := by
    unfold C
    simp [show (4718592 * k + 3275062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1637531) = 7077888 * k + 4912594 := by
    unfold C
    simp [show (2359296 * k + 1637531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4912594) = 3538944 * k + 2456297 := by
    unfold C
    simp [show (7077888 * k + 4912594) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2456297) = 10616832 * k + 7368892 := by
    unfold C
    simp [show (3538944 * k + 2456297) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7368892) = 5308416 * k + 3684446 := by
    unfold C
    simp [show (10616832 * k + 7368892) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3684446) = 2654208 * k + 1842223 := by
    unfold C
    simp [show (5308416 * k + 3684446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1842223) = 7962624 * k + 5526670 := by
    unfold C
    simp [show (2654208 * k + 1842223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5526670) = 3981312 * k + 2763335 := by
    unfold C
    simp [show (7962624 * k + 5526670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2763335) = 11943936 * k + 8290006 := by
    unfold C
    simp [show (3981312 * k + 2763335) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8290006) = 5971968 * k + 4145003 := by
    unfold C
    simp [show (11943936 * k + 8290006) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4145003) = 17915904 * k + 12435010 := by
    unfold C
    simp [show (5971968 * k + 4145003) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12435010) = 8957952 * k + 6217505 := by
    unfold C
    simp [show (17915904 * k + 12435010) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6217505) = 26873856 * k + 18652516 := by
    unfold C
    simp [show (8957952 * k + 6217505) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18652516) = 13436928 * k + 9326258 := by
    unfold C
    simp [show (26873856 * k + 18652516) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9326258) = 6718464 * k + 4663129 := by
    unfold C
    simp [show (13436928 * k + 9326258) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4663129) = 20155392 * k + 13989388 := by
    unfold C
    simp [show (6718464 * k + 4663129) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13989388) = 10077696 * k + 6994694 := by
    unfold C
    simp [show (20155392 * k + 13989388) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6994694) = 5038848 * k + 3497347 := by
    unfold C
    simp [show (10077696 * k + 6994694) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3497347) = 15116544 * k + 10492042 := by
    unfold C
    simp [show (5038848 * k + 3497347) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10492042) = 7558272 * k + 5246021 := by
    unfold C
    simp [show (15116544 * k + 10492042) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5246021) = 22674816 * k + 15738064 := by
    unfold C
    simp [show (7558272 * k + 5246021) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15738064) = 11337408 * k + 7869032 := by
    unfold C
    simp [show (22674816 * k + 15738064) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7869032) = 5668704 * k + 3934516 := by
    unfold C
    simp [show (11337408 * k + 7869032) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3934516) = 2834352 * k + 1967258 := by
    unfold C
    simp [show (5668704 * k + 3934516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1967258) = 1417176 * k + 983629 := by
    unfold C
    simp [show (2834352 * k + 1967258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 983629) = 4251528 * k + 2950888 := by
    unfold C
    simp [show (1417176 * k + 983629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2950888) = 2125764 * k + 1475444 := by
    unfold C
    simp [show (4251528 * k + 2950888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1475444) = 1062882 * k + 737722 := by
    unfold C
    simp [show (2125764 * k + 1475444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 737722) = 531441 * k + 368861 := by
    unfold C
    simp [show (1062882 * k + 737722) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 727791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 727791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_728315 : ∀ k : Nat,
    iterate (1048576 * k + 728315) 32 = 531441 * k + 369127 ∧
      531441 * k + 369127 < 1048576 * k + 728315 := by
  intro k
  have h1 : C (1048576 * k + 728315) = 3145728 * k + 2184946 := by
    unfold C
    simp [show (1048576 * k + 728315) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2184946) = 1572864 * k + 1092473 := by
    unfold C
    simp [show (3145728 * k + 2184946) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1092473) = 4718592 * k + 3277420 := by
    unfold C
    simp [show (1572864 * k + 1092473) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3277420) = 2359296 * k + 1638710 := by
    unfold C
    simp [show (4718592 * k + 3277420) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1638710) = 1179648 * k + 819355 := by
    unfold C
    simp [show (2359296 * k + 1638710) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 819355) = 3538944 * k + 2458066 := by
    unfold C
    simp [show (1179648 * k + 819355) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2458066) = 1769472 * k + 1229033 := by
    unfold C
    simp [show (3538944 * k + 2458066) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1229033) = 5308416 * k + 3687100 := by
    unfold C
    simp [show (1769472 * k + 1229033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3687100) = 2654208 * k + 1843550 := by
    unfold C
    simp [show (5308416 * k + 3687100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1843550) = 1327104 * k + 921775 := by
    unfold C
    simp [show (2654208 * k + 1843550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 921775) = 3981312 * k + 2765326 := by
    unfold C
    simp [show (1327104 * k + 921775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2765326) = 1990656 * k + 1382663 := by
    unfold C
    simp [show (3981312 * k + 2765326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1382663) = 5971968 * k + 4147990 := by
    unfold C
    simp [show (1990656 * k + 1382663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4147990) = 2985984 * k + 2073995 := by
    unfold C
    simp [show (5971968 * k + 4147990) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2073995) = 8957952 * k + 6221986 := by
    unfold C
    simp [show (2985984 * k + 2073995) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6221986) = 4478976 * k + 3110993 := by
    unfold C
    simp [show (8957952 * k + 6221986) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3110993) = 13436928 * k + 9332980 := by
    unfold C
    simp [show (4478976 * k + 3110993) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9332980) = 6718464 * k + 4666490 := by
    unfold C
    simp [show (13436928 * k + 9332980) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4666490) = 3359232 * k + 2333245 := by
    unfold C
    simp [show (6718464 * k + 4666490) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2333245) = 10077696 * k + 6999736 := by
    unfold C
    simp [show (3359232 * k + 2333245) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6999736) = 5038848 * k + 3499868 := by
    unfold C
    simp [show (10077696 * k + 6999736) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3499868) = 2519424 * k + 1749934 := by
    unfold C
    simp [show (5038848 * k + 3499868) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1749934) = 1259712 * k + 874967 := by
    unfold C
    simp [show (2519424 * k + 1749934) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 874967) = 3779136 * k + 2624902 := by
    unfold C
    simp [show (1259712 * k + 874967) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2624902) = 1889568 * k + 1312451 := by
    unfold C
    simp [show (3779136 * k + 2624902) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1312451) = 5668704 * k + 3937354 := by
    unfold C
    simp [show (1889568 * k + 1312451) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3937354) = 2834352 * k + 1968677 := by
    unfold C
    simp [show (5668704 * k + 3937354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1968677) = 8503056 * k + 5906032 := by
    unfold C
    simp [show (2834352 * k + 1968677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5906032) = 4251528 * k + 2953016 := by
    unfold C
    simp [show (8503056 * k + 5906032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2953016) = 2125764 * k + 1476508 := by
    unfold C
    simp [show (4251528 * k + 2953016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1476508) = 1062882 * k + 738254 := by
    unfold C
    simp [show (2125764 * k + 1476508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 738254) = 531441 * k + 369127 := by
    unfold C
    simp [show (1062882 * k + 738254) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 728315) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 728315)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_728703 : ∀ k : Nat,
    iterate (1048576 * k + 728703) 32 = 531441 * k + 369323 ∧
      531441 * k + 369323 < 1048576 * k + 728703 := by
  intro k
  have h1 : C (1048576 * k + 728703) = 3145728 * k + 2186110 := by
    unfold C
    simp [show (1048576 * k + 728703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2186110) = 1572864 * k + 1093055 := by
    unfold C
    simp [show (3145728 * k + 2186110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1093055) = 4718592 * k + 3279166 := by
    unfold C
    simp [show (1572864 * k + 1093055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3279166) = 2359296 * k + 1639583 := by
    unfold C
    simp [show (4718592 * k + 3279166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1639583) = 7077888 * k + 4918750 := by
    unfold C
    simp [show (2359296 * k + 1639583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4918750) = 3538944 * k + 2459375 := by
    unfold C
    simp [show (7077888 * k + 4918750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2459375) = 10616832 * k + 7378126 := by
    unfold C
    simp [show (3538944 * k + 2459375) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7378126) = 5308416 * k + 3689063 := by
    unfold C
    simp [show (10616832 * k + 7378126) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3689063) = 15925248 * k + 11067190 := by
    unfold C
    simp [show (5308416 * k + 3689063) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11067190) = 7962624 * k + 5533595 := by
    unfold C
    simp [show (15925248 * k + 11067190) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5533595) = 23887872 * k + 16600786 := by
    unfold C
    simp [show (7962624 * k + 5533595) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16600786) = 11943936 * k + 8300393 := by
    unfold C
    simp [show (23887872 * k + 16600786) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8300393) = 35831808 * k + 24901180 := by
    unfold C
    simp [show (11943936 * k + 8300393) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24901180) = 17915904 * k + 12450590 := by
    unfold C
    simp [show (35831808 * k + 24901180) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12450590) = 8957952 * k + 6225295 := by
    unfold C
    simp [show (17915904 * k + 12450590) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6225295) = 26873856 * k + 18675886 := by
    unfold C
    simp [show (8957952 * k + 6225295) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18675886) = 13436928 * k + 9337943 := by
    unfold C
    simp [show (26873856 * k + 18675886) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9337943) = 40310784 * k + 28013830 := by
    unfold C
    simp [show (13436928 * k + 9337943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28013830) = 20155392 * k + 14006915 := by
    unfold C
    simp [show (40310784 * k + 28013830) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14006915) = 60466176 * k + 42020746 := by
    unfold C
    simp [show (20155392 * k + 14006915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 42020746) = 30233088 * k + 21010373 := by
    unfold C
    simp [show (60466176 * k + 42020746) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 21010373) = 90699264 * k + 63031120 := by
    unfold C
    simp [show (30233088 * k + 21010373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 63031120) = 45349632 * k + 31515560 := by
    unfold C
    simp [show (90699264 * k + 63031120) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 31515560) = 22674816 * k + 15757780 := by
    unfold C
    simp [show (45349632 * k + 31515560) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15757780) = 11337408 * k + 7878890 := by
    unfold C
    simp [show (22674816 * k + 15757780) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7878890) = 5668704 * k + 3939445 := by
    unfold C
    simp [show (11337408 * k + 7878890) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3939445) = 17006112 * k + 11818336 := by
    unfold C
    simp [show (5668704 * k + 3939445) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11818336) = 8503056 * k + 5909168 := by
    unfold C
    simp [show (17006112 * k + 11818336) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5909168) = 4251528 * k + 2954584 := by
    unfold C
    simp [show (8503056 * k + 5909168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2954584) = 2125764 * k + 1477292 := by
    unfold C
    simp [show (4251528 * k + 2954584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1477292) = 1062882 * k + 738646 := by
    unfold C
    simp [show (2125764 * k + 1477292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 738646) = 531441 * k + 369323 := by
    unfold C
    simp [show (1062882 * k + 738646) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 728703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 728703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_729371 : ∀ k : Nat,
    iterate (1048576 * k + 729371) 32 = 531441 * k + 369662 ∧
      531441 * k + 369662 < 1048576 * k + 729371 := by
  intro k
  have h1 : C (1048576 * k + 729371) = 3145728 * k + 2188114 := by
    unfold C
    simp [show (1048576 * k + 729371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2188114) = 1572864 * k + 1094057 := by
    unfold C
    simp [show (3145728 * k + 2188114) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1094057) = 4718592 * k + 3282172 := by
    unfold C
    simp [show (1572864 * k + 1094057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3282172) = 2359296 * k + 1641086 := by
    unfold C
    simp [show (4718592 * k + 3282172) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1641086) = 1179648 * k + 820543 := by
    unfold C
    simp [show (2359296 * k + 1641086) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 820543) = 3538944 * k + 2461630 := by
    unfold C
    simp [show (1179648 * k + 820543) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2461630) = 1769472 * k + 1230815 := by
    unfold C
    simp [show (3538944 * k + 2461630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1230815) = 5308416 * k + 3692446 := by
    unfold C
    simp [show (1769472 * k + 1230815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3692446) = 2654208 * k + 1846223 := by
    unfold C
    simp [show (5308416 * k + 3692446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1846223) = 7962624 * k + 5538670 := by
    unfold C
    simp [show (2654208 * k + 1846223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5538670) = 3981312 * k + 2769335 := by
    unfold C
    simp [show (7962624 * k + 5538670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2769335) = 11943936 * k + 8308006 := by
    unfold C
    simp [show (3981312 * k + 2769335) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8308006) = 5971968 * k + 4154003 := by
    unfold C
    simp [show (11943936 * k + 8308006) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4154003) = 17915904 * k + 12462010 := by
    unfold C
    simp [show (5971968 * k + 4154003) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12462010) = 8957952 * k + 6231005 := by
    unfold C
    simp [show (17915904 * k + 12462010) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6231005) = 26873856 * k + 18693016 := by
    unfold C
    simp [show (8957952 * k + 6231005) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18693016) = 13436928 * k + 9346508 := by
    unfold C
    simp [show (26873856 * k + 18693016) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9346508) = 6718464 * k + 4673254 := by
    unfold C
    simp [show (13436928 * k + 9346508) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4673254) = 3359232 * k + 2336627 := by
    unfold C
    simp [show (6718464 * k + 4673254) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2336627) = 10077696 * k + 7009882 := by
    unfold C
    simp [show (3359232 * k + 2336627) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7009882) = 5038848 * k + 3504941 := by
    unfold C
    simp [show (10077696 * k + 7009882) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3504941) = 15116544 * k + 10514824 := by
    unfold C
    simp [show (5038848 * k + 3504941) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10514824) = 7558272 * k + 5257412 := by
    unfold C
    simp [show (15116544 * k + 10514824) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5257412) = 3779136 * k + 2628706 := by
    unfold C
    simp [show (7558272 * k + 5257412) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2628706) = 1889568 * k + 1314353 := by
    unfold C
    simp [show (3779136 * k + 2628706) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1314353) = 5668704 * k + 3943060 := by
    unfold C
    simp [show (1889568 * k + 1314353) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3943060) = 2834352 * k + 1971530 := by
    unfold C
    simp [show (5668704 * k + 3943060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1971530) = 1417176 * k + 985765 := by
    unfold C
    simp [show (2834352 * k + 1971530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 985765) = 4251528 * k + 2957296 := by
    unfold C
    simp [show (1417176 * k + 985765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2957296) = 2125764 * k + 1478648 := by
    unfold C
    simp [show (4251528 * k + 2957296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1478648) = 1062882 * k + 739324 := by
    unfold C
    simp [show (2125764 * k + 1478648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 739324) = 531441 * k + 369662 := by
    unfold C
    simp [show (1062882 * k + 739324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 729371) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 729371)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_729407 : ∀ k : Nat,
    iterate (1048576 * k + 729407) 32 = 531441 * k + 369680 ∧
      531441 * k + 369680 < 1048576 * k + 729407 := by
  intro k
  have h1 : C (1048576 * k + 729407) = 3145728 * k + 2188222 := by
    unfold C
    simp [show (1048576 * k + 729407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2188222) = 1572864 * k + 1094111 := by
    unfold C
    simp [show (3145728 * k + 2188222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1094111) = 4718592 * k + 3282334 := by
    unfold C
    simp [show (1572864 * k + 1094111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3282334) = 2359296 * k + 1641167 := by
    unfold C
    simp [show (4718592 * k + 3282334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1641167) = 7077888 * k + 4923502 := by
    unfold C
    simp [show (2359296 * k + 1641167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4923502) = 3538944 * k + 2461751 := by
    unfold C
    simp [show (7077888 * k + 4923502) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2461751) = 10616832 * k + 7385254 := by
    unfold C
    simp [show (3538944 * k + 2461751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7385254) = 5308416 * k + 3692627 := by
    unfold C
    simp [show (10616832 * k + 7385254) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3692627) = 15925248 * k + 11077882 := by
    unfold C
    simp [show (5308416 * k + 3692627) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11077882) = 7962624 * k + 5538941 := by
    unfold C
    simp [show (15925248 * k + 11077882) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5538941) = 23887872 * k + 16616824 := by
    unfold C
    simp [show (7962624 * k + 5538941) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16616824) = 11943936 * k + 8308412 := by
    unfold C
    simp [show (23887872 * k + 16616824) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8308412) = 5971968 * k + 4154206 := by
    unfold C
    simp [show (11943936 * k + 8308412) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4154206) = 2985984 * k + 2077103 := by
    unfold C
    simp [show (5971968 * k + 4154206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2077103) = 8957952 * k + 6231310 := by
    unfold C
    simp [show (2985984 * k + 2077103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6231310) = 4478976 * k + 3115655 := by
    unfold C
    simp [show (8957952 * k + 6231310) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3115655) = 13436928 * k + 9346966 := by
    unfold C
    simp [show (4478976 * k + 3115655) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9346966) = 6718464 * k + 4673483 := by
    unfold C
    simp [show (13436928 * k + 9346966) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4673483) = 20155392 * k + 14020450 := by
    unfold C
    simp [show (6718464 * k + 4673483) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14020450) = 10077696 * k + 7010225 := by
    unfold C
    simp [show (20155392 * k + 14020450) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7010225) = 30233088 * k + 21030676 := by
    unfold C
    simp [show (10077696 * k + 7010225) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21030676) = 15116544 * k + 10515338 := by
    unfold C
    simp [show (30233088 * k + 21030676) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10515338) = 7558272 * k + 5257669 := by
    unfold C
    simp [show (15116544 * k + 10515338) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5257669) = 22674816 * k + 15773008 := by
    unfold C
    simp [show (7558272 * k + 5257669) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15773008) = 11337408 * k + 7886504 := by
    unfold C
    simp [show (22674816 * k + 15773008) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7886504) = 5668704 * k + 3943252 := by
    unfold C
    simp [show (11337408 * k + 7886504) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3943252) = 2834352 * k + 1971626 := by
    unfold C
    simp [show (5668704 * k + 3943252) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1971626) = 1417176 * k + 985813 := by
    unfold C
    simp [show (2834352 * k + 1971626) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 985813) = 4251528 * k + 2957440 := by
    unfold C
    simp [show (1417176 * k + 985813) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2957440) = 2125764 * k + 1478720 := by
    unfold C
    simp [show (4251528 * k + 2957440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1478720) = 1062882 * k + 739360 := by
    unfold C
    simp [show (2125764 * k + 1478720) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 739360) = 531441 * k + 369680 := by
    unfold C
    simp [show (1062882 * k + 739360) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 729407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 729407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_729499 : ∀ k : Nat,
    iterate (1048576 * k + 729499) 32 = 531441 * k + 369727 ∧
      531441 * k + 369727 < 1048576 * k + 729499 := by
  intro k
  have h1 : C (1048576 * k + 729499) = 3145728 * k + 2188498 := by
    unfold C
    simp [show (1048576 * k + 729499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2188498) = 1572864 * k + 1094249 := by
    unfold C
    simp [show (3145728 * k + 2188498) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1094249) = 4718592 * k + 3282748 := by
    unfold C
    simp [show (1572864 * k + 1094249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3282748) = 2359296 * k + 1641374 := by
    unfold C
    simp [show (4718592 * k + 3282748) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1641374) = 1179648 * k + 820687 := by
    unfold C
    simp [show (2359296 * k + 1641374) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 820687) = 3538944 * k + 2462062 := by
    unfold C
    simp [show (1179648 * k + 820687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2462062) = 1769472 * k + 1231031 := by
    unfold C
    simp [show (3538944 * k + 2462062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1231031) = 5308416 * k + 3693094 := by
    unfold C
    simp [show (1769472 * k + 1231031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3693094) = 2654208 * k + 1846547 := by
    unfold C
    simp [show (5308416 * k + 3693094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1846547) = 7962624 * k + 5539642 := by
    unfold C
    simp [show (2654208 * k + 1846547) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5539642) = 3981312 * k + 2769821 := by
    unfold C
    simp [show (7962624 * k + 5539642) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2769821) = 11943936 * k + 8309464 := by
    unfold C
    simp [show (3981312 * k + 2769821) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8309464) = 5971968 * k + 4154732 := by
    unfold C
    simp [show (11943936 * k + 8309464) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4154732) = 2985984 * k + 2077366 := by
    unfold C
    simp [show (5971968 * k + 4154732) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2077366) = 1492992 * k + 1038683 := by
    unfold C
    simp [show (2985984 * k + 2077366) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1038683) = 4478976 * k + 3116050 := by
    unfold C
    simp [show (1492992 * k + 1038683) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3116050) = 2239488 * k + 1558025 := by
    unfold C
    simp [show (4478976 * k + 3116050) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1558025) = 6718464 * k + 4674076 := by
    unfold C
    simp [show (2239488 * k + 1558025) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4674076) = 3359232 * k + 2337038 := by
    unfold C
    simp [show (6718464 * k + 4674076) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2337038) = 1679616 * k + 1168519 := by
    unfold C
    simp [show (3359232 * k + 2337038) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1168519) = 5038848 * k + 3505558 := by
    unfold C
    simp [show (1679616 * k + 1168519) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3505558) = 2519424 * k + 1752779 := by
    unfold C
    simp [show (5038848 * k + 3505558) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1752779) = 7558272 * k + 5258338 := by
    unfold C
    simp [show (2519424 * k + 1752779) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5258338) = 3779136 * k + 2629169 := by
    unfold C
    simp [show (7558272 * k + 5258338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2629169) = 11337408 * k + 7887508 := by
    unfold C
    simp [show (3779136 * k + 2629169) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7887508) = 5668704 * k + 3943754 := by
    unfold C
    simp [show (11337408 * k + 7887508) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3943754) = 2834352 * k + 1971877 := by
    unfold C
    simp [show (5668704 * k + 3943754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1971877) = 8503056 * k + 5915632 := by
    unfold C
    simp [show (2834352 * k + 1971877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5915632) = 4251528 * k + 2957816 := by
    unfold C
    simp [show (8503056 * k + 5915632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2957816) = 2125764 * k + 1478908 := by
    unfold C
    simp [show (4251528 * k + 2957816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1478908) = 1062882 * k + 739454 := by
    unfold C
    simp [show (2125764 * k + 1478908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 739454) = 531441 * k + 369727 := by
    unfold C
    simp [show (1062882 * k + 739454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 729499) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 729499)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_729727 : ∀ k : Nat,
    iterate (1048576 * k + 729727) 32 = 531441 * k + 369842 ∧
      531441 * k + 369842 < 1048576 * k + 729727 := by
  intro k
  have h1 : C (1048576 * k + 729727) = 3145728 * k + 2189182 := by
    unfold C
    simp [show (1048576 * k + 729727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2189182) = 1572864 * k + 1094591 := by
    unfold C
    simp [show (3145728 * k + 2189182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1094591) = 4718592 * k + 3283774 := by
    unfold C
    simp [show (1572864 * k + 1094591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3283774) = 2359296 * k + 1641887 := by
    unfold C
    simp [show (4718592 * k + 3283774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1641887) = 7077888 * k + 4925662 := by
    unfold C
    simp [show (2359296 * k + 1641887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4925662) = 3538944 * k + 2462831 := by
    unfold C
    simp [show (7077888 * k + 4925662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2462831) = 10616832 * k + 7388494 := by
    unfold C
    simp [show (3538944 * k + 2462831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7388494) = 5308416 * k + 3694247 := by
    unfold C
    simp [show (10616832 * k + 7388494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3694247) = 15925248 * k + 11082742 := by
    unfold C
    simp [show (5308416 * k + 3694247) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11082742) = 7962624 * k + 5541371 := by
    unfold C
    simp [show (15925248 * k + 11082742) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5541371) = 23887872 * k + 16624114 := by
    unfold C
    simp [show (7962624 * k + 5541371) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16624114) = 11943936 * k + 8312057 := by
    unfold C
    simp [show (23887872 * k + 16624114) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8312057) = 35831808 * k + 24936172 := by
    unfold C
    simp [show (11943936 * k + 8312057) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24936172) = 17915904 * k + 12468086 := by
    unfold C
    simp [show (35831808 * k + 24936172) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12468086) = 8957952 * k + 6234043 := by
    unfold C
    simp [show (17915904 * k + 12468086) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6234043) = 26873856 * k + 18702130 := by
    unfold C
    simp [show (8957952 * k + 6234043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18702130) = 13436928 * k + 9351065 := by
    unfold C
    simp [show (26873856 * k + 18702130) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9351065) = 40310784 * k + 28053196 := by
    unfold C
    simp [show (13436928 * k + 9351065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28053196) = 20155392 * k + 14026598 := by
    unfold C
    simp [show (40310784 * k + 28053196) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14026598) = 10077696 * k + 7013299 := by
    unfold C
    simp [show (20155392 * k + 14026598) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7013299) = 30233088 * k + 21039898 := by
    unfold C
    simp [show (10077696 * k + 7013299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21039898) = 15116544 * k + 10519949 := by
    unfold C
    simp [show (30233088 * k + 21039898) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10519949) = 45349632 * k + 31559848 := by
    unfold C
    simp [show (15116544 * k + 10519949) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 31559848) = 22674816 * k + 15779924 := by
    unfold C
    simp [show (45349632 * k + 31559848) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15779924) = 11337408 * k + 7889962 := by
    unfold C
    simp [show (22674816 * k + 15779924) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7889962) = 5668704 * k + 3944981 := by
    unfold C
    simp [show (11337408 * k + 7889962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3944981) = 17006112 * k + 11834944 := by
    unfold C
    simp [show (5668704 * k + 3944981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11834944) = 8503056 * k + 5917472 := by
    unfold C
    simp [show (17006112 * k + 11834944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5917472) = 4251528 * k + 2958736 := by
    unfold C
    simp [show (8503056 * k + 5917472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2958736) = 2125764 * k + 1479368 := by
    unfold C
    simp [show (4251528 * k + 2958736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1479368) = 1062882 * k + 739684 := by
    unfold C
    simp [show (2125764 * k + 1479368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 739684) = 531441 * k + 369842 := by
    unfold C
    simp [show (1062882 * k + 739684) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 729727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 729727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_730863 : ∀ k : Nat,
    iterate (1048576 * k + 730863) 32 = 531441 * k + 370418 ∧
      531441 * k + 370418 < 1048576 * k + 730863 := by
  intro k
  have h1 : C (1048576 * k + 730863) = 3145728 * k + 2192590 := by
    unfold C
    simp [show (1048576 * k + 730863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2192590) = 1572864 * k + 1096295 := by
    unfold C
    simp [show (3145728 * k + 2192590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1096295) = 4718592 * k + 3288886 := by
    unfold C
    simp [show (1572864 * k + 1096295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3288886) = 2359296 * k + 1644443 := by
    unfold C
    simp [show (4718592 * k + 3288886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1644443) = 7077888 * k + 4933330 := by
    unfold C
    simp [show (2359296 * k + 1644443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4933330) = 3538944 * k + 2466665 := by
    unfold C
    simp [show (7077888 * k + 4933330) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2466665) = 10616832 * k + 7399996 := by
    unfold C
    simp [show (3538944 * k + 2466665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7399996) = 5308416 * k + 3699998 := by
    unfold C
    simp [show (10616832 * k + 7399996) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3699998) = 2654208 * k + 1849999 := by
    unfold C
    simp [show (5308416 * k + 3699998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1849999) = 7962624 * k + 5549998 := by
    unfold C
    simp [show (2654208 * k + 1849999) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5549998) = 3981312 * k + 2774999 := by
    unfold C
    simp [show (7962624 * k + 5549998) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2774999) = 11943936 * k + 8324998 := by
    unfold C
    simp [show (3981312 * k + 2774999) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8324998) = 5971968 * k + 4162499 := by
    unfold C
    simp [show (11943936 * k + 8324998) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4162499) = 17915904 * k + 12487498 := by
    unfold C
    simp [show (5971968 * k + 4162499) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12487498) = 8957952 * k + 6243749 := by
    unfold C
    simp [show (17915904 * k + 12487498) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6243749) = 26873856 * k + 18731248 := by
    unfold C
    simp [show (8957952 * k + 6243749) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18731248) = 13436928 * k + 9365624 := by
    unfold C
    simp [show (26873856 * k + 18731248) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9365624) = 6718464 * k + 4682812 := by
    unfold C
    simp [show (13436928 * k + 9365624) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4682812) = 3359232 * k + 2341406 := by
    unfold C
    simp [show (6718464 * k + 4682812) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2341406) = 1679616 * k + 1170703 := by
    unfold C
    simp [show (3359232 * k + 2341406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1170703) = 5038848 * k + 3512110 := by
    unfold C
    simp [show (1679616 * k + 1170703) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3512110) = 2519424 * k + 1756055 := by
    unfold C
    simp [show (5038848 * k + 3512110) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1756055) = 7558272 * k + 5268166 := by
    unfold C
    simp [show (2519424 * k + 1756055) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5268166) = 3779136 * k + 2634083 := by
    unfold C
    simp [show (7558272 * k + 5268166) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2634083) = 11337408 * k + 7902250 := by
    unfold C
    simp [show (3779136 * k + 2634083) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7902250) = 5668704 * k + 3951125 := by
    unfold C
    simp [show (11337408 * k + 7902250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3951125) = 17006112 * k + 11853376 := by
    unfold C
    simp [show (5668704 * k + 3951125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11853376) = 8503056 * k + 5926688 := by
    unfold C
    simp [show (17006112 * k + 11853376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5926688) = 4251528 * k + 2963344 := by
    unfold C
    simp [show (8503056 * k + 5926688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2963344) = 2125764 * k + 1481672 := by
    unfold C
    simp [show (4251528 * k + 2963344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1481672) = 1062882 * k + 740836 := by
    unfold C
    simp [show (2125764 * k + 1481672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 740836) = 531441 * k + 370418 := by
    unfold C
    simp [show (1062882 * k + 740836) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 730863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 730863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_730991 : ∀ k : Nat,
    iterate (1048576 * k + 730991) 32 = 531441 * k + 370483 ∧
      531441 * k + 370483 < 1048576 * k + 730991 := by
  intro k
  have h1 : C (1048576 * k + 730991) = 3145728 * k + 2192974 := by
    unfold C
    simp [show (1048576 * k + 730991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2192974) = 1572864 * k + 1096487 := by
    unfold C
    simp [show (3145728 * k + 2192974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1096487) = 4718592 * k + 3289462 := by
    unfold C
    simp [show (1572864 * k + 1096487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3289462) = 2359296 * k + 1644731 := by
    unfold C
    simp [show (4718592 * k + 3289462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1644731) = 7077888 * k + 4934194 := by
    unfold C
    simp [show (2359296 * k + 1644731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4934194) = 3538944 * k + 2467097 := by
    unfold C
    simp [show (7077888 * k + 4934194) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2467097) = 10616832 * k + 7401292 := by
    unfold C
    simp [show (3538944 * k + 2467097) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7401292) = 5308416 * k + 3700646 := by
    unfold C
    simp [show (10616832 * k + 7401292) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3700646) = 2654208 * k + 1850323 := by
    unfold C
    simp [show (5308416 * k + 3700646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1850323) = 7962624 * k + 5550970 := by
    unfold C
    simp [show (2654208 * k + 1850323) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5550970) = 3981312 * k + 2775485 := by
    unfold C
    simp [show (7962624 * k + 5550970) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2775485) = 11943936 * k + 8326456 := by
    unfold C
    simp [show (3981312 * k + 2775485) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8326456) = 5971968 * k + 4163228 := by
    unfold C
    simp [show (11943936 * k + 8326456) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4163228) = 2985984 * k + 2081614 := by
    unfold C
    simp [show (5971968 * k + 4163228) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2081614) = 1492992 * k + 1040807 := by
    unfold C
    simp [show (2985984 * k + 2081614) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1040807) = 4478976 * k + 3122422 := by
    unfold C
    simp [show (1492992 * k + 1040807) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3122422) = 2239488 * k + 1561211 := by
    unfold C
    simp [show (4478976 * k + 3122422) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1561211) = 6718464 * k + 4683634 := by
    unfold C
    simp [show (2239488 * k + 1561211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4683634) = 3359232 * k + 2341817 := by
    unfold C
    simp [show (6718464 * k + 4683634) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2341817) = 10077696 * k + 7025452 := by
    unfold C
    simp [show (3359232 * k + 2341817) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7025452) = 5038848 * k + 3512726 := by
    unfold C
    simp [show (10077696 * k + 7025452) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3512726) = 2519424 * k + 1756363 := by
    unfold C
    simp [show (5038848 * k + 3512726) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1756363) = 7558272 * k + 5269090 := by
    unfold C
    simp [show (2519424 * k + 1756363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5269090) = 3779136 * k + 2634545 := by
    unfold C
    simp [show (7558272 * k + 5269090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2634545) = 11337408 * k + 7903636 := by
    unfold C
    simp [show (3779136 * k + 2634545) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7903636) = 5668704 * k + 3951818 := by
    unfold C
    simp [show (11337408 * k + 7903636) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3951818) = 2834352 * k + 1975909 := by
    unfold C
    simp [show (5668704 * k + 3951818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1975909) = 8503056 * k + 5927728 := by
    unfold C
    simp [show (2834352 * k + 1975909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5927728) = 4251528 * k + 2963864 := by
    unfold C
    simp [show (8503056 * k + 5927728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2963864) = 2125764 * k + 1481932 := by
    unfold C
    simp [show (4251528 * k + 2963864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1481932) = 1062882 * k + 740966 := by
    unfold C
    simp [show (2125764 * k + 1481932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 740966) = 531441 * k + 370483 := by
    unfold C
    simp [show (1062882 * k + 740966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 730991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 730991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_731615 : ∀ k : Nat,
    iterate (1048576 * k + 731615) 32 = 531441 * k + 370799 ∧
      531441 * k + 370799 < 1048576 * k + 731615 := by
  intro k
  have h1 : C (1048576 * k + 731615) = 3145728 * k + 2194846 := by
    unfold C
    simp [show (1048576 * k + 731615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2194846) = 1572864 * k + 1097423 := by
    unfold C
    simp [show (3145728 * k + 2194846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1097423) = 4718592 * k + 3292270 := by
    unfold C
    simp [show (1572864 * k + 1097423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3292270) = 2359296 * k + 1646135 := by
    unfold C
    simp [show (4718592 * k + 3292270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1646135) = 7077888 * k + 4938406 := by
    unfold C
    simp [show (2359296 * k + 1646135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4938406) = 3538944 * k + 2469203 := by
    unfold C
    simp [show (7077888 * k + 4938406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2469203) = 10616832 * k + 7407610 := by
    unfold C
    simp [show (3538944 * k + 2469203) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7407610) = 5308416 * k + 3703805 := by
    unfold C
    simp [show (10616832 * k + 7407610) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3703805) = 15925248 * k + 11111416 := by
    unfold C
    simp [show (5308416 * k + 3703805) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11111416) = 7962624 * k + 5555708 := by
    unfold C
    simp [show (15925248 * k + 11111416) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5555708) = 3981312 * k + 2777854 := by
    unfold C
    simp [show (7962624 * k + 5555708) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2777854) = 1990656 * k + 1388927 := by
    unfold C
    simp [show (3981312 * k + 2777854) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1388927) = 5971968 * k + 4166782 := by
    unfold C
    simp [show (1990656 * k + 1388927) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4166782) = 2985984 * k + 2083391 := by
    unfold C
    simp [show (5971968 * k + 4166782) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2083391) = 8957952 * k + 6250174 := by
    unfold C
    simp [show (2985984 * k + 2083391) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6250174) = 4478976 * k + 3125087 := by
    unfold C
    simp [show (8957952 * k + 6250174) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3125087) = 13436928 * k + 9375262 := by
    unfold C
    simp [show (4478976 * k + 3125087) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9375262) = 6718464 * k + 4687631 := by
    unfold C
    simp [show (13436928 * k + 9375262) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4687631) = 20155392 * k + 14062894 := by
    unfold C
    simp [show (6718464 * k + 4687631) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14062894) = 10077696 * k + 7031447 := by
    unfold C
    simp [show (20155392 * k + 14062894) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7031447) = 30233088 * k + 21094342 := by
    unfold C
    simp [show (10077696 * k + 7031447) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21094342) = 15116544 * k + 10547171 := by
    unfold C
    simp [show (30233088 * k + 21094342) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10547171) = 45349632 * k + 31641514 := by
    unfold C
    simp [show (15116544 * k + 10547171) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 31641514) = 22674816 * k + 15820757 := by
    unfold C
    simp [show (45349632 * k + 31641514) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15820757) = 68024448 * k + 47462272 := by
    unfold C
    simp [show (22674816 * k + 15820757) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 47462272) = 34012224 * k + 23731136 := by
    unfold C
    simp [show (68024448 * k + 47462272) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 23731136) = 17006112 * k + 11865568 := by
    unfold C
    simp [show (34012224 * k + 23731136) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11865568) = 8503056 * k + 5932784 := by
    unfold C
    simp [show (17006112 * k + 11865568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5932784) = 4251528 * k + 2966392 := by
    unfold C
    simp [show (8503056 * k + 5932784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2966392) = 2125764 * k + 1483196 := by
    unfold C
    simp [show (4251528 * k + 2966392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1483196) = 1062882 * k + 741598 := by
    unfold C
    simp [show (2125764 * k + 1483196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 741598) = 531441 * k + 370799 := by
    unfold C
    simp [show (1062882 * k + 741598) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 731615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 731615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_731775 : ∀ k : Nat,
    iterate (1048576 * k + 731775) 32 = 531441 * k + 370880 ∧
      531441 * k + 370880 < 1048576 * k + 731775 := by
  intro k
  have h1 : C (1048576 * k + 731775) = 3145728 * k + 2195326 := by
    unfold C
    simp [show (1048576 * k + 731775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2195326) = 1572864 * k + 1097663 := by
    unfold C
    simp [show (3145728 * k + 2195326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1097663) = 4718592 * k + 3292990 := by
    unfold C
    simp [show (1572864 * k + 1097663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3292990) = 2359296 * k + 1646495 := by
    unfold C
    simp [show (4718592 * k + 3292990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1646495) = 7077888 * k + 4939486 := by
    unfold C
    simp [show (2359296 * k + 1646495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4939486) = 3538944 * k + 2469743 := by
    unfold C
    simp [show (7077888 * k + 4939486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2469743) = 10616832 * k + 7409230 := by
    unfold C
    simp [show (3538944 * k + 2469743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7409230) = 5308416 * k + 3704615 := by
    unfold C
    simp [show (10616832 * k + 7409230) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3704615) = 15925248 * k + 11113846 := by
    unfold C
    simp [show (5308416 * k + 3704615) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11113846) = 7962624 * k + 5556923 := by
    unfold C
    simp [show (15925248 * k + 11113846) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5556923) = 23887872 * k + 16670770 := by
    unfold C
    simp [show (7962624 * k + 5556923) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16670770) = 11943936 * k + 8335385 := by
    unfold C
    simp [show (23887872 * k + 16670770) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8335385) = 35831808 * k + 25006156 := by
    unfold C
    simp [show (11943936 * k + 8335385) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25006156) = 17915904 * k + 12503078 := by
    unfold C
    simp [show (35831808 * k + 25006156) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12503078) = 8957952 * k + 6251539 := by
    unfold C
    simp [show (17915904 * k + 12503078) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6251539) = 26873856 * k + 18754618 := by
    unfold C
    simp [show (8957952 * k + 6251539) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18754618) = 13436928 * k + 9377309 := by
    unfold C
    simp [show (26873856 * k + 18754618) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9377309) = 40310784 * k + 28131928 := by
    unfold C
    simp [show (13436928 * k + 9377309) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28131928) = 20155392 * k + 14065964 := by
    unfold C
    simp [show (40310784 * k + 28131928) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14065964) = 10077696 * k + 7032982 := by
    unfold C
    simp [show (20155392 * k + 14065964) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7032982) = 5038848 * k + 3516491 := by
    unfold C
    simp [show (10077696 * k + 7032982) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3516491) = 15116544 * k + 10549474 := by
    unfold C
    simp [show (5038848 * k + 3516491) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10549474) = 7558272 * k + 5274737 := by
    unfold C
    simp [show (15116544 * k + 10549474) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5274737) = 22674816 * k + 15824212 := by
    unfold C
    simp [show (7558272 * k + 5274737) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15824212) = 11337408 * k + 7912106 := by
    unfold C
    simp [show (22674816 * k + 15824212) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7912106) = 5668704 * k + 3956053 := by
    unfold C
    simp [show (11337408 * k + 7912106) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3956053) = 17006112 * k + 11868160 := by
    unfold C
    simp [show (5668704 * k + 3956053) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11868160) = 8503056 * k + 5934080 := by
    unfold C
    simp [show (17006112 * k + 11868160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5934080) = 4251528 * k + 2967040 := by
    unfold C
    simp [show (8503056 * k + 5934080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2967040) = 2125764 * k + 1483520 := by
    unfold C
    simp [show (4251528 * k + 2967040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1483520) = 1062882 * k + 741760 := by
    unfold C
    simp [show (2125764 * k + 1483520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 741760) = 531441 * k + 370880 := by
    unfold C
    simp [show (1062882 * k + 741760) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 731775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 731775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_731887 : ∀ k : Nat,
    iterate (1048576 * k + 731887) 32 = 531441 * k + 370937 ∧
      531441 * k + 370937 < 1048576 * k + 731887 := by
  intro k
  have h1 : C (1048576 * k + 731887) = 3145728 * k + 2195662 := by
    unfold C
    simp [show (1048576 * k + 731887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2195662) = 1572864 * k + 1097831 := by
    unfold C
    simp [show (3145728 * k + 2195662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1097831) = 4718592 * k + 3293494 := by
    unfold C
    simp [show (1572864 * k + 1097831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3293494) = 2359296 * k + 1646747 := by
    unfold C
    simp [show (4718592 * k + 3293494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1646747) = 7077888 * k + 4940242 := by
    unfold C
    simp [show (2359296 * k + 1646747) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4940242) = 3538944 * k + 2470121 := by
    unfold C
    simp [show (7077888 * k + 4940242) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2470121) = 10616832 * k + 7410364 := by
    unfold C
    simp [show (3538944 * k + 2470121) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7410364) = 5308416 * k + 3705182 := by
    unfold C
    simp [show (10616832 * k + 7410364) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3705182) = 2654208 * k + 1852591 := by
    unfold C
    simp [show (5308416 * k + 3705182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1852591) = 7962624 * k + 5557774 := by
    unfold C
    simp [show (2654208 * k + 1852591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5557774) = 3981312 * k + 2778887 := by
    unfold C
    simp [show (7962624 * k + 5557774) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2778887) = 11943936 * k + 8336662 := by
    unfold C
    simp [show (3981312 * k + 2778887) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8336662) = 5971968 * k + 4168331 := by
    unfold C
    simp [show (11943936 * k + 8336662) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4168331) = 17915904 * k + 12504994 := by
    unfold C
    simp [show (5971968 * k + 4168331) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12504994) = 8957952 * k + 6252497 := by
    unfold C
    simp [show (17915904 * k + 12504994) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6252497) = 26873856 * k + 18757492 := by
    unfold C
    simp [show (8957952 * k + 6252497) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18757492) = 13436928 * k + 9378746 := by
    unfold C
    simp [show (26873856 * k + 18757492) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9378746) = 6718464 * k + 4689373 := by
    unfold C
    simp [show (13436928 * k + 9378746) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4689373) = 20155392 * k + 14068120 := by
    unfold C
    simp [show (6718464 * k + 4689373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14068120) = 10077696 * k + 7034060 := by
    unfold C
    simp [show (20155392 * k + 14068120) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7034060) = 5038848 * k + 3517030 := by
    unfold C
    simp [show (10077696 * k + 7034060) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3517030) = 2519424 * k + 1758515 := by
    unfold C
    simp [show (5038848 * k + 3517030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1758515) = 7558272 * k + 5275546 := by
    unfold C
    simp [show (2519424 * k + 1758515) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5275546) = 3779136 * k + 2637773 := by
    unfold C
    simp [show (7558272 * k + 5275546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2637773) = 11337408 * k + 7913320 := by
    unfold C
    simp [show (3779136 * k + 2637773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7913320) = 5668704 * k + 3956660 := by
    unfold C
    simp [show (11337408 * k + 7913320) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3956660) = 2834352 * k + 1978330 := by
    unfold C
    simp [show (5668704 * k + 3956660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1978330) = 1417176 * k + 989165 := by
    unfold C
    simp [show (2834352 * k + 1978330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 989165) = 4251528 * k + 2967496 := by
    unfold C
    simp [show (1417176 * k + 989165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2967496) = 2125764 * k + 1483748 := by
    unfold C
    simp [show (4251528 * k + 2967496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1483748) = 1062882 * k + 741874 := by
    unfold C
    simp [show (2125764 * k + 1483748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 741874) = 531441 * k + 370937 := by
    unfold C
    simp [show (1062882 * k + 741874) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 731887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 731887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_731903 : ∀ k : Nat,
    iterate (1048576 * k + 731903) 32 = 531441 * k + 370945 ∧
      531441 * k + 370945 < 1048576 * k + 731903 := by
  intro k
  have h1 : C (1048576 * k + 731903) = 3145728 * k + 2195710 := by
    unfold C
    simp [show (1048576 * k + 731903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2195710) = 1572864 * k + 1097855 := by
    unfold C
    simp [show (3145728 * k + 2195710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1097855) = 4718592 * k + 3293566 := by
    unfold C
    simp [show (1572864 * k + 1097855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3293566) = 2359296 * k + 1646783 := by
    unfold C
    simp [show (4718592 * k + 3293566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1646783) = 7077888 * k + 4940350 := by
    unfold C
    simp [show (2359296 * k + 1646783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4940350) = 3538944 * k + 2470175 := by
    unfold C
    simp [show (7077888 * k + 4940350) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2470175) = 10616832 * k + 7410526 := by
    unfold C
    simp [show (3538944 * k + 2470175) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7410526) = 5308416 * k + 3705263 := by
    unfold C
    simp [show (10616832 * k + 7410526) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3705263) = 15925248 * k + 11115790 := by
    unfold C
    simp [show (5308416 * k + 3705263) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11115790) = 7962624 * k + 5557895 := by
    unfold C
    simp [show (15925248 * k + 11115790) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5557895) = 23887872 * k + 16673686 := by
    unfold C
    simp [show (7962624 * k + 5557895) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16673686) = 11943936 * k + 8336843 := by
    unfold C
    simp [show (23887872 * k + 16673686) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8336843) = 35831808 * k + 25010530 := by
    unfold C
    simp [show (11943936 * k + 8336843) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25010530) = 17915904 * k + 12505265 := by
    unfold C
    simp [show (35831808 * k + 25010530) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12505265) = 53747712 * k + 37515796 := by
    unfold C
    simp [show (17915904 * k + 12505265) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 37515796) = 26873856 * k + 18757898 := by
    unfold C
    simp [show (53747712 * k + 37515796) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 18757898) = 13436928 * k + 9378949 := by
    unfold C
    simp [show (26873856 * k + 18757898) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9378949) = 40310784 * k + 28136848 := by
    unfold C
    simp [show (13436928 * k + 9378949) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 28136848) = 20155392 * k + 14068424 := by
    unfold C
    simp [show (40310784 * k + 28136848) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 14068424) = 10077696 * k + 7034212 := by
    unfold C
    simp [show (20155392 * k + 14068424) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7034212) = 5038848 * k + 3517106 := by
    unfold C
    simp [show (10077696 * k + 7034212) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3517106) = 2519424 * k + 1758553 := by
    unfold C
    simp [show (5038848 * k + 3517106) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1758553) = 7558272 * k + 5275660 := by
    unfold C
    simp [show (2519424 * k + 1758553) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5275660) = 3779136 * k + 2637830 := by
    unfold C
    simp [show (7558272 * k + 5275660) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2637830) = 1889568 * k + 1318915 := by
    unfold C
    simp [show (3779136 * k + 2637830) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1318915) = 5668704 * k + 3956746 := by
    unfold C
    simp [show (1889568 * k + 1318915) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3956746) = 2834352 * k + 1978373 := by
    unfold C
    simp [show (5668704 * k + 3956746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1978373) = 8503056 * k + 5935120 := by
    unfold C
    simp [show (2834352 * k + 1978373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5935120) = 4251528 * k + 2967560 := by
    unfold C
    simp [show (8503056 * k + 5935120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2967560) = 2125764 * k + 1483780 := by
    unfold C
    simp [show (4251528 * k + 2967560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1483780) = 1062882 * k + 741890 := by
    unfold C
    simp [show (2125764 * k + 1483780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 741890) = 531441 * k + 370945 := by
    unfold C
    simp [show (1062882 * k + 741890) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 731903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 731903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_732479 : ∀ k : Nat,
    iterate (1048576 * k + 732479) 32 = 531441 * k + 371237 ∧
      531441 * k + 371237 < 1048576 * k + 732479 := by
  intro k
  have h1 : C (1048576 * k + 732479) = 3145728 * k + 2197438 := by
    unfold C
    simp [show (1048576 * k + 732479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2197438) = 1572864 * k + 1098719 := by
    unfold C
    simp [show (3145728 * k + 2197438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1098719) = 4718592 * k + 3296158 := by
    unfold C
    simp [show (1572864 * k + 1098719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3296158) = 2359296 * k + 1648079 := by
    unfold C
    simp [show (4718592 * k + 3296158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1648079) = 7077888 * k + 4944238 := by
    unfold C
    simp [show (2359296 * k + 1648079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4944238) = 3538944 * k + 2472119 := by
    unfold C
    simp [show (7077888 * k + 4944238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2472119) = 10616832 * k + 7416358 := by
    unfold C
    simp [show (3538944 * k + 2472119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7416358) = 5308416 * k + 3708179 := by
    unfold C
    simp [show (10616832 * k + 7416358) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3708179) = 15925248 * k + 11124538 := by
    unfold C
    simp [show (5308416 * k + 3708179) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11124538) = 7962624 * k + 5562269 := by
    unfold C
    simp [show (15925248 * k + 11124538) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5562269) = 23887872 * k + 16686808 := by
    unfold C
    simp [show (7962624 * k + 5562269) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16686808) = 11943936 * k + 8343404 := by
    unfold C
    simp [show (23887872 * k + 16686808) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8343404) = 5971968 * k + 4171702 := by
    unfold C
    simp [show (11943936 * k + 8343404) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4171702) = 2985984 * k + 2085851 := by
    unfold C
    simp [show (5971968 * k + 4171702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2085851) = 8957952 * k + 6257554 := by
    unfold C
    simp [show (2985984 * k + 2085851) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6257554) = 4478976 * k + 3128777 := by
    unfold C
    simp [show (8957952 * k + 6257554) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3128777) = 13436928 * k + 9386332 := by
    unfold C
    simp [show (4478976 * k + 3128777) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9386332) = 6718464 * k + 4693166 := by
    unfold C
    simp [show (13436928 * k + 9386332) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4693166) = 3359232 * k + 2346583 := by
    unfold C
    simp [show (6718464 * k + 4693166) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2346583) = 10077696 * k + 7039750 := by
    unfold C
    simp [show (3359232 * k + 2346583) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7039750) = 5038848 * k + 3519875 := by
    unfold C
    simp [show (10077696 * k + 7039750) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3519875) = 15116544 * k + 10559626 := by
    unfold C
    simp [show (5038848 * k + 3519875) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10559626) = 7558272 * k + 5279813 := by
    unfold C
    simp [show (15116544 * k + 10559626) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5279813) = 22674816 * k + 15839440 := by
    unfold C
    simp [show (7558272 * k + 5279813) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15839440) = 11337408 * k + 7919720 := by
    unfold C
    simp [show (22674816 * k + 15839440) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7919720) = 5668704 * k + 3959860 := by
    unfold C
    simp [show (11337408 * k + 7919720) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3959860) = 2834352 * k + 1979930 := by
    unfold C
    simp [show (5668704 * k + 3959860) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1979930) = 1417176 * k + 989965 := by
    unfold C
    simp [show (2834352 * k + 1979930) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 989965) = 4251528 * k + 2969896 := by
    unfold C
    simp [show (1417176 * k + 989965) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2969896) = 2125764 * k + 1484948 := by
    unfold C
    simp [show (4251528 * k + 2969896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1484948) = 1062882 * k + 742474 := by
    unfold C
    simp [show (2125764 * k + 1484948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 742474) = 531441 * k + 371237 := by
    unfold C
    simp [show (1062882 * k + 742474) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 732479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 732479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_733927 : ∀ k : Nat,
    iterate (1048576 * k + 733927) 32 = 531441 * k + 371971 ∧
      531441 * k + 371971 < 1048576 * k + 733927 := by
  intro k
  have h1 : C (1048576 * k + 733927) = 3145728 * k + 2201782 := by
    unfold C
    simp [show (1048576 * k + 733927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2201782) = 1572864 * k + 1100891 := by
    unfold C
    simp [show (3145728 * k + 2201782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1100891) = 4718592 * k + 3302674 := by
    unfold C
    simp [show (1572864 * k + 1100891) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3302674) = 2359296 * k + 1651337 := by
    unfold C
    simp [show (4718592 * k + 3302674) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1651337) = 7077888 * k + 4954012 := by
    unfold C
    simp [show (2359296 * k + 1651337) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4954012) = 3538944 * k + 2477006 := by
    unfold C
    simp [show (7077888 * k + 4954012) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2477006) = 1769472 * k + 1238503 := by
    unfold C
    simp [show (3538944 * k + 2477006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1238503) = 5308416 * k + 3715510 := by
    unfold C
    simp [show (1769472 * k + 1238503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3715510) = 2654208 * k + 1857755 := by
    unfold C
    simp [show (5308416 * k + 3715510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1857755) = 7962624 * k + 5573266 := by
    unfold C
    simp [show (2654208 * k + 1857755) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5573266) = 3981312 * k + 2786633 := by
    unfold C
    simp [show (7962624 * k + 5573266) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2786633) = 11943936 * k + 8359900 := by
    unfold C
    simp [show (3981312 * k + 2786633) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8359900) = 5971968 * k + 4179950 := by
    unfold C
    simp [show (11943936 * k + 8359900) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4179950) = 2985984 * k + 2089975 := by
    unfold C
    simp [show (5971968 * k + 4179950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2089975) = 8957952 * k + 6269926 := by
    unfold C
    simp [show (2985984 * k + 2089975) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6269926) = 4478976 * k + 3134963 := by
    unfold C
    simp [show (8957952 * k + 6269926) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3134963) = 13436928 * k + 9404890 := by
    unfold C
    simp [show (4478976 * k + 3134963) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9404890) = 6718464 * k + 4702445 := by
    unfold C
    simp [show (13436928 * k + 9404890) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4702445) = 20155392 * k + 14107336 := by
    unfold C
    simp [show (6718464 * k + 4702445) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14107336) = 10077696 * k + 7053668 := by
    unfold C
    simp [show (20155392 * k + 14107336) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7053668) = 5038848 * k + 3526834 := by
    unfold C
    simp [show (10077696 * k + 7053668) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3526834) = 2519424 * k + 1763417 := by
    unfold C
    simp [show (5038848 * k + 3526834) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1763417) = 7558272 * k + 5290252 := by
    unfold C
    simp [show (2519424 * k + 1763417) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5290252) = 3779136 * k + 2645126 := by
    unfold C
    simp [show (7558272 * k + 5290252) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2645126) = 1889568 * k + 1322563 := by
    unfold C
    simp [show (3779136 * k + 2645126) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1322563) = 5668704 * k + 3967690 := by
    unfold C
    simp [show (1889568 * k + 1322563) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3967690) = 2834352 * k + 1983845 := by
    unfold C
    simp [show (5668704 * k + 3967690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1983845) = 8503056 * k + 5951536 := by
    unfold C
    simp [show (2834352 * k + 1983845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5951536) = 4251528 * k + 2975768 := by
    unfold C
    simp [show (8503056 * k + 5951536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2975768) = 2125764 * k + 1487884 := by
    unfold C
    simp [show (4251528 * k + 2975768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1487884) = 1062882 * k + 743942 := by
    unfold C
    simp [show (2125764 * k + 1487884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 743942) = 531441 * k + 371971 := by
    unfold C
    simp [show (1062882 * k + 743942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 733927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 733927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard094
