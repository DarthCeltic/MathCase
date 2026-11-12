import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard011

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_54015 : ∀ k : Nat,
    iterate (262144 * k + 54015) 29 = 177147 * k + 36502 ∧
      177147 * k + 36502 < 262144 * k + 54015 := by
  intro k
  have h1 : C (262144 * k + 54015) = 786432 * k + 162046 := by
    unfold C
    simp [show (262144 * k + 54015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 162046) = 393216 * k + 81023 := by
    unfold C
    simp [show (786432 * k + 162046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 81023) = 1179648 * k + 243070 := by
    unfold C
    simp [show (393216 * k + 81023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 243070) = 589824 * k + 121535 := by
    unfold C
    simp [show (1179648 * k + 243070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 121535) = 1769472 * k + 364606 := by
    unfold C
    simp [show (589824 * k + 121535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 364606) = 884736 * k + 182303 := by
    unfold C
    simp [show (1769472 * k + 364606) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 182303) = 2654208 * k + 546910 := by
    unfold C
    simp [show (884736 * k + 182303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 546910) = 1327104 * k + 273455 := by
    unfold C
    simp [show (2654208 * k + 546910) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 273455) = 3981312 * k + 820366 := by
    unfold C
    simp [show (1327104 * k + 273455) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 820366) = 1990656 * k + 410183 := by
    unfold C
    simp [show (3981312 * k + 820366) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 410183) = 5971968 * k + 1230550 := by
    unfold C
    simp [show (1990656 * k + 410183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1230550) = 2985984 * k + 615275 := by
    unfold C
    simp [show (5971968 * k + 1230550) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 615275) = 8957952 * k + 1845826 := by
    unfold C
    simp [show (2985984 * k + 615275) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1845826) = 4478976 * k + 922913 := by
    unfold C
    simp [show (8957952 * k + 1845826) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 922913) = 13436928 * k + 2768740 := by
    unfold C
    simp [show (4478976 * k + 922913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 2768740) = 6718464 * k + 1384370 := by
    unfold C
    simp [show (13436928 * k + 2768740) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1384370) = 3359232 * k + 692185 := by
    unfold C
    simp [show (6718464 * k + 1384370) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 692185) = 10077696 * k + 2076556 := by
    unfold C
    simp [show (3359232 * k + 692185) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2076556) = 5038848 * k + 1038278 := by
    unfold C
    simp [show (10077696 * k + 2076556) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1038278) = 2519424 * k + 519139 := by
    unfold C
    simp [show (5038848 * k + 1038278) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 519139) = 7558272 * k + 1557418 := by
    unfold C
    simp [show (2519424 * k + 519139) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1557418) = 3779136 * k + 778709 := by
    unfold C
    simp [show (7558272 * k + 1557418) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 778709) = 11337408 * k + 2336128 := by
    unfold C
    simp [show (3779136 * k + 778709) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 2336128) = 5668704 * k + 1168064 := by
    unfold C
    simp [show (11337408 * k + 2336128) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1168064) = 2834352 * k + 584032 := by
    unfold C
    simp [show (5668704 * k + 1168064) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 584032) = 1417176 * k + 292016 := by
    unfold C
    simp [show (2834352 * k + 584032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 292016) = 708588 * k + 146008 := by
    unfold C
    simp [show (1417176 * k + 292016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 146008) = 354294 * k + 73004 := by
    unfold C
    simp [show (708588 * k + 146008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 73004) = 177147 * k + 36502 := by
    unfold C
    simp [show (354294 * k + 73004) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 54015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 54015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_54991 : ∀ k : Nat,
    iterate (262144 * k + 54991) 29 = 177147 * k + 37162 ∧
      177147 * k + 37162 < 262144 * k + 54991 := by
  intro k
  have h1 : C (262144 * k + 54991) = 786432 * k + 164974 := by
    unfold C
    simp [show (262144 * k + 54991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 164974) = 393216 * k + 82487 := by
    unfold C
    simp [show (786432 * k + 164974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 82487) = 1179648 * k + 247462 := by
    unfold C
    simp [show (393216 * k + 82487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 247462) = 589824 * k + 123731 := by
    unfold C
    simp [show (1179648 * k + 247462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 123731) = 1769472 * k + 371194 := by
    unfold C
    simp [show (589824 * k + 123731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 371194) = 884736 * k + 185597 := by
    unfold C
    simp [show (1769472 * k + 371194) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 185597) = 2654208 * k + 556792 := by
    unfold C
    simp [show (884736 * k + 185597) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 556792) = 1327104 * k + 278396 := by
    unfold C
    simp [show (2654208 * k + 556792) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 278396) = 663552 * k + 139198 := by
    unfold C
    simp [show (1327104 * k + 278396) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 139198) = 331776 * k + 69599 := by
    unfold C
    simp [show (663552 * k + 139198) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 69599) = 995328 * k + 208798 := by
    unfold C
    simp [show (331776 * k + 69599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 208798) = 497664 * k + 104399 := by
    unfold C
    simp [show (995328 * k + 208798) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 104399) = 1492992 * k + 313198 := by
    unfold C
    simp [show (497664 * k + 104399) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 313198) = 746496 * k + 156599 := by
    unfold C
    simp [show (1492992 * k + 313198) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 156599) = 2239488 * k + 469798 := by
    unfold C
    simp [show (746496 * k + 156599) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 469798) = 1119744 * k + 234899 := by
    unfold C
    simp [show (2239488 * k + 469798) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 234899) = 3359232 * k + 704698 := by
    unfold C
    simp [show (1119744 * k + 234899) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 704698) = 1679616 * k + 352349 := by
    unfold C
    simp [show (3359232 * k + 704698) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 352349) = 5038848 * k + 1057048 := by
    unfold C
    simp [show (1679616 * k + 352349) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1057048) = 2519424 * k + 528524 := by
    unfold C
    simp [show (5038848 * k + 1057048) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 528524) = 1259712 * k + 264262 := by
    unfold C
    simp [show (2519424 * k + 528524) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 264262) = 629856 * k + 132131 := by
    unfold C
    simp [show (1259712 * k + 264262) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 132131) = 1889568 * k + 396394 := by
    unfold C
    simp [show (629856 * k + 132131) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 396394) = 944784 * k + 198197 := by
    unfold C
    simp [show (1889568 * k + 396394) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 198197) = 2834352 * k + 594592 := by
    unfold C
    simp [show (944784 * k + 198197) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 594592) = 1417176 * k + 297296 := by
    unfold C
    simp [show (2834352 * k + 594592) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 297296) = 708588 * k + 148648 := by
    unfold C
    simp [show (1417176 * k + 297296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 148648) = 354294 * k + 74324 := by
    unfold C
    simp [show (708588 * k + 148648) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 74324) = 177147 * k + 37162 := by
    unfold C
    simp [show (354294 * k + 74324) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 54991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 54991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55231 : ∀ k : Nat,
    iterate (262144 * k + 55231) 29 = 177147 * k + 37324 ∧
      177147 * k + 37324 < 262144 * k + 55231 := by
  intro k
  have h1 : C (262144 * k + 55231) = 786432 * k + 165694 := by
    unfold C
    simp [show (262144 * k + 55231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 165694) = 393216 * k + 82847 := by
    unfold C
    simp [show (786432 * k + 165694) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 82847) = 1179648 * k + 248542 := by
    unfold C
    simp [show (393216 * k + 82847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 248542) = 589824 * k + 124271 := by
    unfold C
    simp [show (1179648 * k + 248542) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 124271) = 1769472 * k + 372814 := by
    unfold C
    simp [show (589824 * k + 124271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 372814) = 884736 * k + 186407 := by
    unfold C
    simp [show (1769472 * k + 372814) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 186407) = 2654208 * k + 559222 := by
    unfold C
    simp [show (884736 * k + 186407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 559222) = 1327104 * k + 279611 := by
    unfold C
    simp [show (2654208 * k + 559222) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 279611) = 3981312 * k + 838834 := by
    unfold C
    simp [show (1327104 * k + 279611) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 838834) = 1990656 * k + 419417 := by
    unfold C
    simp [show (3981312 * k + 838834) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 419417) = 5971968 * k + 1258252 := by
    unfold C
    simp [show (1990656 * k + 419417) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1258252) = 2985984 * k + 629126 := by
    unfold C
    simp [show (5971968 * k + 1258252) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 629126) = 1492992 * k + 314563 := by
    unfold C
    simp [show (2985984 * k + 629126) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 314563) = 4478976 * k + 943690 := by
    unfold C
    simp [show (1492992 * k + 314563) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 943690) = 2239488 * k + 471845 := by
    unfold C
    simp [show (4478976 * k + 943690) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 471845) = 6718464 * k + 1415536 := by
    unfold C
    simp [show (2239488 * k + 471845) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1415536) = 3359232 * k + 707768 := by
    unfold C
    simp [show (6718464 * k + 1415536) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 707768) = 1679616 * k + 353884 := by
    unfold C
    simp [show (3359232 * k + 707768) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 353884) = 839808 * k + 176942 := by
    unfold C
    simp [show (1679616 * k + 353884) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 176942) = 419904 * k + 88471 := by
    unfold C
    simp [show (839808 * k + 176942) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 88471) = 1259712 * k + 265414 := by
    unfold C
    simp [show (419904 * k + 88471) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 265414) = 629856 * k + 132707 := by
    unfold C
    simp [show (1259712 * k + 265414) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 132707) = 1889568 * k + 398122 := by
    unfold C
    simp [show (629856 * k + 132707) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 398122) = 944784 * k + 199061 := by
    unfold C
    simp [show (1889568 * k + 398122) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 199061) = 2834352 * k + 597184 := by
    unfold C
    simp [show (944784 * k + 199061) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 597184) = 1417176 * k + 298592 := by
    unfold C
    simp [show (2834352 * k + 597184) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 298592) = 708588 * k + 149296 := by
    unfold C
    simp [show (1417176 * k + 298592) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 149296) = 354294 * k + 74648 := by
    unfold C
    simp [show (708588 * k + 149296) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 74648) = 177147 * k + 37324 := by
    unfold C
    simp [show (354294 * k + 74648) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55231) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55231))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55263 : ∀ k : Nat,
    iterate (262144 * k + 55263) 29 = 177147 * k + 37346 ∧
      177147 * k + 37346 < 262144 * k + 55263 := by
  intro k
  have h1 : C (262144 * k + 55263) = 786432 * k + 165790 := by
    unfold C
    simp [show (262144 * k + 55263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 165790) = 393216 * k + 82895 := by
    unfold C
    simp [show (786432 * k + 165790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 82895) = 1179648 * k + 248686 := by
    unfold C
    simp [show (393216 * k + 82895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 248686) = 589824 * k + 124343 := by
    unfold C
    simp [show (1179648 * k + 248686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 124343) = 1769472 * k + 373030 := by
    unfold C
    simp [show (589824 * k + 124343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 373030) = 884736 * k + 186515 := by
    unfold C
    simp [show (1769472 * k + 373030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 186515) = 2654208 * k + 559546 := by
    unfold C
    simp [show (884736 * k + 186515) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 559546) = 1327104 * k + 279773 := by
    unfold C
    simp [show (2654208 * k + 559546) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 279773) = 3981312 * k + 839320 := by
    unfold C
    simp [show (1327104 * k + 279773) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 839320) = 1990656 * k + 419660 := by
    unfold C
    simp [show (3981312 * k + 839320) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 419660) = 995328 * k + 209830 := by
    unfold C
    simp [show (1990656 * k + 419660) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 209830) = 497664 * k + 104915 := by
    unfold C
    simp [show (995328 * k + 209830) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 104915) = 1492992 * k + 314746 := by
    unfold C
    simp [show (497664 * k + 104915) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 314746) = 746496 * k + 157373 := by
    unfold C
    simp [show (1492992 * k + 314746) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 157373) = 2239488 * k + 472120 := by
    unfold C
    simp [show (746496 * k + 157373) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 472120) = 1119744 * k + 236060 := by
    unfold C
    simp [show (2239488 * k + 472120) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 236060) = 559872 * k + 118030 := by
    unfold C
    simp [show (1119744 * k + 236060) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 118030) = 279936 * k + 59015 := by
    unfold C
    simp [show (559872 * k + 118030) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 59015) = 839808 * k + 177046 := by
    unfold C
    simp [show (279936 * k + 59015) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 177046) = 419904 * k + 88523 := by
    unfold C
    simp [show (839808 * k + 177046) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 88523) = 1259712 * k + 265570 := by
    unfold C
    simp [show (419904 * k + 88523) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 265570) = 629856 * k + 132785 := by
    unfold C
    simp [show (1259712 * k + 265570) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 132785) = 1889568 * k + 398356 := by
    unfold C
    simp [show (629856 * k + 132785) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 398356) = 944784 * k + 199178 := by
    unfold C
    simp [show (1889568 * k + 398356) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 199178) = 472392 * k + 99589 := by
    unfold C
    simp [show (944784 * k + 199178) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 99589) = 1417176 * k + 298768 := by
    unfold C
    simp [show (472392 * k + 99589) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 298768) = 708588 * k + 149384 := by
    unfold C
    simp [show (1417176 * k + 298768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 149384) = 354294 * k + 74692 := by
    unfold C
    simp [show (708588 * k + 149384) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 74692) = 177147 * k + 37346 := by
    unfold C
    simp [show (354294 * k + 74692) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55343 : ∀ k : Nat,
    iterate (262144 * k + 55343) 29 = 177147 * k + 37400 ∧
      177147 * k + 37400 < 262144 * k + 55343 := by
  intro k
  have h1 : C (262144 * k + 55343) = 786432 * k + 166030 := by
    unfold C
    simp [show (262144 * k + 55343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 166030) = 393216 * k + 83015 := by
    unfold C
    simp [show (786432 * k + 166030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 83015) = 1179648 * k + 249046 := by
    unfold C
    simp [show (393216 * k + 83015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 249046) = 589824 * k + 124523 := by
    unfold C
    simp [show (1179648 * k + 249046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 124523) = 1769472 * k + 373570 := by
    unfold C
    simp [show (589824 * k + 124523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 373570) = 884736 * k + 186785 := by
    unfold C
    simp [show (1769472 * k + 373570) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 186785) = 2654208 * k + 560356 := by
    unfold C
    simp [show (884736 * k + 186785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 560356) = 1327104 * k + 280178 := by
    unfold C
    simp [show (2654208 * k + 560356) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 280178) = 663552 * k + 140089 := by
    unfold C
    simp [show (1327104 * k + 280178) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 140089) = 1990656 * k + 420268 := by
    unfold C
    simp [show (663552 * k + 140089) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 420268) = 995328 * k + 210134 := by
    unfold C
    simp [show (1990656 * k + 420268) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 210134) = 497664 * k + 105067 := by
    unfold C
    simp [show (995328 * k + 210134) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 105067) = 1492992 * k + 315202 := by
    unfold C
    simp [show (497664 * k + 105067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 315202) = 746496 * k + 157601 := by
    unfold C
    simp [show (1492992 * k + 315202) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 157601) = 2239488 * k + 472804 := by
    unfold C
    simp [show (746496 * k + 157601) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 472804) = 1119744 * k + 236402 := by
    unfold C
    simp [show (2239488 * k + 472804) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 236402) = 559872 * k + 118201 := by
    unfold C
    simp [show (1119744 * k + 236402) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 118201) = 1679616 * k + 354604 := by
    unfold C
    simp [show (559872 * k + 118201) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 354604) = 839808 * k + 177302 := by
    unfold C
    simp [show (1679616 * k + 354604) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 177302) = 419904 * k + 88651 := by
    unfold C
    simp [show (839808 * k + 177302) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 88651) = 1259712 * k + 265954 := by
    unfold C
    simp [show (419904 * k + 88651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 265954) = 629856 * k + 132977 := by
    unfold C
    simp [show (1259712 * k + 265954) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 132977) = 1889568 * k + 398932 := by
    unfold C
    simp [show (629856 * k + 132977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 398932) = 944784 * k + 199466 := by
    unfold C
    simp [show (1889568 * k + 398932) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 199466) = 472392 * k + 99733 := by
    unfold C
    simp [show (944784 * k + 199466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 99733) = 1417176 * k + 299200 := by
    unfold C
    simp [show (472392 * k + 99733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 299200) = 708588 * k + 149600 := by
    unfold C
    simp [show (1417176 * k + 299200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 149600) = 354294 * k + 74800 := by
    unfold C
    simp [show (708588 * k + 149600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 74800) = 177147 * k + 37400 := by
    unfold C
    simp [show (354294 * k + 74800) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55463 : ∀ k : Nat,
    iterate (262144 * k + 55463) 29 = 177147 * k + 37481 ∧
      177147 * k + 37481 < 262144 * k + 55463 := by
  intro k
  have h1 : C (262144 * k + 55463) = 786432 * k + 166390 := by
    unfold C
    simp [show (262144 * k + 55463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 166390) = 393216 * k + 83195 := by
    unfold C
    simp [show (786432 * k + 166390) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 83195) = 1179648 * k + 249586 := by
    unfold C
    simp [show (393216 * k + 83195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 249586) = 589824 * k + 124793 := by
    unfold C
    simp [show (1179648 * k + 249586) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 124793) = 1769472 * k + 374380 := by
    unfold C
    simp [show (589824 * k + 124793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 374380) = 884736 * k + 187190 := by
    unfold C
    simp [show (1769472 * k + 374380) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 187190) = 442368 * k + 93595 := by
    unfold C
    simp [show (884736 * k + 187190) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 93595) = 1327104 * k + 280786 := by
    unfold C
    simp [show (442368 * k + 93595) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 280786) = 663552 * k + 140393 := by
    unfold C
    simp [show (1327104 * k + 280786) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 140393) = 1990656 * k + 421180 := by
    unfold C
    simp [show (663552 * k + 140393) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 421180) = 995328 * k + 210590 := by
    unfold C
    simp [show (1990656 * k + 421180) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 210590) = 497664 * k + 105295 := by
    unfold C
    simp [show (995328 * k + 210590) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 105295) = 1492992 * k + 315886 := by
    unfold C
    simp [show (497664 * k + 105295) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 315886) = 746496 * k + 157943 := by
    unfold C
    simp [show (1492992 * k + 315886) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 157943) = 2239488 * k + 473830 := by
    unfold C
    simp [show (746496 * k + 157943) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 473830) = 1119744 * k + 236915 := by
    unfold C
    simp [show (2239488 * k + 473830) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 236915) = 3359232 * k + 710746 := by
    unfold C
    simp [show (1119744 * k + 236915) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 710746) = 1679616 * k + 355373 := by
    unfold C
    simp [show (3359232 * k + 710746) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 355373) = 5038848 * k + 1066120 := by
    unfold C
    simp [show (1679616 * k + 355373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1066120) = 2519424 * k + 533060 := by
    unfold C
    simp [show (5038848 * k + 1066120) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 533060) = 1259712 * k + 266530 := by
    unfold C
    simp [show (2519424 * k + 533060) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 266530) = 629856 * k + 133265 := by
    unfold C
    simp [show (1259712 * k + 266530) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 133265) = 1889568 * k + 399796 := by
    unfold C
    simp [show (629856 * k + 133265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 399796) = 944784 * k + 199898 := by
    unfold C
    simp [show (1889568 * k + 399796) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 199898) = 472392 * k + 99949 := by
    unfold C
    simp [show (944784 * k + 199898) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 99949) = 1417176 * k + 299848 := by
    unfold C
    simp [show (472392 * k + 99949) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 299848) = 708588 * k + 149924 := by
    unfold C
    simp [show (1417176 * k + 299848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 149924) = 354294 * k + 74962 := by
    unfold C
    simp [show (708588 * k + 149924) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 74962) = 177147 * k + 37481 := by
    unfold C
    simp [show (354294 * k + 74962) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55463) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55463))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55503 : ∀ k : Nat,
    iterate (262144 * k + 55503) 29 = 177147 * k + 37508 ∧
      177147 * k + 37508 < 262144 * k + 55503 := by
  intro k
  have h1 : C (262144 * k + 55503) = 786432 * k + 166510 := by
    unfold C
    simp [show (262144 * k + 55503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 166510) = 393216 * k + 83255 := by
    unfold C
    simp [show (786432 * k + 166510) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 83255) = 1179648 * k + 249766 := by
    unfold C
    simp [show (393216 * k + 83255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 249766) = 589824 * k + 124883 := by
    unfold C
    simp [show (1179648 * k + 249766) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 124883) = 1769472 * k + 374650 := by
    unfold C
    simp [show (589824 * k + 124883) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 374650) = 884736 * k + 187325 := by
    unfold C
    simp [show (1769472 * k + 374650) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 187325) = 2654208 * k + 561976 := by
    unfold C
    simp [show (884736 * k + 187325) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 561976) = 1327104 * k + 280988 := by
    unfold C
    simp [show (2654208 * k + 561976) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 280988) = 663552 * k + 140494 := by
    unfold C
    simp [show (1327104 * k + 280988) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 140494) = 331776 * k + 70247 := by
    unfold C
    simp [show (663552 * k + 140494) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 70247) = 995328 * k + 210742 := by
    unfold C
    simp [show (331776 * k + 70247) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 210742) = 497664 * k + 105371 := by
    unfold C
    simp [show (995328 * k + 210742) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 105371) = 1492992 * k + 316114 := by
    unfold C
    simp [show (497664 * k + 105371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 316114) = 746496 * k + 158057 := by
    unfold C
    simp [show (1492992 * k + 316114) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 158057) = 2239488 * k + 474172 := by
    unfold C
    simp [show (746496 * k + 158057) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 474172) = 1119744 * k + 237086 := by
    unfold C
    simp [show (2239488 * k + 474172) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 237086) = 559872 * k + 118543 := by
    unfold C
    simp [show (1119744 * k + 237086) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 118543) = 1679616 * k + 355630 := by
    unfold C
    simp [show (559872 * k + 118543) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 355630) = 839808 * k + 177815 := by
    unfold C
    simp [show (1679616 * k + 355630) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 177815) = 2519424 * k + 533446 := by
    unfold C
    simp [show (839808 * k + 177815) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 533446) = 1259712 * k + 266723 := by
    unfold C
    simp [show (2519424 * k + 533446) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 266723) = 3779136 * k + 800170 := by
    unfold C
    simp [show (1259712 * k + 266723) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 800170) = 1889568 * k + 400085 := by
    unfold C
    simp [show (3779136 * k + 800170) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 400085) = 5668704 * k + 1200256 := by
    unfold C
    simp [show (1889568 * k + 400085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1200256) = 2834352 * k + 600128 := by
    unfold C
    simp [show (5668704 * k + 1200256) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 600128) = 1417176 * k + 300064 := by
    unfold C
    simp [show (2834352 * k + 600128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 300064) = 708588 * k + 150032 := by
    unfold C
    simp [show (1417176 * k + 300064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 150032) = 354294 * k + 75016 := by
    unfold C
    simp [show (708588 * k + 150032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 75016) = 177147 * k + 37508 := by
    unfold C
    simp [show (354294 * k + 75016) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55503) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55503))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55911 : ∀ k : Nat,
    iterate (262144 * k + 55911) 29 = 177147 * k + 37784 ∧
      177147 * k + 37784 < 262144 * k + 55911 := by
  intro k
  have h1 : C (262144 * k + 55911) = 786432 * k + 167734 := by
    unfold C
    simp [show (262144 * k + 55911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 167734) = 393216 * k + 83867 := by
    unfold C
    simp [show (786432 * k + 167734) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 83867) = 1179648 * k + 251602 := by
    unfold C
    simp [show (393216 * k + 83867) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 251602) = 589824 * k + 125801 := by
    unfold C
    simp [show (1179648 * k + 251602) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 125801) = 1769472 * k + 377404 := by
    unfold C
    simp [show (589824 * k + 125801) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 377404) = 884736 * k + 188702 := by
    unfold C
    simp [show (1769472 * k + 377404) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 188702) = 442368 * k + 94351 := by
    unfold C
    simp [show (884736 * k + 188702) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 94351) = 1327104 * k + 283054 := by
    unfold C
    simp [show (442368 * k + 94351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 283054) = 663552 * k + 141527 := by
    unfold C
    simp [show (1327104 * k + 283054) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 141527) = 1990656 * k + 424582 := by
    unfold C
    simp [show (663552 * k + 141527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 424582) = 995328 * k + 212291 := by
    unfold C
    simp [show (1990656 * k + 424582) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 212291) = 2985984 * k + 636874 := by
    unfold C
    simp [show (995328 * k + 212291) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 636874) = 1492992 * k + 318437 := by
    unfold C
    simp [show (2985984 * k + 636874) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 318437) = 4478976 * k + 955312 := by
    unfold C
    simp [show (1492992 * k + 318437) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 955312) = 2239488 * k + 477656 := by
    unfold C
    simp [show (4478976 * k + 955312) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 477656) = 1119744 * k + 238828 := by
    unfold C
    simp [show (2239488 * k + 477656) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 238828) = 559872 * k + 119414 := by
    unfold C
    simp [show (1119744 * k + 238828) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 119414) = 279936 * k + 59707 := by
    unfold C
    simp [show (559872 * k + 119414) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 59707) = 839808 * k + 179122 := by
    unfold C
    simp [show (279936 * k + 59707) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 179122) = 419904 * k + 89561 := by
    unfold C
    simp [show (839808 * k + 179122) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 89561) = 1259712 * k + 268684 := by
    unfold C
    simp [show (419904 * k + 89561) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 268684) = 629856 * k + 134342 := by
    unfold C
    simp [show (1259712 * k + 268684) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 134342) = 314928 * k + 67171 := by
    unfold C
    simp [show (629856 * k + 134342) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 67171) = 944784 * k + 201514 := by
    unfold C
    simp [show (314928 * k + 67171) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 201514) = 472392 * k + 100757 := by
    unfold C
    simp [show (944784 * k + 201514) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 100757) = 1417176 * k + 302272 := by
    unfold C
    simp [show (472392 * k + 100757) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 302272) = 708588 * k + 151136 := by
    unfold C
    simp [show (1417176 * k + 302272) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 151136) = 354294 * k + 75568 := by
    unfold C
    simp [show (708588 * k + 151136) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 75568) = 177147 * k + 37784 := by
    unfold C
    simp [show (354294 * k + 75568) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55911) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55911))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_55919 : ∀ k : Nat,
    iterate (262144 * k + 55919) 29 = 177147 * k + 37789 ∧
      177147 * k + 37789 < 262144 * k + 55919 := by
  intro k
  have h1 : C (262144 * k + 55919) = 786432 * k + 167758 := by
    unfold C
    simp [show (262144 * k + 55919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 167758) = 393216 * k + 83879 := by
    unfold C
    simp [show (786432 * k + 167758) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 83879) = 1179648 * k + 251638 := by
    unfold C
    simp [show (393216 * k + 83879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 251638) = 589824 * k + 125819 := by
    unfold C
    simp [show (1179648 * k + 251638) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 125819) = 1769472 * k + 377458 := by
    unfold C
    simp [show (589824 * k + 125819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 377458) = 884736 * k + 188729 := by
    unfold C
    simp [show (1769472 * k + 377458) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 188729) = 2654208 * k + 566188 := by
    unfold C
    simp [show (884736 * k + 188729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 566188) = 1327104 * k + 283094 := by
    unfold C
    simp [show (2654208 * k + 566188) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 283094) = 663552 * k + 141547 := by
    unfold C
    simp [show (1327104 * k + 283094) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 141547) = 1990656 * k + 424642 := by
    unfold C
    simp [show (663552 * k + 141547) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 424642) = 995328 * k + 212321 := by
    unfold C
    simp [show (1990656 * k + 424642) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 212321) = 2985984 * k + 636964 := by
    unfold C
    simp [show (995328 * k + 212321) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 636964) = 1492992 * k + 318482 := by
    unfold C
    simp [show (2985984 * k + 636964) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 318482) = 746496 * k + 159241 := by
    unfold C
    simp [show (1492992 * k + 318482) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 159241) = 2239488 * k + 477724 := by
    unfold C
    simp [show (746496 * k + 159241) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 477724) = 1119744 * k + 238862 := by
    unfold C
    simp [show (2239488 * k + 477724) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 238862) = 559872 * k + 119431 := by
    unfold C
    simp [show (1119744 * k + 238862) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 119431) = 1679616 * k + 358294 := by
    unfold C
    simp [show (559872 * k + 119431) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 358294) = 839808 * k + 179147 := by
    unfold C
    simp [show (1679616 * k + 358294) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 179147) = 2519424 * k + 537442 := by
    unfold C
    simp [show (839808 * k + 179147) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 537442) = 1259712 * k + 268721 := by
    unfold C
    simp [show (2519424 * k + 537442) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 268721) = 3779136 * k + 806164 := by
    unfold C
    simp [show (1259712 * k + 268721) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 806164) = 1889568 * k + 403082 := by
    unfold C
    simp [show (3779136 * k + 806164) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 403082) = 944784 * k + 201541 := by
    unfold C
    simp [show (1889568 * k + 403082) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 201541) = 2834352 * k + 604624 := by
    unfold C
    simp [show (944784 * k + 201541) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 604624) = 1417176 * k + 302312 := by
    unfold C
    simp [show (2834352 * k + 604624) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 302312) = 708588 * k + 151156 := by
    unfold C
    simp [show (1417176 * k + 302312) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 151156) = 354294 * k + 75578 := by
    unfold C
    simp [show (708588 * k + 151156) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 75578) = 177147 * k + 37789 := by
    unfold C
    simp [show (354294 * k + 75578) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 55919) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 55919))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_56039 : ∀ k : Nat,
    iterate (262144 * k + 56039) 29 = 177147 * k + 37870 ∧
      177147 * k + 37870 < 262144 * k + 56039 := by
  intro k
  have h1 : C (262144 * k + 56039) = 786432 * k + 168118 := by
    unfold C
    simp [show (262144 * k + 56039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 168118) = 393216 * k + 84059 := by
    unfold C
    simp [show (786432 * k + 168118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 84059) = 1179648 * k + 252178 := by
    unfold C
    simp [show (393216 * k + 84059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 252178) = 589824 * k + 126089 := by
    unfold C
    simp [show (1179648 * k + 252178) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 126089) = 1769472 * k + 378268 := by
    unfold C
    simp [show (589824 * k + 126089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 378268) = 884736 * k + 189134 := by
    unfold C
    simp [show (1769472 * k + 378268) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 189134) = 442368 * k + 94567 := by
    unfold C
    simp [show (884736 * k + 189134) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 94567) = 1327104 * k + 283702 := by
    unfold C
    simp [show (442368 * k + 94567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 283702) = 663552 * k + 141851 := by
    unfold C
    simp [show (1327104 * k + 283702) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 141851) = 1990656 * k + 425554 := by
    unfold C
    simp [show (663552 * k + 141851) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 425554) = 995328 * k + 212777 := by
    unfold C
    simp [show (1990656 * k + 425554) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 212777) = 2985984 * k + 638332 := by
    unfold C
    simp [show (995328 * k + 212777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 638332) = 1492992 * k + 319166 := by
    unfold C
    simp [show (2985984 * k + 638332) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 319166) = 746496 * k + 159583 := by
    unfold C
    simp [show (1492992 * k + 319166) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 159583) = 2239488 * k + 478750 := by
    unfold C
    simp [show (746496 * k + 159583) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 478750) = 1119744 * k + 239375 := by
    unfold C
    simp [show (2239488 * k + 478750) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 239375) = 3359232 * k + 718126 := by
    unfold C
    simp [show (1119744 * k + 239375) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 718126) = 1679616 * k + 359063 := by
    unfold C
    simp [show (3359232 * k + 718126) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 359063) = 5038848 * k + 1077190 := by
    unfold C
    simp [show (1679616 * k + 359063) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1077190) = 2519424 * k + 538595 := by
    unfold C
    simp [show (5038848 * k + 1077190) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 538595) = 7558272 * k + 1615786 := by
    unfold C
    simp [show (2519424 * k + 538595) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1615786) = 3779136 * k + 807893 := by
    unfold C
    simp [show (7558272 * k + 1615786) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 807893) = 11337408 * k + 2423680 := by
    unfold C
    simp [show (3779136 * k + 807893) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 2423680) = 5668704 * k + 1211840 := by
    unfold C
    simp [show (11337408 * k + 2423680) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1211840) = 2834352 * k + 605920 := by
    unfold C
    simp [show (5668704 * k + 1211840) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 605920) = 1417176 * k + 302960 := by
    unfold C
    simp [show (2834352 * k + 605920) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 302960) = 708588 * k + 151480 := by
    unfold C
    simp [show (1417176 * k + 302960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 151480) = 354294 * k + 75740 := by
    unfold C
    simp [show (708588 * k + 151480) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 75740) = 177147 * k + 37870 := by
    unfold C
    simp [show (354294 * k + 75740) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 56039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 56039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_56063 : ∀ k : Nat,
    iterate (262144 * k + 56063) 29 = 177147 * k + 37886 ∧
      177147 * k + 37886 < 262144 * k + 56063 := by
  intro k
  have h1 : C (262144 * k + 56063) = 786432 * k + 168190 := by
    unfold C
    simp [show (262144 * k + 56063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 168190) = 393216 * k + 84095 := by
    unfold C
    simp [show (786432 * k + 168190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 84095) = 1179648 * k + 252286 := by
    unfold C
    simp [show (393216 * k + 84095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 252286) = 589824 * k + 126143 := by
    unfold C
    simp [show (1179648 * k + 252286) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 126143) = 1769472 * k + 378430 := by
    unfold C
    simp [show (589824 * k + 126143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 378430) = 884736 * k + 189215 := by
    unfold C
    simp [show (1769472 * k + 378430) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 189215) = 2654208 * k + 567646 := by
    unfold C
    simp [show (884736 * k + 189215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 567646) = 1327104 * k + 283823 := by
    unfold C
    simp [show (2654208 * k + 567646) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 283823) = 3981312 * k + 851470 := by
    unfold C
    simp [show (1327104 * k + 283823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 851470) = 1990656 * k + 425735 := by
    unfold C
    simp [show (3981312 * k + 851470) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 425735) = 5971968 * k + 1277206 := by
    unfold C
    simp [show (1990656 * k + 425735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1277206) = 2985984 * k + 638603 := by
    unfold C
    simp [show (5971968 * k + 1277206) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 638603) = 8957952 * k + 1915810 := by
    unfold C
    simp [show (2985984 * k + 638603) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1915810) = 4478976 * k + 957905 := by
    unfold C
    simp [show (8957952 * k + 1915810) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 957905) = 13436928 * k + 2873716 := by
    unfold C
    simp [show (4478976 * k + 957905) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 2873716) = 6718464 * k + 1436858 := by
    unfold C
    simp [show (13436928 * k + 2873716) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1436858) = 3359232 * k + 718429 := by
    unfold C
    simp [show (6718464 * k + 1436858) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 718429) = 10077696 * k + 2155288 := by
    unfold C
    simp [show (3359232 * k + 718429) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2155288) = 5038848 * k + 1077644 := by
    unfold C
    simp [show (10077696 * k + 2155288) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1077644) = 2519424 * k + 538822 := by
    unfold C
    simp [show (5038848 * k + 1077644) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 538822) = 1259712 * k + 269411 := by
    unfold C
    simp [show (2519424 * k + 538822) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 269411) = 3779136 * k + 808234 := by
    unfold C
    simp [show (1259712 * k + 269411) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 808234) = 1889568 * k + 404117 := by
    unfold C
    simp [show (3779136 * k + 808234) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 404117) = 5668704 * k + 1212352 := by
    unfold C
    simp [show (1889568 * k + 404117) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1212352) = 2834352 * k + 606176 := by
    unfold C
    simp [show (5668704 * k + 1212352) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 606176) = 1417176 * k + 303088 := by
    unfold C
    simp [show (2834352 * k + 606176) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 303088) = 708588 * k + 151544 := by
    unfold C
    simp [show (1417176 * k + 303088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 151544) = 354294 * k + 75772 := by
    unfold C
    simp [show (708588 * k + 151544) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 75772) = 177147 * k + 37886 := by
    unfold C
    simp [show (354294 * k + 75772) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 56063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 56063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_56351 : ∀ k : Nat,
    iterate (262144 * k + 56351) 29 = 177147 * k + 38081 ∧
      177147 * k + 38081 < 262144 * k + 56351 := by
  intro k
  have h1 : C (262144 * k + 56351) = 786432 * k + 169054 := by
    unfold C
    simp [show (262144 * k + 56351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 169054) = 393216 * k + 84527 := by
    unfold C
    simp [show (786432 * k + 169054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 84527) = 1179648 * k + 253582 := by
    unfold C
    simp [show (393216 * k + 84527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 253582) = 589824 * k + 126791 := by
    unfold C
    simp [show (1179648 * k + 253582) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 126791) = 1769472 * k + 380374 := by
    unfold C
    simp [show (589824 * k + 126791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 380374) = 884736 * k + 190187 := by
    unfold C
    simp [show (1769472 * k + 380374) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 190187) = 2654208 * k + 570562 := by
    unfold C
    simp [show (884736 * k + 190187) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 570562) = 1327104 * k + 285281 := by
    unfold C
    simp [show (2654208 * k + 570562) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 285281) = 3981312 * k + 855844 := by
    unfold C
    simp [show (1327104 * k + 285281) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 855844) = 1990656 * k + 427922 := by
    unfold C
    simp [show (3981312 * k + 855844) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 427922) = 995328 * k + 213961 := by
    unfold C
    simp [show (1990656 * k + 427922) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 213961) = 2985984 * k + 641884 := by
    unfold C
    simp [show (995328 * k + 213961) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 641884) = 1492992 * k + 320942 := by
    unfold C
    simp [show (2985984 * k + 641884) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 320942) = 746496 * k + 160471 := by
    unfold C
    simp [show (1492992 * k + 320942) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 160471) = 2239488 * k + 481414 := by
    unfold C
    simp [show (746496 * k + 160471) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 481414) = 1119744 * k + 240707 := by
    unfold C
    simp [show (2239488 * k + 481414) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 240707) = 3359232 * k + 722122 := by
    unfold C
    simp [show (1119744 * k + 240707) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 722122) = 1679616 * k + 361061 := by
    unfold C
    simp [show (3359232 * k + 722122) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 361061) = 5038848 * k + 1083184 := by
    unfold C
    simp [show (1679616 * k + 361061) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1083184) = 2519424 * k + 541592 := by
    unfold C
    simp [show (5038848 * k + 1083184) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 541592) = 1259712 * k + 270796 := by
    unfold C
    simp [show (2519424 * k + 541592) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 270796) = 629856 * k + 135398 := by
    unfold C
    simp [show (1259712 * k + 270796) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 135398) = 314928 * k + 67699 := by
    unfold C
    simp [show (629856 * k + 135398) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 67699) = 944784 * k + 203098 := by
    unfold C
    simp [show (314928 * k + 67699) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 203098) = 472392 * k + 101549 := by
    unfold C
    simp [show (944784 * k + 203098) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 101549) = 1417176 * k + 304648 := by
    unfold C
    simp [show (472392 * k + 101549) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 304648) = 708588 * k + 152324 := by
    unfold C
    simp [show (1417176 * k + 304648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 152324) = 354294 * k + 76162 := by
    unfold C
    simp [show (708588 * k + 152324) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 76162) = 177147 * k + 38081 := by
    unfold C
    simp [show (354294 * k + 76162) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 56351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 56351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_56431 : ∀ k : Nat,
    iterate (262144 * k + 56431) 29 = 177147 * k + 38135 ∧
      177147 * k + 38135 < 262144 * k + 56431 := by
  intro k
  have h1 : C (262144 * k + 56431) = 786432 * k + 169294 := by
    unfold C
    simp [show (262144 * k + 56431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 169294) = 393216 * k + 84647 := by
    unfold C
    simp [show (786432 * k + 169294) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 84647) = 1179648 * k + 253942 := by
    unfold C
    simp [show (393216 * k + 84647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 253942) = 589824 * k + 126971 := by
    unfold C
    simp [show (1179648 * k + 253942) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 126971) = 1769472 * k + 380914 := by
    unfold C
    simp [show (589824 * k + 126971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 380914) = 884736 * k + 190457 := by
    unfold C
    simp [show (1769472 * k + 380914) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 190457) = 2654208 * k + 571372 := by
    unfold C
    simp [show (884736 * k + 190457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 571372) = 1327104 * k + 285686 := by
    unfold C
    simp [show (2654208 * k + 571372) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 285686) = 663552 * k + 142843 := by
    unfold C
    simp [show (1327104 * k + 285686) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 142843) = 1990656 * k + 428530 := by
    unfold C
    simp [show (663552 * k + 142843) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 428530) = 995328 * k + 214265 := by
    unfold C
    simp [show (1990656 * k + 428530) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 214265) = 2985984 * k + 642796 := by
    unfold C
    simp [show (995328 * k + 214265) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 642796) = 1492992 * k + 321398 := by
    unfold C
    simp [show (2985984 * k + 642796) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 321398) = 746496 * k + 160699 := by
    unfold C
    simp [show (1492992 * k + 321398) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 160699) = 2239488 * k + 482098 := by
    unfold C
    simp [show (746496 * k + 160699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 482098) = 1119744 * k + 241049 := by
    unfold C
    simp [show (2239488 * k + 482098) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 241049) = 3359232 * k + 723148 := by
    unfold C
    simp [show (1119744 * k + 241049) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 723148) = 1679616 * k + 361574 := by
    unfold C
    simp [show (3359232 * k + 723148) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 361574) = 839808 * k + 180787 := by
    unfold C
    simp [show (1679616 * k + 361574) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 180787) = 2519424 * k + 542362 := by
    unfold C
    simp [show (839808 * k + 180787) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 542362) = 1259712 * k + 271181 := by
    unfold C
    simp [show (2519424 * k + 542362) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 271181) = 3779136 * k + 813544 := by
    unfold C
    simp [show (1259712 * k + 271181) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 813544) = 1889568 * k + 406772 := by
    unfold C
    simp [show (3779136 * k + 813544) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 406772) = 944784 * k + 203386 := by
    unfold C
    simp [show (1889568 * k + 406772) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 203386) = 472392 * k + 101693 := by
    unfold C
    simp [show (944784 * k + 203386) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 101693) = 1417176 * k + 305080 := by
    unfold C
    simp [show (472392 * k + 101693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 305080) = 708588 * k + 152540 := by
    unfold C
    simp [show (1417176 * k + 305080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 152540) = 354294 * k + 76270 := by
    unfold C
    simp [show (708588 * k + 152540) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 76270) = 177147 * k + 38135 := by
    unfold C
    simp [show (354294 * k + 76270) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 56431) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 56431))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_56475 : ∀ k : Nat,
    iterate (262144 * k + 56475) 29 = 177147 * k + 38165 ∧
      177147 * k + 38165 < 262144 * k + 56475 := by
  intro k
  have h1 : C (262144 * k + 56475) = 786432 * k + 169426 := by
    unfold C
    simp [show (262144 * k + 56475) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 169426) = 393216 * k + 84713 := by
    unfold C
    simp [show (786432 * k + 169426) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 84713) = 1179648 * k + 254140 := by
    unfold C
    simp [show (393216 * k + 84713) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 254140) = 589824 * k + 127070 := by
    unfold C
    simp [show (1179648 * k + 254140) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 127070) = 294912 * k + 63535 := by
    unfold C
    simp [show (589824 * k + 127070) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 63535) = 884736 * k + 190606 := by
    unfold C
    simp [show (294912 * k + 63535) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 190606) = 442368 * k + 95303 := by
    unfold C
    simp [show (884736 * k + 190606) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 95303) = 1327104 * k + 285910 := by
    unfold C
    simp [show (442368 * k + 95303) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 285910) = 663552 * k + 142955 := by
    unfold C
    simp [show (1327104 * k + 285910) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 142955) = 1990656 * k + 428866 := by
    unfold C
    simp [show (663552 * k + 142955) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 428866) = 995328 * k + 214433 := by
    unfold C
    simp [show (1990656 * k + 428866) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 214433) = 2985984 * k + 643300 := by
    unfold C
    simp [show (995328 * k + 214433) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 643300) = 1492992 * k + 321650 := by
    unfold C
    simp [show (2985984 * k + 643300) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 321650) = 746496 * k + 160825 := by
    unfold C
    simp [show (1492992 * k + 321650) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 160825) = 2239488 * k + 482476 := by
    unfold C
    simp [show (746496 * k + 160825) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 482476) = 1119744 * k + 241238 := by
    unfold C
    simp [show (2239488 * k + 482476) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 241238) = 559872 * k + 120619 := by
    unfold C
    simp [show (1119744 * k + 241238) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 120619) = 1679616 * k + 361858 := by
    unfold C
    simp [show (559872 * k + 120619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 361858) = 839808 * k + 180929 := by
    unfold C
    simp [show (1679616 * k + 361858) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 180929) = 2519424 * k + 542788 := by
    unfold C
    simp [show (839808 * k + 180929) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 542788) = 1259712 * k + 271394 := by
    unfold C
    simp [show (2519424 * k + 542788) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 271394) = 629856 * k + 135697 := by
    unfold C
    simp [show (1259712 * k + 271394) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 135697) = 1889568 * k + 407092 := by
    unfold C
    simp [show (629856 * k + 135697) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 407092) = 944784 * k + 203546 := by
    unfold C
    simp [show (1889568 * k + 407092) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 203546) = 472392 * k + 101773 := by
    unfold C
    simp [show (944784 * k + 203546) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 101773) = 1417176 * k + 305320 := by
    unfold C
    simp [show (472392 * k + 101773) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 305320) = 708588 * k + 152660 := by
    unfold C
    simp [show (1417176 * k + 305320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 152660) = 354294 * k + 76330 := by
    unfold C
    simp [show (708588 * k + 152660) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 76330) = 177147 * k + 38165 := by
    unfold C
    simp [show (354294 * k + 76330) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 56475) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 56475))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_56511 : ∀ k : Nat,
    iterate (262144 * k + 56511) 29 = 177147 * k + 38189 ∧
      177147 * k + 38189 < 262144 * k + 56511 := by
  intro k
  have h1 : C (262144 * k + 56511) = 786432 * k + 169534 := by
    unfold C
    simp [show (262144 * k + 56511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 169534) = 393216 * k + 84767 := by
    unfold C
    simp [show (786432 * k + 169534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 84767) = 1179648 * k + 254302 := by
    unfold C
    simp [show (393216 * k + 84767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 254302) = 589824 * k + 127151 := by
    unfold C
    simp [show (1179648 * k + 254302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 127151) = 1769472 * k + 381454 := by
    unfold C
    simp [show (589824 * k + 127151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 381454) = 884736 * k + 190727 := by
    unfold C
    simp [show (1769472 * k + 381454) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 190727) = 2654208 * k + 572182 := by
    unfold C
    simp [show (884736 * k + 190727) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 572182) = 1327104 * k + 286091 := by
    unfold C
    simp [show (2654208 * k + 572182) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 286091) = 3981312 * k + 858274 := by
    unfold C
    simp [show (1327104 * k + 286091) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 858274) = 1990656 * k + 429137 := by
    unfold C
    simp [show (3981312 * k + 858274) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 429137) = 5971968 * k + 1287412 := by
    unfold C
    simp [show (1990656 * k + 429137) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1287412) = 2985984 * k + 643706 := by
    unfold C
    simp [show (5971968 * k + 1287412) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 643706) = 1492992 * k + 321853 := by
    unfold C
    simp [show (2985984 * k + 643706) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 321853) = 4478976 * k + 965560 := by
    unfold C
    simp [show (1492992 * k + 321853) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 965560) = 2239488 * k + 482780 := by
    unfold C
    simp [show (4478976 * k + 965560) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 482780) = 1119744 * k + 241390 := by
    unfold C
    simp [show (2239488 * k + 482780) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 241390) = 559872 * k + 120695 := by
    unfold C
    simp [show (1119744 * k + 241390) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 120695) = 1679616 * k + 362086 := by
    unfold C
    simp [show (559872 * k + 120695) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 362086) = 839808 * k + 181043 := by
    unfold C
    simp [show (1679616 * k + 362086) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 181043) = 2519424 * k + 543130 := by
    unfold C
    simp [show (839808 * k + 181043) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 543130) = 1259712 * k + 271565 := by
    unfold C
    simp [show (2519424 * k + 543130) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 271565) = 3779136 * k + 814696 := by
    unfold C
    simp [show (1259712 * k + 271565) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 814696) = 1889568 * k + 407348 := by
    unfold C
    simp [show (3779136 * k + 814696) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 407348) = 944784 * k + 203674 := by
    unfold C
    simp [show (1889568 * k + 407348) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 203674) = 472392 * k + 101837 := by
    unfold C
    simp [show (944784 * k + 203674) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 101837) = 1417176 * k + 305512 := by
    unfold C
    simp [show (472392 * k + 101837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 305512) = 708588 * k + 152756 := by
    unfold C
    simp [show (1417176 * k + 305512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 152756) = 354294 * k + 76378 := by
    unfold C
    simp [show (708588 * k + 152756) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 76378) = 177147 * k + 38189 := by
    unfold C
    simp [show (354294 * k + 76378) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 56511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 56511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_58087 : ∀ k : Nat,
    iterate (262144 * k + 58087) 29 = 177147 * k + 39254 ∧
      177147 * k + 39254 < 262144 * k + 58087 := by
  intro k
  have h1 : C (262144 * k + 58087) = 786432 * k + 174262 := by
    unfold C
    simp [show (262144 * k + 58087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 174262) = 393216 * k + 87131 := by
    unfold C
    simp [show (786432 * k + 174262) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 87131) = 1179648 * k + 261394 := by
    unfold C
    simp [show (393216 * k + 87131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 261394) = 589824 * k + 130697 := by
    unfold C
    simp [show (1179648 * k + 261394) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 130697) = 1769472 * k + 392092 := by
    unfold C
    simp [show (589824 * k + 130697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 392092) = 884736 * k + 196046 := by
    unfold C
    simp [show (1769472 * k + 392092) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 196046) = 442368 * k + 98023 := by
    unfold C
    simp [show (884736 * k + 196046) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 98023) = 1327104 * k + 294070 := by
    unfold C
    simp [show (442368 * k + 98023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 294070) = 663552 * k + 147035 := by
    unfold C
    simp [show (1327104 * k + 294070) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 147035) = 1990656 * k + 441106 := by
    unfold C
    simp [show (663552 * k + 147035) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 441106) = 995328 * k + 220553 := by
    unfold C
    simp [show (1990656 * k + 441106) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 220553) = 2985984 * k + 661660 := by
    unfold C
    simp [show (995328 * k + 220553) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 661660) = 1492992 * k + 330830 := by
    unfold C
    simp [show (2985984 * k + 661660) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 330830) = 746496 * k + 165415 := by
    unfold C
    simp [show (1492992 * k + 330830) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 165415) = 2239488 * k + 496246 := by
    unfold C
    simp [show (746496 * k + 165415) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 496246) = 1119744 * k + 248123 := by
    unfold C
    simp [show (2239488 * k + 496246) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 248123) = 3359232 * k + 744370 := by
    unfold C
    simp [show (1119744 * k + 248123) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 744370) = 1679616 * k + 372185 := by
    unfold C
    simp [show (3359232 * k + 744370) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 372185) = 5038848 * k + 1116556 := by
    unfold C
    simp [show (1679616 * k + 372185) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1116556) = 2519424 * k + 558278 := by
    unfold C
    simp [show (5038848 * k + 1116556) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 558278) = 1259712 * k + 279139 := by
    unfold C
    simp [show (2519424 * k + 558278) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 279139) = 3779136 * k + 837418 := by
    unfold C
    simp [show (1259712 * k + 279139) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 837418) = 1889568 * k + 418709 := by
    unfold C
    simp [show (3779136 * k + 837418) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 418709) = 5668704 * k + 1256128 := by
    unfold C
    simp [show (1889568 * k + 418709) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1256128) = 2834352 * k + 628064 := by
    unfold C
    simp [show (5668704 * k + 1256128) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 628064) = 1417176 * k + 314032 := by
    unfold C
    simp [show (2834352 * k + 628064) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 314032) = 708588 * k + 157016 := by
    unfold C
    simp [show (1417176 * k + 314032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 157016) = 354294 * k + 78508 := by
    unfold C
    simp [show (708588 * k + 157016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 78508) = 177147 * k + 39254 := by
    unfold C
    simp [show (354294 * k + 78508) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 58087) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 58087))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_58107 : ∀ k : Nat,
    iterate (262144 * k + 58107) 29 = 177147 * k + 39268 ∧
      177147 * k + 39268 < 262144 * k + 58107 := by
  intro k
  have h1 : C (262144 * k + 58107) = 786432 * k + 174322 := by
    unfold C
    simp [show (262144 * k + 58107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 174322) = 393216 * k + 87161 := by
    unfold C
    simp [show (786432 * k + 174322) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 87161) = 1179648 * k + 261484 := by
    unfold C
    simp [show (393216 * k + 87161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 261484) = 589824 * k + 130742 := by
    unfold C
    simp [show (1179648 * k + 261484) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 130742) = 294912 * k + 65371 := by
    unfold C
    simp [show (589824 * k + 130742) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 65371) = 884736 * k + 196114 := by
    unfold C
    simp [show (294912 * k + 65371) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 196114) = 442368 * k + 98057 := by
    unfold C
    simp [show (884736 * k + 196114) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 98057) = 1327104 * k + 294172 := by
    unfold C
    simp [show (442368 * k + 98057) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 294172) = 663552 * k + 147086 := by
    unfold C
    simp [show (1327104 * k + 294172) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 147086) = 331776 * k + 73543 := by
    unfold C
    simp [show (663552 * k + 147086) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 73543) = 995328 * k + 220630 := by
    unfold C
    simp [show (331776 * k + 73543) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 220630) = 497664 * k + 110315 := by
    unfold C
    simp [show (995328 * k + 220630) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 110315) = 1492992 * k + 330946 := by
    unfold C
    simp [show (497664 * k + 110315) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 330946) = 746496 * k + 165473 := by
    unfold C
    simp [show (1492992 * k + 330946) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 165473) = 2239488 * k + 496420 := by
    unfold C
    simp [show (746496 * k + 165473) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 496420) = 1119744 * k + 248210 := by
    unfold C
    simp [show (2239488 * k + 496420) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 248210) = 559872 * k + 124105 := by
    unfold C
    simp [show (1119744 * k + 248210) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 124105) = 1679616 * k + 372316 := by
    unfold C
    simp [show (559872 * k + 124105) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 372316) = 839808 * k + 186158 := by
    unfold C
    simp [show (1679616 * k + 372316) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 186158) = 419904 * k + 93079 := by
    unfold C
    simp [show (839808 * k + 186158) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 93079) = 1259712 * k + 279238 := by
    unfold C
    simp [show (419904 * k + 93079) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 279238) = 629856 * k + 139619 := by
    unfold C
    simp [show (1259712 * k + 279238) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 139619) = 1889568 * k + 418858 := by
    unfold C
    simp [show (629856 * k + 139619) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 418858) = 944784 * k + 209429 := by
    unfold C
    simp [show (1889568 * k + 418858) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 209429) = 2834352 * k + 628288 := by
    unfold C
    simp [show (944784 * k + 209429) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 628288) = 1417176 * k + 314144 := by
    unfold C
    simp [show (2834352 * k + 628288) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 314144) = 708588 * k + 157072 := by
    unfold C
    simp [show (1417176 * k + 314144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 157072) = 354294 * k + 78536 := by
    unfold C
    simp [show (708588 * k + 157072) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 78536) = 177147 * k + 39268 := by
    unfold C
    simp [show (354294 * k + 78536) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 58107) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 58107))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_58367 : ∀ k : Nat,
    iterate (262144 * k + 58367) 29 = 177147 * k + 39443 ∧
      177147 * k + 39443 < 262144 * k + 58367 := by
  intro k
  have h1 : C (262144 * k + 58367) = 786432 * k + 175102 := by
    unfold C
    simp [show (262144 * k + 58367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 175102) = 393216 * k + 87551 := by
    unfold C
    simp [show (786432 * k + 175102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 87551) = 1179648 * k + 262654 := by
    unfold C
    simp [show (393216 * k + 87551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 262654) = 589824 * k + 131327 := by
    unfold C
    simp [show (1179648 * k + 262654) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 131327) = 1769472 * k + 393982 := by
    unfold C
    simp [show (589824 * k + 131327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 393982) = 884736 * k + 196991 := by
    unfold C
    simp [show (1769472 * k + 393982) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 196991) = 2654208 * k + 590974 := by
    unfold C
    simp [show (884736 * k + 196991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 590974) = 1327104 * k + 295487 := by
    unfold C
    simp [show (2654208 * k + 590974) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 295487) = 3981312 * k + 886462 := by
    unfold C
    simp [show (1327104 * k + 295487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 886462) = 1990656 * k + 443231 := by
    unfold C
    simp [show (3981312 * k + 886462) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 443231) = 5971968 * k + 1329694 := by
    unfold C
    simp [show (1990656 * k + 443231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1329694) = 2985984 * k + 664847 := by
    unfold C
    simp [show (5971968 * k + 1329694) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 664847) = 8957952 * k + 1994542 := by
    unfold C
    simp [show (2985984 * k + 664847) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1994542) = 4478976 * k + 997271 := by
    unfold C
    simp [show (8957952 * k + 1994542) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 997271) = 13436928 * k + 2991814 := by
    unfold C
    simp [show (4478976 * k + 997271) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 2991814) = 6718464 * k + 1495907 := by
    unfold C
    simp [show (13436928 * k + 2991814) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1495907) = 20155392 * k + 4487722 := by
    unfold C
    simp [show (6718464 * k + 1495907) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 4487722) = 10077696 * k + 2243861 := by
    unfold C
    simp [show (20155392 * k + 4487722) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 2243861) = 30233088 * k + 6731584 := by
    unfold C
    simp [show (10077696 * k + 2243861) % 2 ≠ 0 by omega]
    omega
  have h20 : C (30233088 * k + 6731584) = 15116544 * k + 3365792 := by
    unfold C
    simp [show (30233088 * k + 6731584) % 2 = 0 by omega]
    omega
  have h21 : C (15116544 * k + 3365792) = 7558272 * k + 1682896 := by
    unfold C
    simp [show (15116544 * k + 3365792) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1682896) = 3779136 * k + 841448 := by
    unfold C
    simp [show (7558272 * k + 1682896) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 841448) = 1889568 * k + 420724 := by
    unfold C
    simp [show (3779136 * k + 841448) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 420724) = 944784 * k + 210362 := by
    unfold C
    simp [show (1889568 * k + 420724) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 210362) = 472392 * k + 105181 := by
    unfold C
    simp [show (944784 * k + 210362) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 105181) = 1417176 * k + 315544 := by
    unfold C
    simp [show (472392 * k + 105181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 315544) = 708588 * k + 157772 := by
    unfold C
    simp [show (1417176 * k + 315544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 157772) = 354294 * k + 78886 := by
    unfold C
    simp [show (708588 * k + 157772) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 78886) = 177147 * k + 39443 := by
    unfold C
    simp [show (354294 * k + 78886) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 58367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 58367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_58619 : ∀ k : Nat,
    iterate (262144 * k + 58619) 29 = 177147 * k + 39614 ∧
      177147 * k + 39614 < 262144 * k + 58619 := by
  intro k
  have h1 : C (262144 * k + 58619) = 786432 * k + 175858 := by
    unfold C
    simp [show (262144 * k + 58619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 175858) = 393216 * k + 87929 := by
    unfold C
    simp [show (786432 * k + 175858) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 87929) = 1179648 * k + 263788 := by
    unfold C
    simp [show (393216 * k + 87929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 263788) = 589824 * k + 131894 := by
    unfold C
    simp [show (1179648 * k + 263788) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 131894) = 294912 * k + 65947 := by
    unfold C
    simp [show (589824 * k + 131894) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 65947) = 884736 * k + 197842 := by
    unfold C
    simp [show (294912 * k + 65947) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 197842) = 442368 * k + 98921 := by
    unfold C
    simp [show (884736 * k + 197842) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 98921) = 1327104 * k + 296764 := by
    unfold C
    simp [show (442368 * k + 98921) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 296764) = 663552 * k + 148382 := by
    unfold C
    simp [show (1327104 * k + 296764) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 148382) = 331776 * k + 74191 := by
    unfold C
    simp [show (663552 * k + 148382) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 74191) = 995328 * k + 222574 := by
    unfold C
    simp [show (331776 * k + 74191) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 222574) = 497664 * k + 111287 := by
    unfold C
    simp [show (995328 * k + 222574) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 111287) = 1492992 * k + 333862 := by
    unfold C
    simp [show (497664 * k + 111287) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 333862) = 746496 * k + 166931 := by
    unfold C
    simp [show (1492992 * k + 333862) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 166931) = 2239488 * k + 500794 := by
    unfold C
    simp [show (746496 * k + 166931) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 500794) = 1119744 * k + 250397 := by
    unfold C
    simp [show (2239488 * k + 500794) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 250397) = 3359232 * k + 751192 := by
    unfold C
    simp [show (1119744 * k + 250397) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 751192) = 1679616 * k + 375596 := by
    unfold C
    simp [show (3359232 * k + 751192) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 375596) = 839808 * k + 187798 := by
    unfold C
    simp [show (1679616 * k + 375596) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 187798) = 419904 * k + 93899 := by
    unfold C
    simp [show (839808 * k + 187798) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 93899) = 1259712 * k + 281698 := by
    unfold C
    simp [show (419904 * k + 93899) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 281698) = 629856 * k + 140849 := by
    unfold C
    simp [show (1259712 * k + 281698) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 140849) = 1889568 * k + 422548 := by
    unfold C
    simp [show (629856 * k + 140849) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 422548) = 944784 * k + 211274 := by
    unfold C
    simp [show (1889568 * k + 422548) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 211274) = 472392 * k + 105637 := by
    unfold C
    simp [show (944784 * k + 211274) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 105637) = 1417176 * k + 316912 := by
    unfold C
    simp [show (472392 * k + 105637) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 316912) = 708588 * k + 158456 := by
    unfold C
    simp [show (1417176 * k + 316912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 158456) = 354294 * k + 79228 := by
    unfold C
    simp [show (708588 * k + 158456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 79228) = 177147 * k + 39614 := by
    unfold C
    simp [show (354294 * k + 79228) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 58619) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 58619))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_58623 : ∀ k : Nat,
    iterate (262144 * k + 58623) 29 = 177147 * k + 39616 ∧
      177147 * k + 39616 < 262144 * k + 58623 := by
  intro k
  have h1 : C (262144 * k + 58623) = 786432 * k + 175870 := by
    unfold C
    simp [show (262144 * k + 58623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 175870) = 393216 * k + 87935 := by
    unfold C
    simp [show (786432 * k + 175870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 87935) = 1179648 * k + 263806 := by
    unfold C
    simp [show (393216 * k + 87935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 263806) = 589824 * k + 131903 := by
    unfold C
    simp [show (1179648 * k + 263806) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 131903) = 1769472 * k + 395710 := by
    unfold C
    simp [show (589824 * k + 131903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 395710) = 884736 * k + 197855 := by
    unfold C
    simp [show (1769472 * k + 395710) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 197855) = 2654208 * k + 593566 := by
    unfold C
    simp [show (884736 * k + 197855) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 593566) = 1327104 * k + 296783 := by
    unfold C
    simp [show (2654208 * k + 593566) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 296783) = 3981312 * k + 890350 := by
    unfold C
    simp [show (1327104 * k + 296783) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 890350) = 1990656 * k + 445175 := by
    unfold C
    simp [show (3981312 * k + 890350) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 445175) = 5971968 * k + 1335526 := by
    unfold C
    simp [show (1990656 * k + 445175) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1335526) = 2985984 * k + 667763 := by
    unfold C
    simp [show (5971968 * k + 1335526) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 667763) = 8957952 * k + 2003290 := by
    unfold C
    simp [show (2985984 * k + 667763) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2003290) = 4478976 * k + 1001645 := by
    unfold C
    simp [show (8957952 * k + 2003290) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1001645) = 13436928 * k + 3004936 := by
    unfold C
    simp [show (4478976 * k + 1001645) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3004936) = 6718464 * k + 1502468 := by
    unfold C
    simp [show (13436928 * k + 3004936) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1502468) = 3359232 * k + 751234 := by
    unfold C
    simp [show (6718464 * k + 1502468) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 751234) = 1679616 * k + 375617 := by
    unfold C
    simp [show (3359232 * k + 751234) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 375617) = 5038848 * k + 1126852 := by
    unfold C
    simp [show (1679616 * k + 375617) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1126852) = 2519424 * k + 563426 := by
    unfold C
    simp [show (5038848 * k + 1126852) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 563426) = 1259712 * k + 281713 := by
    unfold C
    simp [show (2519424 * k + 563426) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 281713) = 3779136 * k + 845140 := by
    unfold C
    simp [show (1259712 * k + 281713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 845140) = 1889568 * k + 422570 := by
    unfold C
    simp [show (3779136 * k + 845140) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 422570) = 944784 * k + 211285 := by
    unfold C
    simp [show (1889568 * k + 422570) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 211285) = 2834352 * k + 633856 := by
    unfold C
    simp [show (944784 * k + 211285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 633856) = 1417176 * k + 316928 := by
    unfold C
    simp [show (2834352 * k + 633856) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 316928) = 708588 * k + 158464 := by
    unfold C
    simp [show (1417176 * k + 316928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 158464) = 354294 * k + 79232 := by
    unfold C
    simp [show (708588 * k + 158464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 79232) = 177147 * k + 39616 := by
    unfold C
    simp [show (354294 * k + 79232) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 58623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 58623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard011
