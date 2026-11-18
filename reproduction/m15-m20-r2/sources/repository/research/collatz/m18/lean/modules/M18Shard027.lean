import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard027

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_136731 : ∀ k : Nat,
    iterate (262144 * k + 136731) 29 = 177147 * k + 92399 ∧
      177147 * k + 92399 < 262144 * k + 136731 := by
  intro k
  have h1 : C (262144 * k + 136731) = 786432 * k + 410194 := by
    unfold C
    simp [show (262144 * k + 136731) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 410194) = 393216 * k + 205097 := by
    unfold C
    simp [show (786432 * k + 410194) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 205097) = 1179648 * k + 615292 := by
    unfold C
    simp [show (393216 * k + 205097) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 615292) = 589824 * k + 307646 := by
    unfold C
    simp [show (1179648 * k + 615292) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 307646) = 294912 * k + 153823 := by
    unfold C
    simp [show (589824 * k + 307646) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 153823) = 884736 * k + 461470 := by
    unfold C
    simp [show (294912 * k + 153823) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 461470) = 442368 * k + 230735 := by
    unfold C
    simp [show (884736 * k + 461470) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 230735) = 1327104 * k + 692206 := by
    unfold C
    simp [show (442368 * k + 230735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 692206) = 663552 * k + 346103 := by
    unfold C
    simp [show (1327104 * k + 692206) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 346103) = 1990656 * k + 1038310 := by
    unfold C
    simp [show (663552 * k + 346103) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1038310) = 995328 * k + 519155 := by
    unfold C
    simp [show (1990656 * k + 1038310) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 519155) = 2985984 * k + 1557466 := by
    unfold C
    simp [show (995328 * k + 519155) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1557466) = 1492992 * k + 778733 := by
    unfold C
    simp [show (2985984 * k + 1557466) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 778733) = 4478976 * k + 2336200 := by
    unfold C
    simp [show (1492992 * k + 778733) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2336200) = 2239488 * k + 1168100 := by
    unfold C
    simp [show (4478976 * k + 2336200) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1168100) = 1119744 * k + 584050 := by
    unfold C
    simp [show (2239488 * k + 1168100) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 584050) = 559872 * k + 292025 := by
    unfold C
    simp [show (1119744 * k + 584050) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 292025) = 1679616 * k + 876076 := by
    unfold C
    simp [show (559872 * k + 292025) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 876076) = 839808 * k + 438038 := by
    unfold C
    simp [show (1679616 * k + 876076) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 438038) = 419904 * k + 219019 := by
    unfold C
    simp [show (839808 * k + 438038) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 219019) = 1259712 * k + 657058 := by
    unfold C
    simp [show (419904 * k + 219019) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 657058) = 629856 * k + 328529 := by
    unfold C
    simp [show (1259712 * k + 657058) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 328529) = 1889568 * k + 985588 := by
    unfold C
    simp [show (629856 * k + 328529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 985588) = 944784 * k + 492794 := by
    unfold C
    simp [show (1889568 * k + 985588) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 492794) = 472392 * k + 246397 := by
    unfold C
    simp [show (944784 * k + 492794) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 246397) = 1417176 * k + 739192 := by
    unfold C
    simp [show (472392 * k + 246397) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 739192) = 708588 * k + 369596 := by
    unfold C
    simp [show (1417176 * k + 739192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 369596) = 354294 * k + 184798 := by
    unfold C
    simp [show (708588 * k + 369596) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 184798) = 177147 * k + 92399 := by
    unfold C
    simp [show (354294 * k + 184798) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 136731) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 136731))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_137307 : ∀ k : Nat,
    iterate (262144 * k + 137307) 29 = 177147 * k + 92788 ∧
      177147 * k + 92788 < 262144 * k + 137307 := by
  intro k
  have h1 : C (262144 * k + 137307) = 786432 * k + 411922 := by
    unfold C
    simp [show (262144 * k + 137307) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 411922) = 393216 * k + 205961 := by
    unfold C
    simp [show (786432 * k + 411922) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 205961) = 1179648 * k + 617884 := by
    unfold C
    simp [show (393216 * k + 205961) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 617884) = 589824 * k + 308942 := by
    unfold C
    simp [show (1179648 * k + 617884) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 308942) = 294912 * k + 154471 := by
    unfold C
    simp [show (589824 * k + 308942) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 154471) = 884736 * k + 463414 := by
    unfold C
    simp [show (294912 * k + 154471) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 463414) = 442368 * k + 231707 := by
    unfold C
    simp [show (884736 * k + 463414) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 231707) = 1327104 * k + 695122 := by
    unfold C
    simp [show (442368 * k + 231707) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 695122) = 663552 * k + 347561 := by
    unfold C
    simp [show (1327104 * k + 695122) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 347561) = 1990656 * k + 1042684 := by
    unfold C
    simp [show (663552 * k + 347561) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1042684) = 995328 * k + 521342 := by
    unfold C
    simp [show (1990656 * k + 1042684) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 521342) = 497664 * k + 260671 := by
    unfold C
    simp [show (995328 * k + 521342) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 260671) = 1492992 * k + 782014 := by
    unfold C
    simp [show (497664 * k + 260671) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 782014) = 746496 * k + 391007 := by
    unfold C
    simp [show (1492992 * k + 782014) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 391007) = 2239488 * k + 1173022 := by
    unfold C
    simp [show (746496 * k + 391007) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1173022) = 1119744 * k + 586511 := by
    unfold C
    simp [show (2239488 * k + 1173022) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 586511) = 3359232 * k + 1759534 := by
    unfold C
    simp [show (1119744 * k + 586511) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1759534) = 1679616 * k + 879767 := by
    unfold C
    simp [show (3359232 * k + 1759534) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 879767) = 5038848 * k + 2639302 := by
    unfold C
    simp [show (1679616 * k + 879767) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2639302) = 2519424 * k + 1319651 := by
    unfold C
    simp [show (5038848 * k + 2639302) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1319651) = 7558272 * k + 3958954 := by
    unfold C
    simp [show (2519424 * k + 1319651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3958954) = 3779136 * k + 1979477 := by
    unfold C
    simp [show (7558272 * k + 3958954) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1979477) = 11337408 * k + 5938432 := by
    unfold C
    simp [show (3779136 * k + 1979477) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 5938432) = 5668704 * k + 2969216 := by
    unfold C
    simp [show (11337408 * k + 5938432) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2969216) = 2834352 * k + 1484608 := by
    unfold C
    simp [show (5668704 * k + 2969216) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1484608) = 1417176 * k + 742304 := by
    unfold C
    simp [show (2834352 * k + 1484608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 742304) = 708588 * k + 371152 := by
    unfold C
    simp [show (1417176 * k + 742304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 371152) = 354294 * k + 185576 := by
    unfold C
    simp [show (708588 * k + 371152) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 185576) = 177147 * k + 92788 := by
    unfold C
    simp [show (354294 * k + 185576) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 137307) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 137307))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_137499 : ∀ k : Nat,
    iterate (262144 * k + 137499) 29 = 177147 * k + 92918 ∧
      177147 * k + 92918 < 262144 * k + 137499 := by
  intro k
  have h1 : C (262144 * k + 137499) = 786432 * k + 412498 := by
    unfold C
    simp [show (262144 * k + 137499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 412498) = 393216 * k + 206249 := by
    unfold C
    simp [show (786432 * k + 412498) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 206249) = 1179648 * k + 618748 := by
    unfold C
    simp [show (393216 * k + 206249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 618748) = 589824 * k + 309374 := by
    unfold C
    simp [show (1179648 * k + 618748) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 309374) = 294912 * k + 154687 := by
    unfold C
    simp [show (589824 * k + 309374) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 154687) = 884736 * k + 464062 := by
    unfold C
    simp [show (294912 * k + 154687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 464062) = 442368 * k + 232031 := by
    unfold C
    simp [show (884736 * k + 464062) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 232031) = 1327104 * k + 696094 := by
    unfold C
    simp [show (442368 * k + 232031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 696094) = 663552 * k + 348047 := by
    unfold C
    simp [show (1327104 * k + 696094) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 348047) = 1990656 * k + 1044142 := by
    unfold C
    simp [show (663552 * k + 348047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1044142) = 995328 * k + 522071 := by
    unfold C
    simp [show (1990656 * k + 1044142) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 522071) = 2985984 * k + 1566214 := by
    unfold C
    simp [show (995328 * k + 522071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1566214) = 1492992 * k + 783107 := by
    unfold C
    simp [show (2985984 * k + 1566214) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 783107) = 4478976 * k + 2349322 := by
    unfold C
    simp [show (1492992 * k + 783107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2349322) = 2239488 * k + 1174661 := by
    unfold C
    simp [show (4478976 * k + 2349322) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1174661) = 6718464 * k + 3523984 := by
    unfold C
    simp [show (2239488 * k + 1174661) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3523984) = 3359232 * k + 1761992 := by
    unfold C
    simp [show (6718464 * k + 3523984) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1761992) = 1679616 * k + 880996 := by
    unfold C
    simp [show (3359232 * k + 1761992) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 880996) = 839808 * k + 440498 := by
    unfold C
    simp [show (1679616 * k + 880996) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 440498) = 419904 * k + 220249 := by
    unfold C
    simp [show (839808 * k + 440498) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 220249) = 1259712 * k + 660748 := by
    unfold C
    simp [show (419904 * k + 220249) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 660748) = 629856 * k + 330374 := by
    unfold C
    simp [show (1259712 * k + 660748) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 330374) = 314928 * k + 165187 := by
    unfold C
    simp [show (629856 * k + 330374) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 165187) = 944784 * k + 495562 := by
    unfold C
    simp [show (314928 * k + 165187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 495562) = 472392 * k + 247781 := by
    unfold C
    simp [show (944784 * k + 495562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 247781) = 1417176 * k + 743344 := by
    unfold C
    simp [show (472392 * k + 247781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 743344) = 708588 * k + 371672 := by
    unfold C
    simp [show (1417176 * k + 743344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 371672) = 354294 * k + 185836 := by
    unfold C
    simp [show (708588 * k + 371672) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 185836) = 177147 * k + 92918 := by
    unfold C
    simp [show (354294 * k + 185836) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 137499) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 137499))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_137695 : ∀ k : Nat,
    iterate (262144 * k + 137695) 29 = 177147 * k + 93050 ∧
      177147 * k + 93050 < 262144 * k + 137695 := by
  intro k
  have h1 : C (262144 * k + 137695) = 786432 * k + 413086 := by
    unfold C
    simp [show (262144 * k + 137695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 413086) = 393216 * k + 206543 := by
    unfold C
    simp [show (786432 * k + 413086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 206543) = 1179648 * k + 619630 := by
    unfold C
    simp [show (393216 * k + 206543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 619630) = 589824 * k + 309815 := by
    unfold C
    simp [show (1179648 * k + 619630) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 309815) = 1769472 * k + 929446 := by
    unfold C
    simp [show (589824 * k + 309815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 929446) = 884736 * k + 464723 := by
    unfold C
    simp [show (1769472 * k + 929446) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 464723) = 2654208 * k + 1394170 := by
    unfold C
    simp [show (884736 * k + 464723) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1394170) = 1327104 * k + 697085 := by
    unfold C
    simp [show (2654208 * k + 1394170) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 697085) = 3981312 * k + 2091256 := by
    unfold C
    simp [show (1327104 * k + 697085) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2091256) = 1990656 * k + 1045628 := by
    unfold C
    simp [show (3981312 * k + 2091256) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1045628) = 995328 * k + 522814 := by
    unfold C
    simp [show (1990656 * k + 1045628) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 522814) = 497664 * k + 261407 := by
    unfold C
    simp [show (995328 * k + 522814) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 261407) = 1492992 * k + 784222 := by
    unfold C
    simp [show (497664 * k + 261407) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 784222) = 746496 * k + 392111 := by
    unfold C
    simp [show (1492992 * k + 784222) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 392111) = 2239488 * k + 1176334 := by
    unfold C
    simp [show (746496 * k + 392111) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1176334) = 1119744 * k + 588167 := by
    unfold C
    simp [show (2239488 * k + 1176334) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 588167) = 3359232 * k + 1764502 := by
    unfold C
    simp [show (1119744 * k + 588167) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1764502) = 1679616 * k + 882251 := by
    unfold C
    simp [show (3359232 * k + 1764502) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 882251) = 5038848 * k + 2646754 := by
    unfold C
    simp [show (1679616 * k + 882251) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2646754) = 2519424 * k + 1323377 := by
    unfold C
    simp [show (5038848 * k + 2646754) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1323377) = 7558272 * k + 3970132 := by
    unfold C
    simp [show (2519424 * k + 1323377) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3970132) = 3779136 * k + 1985066 := by
    unfold C
    simp [show (7558272 * k + 3970132) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1985066) = 1889568 * k + 992533 := by
    unfold C
    simp [show (3779136 * k + 1985066) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 992533) = 5668704 * k + 2977600 := by
    unfold C
    simp [show (1889568 * k + 992533) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2977600) = 2834352 * k + 1488800 := by
    unfold C
    simp [show (5668704 * k + 2977600) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1488800) = 1417176 * k + 744400 := by
    unfold C
    simp [show (2834352 * k + 1488800) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 744400) = 708588 * k + 372200 := by
    unfold C
    simp [show (1417176 * k + 744400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 372200) = 354294 * k + 186100 := by
    unfold C
    simp [show (708588 * k + 372200) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 186100) = 177147 * k + 93050 := by
    unfold C
    simp [show (354294 * k + 186100) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 137695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 137695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_138111 : ∀ k : Nat,
    iterate (262144 * k + 138111) 29 = 177147 * k + 93331 ∧
      177147 * k + 93331 < 262144 * k + 138111 := by
  intro k
  have h1 : C (262144 * k + 138111) = 786432 * k + 414334 := by
    unfold C
    simp [show (262144 * k + 138111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 414334) = 393216 * k + 207167 := by
    unfold C
    simp [show (786432 * k + 414334) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 207167) = 1179648 * k + 621502 := by
    unfold C
    simp [show (393216 * k + 207167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 621502) = 589824 * k + 310751 := by
    unfold C
    simp [show (1179648 * k + 621502) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 310751) = 1769472 * k + 932254 := by
    unfold C
    simp [show (589824 * k + 310751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 932254) = 884736 * k + 466127 := by
    unfold C
    simp [show (1769472 * k + 932254) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 466127) = 2654208 * k + 1398382 := by
    unfold C
    simp [show (884736 * k + 466127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1398382) = 1327104 * k + 699191 := by
    unfold C
    simp [show (2654208 * k + 1398382) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 699191) = 3981312 * k + 2097574 := by
    unfold C
    simp [show (1327104 * k + 699191) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2097574) = 1990656 * k + 1048787 := by
    unfold C
    simp [show (3981312 * k + 2097574) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1048787) = 5971968 * k + 3146362 := by
    unfold C
    simp [show (1990656 * k + 1048787) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3146362) = 2985984 * k + 1573181 := by
    unfold C
    simp [show (5971968 * k + 3146362) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1573181) = 8957952 * k + 4719544 := by
    unfold C
    simp [show (2985984 * k + 1573181) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4719544) = 4478976 * k + 2359772 := by
    unfold C
    simp [show (8957952 * k + 4719544) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2359772) = 2239488 * k + 1179886 := by
    unfold C
    simp [show (4478976 * k + 2359772) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1179886) = 1119744 * k + 589943 := by
    unfold C
    simp [show (2239488 * k + 1179886) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 589943) = 3359232 * k + 1769830 := by
    unfold C
    simp [show (1119744 * k + 589943) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1769830) = 1679616 * k + 884915 := by
    unfold C
    simp [show (3359232 * k + 1769830) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 884915) = 5038848 * k + 2654746 := by
    unfold C
    simp [show (1679616 * k + 884915) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2654746) = 2519424 * k + 1327373 := by
    unfold C
    simp [show (5038848 * k + 2654746) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1327373) = 7558272 * k + 3982120 := by
    unfold C
    simp [show (2519424 * k + 1327373) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3982120) = 3779136 * k + 1991060 := by
    unfold C
    simp [show (7558272 * k + 3982120) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1991060) = 1889568 * k + 995530 := by
    unfold C
    simp [show (3779136 * k + 1991060) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 995530) = 944784 * k + 497765 := by
    unfold C
    simp [show (1889568 * k + 995530) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 497765) = 2834352 * k + 1493296 := by
    unfold C
    simp [show (944784 * k + 497765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1493296) = 1417176 * k + 746648 := by
    unfold C
    simp [show (2834352 * k + 1493296) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 746648) = 708588 * k + 373324 := by
    unfold C
    simp [show (1417176 * k + 746648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 373324) = 354294 * k + 186662 := by
    unfold C
    simp [show (708588 * k + 373324) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 186662) = 177147 * k + 93331 := by
    unfold C
    simp [show (354294 * k + 186662) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 138111) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 138111))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_138223 : ∀ k : Nat,
    iterate (262144 * k + 138223) 29 = 177147 * k + 93407 ∧
      177147 * k + 93407 < 262144 * k + 138223 := by
  intro k
  have h1 : C (262144 * k + 138223) = 786432 * k + 414670 := by
    unfold C
    simp [show (262144 * k + 138223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 414670) = 393216 * k + 207335 := by
    unfold C
    simp [show (786432 * k + 414670) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 207335) = 1179648 * k + 622006 := by
    unfold C
    simp [show (393216 * k + 207335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 622006) = 589824 * k + 311003 := by
    unfold C
    simp [show (1179648 * k + 622006) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 311003) = 1769472 * k + 933010 := by
    unfold C
    simp [show (589824 * k + 311003) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 933010) = 884736 * k + 466505 := by
    unfold C
    simp [show (1769472 * k + 933010) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 466505) = 2654208 * k + 1399516 := by
    unfold C
    simp [show (884736 * k + 466505) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1399516) = 1327104 * k + 699758 := by
    unfold C
    simp [show (2654208 * k + 1399516) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 699758) = 663552 * k + 349879 := by
    unfold C
    simp [show (1327104 * k + 699758) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 349879) = 1990656 * k + 1049638 := by
    unfold C
    simp [show (663552 * k + 349879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1049638) = 995328 * k + 524819 := by
    unfold C
    simp [show (1990656 * k + 1049638) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 524819) = 2985984 * k + 1574458 := by
    unfold C
    simp [show (995328 * k + 524819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1574458) = 1492992 * k + 787229 := by
    unfold C
    simp [show (2985984 * k + 1574458) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 787229) = 4478976 * k + 2361688 := by
    unfold C
    simp [show (1492992 * k + 787229) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2361688) = 2239488 * k + 1180844 := by
    unfold C
    simp [show (4478976 * k + 2361688) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1180844) = 1119744 * k + 590422 := by
    unfold C
    simp [show (2239488 * k + 1180844) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 590422) = 559872 * k + 295211 := by
    unfold C
    simp [show (1119744 * k + 590422) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 295211) = 1679616 * k + 885634 := by
    unfold C
    simp [show (559872 * k + 295211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 885634) = 839808 * k + 442817 := by
    unfold C
    simp [show (1679616 * k + 885634) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 442817) = 2519424 * k + 1328452 := by
    unfold C
    simp [show (839808 * k + 442817) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1328452) = 1259712 * k + 664226 := by
    unfold C
    simp [show (2519424 * k + 1328452) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 664226) = 629856 * k + 332113 := by
    unfold C
    simp [show (1259712 * k + 664226) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 332113) = 1889568 * k + 996340 := by
    unfold C
    simp [show (629856 * k + 332113) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 996340) = 944784 * k + 498170 := by
    unfold C
    simp [show (1889568 * k + 996340) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 498170) = 472392 * k + 249085 := by
    unfold C
    simp [show (944784 * k + 498170) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 249085) = 1417176 * k + 747256 := by
    unfold C
    simp [show (472392 * k + 249085) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 747256) = 708588 * k + 373628 := by
    unfold C
    simp [show (1417176 * k + 747256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 373628) = 354294 * k + 186814 := by
    unfold C
    simp [show (708588 * k + 373628) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 186814) = 177147 * k + 93407 := by
    unfold C
    simp [show (354294 * k + 186814) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 138223) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 138223))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_138343 : ∀ k : Nat,
    iterate (262144 * k + 138343) 29 = 177147 * k + 93488 ∧
      177147 * k + 93488 < 262144 * k + 138343 := by
  intro k
  have h1 : C (262144 * k + 138343) = 786432 * k + 415030 := by
    unfold C
    simp [show (262144 * k + 138343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 415030) = 393216 * k + 207515 := by
    unfold C
    simp [show (786432 * k + 415030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 207515) = 1179648 * k + 622546 := by
    unfold C
    simp [show (393216 * k + 207515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 622546) = 589824 * k + 311273 := by
    unfold C
    simp [show (1179648 * k + 622546) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 311273) = 1769472 * k + 933820 := by
    unfold C
    simp [show (589824 * k + 311273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 933820) = 884736 * k + 466910 := by
    unfold C
    simp [show (1769472 * k + 933820) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 466910) = 442368 * k + 233455 := by
    unfold C
    simp [show (884736 * k + 466910) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 233455) = 1327104 * k + 700366 := by
    unfold C
    simp [show (442368 * k + 233455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 700366) = 663552 * k + 350183 := by
    unfold C
    simp [show (1327104 * k + 700366) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 350183) = 1990656 * k + 1050550 := by
    unfold C
    simp [show (663552 * k + 350183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1050550) = 995328 * k + 525275 := by
    unfold C
    simp [show (1990656 * k + 1050550) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 525275) = 2985984 * k + 1575826 := by
    unfold C
    simp [show (995328 * k + 525275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1575826) = 1492992 * k + 787913 := by
    unfold C
    simp [show (2985984 * k + 1575826) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 787913) = 4478976 * k + 2363740 := by
    unfold C
    simp [show (1492992 * k + 787913) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2363740) = 2239488 * k + 1181870 := by
    unfold C
    simp [show (4478976 * k + 2363740) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1181870) = 1119744 * k + 590935 := by
    unfold C
    simp [show (2239488 * k + 1181870) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 590935) = 3359232 * k + 1772806 := by
    unfold C
    simp [show (1119744 * k + 590935) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1772806) = 1679616 * k + 886403 := by
    unfold C
    simp [show (3359232 * k + 1772806) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 886403) = 5038848 * k + 2659210 := by
    unfold C
    simp [show (1679616 * k + 886403) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2659210) = 2519424 * k + 1329605 := by
    unfold C
    simp [show (5038848 * k + 2659210) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1329605) = 7558272 * k + 3988816 := by
    unfold C
    simp [show (2519424 * k + 1329605) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3988816) = 3779136 * k + 1994408 := by
    unfold C
    simp [show (7558272 * k + 3988816) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1994408) = 1889568 * k + 997204 := by
    unfold C
    simp [show (3779136 * k + 1994408) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 997204) = 944784 * k + 498602 := by
    unfold C
    simp [show (1889568 * k + 997204) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 498602) = 472392 * k + 249301 := by
    unfold C
    simp [show (944784 * k + 498602) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 249301) = 1417176 * k + 747904 := by
    unfold C
    simp [show (472392 * k + 249301) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 747904) = 708588 * k + 373952 := by
    unfold C
    simp [show (1417176 * k + 747904) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 373952) = 354294 * k + 186976 := by
    unfold C
    simp [show (708588 * k + 373952) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 186976) = 177147 * k + 93488 := by
    unfold C
    simp [show (354294 * k + 186976) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 138343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 138343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_138991 : ∀ k : Nat,
    iterate (262144 * k + 138991) 29 = 177147 * k + 93926 ∧
      177147 * k + 93926 < 262144 * k + 138991 := by
  intro k
  have h1 : C (262144 * k + 138991) = 786432 * k + 416974 := by
    unfold C
    simp [show (262144 * k + 138991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 416974) = 393216 * k + 208487 := by
    unfold C
    simp [show (786432 * k + 416974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 208487) = 1179648 * k + 625462 := by
    unfold C
    simp [show (393216 * k + 208487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 625462) = 589824 * k + 312731 := by
    unfold C
    simp [show (1179648 * k + 625462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 312731) = 1769472 * k + 938194 := by
    unfold C
    simp [show (589824 * k + 312731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 938194) = 884736 * k + 469097 := by
    unfold C
    simp [show (1769472 * k + 938194) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 469097) = 2654208 * k + 1407292 := by
    unfold C
    simp [show (884736 * k + 469097) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1407292) = 1327104 * k + 703646 := by
    unfold C
    simp [show (2654208 * k + 1407292) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 703646) = 663552 * k + 351823 := by
    unfold C
    simp [show (1327104 * k + 703646) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 351823) = 1990656 * k + 1055470 := by
    unfold C
    simp [show (663552 * k + 351823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1055470) = 995328 * k + 527735 := by
    unfold C
    simp [show (1990656 * k + 1055470) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 527735) = 2985984 * k + 1583206 := by
    unfold C
    simp [show (995328 * k + 527735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1583206) = 1492992 * k + 791603 := by
    unfold C
    simp [show (2985984 * k + 1583206) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 791603) = 4478976 * k + 2374810 := by
    unfold C
    simp [show (1492992 * k + 791603) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2374810) = 2239488 * k + 1187405 := by
    unfold C
    simp [show (4478976 * k + 2374810) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1187405) = 6718464 * k + 3562216 := by
    unfold C
    simp [show (2239488 * k + 1187405) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3562216) = 3359232 * k + 1781108 := by
    unfold C
    simp [show (6718464 * k + 3562216) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1781108) = 1679616 * k + 890554 := by
    unfold C
    simp [show (3359232 * k + 1781108) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 890554) = 839808 * k + 445277 := by
    unfold C
    simp [show (1679616 * k + 890554) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 445277) = 2519424 * k + 1335832 := by
    unfold C
    simp [show (839808 * k + 445277) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1335832) = 1259712 * k + 667916 := by
    unfold C
    simp [show (2519424 * k + 1335832) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 667916) = 629856 * k + 333958 := by
    unfold C
    simp [show (1259712 * k + 667916) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 333958) = 314928 * k + 166979 := by
    unfold C
    simp [show (629856 * k + 333958) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 166979) = 944784 * k + 500938 := by
    unfold C
    simp [show (314928 * k + 166979) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 500938) = 472392 * k + 250469 := by
    unfold C
    simp [show (944784 * k + 500938) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 250469) = 1417176 * k + 751408 := by
    unfold C
    simp [show (472392 * k + 250469) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 751408) = 708588 * k + 375704 := by
    unfold C
    simp [show (1417176 * k + 751408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 375704) = 354294 * k + 187852 := by
    unfold C
    simp [show (708588 * k + 375704) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 187852) = 177147 * k + 93926 := by
    unfold C
    simp [show (354294 * k + 187852) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 138991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 138991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_139355 : ∀ k : Nat,
    iterate (262144 * k + 139355) 29 = 177147 * k + 94172 ∧
      177147 * k + 94172 < 262144 * k + 139355 := by
  intro k
  have h1 : C (262144 * k + 139355) = 786432 * k + 418066 := by
    unfold C
    simp [show (262144 * k + 139355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 418066) = 393216 * k + 209033 := by
    unfold C
    simp [show (786432 * k + 418066) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 209033) = 1179648 * k + 627100 := by
    unfold C
    simp [show (393216 * k + 209033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 627100) = 589824 * k + 313550 := by
    unfold C
    simp [show (1179648 * k + 627100) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 313550) = 294912 * k + 156775 := by
    unfold C
    simp [show (589824 * k + 313550) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 156775) = 884736 * k + 470326 := by
    unfold C
    simp [show (294912 * k + 156775) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 470326) = 442368 * k + 235163 := by
    unfold C
    simp [show (884736 * k + 470326) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 235163) = 1327104 * k + 705490 := by
    unfold C
    simp [show (442368 * k + 235163) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 705490) = 663552 * k + 352745 := by
    unfold C
    simp [show (1327104 * k + 705490) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 352745) = 1990656 * k + 1058236 := by
    unfold C
    simp [show (663552 * k + 352745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1058236) = 995328 * k + 529118 := by
    unfold C
    simp [show (1990656 * k + 1058236) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 529118) = 497664 * k + 264559 := by
    unfold C
    simp [show (995328 * k + 529118) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 264559) = 1492992 * k + 793678 := by
    unfold C
    simp [show (497664 * k + 264559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 793678) = 746496 * k + 396839 := by
    unfold C
    simp [show (1492992 * k + 793678) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 396839) = 2239488 * k + 1190518 := by
    unfold C
    simp [show (746496 * k + 396839) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1190518) = 1119744 * k + 595259 := by
    unfold C
    simp [show (2239488 * k + 1190518) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 595259) = 3359232 * k + 1785778 := by
    unfold C
    simp [show (1119744 * k + 595259) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1785778) = 1679616 * k + 892889 := by
    unfold C
    simp [show (3359232 * k + 1785778) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 892889) = 5038848 * k + 2678668 := by
    unfold C
    simp [show (1679616 * k + 892889) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2678668) = 2519424 * k + 1339334 := by
    unfold C
    simp [show (5038848 * k + 2678668) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1339334) = 1259712 * k + 669667 := by
    unfold C
    simp [show (2519424 * k + 1339334) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 669667) = 3779136 * k + 2009002 := by
    unfold C
    simp [show (1259712 * k + 669667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2009002) = 1889568 * k + 1004501 := by
    unfold C
    simp [show (3779136 * k + 2009002) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1004501) = 5668704 * k + 3013504 := by
    unfold C
    simp [show (1889568 * k + 1004501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3013504) = 2834352 * k + 1506752 := by
    unfold C
    simp [show (5668704 * k + 3013504) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1506752) = 1417176 * k + 753376 := by
    unfold C
    simp [show (2834352 * k + 1506752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 753376) = 708588 * k + 376688 := by
    unfold C
    simp [show (1417176 * k + 753376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 376688) = 354294 * k + 188344 := by
    unfold C
    simp [show (708588 * k + 376688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 188344) = 177147 * k + 94172 := by
    unfold C
    simp [show (354294 * k + 188344) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 139355) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 139355))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140095 : ∀ k : Nat,
    iterate (262144 * k + 140095) 29 = 177147 * k + 94672 ∧
      177147 * k + 94672 < 262144 * k + 140095 := by
  intro k
  have h1 : C (262144 * k + 140095) = 786432 * k + 420286 := by
    unfold C
    simp [show (262144 * k + 140095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 420286) = 393216 * k + 210143 := by
    unfold C
    simp [show (786432 * k + 420286) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 210143) = 1179648 * k + 630430 := by
    unfold C
    simp [show (393216 * k + 210143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 630430) = 589824 * k + 315215 := by
    unfold C
    simp [show (1179648 * k + 630430) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 315215) = 1769472 * k + 945646 := by
    unfold C
    simp [show (589824 * k + 315215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 945646) = 884736 * k + 472823 := by
    unfold C
    simp [show (1769472 * k + 945646) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 472823) = 2654208 * k + 1418470 := by
    unfold C
    simp [show (884736 * k + 472823) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1418470) = 1327104 * k + 709235 := by
    unfold C
    simp [show (2654208 * k + 1418470) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 709235) = 3981312 * k + 2127706 := by
    unfold C
    simp [show (1327104 * k + 709235) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2127706) = 1990656 * k + 1063853 := by
    unfold C
    simp [show (3981312 * k + 2127706) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1063853) = 5971968 * k + 3191560 := by
    unfold C
    simp [show (1990656 * k + 1063853) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3191560) = 2985984 * k + 1595780 := by
    unfold C
    simp [show (5971968 * k + 3191560) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1595780) = 1492992 * k + 797890 := by
    unfold C
    simp [show (2985984 * k + 1595780) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 797890) = 746496 * k + 398945 := by
    unfold C
    simp [show (1492992 * k + 797890) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 398945) = 2239488 * k + 1196836 := by
    unfold C
    simp [show (746496 * k + 398945) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1196836) = 1119744 * k + 598418 := by
    unfold C
    simp [show (2239488 * k + 1196836) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 598418) = 559872 * k + 299209 := by
    unfold C
    simp [show (1119744 * k + 598418) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 299209) = 1679616 * k + 897628 := by
    unfold C
    simp [show (559872 * k + 299209) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 897628) = 839808 * k + 448814 := by
    unfold C
    simp [show (1679616 * k + 897628) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 448814) = 419904 * k + 224407 := by
    unfold C
    simp [show (839808 * k + 448814) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 224407) = 1259712 * k + 673222 := by
    unfold C
    simp [show (419904 * k + 224407) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 673222) = 629856 * k + 336611 := by
    unfold C
    simp [show (1259712 * k + 673222) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 336611) = 1889568 * k + 1009834 := by
    unfold C
    simp [show (629856 * k + 336611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1009834) = 944784 * k + 504917 := by
    unfold C
    simp [show (1889568 * k + 1009834) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 504917) = 2834352 * k + 1514752 := by
    unfold C
    simp [show (944784 * k + 504917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1514752) = 1417176 * k + 757376 := by
    unfold C
    simp [show (2834352 * k + 1514752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 757376) = 708588 * k + 378688 := by
    unfold C
    simp [show (1417176 * k + 757376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 378688) = 354294 * k + 189344 := by
    unfold C
    simp [show (708588 * k + 378688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 189344) = 177147 * k + 94672 := by
    unfold C
    simp [show (354294 * k + 189344) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140095) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140095))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140415 : ∀ k : Nat,
    iterate (262144 * k + 140415) 29 = 177147 * k + 94888 ∧
      177147 * k + 94888 < 262144 * k + 140415 := by
  intro k
  have h1 : C (262144 * k + 140415) = 786432 * k + 421246 := by
    unfold C
    simp [show (262144 * k + 140415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 421246) = 393216 * k + 210623 := by
    unfold C
    simp [show (786432 * k + 421246) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 210623) = 1179648 * k + 631870 := by
    unfold C
    simp [show (393216 * k + 210623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 631870) = 589824 * k + 315935 := by
    unfold C
    simp [show (1179648 * k + 631870) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 315935) = 1769472 * k + 947806 := by
    unfold C
    simp [show (589824 * k + 315935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 947806) = 884736 * k + 473903 := by
    unfold C
    simp [show (1769472 * k + 947806) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 473903) = 2654208 * k + 1421710 := by
    unfold C
    simp [show (884736 * k + 473903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1421710) = 1327104 * k + 710855 := by
    unfold C
    simp [show (2654208 * k + 1421710) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 710855) = 3981312 * k + 2132566 := by
    unfold C
    simp [show (1327104 * k + 710855) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2132566) = 1990656 * k + 1066283 := by
    unfold C
    simp [show (3981312 * k + 2132566) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1066283) = 5971968 * k + 3198850 := by
    unfold C
    simp [show (1990656 * k + 1066283) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3198850) = 2985984 * k + 1599425 := by
    unfold C
    simp [show (5971968 * k + 3198850) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1599425) = 8957952 * k + 4798276 := by
    unfold C
    simp [show (2985984 * k + 1599425) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4798276) = 4478976 * k + 2399138 := by
    unfold C
    simp [show (8957952 * k + 4798276) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2399138) = 2239488 * k + 1199569 := by
    unfold C
    simp [show (4478976 * k + 2399138) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1199569) = 6718464 * k + 3598708 := by
    unfold C
    simp [show (2239488 * k + 1199569) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3598708) = 3359232 * k + 1799354 := by
    unfold C
    simp [show (6718464 * k + 3598708) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1799354) = 1679616 * k + 899677 := by
    unfold C
    simp [show (3359232 * k + 1799354) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 899677) = 5038848 * k + 2699032 := by
    unfold C
    simp [show (1679616 * k + 899677) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2699032) = 2519424 * k + 1349516 := by
    unfold C
    simp [show (5038848 * k + 2699032) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1349516) = 1259712 * k + 674758 := by
    unfold C
    simp [show (2519424 * k + 1349516) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 674758) = 629856 * k + 337379 := by
    unfold C
    simp [show (1259712 * k + 674758) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 337379) = 1889568 * k + 1012138 := by
    unfold C
    simp [show (629856 * k + 337379) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1012138) = 944784 * k + 506069 := by
    unfold C
    simp [show (1889568 * k + 1012138) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 506069) = 2834352 * k + 1518208 := by
    unfold C
    simp [show (944784 * k + 506069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1518208) = 1417176 * k + 759104 := by
    unfold C
    simp [show (2834352 * k + 1518208) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 759104) = 708588 * k + 379552 := by
    unfold C
    simp [show (1417176 * k + 759104) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 379552) = 354294 * k + 189776 := by
    unfold C
    simp [show (708588 * k + 379552) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 189776) = 177147 * k + 94888 := by
    unfold C
    simp [show (354294 * k + 189776) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140415) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140415))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140607 : ∀ k : Nat,
    iterate (262144 * k + 140607) 29 = 177147 * k + 95018 ∧
      177147 * k + 95018 < 262144 * k + 140607 := by
  intro k
  have h1 : C (262144 * k + 140607) = 786432 * k + 421822 := by
    unfold C
    simp [show (262144 * k + 140607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 421822) = 393216 * k + 210911 := by
    unfold C
    simp [show (786432 * k + 421822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 210911) = 1179648 * k + 632734 := by
    unfold C
    simp [show (393216 * k + 210911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 632734) = 589824 * k + 316367 := by
    unfold C
    simp [show (1179648 * k + 632734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 316367) = 1769472 * k + 949102 := by
    unfold C
    simp [show (589824 * k + 316367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 949102) = 884736 * k + 474551 := by
    unfold C
    simp [show (1769472 * k + 949102) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 474551) = 2654208 * k + 1423654 := by
    unfold C
    simp [show (884736 * k + 474551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1423654) = 1327104 * k + 711827 := by
    unfold C
    simp [show (2654208 * k + 1423654) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 711827) = 3981312 * k + 2135482 := by
    unfold C
    simp [show (1327104 * k + 711827) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2135482) = 1990656 * k + 1067741 := by
    unfold C
    simp [show (3981312 * k + 2135482) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1067741) = 5971968 * k + 3203224 := by
    unfold C
    simp [show (1990656 * k + 1067741) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3203224) = 2985984 * k + 1601612 := by
    unfold C
    simp [show (5971968 * k + 3203224) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1601612) = 1492992 * k + 800806 := by
    unfold C
    simp [show (2985984 * k + 1601612) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 800806) = 746496 * k + 400403 := by
    unfold C
    simp [show (1492992 * k + 800806) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 400403) = 2239488 * k + 1201210 := by
    unfold C
    simp [show (746496 * k + 400403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1201210) = 1119744 * k + 600605 := by
    unfold C
    simp [show (2239488 * k + 1201210) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 600605) = 3359232 * k + 1801816 := by
    unfold C
    simp [show (1119744 * k + 600605) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1801816) = 1679616 * k + 900908 := by
    unfold C
    simp [show (3359232 * k + 1801816) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 900908) = 839808 * k + 450454 := by
    unfold C
    simp [show (1679616 * k + 900908) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 450454) = 419904 * k + 225227 := by
    unfold C
    simp [show (839808 * k + 450454) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 225227) = 1259712 * k + 675682 := by
    unfold C
    simp [show (419904 * k + 225227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 675682) = 629856 * k + 337841 := by
    unfold C
    simp [show (1259712 * k + 675682) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 337841) = 1889568 * k + 1013524 := by
    unfold C
    simp [show (629856 * k + 337841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1013524) = 944784 * k + 506762 := by
    unfold C
    simp [show (1889568 * k + 1013524) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 506762) = 472392 * k + 253381 := by
    unfold C
    simp [show (944784 * k + 506762) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 253381) = 1417176 * k + 760144 := by
    unfold C
    simp [show (472392 * k + 253381) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 760144) = 708588 * k + 380072 := by
    unfold C
    simp [show (1417176 * k + 760144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 380072) = 354294 * k + 190036 := by
    unfold C
    simp [show (708588 * k + 380072) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190036) = 177147 * k + 95018 := by
    unfold C
    simp [show (354294 * k + 190036) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140647 : ∀ k : Nat,
    iterate (262144 * k + 140647) 29 = 177147 * k + 95045 ∧
      177147 * k + 95045 < 262144 * k + 140647 := by
  intro k
  have h1 : C (262144 * k + 140647) = 786432 * k + 421942 := by
    unfold C
    simp [show (262144 * k + 140647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 421942) = 393216 * k + 210971 := by
    unfold C
    simp [show (786432 * k + 421942) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 210971) = 1179648 * k + 632914 := by
    unfold C
    simp [show (393216 * k + 210971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 632914) = 589824 * k + 316457 := by
    unfold C
    simp [show (1179648 * k + 632914) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 316457) = 1769472 * k + 949372 := by
    unfold C
    simp [show (589824 * k + 316457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 949372) = 884736 * k + 474686 := by
    unfold C
    simp [show (1769472 * k + 949372) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 474686) = 442368 * k + 237343 := by
    unfold C
    simp [show (884736 * k + 474686) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 237343) = 1327104 * k + 712030 := by
    unfold C
    simp [show (442368 * k + 237343) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 712030) = 663552 * k + 356015 := by
    unfold C
    simp [show (1327104 * k + 712030) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 356015) = 1990656 * k + 1068046 := by
    unfold C
    simp [show (663552 * k + 356015) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1068046) = 995328 * k + 534023 := by
    unfold C
    simp [show (1990656 * k + 1068046) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 534023) = 2985984 * k + 1602070 := by
    unfold C
    simp [show (995328 * k + 534023) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1602070) = 1492992 * k + 801035 := by
    unfold C
    simp [show (2985984 * k + 1602070) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 801035) = 4478976 * k + 2403106 := by
    unfold C
    simp [show (1492992 * k + 801035) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2403106) = 2239488 * k + 1201553 := by
    unfold C
    simp [show (4478976 * k + 2403106) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1201553) = 6718464 * k + 3604660 := by
    unfold C
    simp [show (2239488 * k + 1201553) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3604660) = 3359232 * k + 1802330 := by
    unfold C
    simp [show (6718464 * k + 3604660) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1802330) = 1679616 * k + 901165 := by
    unfold C
    simp [show (3359232 * k + 1802330) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 901165) = 5038848 * k + 2703496 := by
    unfold C
    simp [show (1679616 * k + 901165) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2703496) = 2519424 * k + 1351748 := by
    unfold C
    simp [show (5038848 * k + 2703496) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1351748) = 1259712 * k + 675874 := by
    unfold C
    simp [show (2519424 * k + 1351748) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 675874) = 629856 * k + 337937 := by
    unfold C
    simp [show (1259712 * k + 675874) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 337937) = 1889568 * k + 1013812 := by
    unfold C
    simp [show (629856 * k + 337937) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1013812) = 944784 * k + 506906 := by
    unfold C
    simp [show (1889568 * k + 1013812) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 506906) = 472392 * k + 253453 := by
    unfold C
    simp [show (944784 * k + 506906) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 253453) = 1417176 * k + 760360 := by
    unfold C
    simp [show (472392 * k + 253453) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 760360) = 708588 * k + 380180 := by
    unfold C
    simp [show (1417176 * k + 760360) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 380180) = 354294 * k + 190090 := by
    unfold C
    simp [show (708588 * k + 380180) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190090) = 177147 * k + 95045 := by
    unfold C
    simp [show (354294 * k + 190090) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140647) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140647))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140767 : ∀ k : Nat,
    iterate (262144 * k + 140767) 29 = 177147 * k + 95126 ∧
      177147 * k + 95126 < 262144 * k + 140767 := by
  intro k
  have h1 : C (262144 * k + 140767) = 786432 * k + 422302 := by
    unfold C
    simp [show (262144 * k + 140767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 422302) = 393216 * k + 211151 := by
    unfold C
    simp [show (786432 * k + 422302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 211151) = 1179648 * k + 633454 := by
    unfold C
    simp [show (393216 * k + 211151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 633454) = 589824 * k + 316727 := by
    unfold C
    simp [show (1179648 * k + 633454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 316727) = 1769472 * k + 950182 := by
    unfold C
    simp [show (589824 * k + 316727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 950182) = 884736 * k + 475091 := by
    unfold C
    simp [show (1769472 * k + 950182) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 475091) = 2654208 * k + 1425274 := by
    unfold C
    simp [show (884736 * k + 475091) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1425274) = 1327104 * k + 712637 := by
    unfold C
    simp [show (2654208 * k + 1425274) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 712637) = 3981312 * k + 2137912 := by
    unfold C
    simp [show (1327104 * k + 712637) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2137912) = 1990656 * k + 1068956 := by
    unfold C
    simp [show (3981312 * k + 2137912) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1068956) = 995328 * k + 534478 := by
    unfold C
    simp [show (1990656 * k + 1068956) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 534478) = 497664 * k + 267239 := by
    unfold C
    simp [show (995328 * k + 534478) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 267239) = 1492992 * k + 801718 := by
    unfold C
    simp [show (497664 * k + 267239) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 801718) = 746496 * k + 400859 := by
    unfold C
    simp [show (1492992 * k + 801718) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 400859) = 2239488 * k + 1202578 := by
    unfold C
    simp [show (746496 * k + 400859) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1202578) = 1119744 * k + 601289 := by
    unfold C
    simp [show (2239488 * k + 1202578) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 601289) = 3359232 * k + 1803868 := by
    unfold C
    simp [show (1119744 * k + 601289) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1803868) = 1679616 * k + 901934 := by
    unfold C
    simp [show (3359232 * k + 1803868) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 901934) = 839808 * k + 450967 := by
    unfold C
    simp [show (1679616 * k + 901934) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 450967) = 2519424 * k + 1352902 := by
    unfold C
    simp [show (839808 * k + 450967) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1352902) = 1259712 * k + 676451 := by
    unfold C
    simp [show (2519424 * k + 1352902) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 676451) = 3779136 * k + 2029354 := by
    unfold C
    simp [show (1259712 * k + 676451) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2029354) = 1889568 * k + 1014677 := by
    unfold C
    simp [show (3779136 * k + 2029354) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1014677) = 5668704 * k + 3044032 := by
    unfold C
    simp [show (1889568 * k + 1014677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3044032) = 2834352 * k + 1522016 := by
    unfold C
    simp [show (5668704 * k + 3044032) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1522016) = 1417176 * k + 761008 := by
    unfold C
    simp [show (2834352 * k + 1522016) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 761008) = 708588 * k + 380504 := by
    unfold C
    simp [show (1417176 * k + 761008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 380504) = 354294 * k + 190252 := by
    unfold C
    simp [show (708588 * k + 380504) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190252) = 177147 * k + 95126 := by
    unfold C
    simp [show (354294 * k + 190252) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140775 : ∀ k : Nat,
    iterate (262144 * k + 140775) 29 = 177147 * k + 95132 ∧
      177147 * k + 95132 < 262144 * k + 140775 := by
  intro k
  have h1 : C (262144 * k + 140775) = 786432 * k + 422326 := by
    unfold C
    simp [show (262144 * k + 140775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 422326) = 393216 * k + 211163 := by
    unfold C
    simp [show (786432 * k + 422326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 211163) = 1179648 * k + 633490 := by
    unfold C
    simp [show (393216 * k + 211163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 633490) = 589824 * k + 316745 := by
    unfold C
    simp [show (1179648 * k + 633490) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 316745) = 1769472 * k + 950236 := by
    unfold C
    simp [show (589824 * k + 316745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 950236) = 884736 * k + 475118 := by
    unfold C
    simp [show (1769472 * k + 950236) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 475118) = 442368 * k + 237559 := by
    unfold C
    simp [show (884736 * k + 475118) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 237559) = 1327104 * k + 712678 := by
    unfold C
    simp [show (442368 * k + 237559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 712678) = 663552 * k + 356339 := by
    unfold C
    simp [show (1327104 * k + 712678) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 356339) = 1990656 * k + 1069018 := by
    unfold C
    simp [show (663552 * k + 356339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1069018) = 995328 * k + 534509 := by
    unfold C
    simp [show (1990656 * k + 1069018) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 534509) = 2985984 * k + 1603528 := by
    unfold C
    simp [show (995328 * k + 534509) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1603528) = 1492992 * k + 801764 := by
    unfold C
    simp [show (2985984 * k + 1603528) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 801764) = 746496 * k + 400882 := by
    unfold C
    simp [show (1492992 * k + 801764) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 400882) = 373248 * k + 200441 := by
    unfold C
    simp [show (746496 * k + 400882) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 200441) = 1119744 * k + 601324 := by
    unfold C
    simp [show (373248 * k + 200441) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 601324) = 559872 * k + 300662 := by
    unfold C
    simp [show (1119744 * k + 601324) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 300662) = 279936 * k + 150331 := by
    unfold C
    simp [show (559872 * k + 300662) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 150331) = 839808 * k + 450994 := by
    unfold C
    simp [show (279936 * k + 150331) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 450994) = 419904 * k + 225497 := by
    unfold C
    simp [show (839808 * k + 450994) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 225497) = 1259712 * k + 676492 := by
    unfold C
    simp [show (419904 * k + 225497) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 676492) = 629856 * k + 338246 := by
    unfold C
    simp [show (1259712 * k + 676492) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 338246) = 314928 * k + 169123 := by
    unfold C
    simp [show (629856 * k + 338246) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 169123) = 944784 * k + 507370 := by
    unfold C
    simp [show (314928 * k + 169123) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 507370) = 472392 * k + 253685 := by
    unfold C
    simp [show (944784 * k + 507370) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 253685) = 1417176 * k + 761056 := by
    unfold C
    simp [show (472392 * k + 253685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 761056) = 708588 * k + 380528 := by
    unfold C
    simp [show (1417176 * k + 761056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 380528) = 354294 * k + 190264 := by
    unfold C
    simp [show (708588 * k + 380528) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190264) = 177147 * k + 95132 := by
    unfold C
    simp [show (354294 * k + 190264) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_140903 : ∀ k : Nat,
    iterate (262144 * k + 140903) 29 = 177147 * k + 95218 ∧
      177147 * k + 95218 < 262144 * k + 140903 := by
  intro k
  have h1 : C (262144 * k + 140903) = 786432 * k + 422710 := by
    unfold C
    simp [show (262144 * k + 140903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 422710) = 393216 * k + 211355 := by
    unfold C
    simp [show (786432 * k + 422710) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 211355) = 1179648 * k + 634066 := by
    unfold C
    simp [show (393216 * k + 211355) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 634066) = 589824 * k + 317033 := by
    unfold C
    simp [show (1179648 * k + 634066) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 317033) = 1769472 * k + 951100 := by
    unfold C
    simp [show (589824 * k + 317033) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 951100) = 884736 * k + 475550 := by
    unfold C
    simp [show (1769472 * k + 951100) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 475550) = 442368 * k + 237775 := by
    unfold C
    simp [show (884736 * k + 475550) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 237775) = 1327104 * k + 713326 := by
    unfold C
    simp [show (442368 * k + 237775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 713326) = 663552 * k + 356663 := by
    unfold C
    simp [show (1327104 * k + 713326) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 356663) = 1990656 * k + 1069990 := by
    unfold C
    simp [show (663552 * k + 356663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1069990) = 995328 * k + 534995 := by
    unfold C
    simp [show (1990656 * k + 1069990) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 534995) = 2985984 * k + 1604986 := by
    unfold C
    simp [show (995328 * k + 534995) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1604986) = 1492992 * k + 802493 := by
    unfold C
    simp [show (2985984 * k + 1604986) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 802493) = 4478976 * k + 2407480 := by
    unfold C
    simp [show (1492992 * k + 802493) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2407480) = 2239488 * k + 1203740 := by
    unfold C
    simp [show (4478976 * k + 2407480) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1203740) = 1119744 * k + 601870 := by
    unfold C
    simp [show (2239488 * k + 1203740) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 601870) = 559872 * k + 300935 := by
    unfold C
    simp [show (1119744 * k + 601870) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 300935) = 1679616 * k + 902806 := by
    unfold C
    simp [show (559872 * k + 300935) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 902806) = 839808 * k + 451403 := by
    unfold C
    simp [show (1679616 * k + 902806) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 451403) = 2519424 * k + 1354210 := by
    unfold C
    simp [show (839808 * k + 451403) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1354210) = 1259712 * k + 677105 := by
    unfold C
    simp [show (2519424 * k + 1354210) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 677105) = 3779136 * k + 2031316 := by
    unfold C
    simp [show (1259712 * k + 677105) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2031316) = 1889568 * k + 1015658 := by
    unfold C
    simp [show (3779136 * k + 2031316) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1015658) = 944784 * k + 507829 := by
    unfold C
    simp [show (1889568 * k + 1015658) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 507829) = 2834352 * k + 1523488 := by
    unfold C
    simp [show (944784 * k + 507829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1523488) = 1417176 * k + 761744 := by
    unfold C
    simp [show (2834352 * k + 1523488) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 761744) = 708588 * k + 380872 := by
    unfold C
    simp [show (1417176 * k + 761744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 380872) = 354294 * k + 190436 := by
    unfold C
    simp [show (708588 * k + 380872) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190436) = 177147 * k + 95218 := by
    unfold C
    simp [show (354294 * k + 190436) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 140903) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 140903))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_141183 : ∀ k : Nat,
    iterate (262144 * k + 141183) 29 = 177147 * k + 95407 ∧
      177147 * k + 95407 < 262144 * k + 141183 := by
  intro k
  have h1 : C (262144 * k + 141183) = 786432 * k + 423550 := by
    unfold C
    simp [show (262144 * k + 141183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 423550) = 393216 * k + 211775 := by
    unfold C
    simp [show (786432 * k + 423550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 211775) = 1179648 * k + 635326 := by
    unfold C
    simp [show (393216 * k + 211775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 635326) = 589824 * k + 317663 := by
    unfold C
    simp [show (1179648 * k + 635326) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 317663) = 1769472 * k + 952990 := by
    unfold C
    simp [show (589824 * k + 317663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 952990) = 884736 * k + 476495 := by
    unfold C
    simp [show (1769472 * k + 952990) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 476495) = 2654208 * k + 1429486 := by
    unfold C
    simp [show (884736 * k + 476495) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1429486) = 1327104 * k + 714743 := by
    unfold C
    simp [show (2654208 * k + 1429486) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 714743) = 3981312 * k + 2144230 := by
    unfold C
    simp [show (1327104 * k + 714743) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2144230) = 1990656 * k + 1072115 := by
    unfold C
    simp [show (3981312 * k + 2144230) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1072115) = 5971968 * k + 3216346 := by
    unfold C
    simp [show (1990656 * k + 1072115) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3216346) = 2985984 * k + 1608173 := by
    unfold C
    simp [show (5971968 * k + 3216346) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1608173) = 8957952 * k + 4824520 := by
    unfold C
    simp [show (2985984 * k + 1608173) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4824520) = 4478976 * k + 2412260 := by
    unfold C
    simp [show (8957952 * k + 4824520) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2412260) = 2239488 * k + 1206130 := by
    unfold C
    simp [show (4478976 * k + 2412260) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1206130) = 1119744 * k + 603065 := by
    unfold C
    simp [show (2239488 * k + 1206130) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 603065) = 3359232 * k + 1809196 := by
    unfold C
    simp [show (1119744 * k + 603065) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1809196) = 1679616 * k + 904598 := by
    unfold C
    simp [show (3359232 * k + 1809196) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 904598) = 839808 * k + 452299 := by
    unfold C
    simp [show (1679616 * k + 904598) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 452299) = 2519424 * k + 1356898 := by
    unfold C
    simp [show (839808 * k + 452299) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1356898) = 1259712 * k + 678449 := by
    unfold C
    simp [show (2519424 * k + 1356898) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 678449) = 3779136 * k + 2035348 := by
    unfold C
    simp [show (1259712 * k + 678449) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2035348) = 1889568 * k + 1017674 := by
    unfold C
    simp [show (3779136 * k + 2035348) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1017674) = 944784 * k + 508837 := by
    unfold C
    simp [show (1889568 * k + 1017674) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 508837) = 2834352 * k + 1526512 := by
    unfold C
    simp [show (944784 * k + 508837) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1526512) = 1417176 * k + 763256 := by
    unfold C
    simp [show (2834352 * k + 1526512) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 763256) = 708588 * k + 381628 := by
    unfold C
    simp [show (1417176 * k + 763256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 381628) = 354294 * k + 190814 := by
    unfold C
    simp [show (708588 * k + 381628) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190814) = 177147 * k + 95407 := by
    unfold C
    simp [show (354294 * k + 190814) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 141183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 141183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_141215 : ∀ k : Nat,
    iterate (262144 * k + 141215) 29 = 177147 * k + 95429 ∧
      177147 * k + 95429 < 262144 * k + 141215 := by
  intro k
  have h1 : C (262144 * k + 141215) = 786432 * k + 423646 := by
    unfold C
    simp [show (262144 * k + 141215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 423646) = 393216 * k + 211823 := by
    unfold C
    simp [show (786432 * k + 423646) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 211823) = 1179648 * k + 635470 := by
    unfold C
    simp [show (393216 * k + 211823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 635470) = 589824 * k + 317735 := by
    unfold C
    simp [show (1179648 * k + 635470) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 317735) = 1769472 * k + 953206 := by
    unfold C
    simp [show (589824 * k + 317735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 953206) = 884736 * k + 476603 := by
    unfold C
    simp [show (1769472 * k + 953206) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 476603) = 2654208 * k + 1429810 := by
    unfold C
    simp [show (884736 * k + 476603) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1429810) = 1327104 * k + 714905 := by
    unfold C
    simp [show (2654208 * k + 1429810) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 714905) = 3981312 * k + 2144716 := by
    unfold C
    simp [show (1327104 * k + 714905) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2144716) = 1990656 * k + 1072358 := by
    unfold C
    simp [show (3981312 * k + 2144716) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1072358) = 995328 * k + 536179 := by
    unfold C
    simp [show (1990656 * k + 1072358) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 536179) = 2985984 * k + 1608538 := by
    unfold C
    simp [show (995328 * k + 536179) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1608538) = 1492992 * k + 804269 := by
    unfold C
    simp [show (2985984 * k + 1608538) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 804269) = 4478976 * k + 2412808 := by
    unfold C
    simp [show (1492992 * k + 804269) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2412808) = 2239488 * k + 1206404 := by
    unfold C
    simp [show (4478976 * k + 2412808) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1206404) = 1119744 * k + 603202 := by
    unfold C
    simp [show (2239488 * k + 1206404) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 603202) = 559872 * k + 301601 := by
    unfold C
    simp [show (1119744 * k + 603202) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 301601) = 1679616 * k + 904804 := by
    unfold C
    simp [show (559872 * k + 301601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 904804) = 839808 * k + 452402 := by
    unfold C
    simp [show (1679616 * k + 904804) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 452402) = 419904 * k + 226201 := by
    unfold C
    simp [show (839808 * k + 452402) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 226201) = 1259712 * k + 678604 := by
    unfold C
    simp [show (419904 * k + 226201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 678604) = 629856 * k + 339302 := by
    unfold C
    simp [show (1259712 * k + 678604) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 339302) = 314928 * k + 169651 := by
    unfold C
    simp [show (629856 * k + 339302) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 169651) = 944784 * k + 508954 := by
    unfold C
    simp [show (314928 * k + 169651) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 508954) = 472392 * k + 254477 := by
    unfold C
    simp [show (944784 * k + 508954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 254477) = 1417176 * k + 763432 := by
    unfold C
    simp [show (472392 * k + 254477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 763432) = 708588 * k + 381716 := by
    unfold C
    simp [show (1417176 * k + 763432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 381716) = 354294 * k + 190858 := by
    unfold C
    simp [show (708588 * k + 381716) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 190858) = 177147 * k + 95429 := by
    unfold C
    simp [show (354294 * k + 190858) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 141215) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 141215))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_141375 : ∀ k : Nat,
    iterate (262144 * k + 141375) 29 = 177147 * k + 95537 ∧
      177147 * k + 95537 < 262144 * k + 141375 := by
  intro k
  have h1 : C (262144 * k + 141375) = 786432 * k + 424126 := by
    unfold C
    simp [show (262144 * k + 141375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 424126) = 393216 * k + 212063 := by
    unfold C
    simp [show (786432 * k + 424126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 212063) = 1179648 * k + 636190 := by
    unfold C
    simp [show (393216 * k + 212063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 636190) = 589824 * k + 318095 := by
    unfold C
    simp [show (1179648 * k + 636190) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 318095) = 1769472 * k + 954286 := by
    unfold C
    simp [show (589824 * k + 318095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 954286) = 884736 * k + 477143 := by
    unfold C
    simp [show (1769472 * k + 954286) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 477143) = 2654208 * k + 1431430 := by
    unfold C
    simp [show (884736 * k + 477143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1431430) = 1327104 * k + 715715 := by
    unfold C
    simp [show (2654208 * k + 1431430) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 715715) = 3981312 * k + 2147146 := by
    unfold C
    simp [show (1327104 * k + 715715) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2147146) = 1990656 * k + 1073573 := by
    unfold C
    simp [show (3981312 * k + 2147146) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1073573) = 5971968 * k + 3220720 := by
    unfold C
    simp [show (1990656 * k + 1073573) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3220720) = 2985984 * k + 1610360 := by
    unfold C
    simp [show (5971968 * k + 3220720) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1610360) = 1492992 * k + 805180 := by
    unfold C
    simp [show (2985984 * k + 1610360) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 805180) = 746496 * k + 402590 := by
    unfold C
    simp [show (1492992 * k + 805180) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 402590) = 373248 * k + 201295 := by
    unfold C
    simp [show (746496 * k + 402590) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 201295) = 1119744 * k + 603886 := by
    unfold C
    simp [show (373248 * k + 201295) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 603886) = 559872 * k + 301943 := by
    unfold C
    simp [show (1119744 * k + 603886) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 301943) = 1679616 * k + 905830 := by
    unfold C
    simp [show (559872 * k + 301943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 905830) = 839808 * k + 452915 := by
    unfold C
    simp [show (1679616 * k + 905830) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 452915) = 2519424 * k + 1358746 := by
    unfold C
    simp [show (839808 * k + 452915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1358746) = 1259712 * k + 679373 := by
    unfold C
    simp [show (2519424 * k + 1358746) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 679373) = 3779136 * k + 2038120 := by
    unfold C
    simp [show (1259712 * k + 679373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2038120) = 1889568 * k + 1019060 := by
    unfold C
    simp [show (3779136 * k + 2038120) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1019060) = 944784 * k + 509530 := by
    unfold C
    simp [show (1889568 * k + 1019060) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 509530) = 472392 * k + 254765 := by
    unfold C
    simp [show (944784 * k + 509530) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 254765) = 1417176 * k + 764296 := by
    unfold C
    simp [show (472392 * k + 254765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 764296) = 708588 * k + 382148 := by
    unfold C
    simp [show (1417176 * k + 764296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 382148) = 354294 * k + 191074 := by
    unfold C
    simp [show (708588 * k + 382148) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 191074) = 177147 * k + 95537 := by
    unfold C
    simp [show (354294 * k + 191074) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 141375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 141375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_141415 : ∀ k : Nat,
    iterate (262144 * k + 141415) 29 = 177147 * k + 95564 ∧
      177147 * k + 95564 < 262144 * k + 141415 := by
  intro k
  have h1 : C (262144 * k + 141415) = 786432 * k + 424246 := by
    unfold C
    simp [show (262144 * k + 141415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 424246) = 393216 * k + 212123 := by
    unfold C
    simp [show (786432 * k + 424246) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 212123) = 1179648 * k + 636370 := by
    unfold C
    simp [show (393216 * k + 212123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 636370) = 589824 * k + 318185 := by
    unfold C
    simp [show (1179648 * k + 636370) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 318185) = 1769472 * k + 954556 := by
    unfold C
    simp [show (589824 * k + 318185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 954556) = 884736 * k + 477278 := by
    unfold C
    simp [show (1769472 * k + 954556) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 477278) = 442368 * k + 238639 := by
    unfold C
    simp [show (884736 * k + 477278) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 238639) = 1327104 * k + 715918 := by
    unfold C
    simp [show (442368 * k + 238639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 715918) = 663552 * k + 357959 := by
    unfold C
    simp [show (1327104 * k + 715918) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 357959) = 1990656 * k + 1073878 := by
    unfold C
    simp [show (663552 * k + 357959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1073878) = 995328 * k + 536939 := by
    unfold C
    simp [show (1990656 * k + 1073878) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 536939) = 2985984 * k + 1610818 := by
    unfold C
    simp [show (995328 * k + 536939) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1610818) = 1492992 * k + 805409 := by
    unfold C
    simp [show (2985984 * k + 1610818) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 805409) = 4478976 * k + 2416228 := by
    unfold C
    simp [show (1492992 * k + 805409) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2416228) = 2239488 * k + 1208114 := by
    unfold C
    simp [show (4478976 * k + 2416228) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1208114) = 1119744 * k + 604057 := by
    unfold C
    simp [show (2239488 * k + 1208114) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 604057) = 3359232 * k + 1812172 := by
    unfold C
    simp [show (1119744 * k + 604057) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1812172) = 1679616 * k + 906086 := by
    unfold C
    simp [show (3359232 * k + 1812172) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 906086) = 839808 * k + 453043 := by
    unfold C
    simp [show (1679616 * k + 906086) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 453043) = 2519424 * k + 1359130 := by
    unfold C
    simp [show (839808 * k + 453043) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1359130) = 1259712 * k + 679565 := by
    unfold C
    simp [show (2519424 * k + 1359130) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 679565) = 3779136 * k + 2038696 := by
    unfold C
    simp [show (1259712 * k + 679565) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2038696) = 1889568 * k + 1019348 := by
    unfold C
    simp [show (3779136 * k + 2038696) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1019348) = 944784 * k + 509674 := by
    unfold C
    simp [show (1889568 * k + 1019348) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 509674) = 472392 * k + 254837 := by
    unfold C
    simp [show (944784 * k + 509674) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 254837) = 1417176 * k + 764512 := by
    unfold C
    simp [show (472392 * k + 254837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 764512) = 708588 * k + 382256 := by
    unfold C
    simp [show (1417176 * k + 764512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 382256) = 354294 * k + 191128 := by
    unfold C
    simp [show (708588 * k + 382256) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 191128) = 177147 * k + 95564 := by
    unfold C
    simp [show (354294 * k + 191128) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 141415) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 141415))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard027
