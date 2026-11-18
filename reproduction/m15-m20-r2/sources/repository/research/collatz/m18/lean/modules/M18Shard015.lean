import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard015

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_70427 : ∀ k : Nat,
    iterate (262144 * k + 70427) 29 = 177147 * k + 47593 ∧
      177147 * k + 47593 < 262144 * k + 70427 := by
  intro k
  have h1 : C (262144 * k + 70427) = 786432 * k + 211282 := by
    unfold C
    simp [show (262144 * k + 70427) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 211282) = 393216 * k + 105641 := by
    unfold C
    simp [show (786432 * k + 211282) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105641) = 1179648 * k + 316924 := by
    unfold C
    simp [show (393216 * k + 105641) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 316924) = 589824 * k + 158462 := by
    unfold C
    simp [show (1179648 * k + 316924) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 158462) = 294912 * k + 79231 := by
    unfold C
    simp [show (589824 * k + 158462) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 79231) = 884736 * k + 237694 := by
    unfold C
    simp [show (294912 * k + 79231) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 237694) = 442368 * k + 118847 := by
    unfold C
    simp [show (884736 * k + 237694) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 118847) = 1327104 * k + 356542 := by
    unfold C
    simp [show (442368 * k + 118847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 356542) = 663552 * k + 178271 := by
    unfold C
    simp [show (1327104 * k + 356542) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 178271) = 1990656 * k + 534814 := by
    unfold C
    simp [show (663552 * k + 178271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 534814) = 995328 * k + 267407 := by
    unfold C
    simp [show (1990656 * k + 534814) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 267407) = 2985984 * k + 802222 := by
    unfold C
    simp [show (995328 * k + 267407) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 802222) = 1492992 * k + 401111 := by
    unfold C
    simp [show (2985984 * k + 802222) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 401111) = 4478976 * k + 1203334 := by
    unfold C
    simp [show (1492992 * k + 401111) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1203334) = 2239488 * k + 601667 := by
    unfold C
    simp [show (4478976 * k + 1203334) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 601667) = 6718464 * k + 1805002 := by
    unfold C
    simp [show (2239488 * k + 601667) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1805002) = 3359232 * k + 902501 := by
    unfold C
    simp [show (6718464 * k + 1805002) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 902501) = 10077696 * k + 2707504 := by
    unfold C
    simp [show (3359232 * k + 902501) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2707504) = 5038848 * k + 1353752 := by
    unfold C
    simp [show (10077696 * k + 2707504) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1353752) = 2519424 * k + 676876 := by
    unfold C
    simp [show (5038848 * k + 1353752) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 676876) = 1259712 * k + 338438 := by
    unfold C
    simp [show (2519424 * k + 676876) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 338438) = 629856 * k + 169219 := by
    unfold C
    simp [show (1259712 * k + 338438) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 169219) = 1889568 * k + 507658 := by
    unfold C
    simp [show (629856 * k + 169219) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 507658) = 944784 * k + 253829 := by
    unfold C
    simp [show (1889568 * k + 507658) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 253829) = 2834352 * k + 761488 := by
    unfold C
    simp [show (944784 * k + 253829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 761488) = 1417176 * k + 380744 := by
    unfold C
    simp [show (2834352 * k + 761488) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 380744) = 708588 * k + 190372 := by
    unfold C
    simp [show (1417176 * k + 380744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 190372) = 354294 * k + 95186 := by
    unfold C
    simp [show (708588 * k + 190372) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 95186) = 177147 * k + 47593 := by
    unfold C
    simp [show (354294 * k + 95186) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70427) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70427))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70815 : ∀ k : Nat,
    iterate (262144 * k + 70815) 29 = 177147 * k + 47855 ∧
      177147 * k + 47855 < 262144 * k + 70815 := by
  intro k
  have h1 : C (262144 * k + 70815) = 786432 * k + 212446 := by
    unfold C
    simp [show (262144 * k + 70815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 212446) = 393216 * k + 106223 := by
    unfold C
    simp [show (786432 * k + 212446) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 106223) = 1179648 * k + 318670 := by
    unfold C
    simp [show (393216 * k + 106223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 318670) = 589824 * k + 159335 := by
    unfold C
    simp [show (1179648 * k + 318670) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 159335) = 1769472 * k + 478006 := by
    unfold C
    simp [show (589824 * k + 159335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 478006) = 884736 * k + 239003 := by
    unfold C
    simp [show (1769472 * k + 478006) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 239003) = 2654208 * k + 717010 := by
    unfold C
    simp [show (884736 * k + 239003) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 717010) = 1327104 * k + 358505 := by
    unfold C
    simp [show (2654208 * k + 717010) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 358505) = 3981312 * k + 1075516 := by
    unfold C
    simp [show (1327104 * k + 358505) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1075516) = 1990656 * k + 537758 := by
    unfold C
    simp [show (3981312 * k + 1075516) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 537758) = 995328 * k + 268879 := by
    unfold C
    simp [show (1990656 * k + 537758) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 268879) = 2985984 * k + 806638 := by
    unfold C
    simp [show (995328 * k + 268879) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 806638) = 1492992 * k + 403319 := by
    unfold C
    simp [show (2985984 * k + 806638) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 403319) = 4478976 * k + 1209958 := by
    unfold C
    simp [show (1492992 * k + 403319) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1209958) = 2239488 * k + 604979 := by
    unfold C
    simp [show (4478976 * k + 1209958) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 604979) = 6718464 * k + 1814938 := by
    unfold C
    simp [show (2239488 * k + 604979) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1814938) = 3359232 * k + 907469 := by
    unfold C
    simp [show (6718464 * k + 1814938) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 907469) = 10077696 * k + 2722408 := by
    unfold C
    simp [show (3359232 * k + 907469) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2722408) = 5038848 * k + 1361204 := by
    unfold C
    simp [show (10077696 * k + 2722408) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1361204) = 2519424 * k + 680602 := by
    unfold C
    simp [show (5038848 * k + 1361204) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 680602) = 1259712 * k + 340301 := by
    unfold C
    simp [show (2519424 * k + 680602) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 340301) = 3779136 * k + 1020904 := by
    unfold C
    simp [show (1259712 * k + 340301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1020904) = 1889568 * k + 510452 := by
    unfold C
    simp [show (3779136 * k + 1020904) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 510452) = 944784 * k + 255226 := by
    unfold C
    simp [show (1889568 * k + 510452) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 255226) = 472392 * k + 127613 := by
    unfold C
    simp [show (944784 * k + 255226) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 127613) = 1417176 * k + 382840 := by
    unfold C
    simp [show (472392 * k + 127613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 382840) = 708588 * k + 191420 := by
    unfold C
    simp [show (1417176 * k + 382840) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 191420) = 354294 * k + 95710 := by
    unfold C
    simp [show (708588 * k + 191420) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 95710) = 177147 * k + 47855 := by
    unfold C
    simp [show (354294 * k + 95710) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70815) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70815))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70939 : ∀ k : Nat,
    iterate (262144 * k + 70939) 29 = 177147 * k + 47939 ∧
      177147 * k + 47939 < 262144 * k + 70939 := by
  intro k
  have h1 : C (262144 * k + 70939) = 786432 * k + 212818 := by
    unfold C
    simp [show (262144 * k + 70939) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 212818) = 393216 * k + 106409 := by
    unfold C
    simp [show (786432 * k + 212818) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 106409) = 1179648 * k + 319228 := by
    unfold C
    simp [show (393216 * k + 106409) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 319228) = 589824 * k + 159614 := by
    unfold C
    simp [show (1179648 * k + 319228) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 159614) = 294912 * k + 79807 := by
    unfold C
    simp [show (589824 * k + 159614) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 79807) = 884736 * k + 239422 := by
    unfold C
    simp [show (294912 * k + 79807) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 239422) = 442368 * k + 119711 := by
    unfold C
    simp [show (884736 * k + 239422) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 119711) = 1327104 * k + 359134 := by
    unfold C
    simp [show (442368 * k + 119711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 359134) = 663552 * k + 179567 := by
    unfold C
    simp [show (1327104 * k + 359134) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 179567) = 1990656 * k + 538702 := by
    unfold C
    simp [show (663552 * k + 179567) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 538702) = 995328 * k + 269351 := by
    unfold C
    simp [show (1990656 * k + 538702) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 269351) = 2985984 * k + 808054 := by
    unfold C
    simp [show (995328 * k + 269351) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 808054) = 1492992 * k + 404027 := by
    unfold C
    simp [show (2985984 * k + 808054) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 404027) = 4478976 * k + 1212082 := by
    unfold C
    simp [show (1492992 * k + 404027) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1212082) = 2239488 * k + 606041 := by
    unfold C
    simp [show (4478976 * k + 1212082) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 606041) = 6718464 * k + 1818124 := by
    unfold C
    simp [show (2239488 * k + 606041) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1818124) = 3359232 * k + 909062 := by
    unfold C
    simp [show (6718464 * k + 1818124) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 909062) = 1679616 * k + 454531 := by
    unfold C
    simp [show (3359232 * k + 909062) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 454531) = 5038848 * k + 1363594 := by
    unfold C
    simp [show (1679616 * k + 454531) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1363594) = 2519424 * k + 681797 := by
    unfold C
    simp [show (5038848 * k + 1363594) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 681797) = 7558272 * k + 2045392 := by
    unfold C
    simp [show (2519424 * k + 681797) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2045392) = 3779136 * k + 1022696 := by
    unfold C
    simp [show (7558272 * k + 2045392) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1022696) = 1889568 * k + 511348 := by
    unfold C
    simp [show (3779136 * k + 1022696) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 511348) = 944784 * k + 255674 := by
    unfold C
    simp [show (1889568 * k + 511348) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 255674) = 472392 * k + 127837 := by
    unfold C
    simp [show (944784 * k + 255674) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 127837) = 1417176 * k + 383512 := by
    unfold C
    simp [show (472392 * k + 127837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 383512) = 708588 * k + 191756 := by
    unfold C
    simp [show (1417176 * k + 383512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 191756) = 354294 * k + 95878 := by
    unfold C
    simp [show (708588 * k + 191756) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 95878) = 177147 * k + 47939 := by
    unfold C
    simp [show (354294 * k + 95878) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70939) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70939))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_71919 : ∀ k : Nat,
    iterate (262144 * k + 71919) 29 = 177147 * k + 48601 ∧
      177147 * k + 48601 < 262144 * k + 71919 := by
  intro k
  have h1 : C (262144 * k + 71919) = 786432 * k + 215758 := by
    unfold C
    simp [show (262144 * k + 71919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 215758) = 393216 * k + 107879 := by
    unfold C
    simp [show (786432 * k + 215758) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 107879) = 1179648 * k + 323638 := by
    unfold C
    simp [show (393216 * k + 107879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 323638) = 589824 * k + 161819 := by
    unfold C
    simp [show (1179648 * k + 323638) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 161819) = 1769472 * k + 485458 := by
    unfold C
    simp [show (589824 * k + 161819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 485458) = 884736 * k + 242729 := by
    unfold C
    simp [show (1769472 * k + 485458) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 242729) = 2654208 * k + 728188 := by
    unfold C
    simp [show (884736 * k + 242729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 728188) = 1327104 * k + 364094 := by
    unfold C
    simp [show (2654208 * k + 728188) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 364094) = 663552 * k + 182047 := by
    unfold C
    simp [show (1327104 * k + 364094) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 182047) = 1990656 * k + 546142 := by
    unfold C
    simp [show (663552 * k + 182047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 546142) = 995328 * k + 273071 := by
    unfold C
    simp [show (1990656 * k + 546142) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 273071) = 2985984 * k + 819214 := by
    unfold C
    simp [show (995328 * k + 273071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 819214) = 1492992 * k + 409607 := by
    unfold C
    simp [show (2985984 * k + 819214) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 409607) = 4478976 * k + 1228822 := by
    unfold C
    simp [show (1492992 * k + 409607) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1228822) = 2239488 * k + 614411 := by
    unfold C
    simp [show (4478976 * k + 1228822) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 614411) = 6718464 * k + 1843234 := by
    unfold C
    simp [show (2239488 * k + 614411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1843234) = 3359232 * k + 921617 := by
    unfold C
    simp [show (6718464 * k + 1843234) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 921617) = 10077696 * k + 2764852 := by
    unfold C
    simp [show (3359232 * k + 921617) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2764852) = 5038848 * k + 1382426 := by
    unfold C
    simp [show (10077696 * k + 2764852) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1382426) = 2519424 * k + 691213 := by
    unfold C
    simp [show (5038848 * k + 1382426) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 691213) = 7558272 * k + 2073640 := by
    unfold C
    simp [show (2519424 * k + 691213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2073640) = 3779136 * k + 1036820 := by
    unfold C
    simp [show (7558272 * k + 2073640) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1036820) = 1889568 * k + 518410 := by
    unfold C
    simp [show (3779136 * k + 1036820) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 518410) = 944784 * k + 259205 := by
    unfold C
    simp [show (1889568 * k + 518410) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 259205) = 2834352 * k + 777616 := by
    unfold C
    simp [show (944784 * k + 259205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 777616) = 1417176 * k + 388808 := by
    unfold C
    simp [show (2834352 * k + 777616) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 388808) = 708588 * k + 194404 := by
    unfold C
    simp [show (1417176 * k + 388808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 194404) = 354294 * k + 97202 := by
    unfold C
    simp [show (708588 * k + 194404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 97202) = 177147 * k + 48601 := by
    unfold C
    simp [show (354294 * k + 97202) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 71919) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 71919))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_72431 : ∀ k : Nat,
    iterate (262144 * k + 72431) 29 = 177147 * k + 48947 ∧
      177147 * k + 48947 < 262144 * k + 72431 := by
  intro k
  have h1 : C (262144 * k + 72431) = 786432 * k + 217294 := by
    unfold C
    simp [show (262144 * k + 72431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 217294) = 393216 * k + 108647 := by
    unfold C
    simp [show (786432 * k + 217294) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 108647) = 1179648 * k + 325942 := by
    unfold C
    simp [show (393216 * k + 108647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 325942) = 589824 * k + 162971 := by
    unfold C
    simp [show (1179648 * k + 325942) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 162971) = 1769472 * k + 488914 := by
    unfold C
    simp [show (589824 * k + 162971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 488914) = 884736 * k + 244457 := by
    unfold C
    simp [show (1769472 * k + 488914) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 244457) = 2654208 * k + 733372 := by
    unfold C
    simp [show (884736 * k + 244457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 733372) = 1327104 * k + 366686 := by
    unfold C
    simp [show (2654208 * k + 733372) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 366686) = 663552 * k + 183343 := by
    unfold C
    simp [show (1327104 * k + 366686) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 183343) = 1990656 * k + 550030 := by
    unfold C
    simp [show (663552 * k + 183343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 550030) = 995328 * k + 275015 := by
    unfold C
    simp [show (1990656 * k + 550030) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 275015) = 2985984 * k + 825046 := by
    unfold C
    simp [show (995328 * k + 275015) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 825046) = 1492992 * k + 412523 := by
    unfold C
    simp [show (2985984 * k + 825046) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 412523) = 4478976 * k + 1237570 := by
    unfold C
    simp [show (1492992 * k + 412523) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1237570) = 2239488 * k + 618785 := by
    unfold C
    simp [show (4478976 * k + 1237570) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 618785) = 6718464 * k + 1856356 := by
    unfold C
    simp [show (2239488 * k + 618785) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1856356) = 3359232 * k + 928178 := by
    unfold C
    simp [show (6718464 * k + 1856356) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 928178) = 1679616 * k + 464089 := by
    unfold C
    simp [show (3359232 * k + 928178) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 464089) = 5038848 * k + 1392268 := by
    unfold C
    simp [show (1679616 * k + 464089) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1392268) = 2519424 * k + 696134 := by
    unfold C
    simp [show (5038848 * k + 1392268) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 696134) = 1259712 * k + 348067 := by
    unfold C
    simp [show (2519424 * k + 696134) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 348067) = 3779136 * k + 1044202 := by
    unfold C
    simp [show (1259712 * k + 348067) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1044202) = 1889568 * k + 522101 := by
    unfold C
    simp [show (3779136 * k + 1044202) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 522101) = 5668704 * k + 1566304 := by
    unfold C
    simp [show (1889568 * k + 522101) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1566304) = 2834352 * k + 783152 := by
    unfold C
    simp [show (5668704 * k + 1566304) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 783152) = 1417176 * k + 391576 := by
    unfold C
    simp [show (2834352 * k + 783152) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 391576) = 708588 * k + 195788 := by
    unfold C
    simp [show (1417176 * k + 391576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 195788) = 354294 * k + 97894 := by
    unfold C
    simp [show (708588 * k + 195788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 97894) = 177147 * k + 48947 := by
    unfold C
    simp [show (354294 * k + 97894) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 72431) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 72431))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_72731 : ∀ k : Nat,
    iterate (262144 * k + 72731) 29 = 177147 * k + 49150 ∧
      177147 * k + 49150 < 262144 * k + 72731 := by
  intro k
  have h1 : C (262144 * k + 72731) = 786432 * k + 218194 := by
    unfold C
    simp [show (262144 * k + 72731) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 218194) = 393216 * k + 109097 := by
    unfold C
    simp [show (786432 * k + 218194) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 109097) = 1179648 * k + 327292 := by
    unfold C
    simp [show (393216 * k + 109097) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 327292) = 589824 * k + 163646 := by
    unfold C
    simp [show (1179648 * k + 327292) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 163646) = 294912 * k + 81823 := by
    unfold C
    simp [show (589824 * k + 163646) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 81823) = 884736 * k + 245470 := by
    unfold C
    simp [show (294912 * k + 81823) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 245470) = 442368 * k + 122735 := by
    unfold C
    simp [show (884736 * k + 245470) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 122735) = 1327104 * k + 368206 := by
    unfold C
    simp [show (442368 * k + 122735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 368206) = 663552 * k + 184103 := by
    unfold C
    simp [show (1327104 * k + 368206) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 184103) = 1990656 * k + 552310 := by
    unfold C
    simp [show (663552 * k + 184103) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 552310) = 995328 * k + 276155 := by
    unfold C
    simp [show (1990656 * k + 552310) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 276155) = 2985984 * k + 828466 := by
    unfold C
    simp [show (995328 * k + 276155) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 828466) = 1492992 * k + 414233 := by
    unfold C
    simp [show (2985984 * k + 828466) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 414233) = 4478976 * k + 1242700 := by
    unfold C
    simp [show (1492992 * k + 414233) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1242700) = 2239488 * k + 621350 := by
    unfold C
    simp [show (4478976 * k + 1242700) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 621350) = 1119744 * k + 310675 := by
    unfold C
    simp [show (2239488 * k + 621350) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 310675) = 3359232 * k + 932026 := by
    unfold C
    simp [show (1119744 * k + 310675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 932026) = 1679616 * k + 466013 := by
    unfold C
    simp [show (3359232 * k + 932026) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 466013) = 5038848 * k + 1398040 := by
    unfold C
    simp [show (1679616 * k + 466013) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1398040) = 2519424 * k + 699020 := by
    unfold C
    simp [show (5038848 * k + 1398040) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 699020) = 1259712 * k + 349510 := by
    unfold C
    simp [show (2519424 * k + 699020) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 349510) = 629856 * k + 174755 := by
    unfold C
    simp [show (1259712 * k + 349510) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 174755) = 1889568 * k + 524266 := by
    unfold C
    simp [show (629856 * k + 174755) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 524266) = 944784 * k + 262133 := by
    unfold C
    simp [show (1889568 * k + 524266) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 262133) = 2834352 * k + 786400 := by
    unfold C
    simp [show (944784 * k + 262133) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 786400) = 1417176 * k + 393200 := by
    unfold C
    simp [show (2834352 * k + 786400) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 393200) = 708588 * k + 196600 := by
    unfold C
    simp [show (1417176 * k + 393200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 196600) = 354294 * k + 98300 := by
    unfold C
    simp [show (708588 * k + 196600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 98300) = 177147 * k + 49150 := by
    unfold C
    simp [show (354294 * k + 98300) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 72731) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 72731))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_73119 : ∀ k : Nat,
    iterate (262144 * k + 73119) 29 = 177147 * k + 49412 ∧
      177147 * k + 49412 < 262144 * k + 73119 := by
  intro k
  have h1 : C (262144 * k + 73119) = 786432 * k + 219358 := by
    unfold C
    simp [show (262144 * k + 73119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 219358) = 393216 * k + 109679 := by
    unfold C
    simp [show (786432 * k + 219358) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 109679) = 1179648 * k + 329038 := by
    unfold C
    simp [show (393216 * k + 109679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 329038) = 589824 * k + 164519 := by
    unfold C
    simp [show (1179648 * k + 329038) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 164519) = 1769472 * k + 493558 := by
    unfold C
    simp [show (589824 * k + 164519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 493558) = 884736 * k + 246779 := by
    unfold C
    simp [show (1769472 * k + 493558) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 246779) = 2654208 * k + 740338 := by
    unfold C
    simp [show (884736 * k + 246779) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 740338) = 1327104 * k + 370169 := by
    unfold C
    simp [show (2654208 * k + 740338) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 370169) = 3981312 * k + 1110508 := by
    unfold C
    simp [show (1327104 * k + 370169) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1110508) = 1990656 * k + 555254 := by
    unfold C
    simp [show (3981312 * k + 1110508) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 555254) = 995328 * k + 277627 := by
    unfold C
    simp [show (1990656 * k + 555254) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 277627) = 2985984 * k + 832882 := by
    unfold C
    simp [show (995328 * k + 277627) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 832882) = 1492992 * k + 416441 := by
    unfold C
    simp [show (2985984 * k + 832882) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 416441) = 4478976 * k + 1249324 := by
    unfold C
    simp [show (1492992 * k + 416441) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1249324) = 2239488 * k + 624662 := by
    unfold C
    simp [show (4478976 * k + 1249324) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 624662) = 1119744 * k + 312331 := by
    unfold C
    simp [show (2239488 * k + 624662) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 312331) = 3359232 * k + 936994 := by
    unfold C
    simp [show (1119744 * k + 312331) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 936994) = 1679616 * k + 468497 := by
    unfold C
    simp [show (3359232 * k + 936994) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 468497) = 5038848 * k + 1405492 := by
    unfold C
    simp [show (1679616 * k + 468497) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1405492) = 2519424 * k + 702746 := by
    unfold C
    simp [show (5038848 * k + 1405492) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 702746) = 1259712 * k + 351373 := by
    unfold C
    simp [show (2519424 * k + 702746) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 351373) = 3779136 * k + 1054120 := by
    unfold C
    simp [show (1259712 * k + 351373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1054120) = 1889568 * k + 527060 := by
    unfold C
    simp [show (3779136 * k + 1054120) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 527060) = 944784 * k + 263530 := by
    unfold C
    simp [show (1889568 * k + 527060) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 263530) = 472392 * k + 131765 := by
    unfold C
    simp [show (944784 * k + 263530) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 131765) = 1417176 * k + 395296 := by
    unfold C
    simp [show (472392 * k + 131765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 395296) = 708588 * k + 197648 := by
    unfold C
    simp [show (1417176 * k + 395296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 197648) = 354294 * k + 98824 := by
    unfold C
    simp [show (708588 * k + 197648) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 98824) = 177147 * k + 49412 := by
    unfold C
    simp [show (354294 * k + 98824) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 73119) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 73119))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_73243 : ∀ k : Nat,
    iterate (262144 * k + 73243) 29 = 177147 * k + 49496 ∧
      177147 * k + 49496 < 262144 * k + 73243 := by
  intro k
  have h1 : C (262144 * k + 73243) = 786432 * k + 219730 := by
    unfold C
    simp [show (262144 * k + 73243) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 219730) = 393216 * k + 109865 := by
    unfold C
    simp [show (786432 * k + 219730) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 109865) = 1179648 * k + 329596 := by
    unfold C
    simp [show (393216 * k + 109865) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 329596) = 589824 * k + 164798 := by
    unfold C
    simp [show (1179648 * k + 329596) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 164798) = 294912 * k + 82399 := by
    unfold C
    simp [show (589824 * k + 164798) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 82399) = 884736 * k + 247198 := by
    unfold C
    simp [show (294912 * k + 82399) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 247198) = 442368 * k + 123599 := by
    unfold C
    simp [show (884736 * k + 247198) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 123599) = 1327104 * k + 370798 := by
    unfold C
    simp [show (442368 * k + 123599) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 370798) = 663552 * k + 185399 := by
    unfold C
    simp [show (1327104 * k + 370798) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 185399) = 1990656 * k + 556198 := by
    unfold C
    simp [show (663552 * k + 185399) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 556198) = 995328 * k + 278099 := by
    unfold C
    simp [show (1990656 * k + 556198) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 278099) = 2985984 * k + 834298 := by
    unfold C
    simp [show (995328 * k + 278099) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 834298) = 1492992 * k + 417149 := by
    unfold C
    simp [show (2985984 * k + 834298) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 417149) = 4478976 * k + 1251448 := by
    unfold C
    simp [show (1492992 * k + 417149) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1251448) = 2239488 * k + 625724 := by
    unfold C
    simp [show (4478976 * k + 1251448) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 625724) = 1119744 * k + 312862 := by
    unfold C
    simp [show (2239488 * k + 625724) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 312862) = 559872 * k + 156431 := by
    unfold C
    simp [show (1119744 * k + 312862) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 156431) = 1679616 * k + 469294 := by
    unfold C
    simp [show (559872 * k + 156431) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 469294) = 839808 * k + 234647 := by
    unfold C
    simp [show (1679616 * k + 469294) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 234647) = 2519424 * k + 703942 := by
    unfold C
    simp [show (839808 * k + 234647) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 703942) = 1259712 * k + 351971 := by
    unfold C
    simp [show (2519424 * k + 703942) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 351971) = 3779136 * k + 1055914 := by
    unfold C
    simp [show (1259712 * k + 351971) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1055914) = 1889568 * k + 527957 := by
    unfold C
    simp [show (3779136 * k + 1055914) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 527957) = 5668704 * k + 1583872 := by
    unfold C
    simp [show (1889568 * k + 527957) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1583872) = 2834352 * k + 791936 := by
    unfold C
    simp [show (5668704 * k + 1583872) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 791936) = 1417176 * k + 395968 := by
    unfold C
    simp [show (2834352 * k + 791936) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 395968) = 708588 * k + 197984 := by
    unfold C
    simp [show (1417176 * k + 395968) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 197984) = 354294 * k + 98992 := by
    unfold C
    simp [show (708588 * k + 197984) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 98992) = 177147 * k + 49496 := by
    unfold C
    simp [show (354294 * k + 98992) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 73243) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 73243))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_74011 : ∀ k : Nat,
    iterate (262144 * k + 74011) 29 = 177147 * k + 50015 ∧
      177147 * k + 50015 < 262144 * k + 74011 := by
  intro k
  have h1 : C (262144 * k + 74011) = 786432 * k + 222034 := by
    unfold C
    simp [show (262144 * k + 74011) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 222034) = 393216 * k + 111017 := by
    unfold C
    simp [show (786432 * k + 222034) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 111017) = 1179648 * k + 333052 := by
    unfold C
    simp [show (393216 * k + 111017) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 333052) = 589824 * k + 166526 := by
    unfold C
    simp [show (1179648 * k + 333052) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 166526) = 294912 * k + 83263 := by
    unfold C
    simp [show (589824 * k + 166526) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 83263) = 884736 * k + 249790 := by
    unfold C
    simp [show (294912 * k + 83263) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 249790) = 442368 * k + 124895 := by
    unfold C
    simp [show (884736 * k + 249790) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 124895) = 1327104 * k + 374686 := by
    unfold C
    simp [show (442368 * k + 124895) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 374686) = 663552 * k + 187343 := by
    unfold C
    simp [show (1327104 * k + 374686) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 187343) = 1990656 * k + 562030 := by
    unfold C
    simp [show (663552 * k + 187343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 562030) = 995328 * k + 281015 := by
    unfold C
    simp [show (1990656 * k + 562030) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 281015) = 2985984 * k + 843046 := by
    unfold C
    simp [show (995328 * k + 281015) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 843046) = 1492992 * k + 421523 := by
    unfold C
    simp [show (2985984 * k + 843046) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 421523) = 4478976 * k + 1264570 := by
    unfold C
    simp [show (1492992 * k + 421523) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1264570) = 2239488 * k + 632285 := by
    unfold C
    simp [show (4478976 * k + 1264570) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 632285) = 6718464 * k + 1896856 := by
    unfold C
    simp [show (2239488 * k + 632285) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1896856) = 3359232 * k + 948428 := by
    unfold C
    simp [show (6718464 * k + 1896856) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 948428) = 1679616 * k + 474214 := by
    unfold C
    simp [show (3359232 * k + 948428) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 474214) = 839808 * k + 237107 := by
    unfold C
    simp [show (1679616 * k + 474214) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 237107) = 2519424 * k + 711322 := by
    unfold C
    simp [show (839808 * k + 237107) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 711322) = 1259712 * k + 355661 := by
    unfold C
    simp [show (2519424 * k + 711322) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 355661) = 3779136 * k + 1066984 := by
    unfold C
    simp [show (1259712 * k + 355661) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1066984) = 1889568 * k + 533492 := by
    unfold C
    simp [show (3779136 * k + 1066984) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 533492) = 944784 * k + 266746 := by
    unfold C
    simp [show (1889568 * k + 533492) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 266746) = 472392 * k + 133373 := by
    unfold C
    simp [show (944784 * k + 266746) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 133373) = 1417176 * k + 400120 := by
    unfold C
    simp [show (472392 * k + 133373) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 400120) = 708588 * k + 200060 := by
    unfold C
    simp [show (1417176 * k + 400120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 200060) = 354294 * k + 100030 := by
    unfold C
    simp [show (708588 * k + 200060) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 100030) = 177147 * k + 50015 := by
    unfold C
    simp [show (354294 * k + 100030) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 74011) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 74011))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_74047 : ∀ k : Nat,
    iterate (262144 * k + 74047) 29 = 177147 * k + 50039 ∧
      177147 * k + 50039 < 262144 * k + 74047 := by
  intro k
  have h1 : C (262144 * k + 74047) = 786432 * k + 222142 := by
    unfold C
    simp [show (262144 * k + 74047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 222142) = 393216 * k + 111071 := by
    unfold C
    simp [show (786432 * k + 222142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 111071) = 1179648 * k + 333214 := by
    unfold C
    simp [show (393216 * k + 111071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 333214) = 589824 * k + 166607 := by
    unfold C
    simp [show (1179648 * k + 333214) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 166607) = 1769472 * k + 499822 := by
    unfold C
    simp [show (589824 * k + 166607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 499822) = 884736 * k + 249911 := by
    unfold C
    simp [show (1769472 * k + 499822) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 249911) = 2654208 * k + 749734 := by
    unfold C
    simp [show (884736 * k + 249911) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 749734) = 1327104 * k + 374867 := by
    unfold C
    simp [show (2654208 * k + 749734) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 374867) = 3981312 * k + 1124602 := by
    unfold C
    simp [show (1327104 * k + 374867) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1124602) = 1990656 * k + 562301 := by
    unfold C
    simp [show (3981312 * k + 1124602) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 562301) = 5971968 * k + 1686904 := by
    unfold C
    simp [show (1990656 * k + 562301) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1686904) = 2985984 * k + 843452 := by
    unfold C
    simp [show (5971968 * k + 1686904) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 843452) = 1492992 * k + 421726 := by
    unfold C
    simp [show (2985984 * k + 843452) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 421726) = 746496 * k + 210863 := by
    unfold C
    simp [show (1492992 * k + 421726) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 210863) = 2239488 * k + 632590 := by
    unfold C
    simp [show (746496 * k + 210863) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 632590) = 1119744 * k + 316295 := by
    unfold C
    simp [show (2239488 * k + 632590) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 316295) = 3359232 * k + 948886 := by
    unfold C
    simp [show (1119744 * k + 316295) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 948886) = 1679616 * k + 474443 := by
    unfold C
    simp [show (3359232 * k + 948886) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 474443) = 5038848 * k + 1423330 := by
    unfold C
    simp [show (1679616 * k + 474443) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1423330) = 2519424 * k + 711665 := by
    unfold C
    simp [show (5038848 * k + 1423330) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 711665) = 7558272 * k + 2134996 := by
    unfold C
    simp [show (2519424 * k + 711665) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2134996) = 3779136 * k + 1067498 := by
    unfold C
    simp [show (7558272 * k + 2134996) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1067498) = 1889568 * k + 533749 := by
    unfold C
    simp [show (3779136 * k + 1067498) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 533749) = 5668704 * k + 1601248 := by
    unfold C
    simp [show (1889568 * k + 533749) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1601248) = 2834352 * k + 800624 := by
    unfold C
    simp [show (5668704 * k + 1601248) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 800624) = 1417176 * k + 400312 := by
    unfold C
    simp [show (2834352 * k + 800624) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 400312) = 708588 * k + 200156 := by
    unfold C
    simp [show (1417176 * k + 400312) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 200156) = 354294 * k + 100078 := by
    unfold C
    simp [show (708588 * k + 200156) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 100078) = 177147 * k + 50039 := by
    unfold C
    simp [show (354294 * k + 100078) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 74047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 74047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_74143 : ∀ k : Nat,
    iterate (262144 * k + 74143) 29 = 177147 * k + 50104 ∧
      177147 * k + 50104 < 262144 * k + 74143 := by
  intro k
  have h1 : C (262144 * k + 74143) = 786432 * k + 222430 := by
    unfold C
    simp [show (262144 * k + 74143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 222430) = 393216 * k + 111215 := by
    unfold C
    simp [show (786432 * k + 222430) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 111215) = 1179648 * k + 333646 := by
    unfold C
    simp [show (393216 * k + 111215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 333646) = 589824 * k + 166823 := by
    unfold C
    simp [show (1179648 * k + 333646) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 166823) = 1769472 * k + 500470 := by
    unfold C
    simp [show (589824 * k + 166823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 500470) = 884736 * k + 250235 := by
    unfold C
    simp [show (1769472 * k + 500470) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 250235) = 2654208 * k + 750706 := by
    unfold C
    simp [show (884736 * k + 250235) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 750706) = 1327104 * k + 375353 := by
    unfold C
    simp [show (2654208 * k + 750706) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 375353) = 3981312 * k + 1126060 := by
    unfold C
    simp [show (1327104 * k + 375353) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1126060) = 1990656 * k + 563030 := by
    unfold C
    simp [show (3981312 * k + 1126060) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 563030) = 995328 * k + 281515 := by
    unfold C
    simp [show (1990656 * k + 563030) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 281515) = 2985984 * k + 844546 := by
    unfold C
    simp [show (995328 * k + 281515) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 844546) = 1492992 * k + 422273 := by
    unfold C
    simp [show (2985984 * k + 844546) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 422273) = 4478976 * k + 1266820 := by
    unfold C
    simp [show (1492992 * k + 422273) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1266820) = 2239488 * k + 633410 := by
    unfold C
    simp [show (4478976 * k + 1266820) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 633410) = 1119744 * k + 316705 := by
    unfold C
    simp [show (2239488 * k + 633410) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 316705) = 3359232 * k + 950116 := by
    unfold C
    simp [show (1119744 * k + 316705) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 950116) = 1679616 * k + 475058 := by
    unfold C
    simp [show (3359232 * k + 950116) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 475058) = 839808 * k + 237529 := by
    unfold C
    simp [show (1679616 * k + 475058) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 237529) = 2519424 * k + 712588 := by
    unfold C
    simp [show (839808 * k + 237529) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 712588) = 1259712 * k + 356294 := by
    unfold C
    simp [show (2519424 * k + 712588) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 356294) = 629856 * k + 178147 := by
    unfold C
    simp [show (1259712 * k + 356294) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 178147) = 1889568 * k + 534442 := by
    unfold C
    simp [show (629856 * k + 178147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 534442) = 944784 * k + 267221 := by
    unfold C
    simp [show (1889568 * k + 534442) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 267221) = 2834352 * k + 801664 := by
    unfold C
    simp [show (944784 * k + 267221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 801664) = 1417176 * k + 400832 := by
    unfold C
    simp [show (2834352 * k + 801664) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 400832) = 708588 * k + 200416 := by
    unfold C
    simp [show (1417176 * k + 400832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 200416) = 354294 * k + 100208 := by
    unfold C
    simp [show (708588 * k + 200416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 100208) = 177147 * k + 50104 := by
    unfold C
    simp [show (354294 * k + 100208) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 74143) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 74143))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_74215 : ∀ k : Nat,
    iterate (262144 * k + 74215) 29 = 177147 * k + 50153 ∧
      177147 * k + 50153 < 262144 * k + 74215 := by
  intro k
  have h1 : C (262144 * k + 74215) = 786432 * k + 222646 := by
    unfold C
    simp [show (262144 * k + 74215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 222646) = 393216 * k + 111323 := by
    unfold C
    simp [show (786432 * k + 222646) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 111323) = 1179648 * k + 333970 := by
    unfold C
    simp [show (393216 * k + 111323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 333970) = 589824 * k + 166985 := by
    unfold C
    simp [show (1179648 * k + 333970) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 166985) = 1769472 * k + 500956 := by
    unfold C
    simp [show (589824 * k + 166985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 500956) = 884736 * k + 250478 := by
    unfold C
    simp [show (1769472 * k + 500956) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 250478) = 442368 * k + 125239 := by
    unfold C
    simp [show (884736 * k + 250478) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 125239) = 1327104 * k + 375718 := by
    unfold C
    simp [show (442368 * k + 125239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 375718) = 663552 * k + 187859 := by
    unfold C
    simp [show (1327104 * k + 375718) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 187859) = 1990656 * k + 563578 := by
    unfold C
    simp [show (663552 * k + 187859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 563578) = 995328 * k + 281789 := by
    unfold C
    simp [show (1990656 * k + 563578) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 281789) = 2985984 * k + 845368 := by
    unfold C
    simp [show (995328 * k + 281789) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 845368) = 1492992 * k + 422684 := by
    unfold C
    simp [show (2985984 * k + 845368) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 422684) = 746496 * k + 211342 := by
    unfold C
    simp [show (1492992 * k + 422684) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 211342) = 373248 * k + 105671 := by
    unfold C
    simp [show (746496 * k + 211342) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 105671) = 1119744 * k + 317014 := by
    unfold C
    simp [show (373248 * k + 105671) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 317014) = 559872 * k + 158507 := by
    unfold C
    simp [show (1119744 * k + 317014) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 158507) = 1679616 * k + 475522 := by
    unfold C
    simp [show (559872 * k + 158507) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 475522) = 839808 * k + 237761 := by
    unfold C
    simp [show (1679616 * k + 475522) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 237761) = 2519424 * k + 713284 := by
    unfold C
    simp [show (839808 * k + 237761) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 713284) = 1259712 * k + 356642 := by
    unfold C
    simp [show (2519424 * k + 713284) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 356642) = 629856 * k + 178321 := by
    unfold C
    simp [show (1259712 * k + 356642) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 178321) = 1889568 * k + 534964 := by
    unfold C
    simp [show (629856 * k + 178321) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 534964) = 944784 * k + 267482 := by
    unfold C
    simp [show (1889568 * k + 534964) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 267482) = 472392 * k + 133741 := by
    unfold C
    simp [show (944784 * k + 267482) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 133741) = 1417176 * k + 401224 := by
    unfold C
    simp [show (472392 * k + 133741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 401224) = 708588 * k + 200612 := by
    unfold C
    simp [show (1417176 * k + 401224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 200612) = 354294 * k + 100306 := by
    unfold C
    simp [show (708588 * k + 200612) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 100306) = 177147 * k + 50153 := by
    unfold C
    simp [show (354294 * k + 100306) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 74215) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 74215))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_74223 : ∀ k : Nat,
    iterate (262144 * k + 74223) 29 = 177147 * k + 50158 ∧
      177147 * k + 50158 < 262144 * k + 74223 := by
  intro k
  have h1 : C (262144 * k + 74223) = 786432 * k + 222670 := by
    unfold C
    simp [show (262144 * k + 74223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 222670) = 393216 * k + 111335 := by
    unfold C
    simp [show (786432 * k + 222670) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 111335) = 1179648 * k + 334006 := by
    unfold C
    simp [show (393216 * k + 111335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 334006) = 589824 * k + 167003 := by
    unfold C
    simp [show (1179648 * k + 334006) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 167003) = 1769472 * k + 501010 := by
    unfold C
    simp [show (589824 * k + 167003) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 501010) = 884736 * k + 250505 := by
    unfold C
    simp [show (1769472 * k + 501010) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 250505) = 2654208 * k + 751516 := by
    unfold C
    simp [show (884736 * k + 250505) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 751516) = 1327104 * k + 375758 := by
    unfold C
    simp [show (2654208 * k + 751516) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 375758) = 663552 * k + 187879 := by
    unfold C
    simp [show (1327104 * k + 375758) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 187879) = 1990656 * k + 563638 := by
    unfold C
    simp [show (663552 * k + 187879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 563638) = 995328 * k + 281819 := by
    unfold C
    simp [show (1990656 * k + 563638) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 281819) = 2985984 * k + 845458 := by
    unfold C
    simp [show (995328 * k + 281819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 845458) = 1492992 * k + 422729 := by
    unfold C
    simp [show (2985984 * k + 845458) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 422729) = 4478976 * k + 1268188 := by
    unfold C
    simp [show (1492992 * k + 422729) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1268188) = 2239488 * k + 634094 := by
    unfold C
    simp [show (4478976 * k + 1268188) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 634094) = 1119744 * k + 317047 := by
    unfold C
    simp [show (2239488 * k + 634094) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 317047) = 3359232 * k + 951142 := by
    unfold C
    simp [show (1119744 * k + 317047) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 951142) = 1679616 * k + 475571 := by
    unfold C
    simp [show (3359232 * k + 951142) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 475571) = 5038848 * k + 1426714 := by
    unfold C
    simp [show (1679616 * k + 475571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1426714) = 2519424 * k + 713357 := by
    unfold C
    simp [show (5038848 * k + 1426714) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 713357) = 7558272 * k + 2140072 := by
    unfold C
    simp [show (2519424 * k + 713357) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2140072) = 3779136 * k + 1070036 := by
    unfold C
    simp [show (7558272 * k + 2140072) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1070036) = 1889568 * k + 535018 := by
    unfold C
    simp [show (3779136 * k + 1070036) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 535018) = 944784 * k + 267509 := by
    unfold C
    simp [show (1889568 * k + 535018) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 267509) = 2834352 * k + 802528 := by
    unfold C
    simp [show (944784 * k + 267509) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 802528) = 1417176 * k + 401264 := by
    unfold C
    simp [show (2834352 * k + 802528) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 401264) = 708588 * k + 200632 := by
    unfold C
    simp [show (1417176 * k + 401264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 200632) = 354294 * k + 100316 := by
    unfold C
    simp [show (708588 * k + 200632) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 100316) = 177147 * k + 50158 := by
    unfold C
    simp [show (354294 * k + 100316) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 74223) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 74223))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_74983 : ∀ k : Nat,
    iterate (262144 * k + 74983) 29 = 177147 * k + 50672 ∧
      177147 * k + 50672 < 262144 * k + 74983 := by
  intro k
  have h1 : C (262144 * k + 74983) = 786432 * k + 224950 := by
    unfold C
    simp [show (262144 * k + 74983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 224950) = 393216 * k + 112475 := by
    unfold C
    simp [show (786432 * k + 224950) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 112475) = 1179648 * k + 337426 := by
    unfold C
    simp [show (393216 * k + 112475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 337426) = 589824 * k + 168713 := by
    unfold C
    simp [show (1179648 * k + 337426) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 168713) = 1769472 * k + 506140 := by
    unfold C
    simp [show (589824 * k + 168713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 506140) = 884736 * k + 253070 := by
    unfold C
    simp [show (1769472 * k + 506140) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 253070) = 442368 * k + 126535 := by
    unfold C
    simp [show (884736 * k + 253070) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 126535) = 1327104 * k + 379606 := by
    unfold C
    simp [show (442368 * k + 126535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 379606) = 663552 * k + 189803 := by
    unfold C
    simp [show (1327104 * k + 379606) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 189803) = 1990656 * k + 569410 := by
    unfold C
    simp [show (663552 * k + 189803) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 569410) = 995328 * k + 284705 := by
    unfold C
    simp [show (1990656 * k + 569410) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 284705) = 2985984 * k + 854116 := by
    unfold C
    simp [show (995328 * k + 284705) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 854116) = 1492992 * k + 427058 := by
    unfold C
    simp [show (2985984 * k + 854116) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 427058) = 746496 * k + 213529 := by
    unfold C
    simp [show (1492992 * k + 427058) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 213529) = 2239488 * k + 640588 := by
    unfold C
    simp [show (746496 * k + 213529) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 640588) = 1119744 * k + 320294 := by
    unfold C
    simp [show (2239488 * k + 640588) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 320294) = 559872 * k + 160147 := by
    unfold C
    simp [show (1119744 * k + 320294) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 160147) = 1679616 * k + 480442 := by
    unfold C
    simp [show (559872 * k + 160147) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 480442) = 839808 * k + 240221 := by
    unfold C
    simp [show (1679616 * k + 480442) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 240221) = 2519424 * k + 720664 := by
    unfold C
    simp [show (839808 * k + 240221) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 720664) = 1259712 * k + 360332 := by
    unfold C
    simp [show (2519424 * k + 720664) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 360332) = 629856 * k + 180166 := by
    unfold C
    simp [show (1259712 * k + 360332) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 180166) = 314928 * k + 90083 := by
    unfold C
    simp [show (629856 * k + 180166) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 90083) = 944784 * k + 270250 := by
    unfold C
    simp [show (314928 * k + 90083) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 270250) = 472392 * k + 135125 := by
    unfold C
    simp [show (944784 * k + 270250) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 135125) = 1417176 * k + 405376 := by
    unfold C
    simp [show (472392 * k + 135125) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 405376) = 708588 * k + 202688 := by
    unfold C
    simp [show (1417176 * k + 405376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 202688) = 354294 * k + 101344 := by
    unfold C
    simp [show (708588 * k + 202688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 101344) = 177147 * k + 50672 := by
    unfold C
    simp [show (354294 * k + 101344) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 74983) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 74983))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_75847 : ∀ k : Nat,
    iterate (262144 * k + 75847) 29 = 177147 * k + 51256 ∧
      177147 * k + 51256 < 262144 * k + 75847 := by
  intro k
  have h1 : C (262144 * k + 75847) = 786432 * k + 227542 := by
    unfold C
    simp [show (262144 * k + 75847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 227542) = 393216 * k + 113771 := by
    unfold C
    simp [show (786432 * k + 227542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 113771) = 1179648 * k + 341314 := by
    unfold C
    simp [show (393216 * k + 113771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 341314) = 589824 * k + 170657 := by
    unfold C
    simp [show (1179648 * k + 341314) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 170657) = 1769472 * k + 511972 := by
    unfold C
    simp [show (589824 * k + 170657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 511972) = 884736 * k + 255986 := by
    unfold C
    simp [show (1769472 * k + 511972) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 255986) = 442368 * k + 127993 := by
    unfold C
    simp [show (884736 * k + 255986) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 127993) = 1327104 * k + 383980 := by
    unfold C
    simp [show (442368 * k + 127993) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 383980) = 663552 * k + 191990 := by
    unfold C
    simp [show (1327104 * k + 383980) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 191990) = 331776 * k + 95995 := by
    unfold C
    simp [show (663552 * k + 191990) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 95995) = 995328 * k + 287986 := by
    unfold C
    simp [show (331776 * k + 95995) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 287986) = 497664 * k + 143993 := by
    unfold C
    simp [show (995328 * k + 287986) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 143993) = 1492992 * k + 431980 := by
    unfold C
    simp [show (497664 * k + 143993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 431980) = 746496 * k + 215990 := by
    unfold C
    simp [show (1492992 * k + 431980) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 215990) = 373248 * k + 107995 := by
    unfold C
    simp [show (746496 * k + 215990) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 107995) = 1119744 * k + 323986 := by
    unfold C
    simp [show (373248 * k + 107995) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 323986) = 559872 * k + 161993 := by
    unfold C
    simp [show (1119744 * k + 323986) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 161993) = 1679616 * k + 485980 := by
    unfold C
    simp [show (559872 * k + 161993) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 485980) = 839808 * k + 242990 := by
    unfold C
    simp [show (1679616 * k + 485980) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 242990) = 419904 * k + 121495 := by
    unfold C
    simp [show (839808 * k + 242990) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 121495) = 1259712 * k + 364486 := by
    unfold C
    simp [show (419904 * k + 121495) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 364486) = 629856 * k + 182243 := by
    unfold C
    simp [show (1259712 * k + 364486) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 182243) = 1889568 * k + 546730 := by
    unfold C
    simp [show (629856 * k + 182243) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 546730) = 944784 * k + 273365 := by
    unfold C
    simp [show (1889568 * k + 546730) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 273365) = 2834352 * k + 820096 := by
    unfold C
    simp [show (944784 * k + 273365) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 820096) = 1417176 * k + 410048 := by
    unfold C
    simp [show (2834352 * k + 820096) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 410048) = 708588 * k + 205024 := by
    unfold C
    simp [show (1417176 * k + 410048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 205024) = 354294 * k + 102512 := by
    unfold C
    simp [show (708588 * k + 205024) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 102512) = 177147 * k + 51256 := by
    unfold C
    simp [show (354294 * k + 102512) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 75847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 75847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_76007 : ∀ k : Nat,
    iterate (262144 * k + 76007) 29 = 177147 * k + 51364 ∧
      177147 * k + 51364 < 262144 * k + 76007 := by
  intro k
  have h1 : C (262144 * k + 76007) = 786432 * k + 228022 := by
    unfold C
    simp [show (262144 * k + 76007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 228022) = 393216 * k + 114011 := by
    unfold C
    simp [show (786432 * k + 228022) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 114011) = 1179648 * k + 342034 := by
    unfold C
    simp [show (393216 * k + 114011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 342034) = 589824 * k + 171017 := by
    unfold C
    simp [show (1179648 * k + 342034) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 171017) = 1769472 * k + 513052 := by
    unfold C
    simp [show (589824 * k + 171017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 513052) = 884736 * k + 256526 := by
    unfold C
    simp [show (1769472 * k + 513052) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 256526) = 442368 * k + 128263 := by
    unfold C
    simp [show (884736 * k + 256526) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 128263) = 1327104 * k + 384790 := by
    unfold C
    simp [show (442368 * k + 128263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 384790) = 663552 * k + 192395 := by
    unfold C
    simp [show (1327104 * k + 384790) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 192395) = 1990656 * k + 577186 := by
    unfold C
    simp [show (663552 * k + 192395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 577186) = 995328 * k + 288593 := by
    unfold C
    simp [show (1990656 * k + 577186) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 288593) = 2985984 * k + 865780 := by
    unfold C
    simp [show (995328 * k + 288593) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 865780) = 1492992 * k + 432890 := by
    unfold C
    simp [show (2985984 * k + 865780) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 432890) = 746496 * k + 216445 := by
    unfold C
    simp [show (1492992 * k + 432890) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 216445) = 2239488 * k + 649336 := by
    unfold C
    simp [show (746496 * k + 216445) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 649336) = 1119744 * k + 324668 := by
    unfold C
    simp [show (2239488 * k + 649336) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 324668) = 559872 * k + 162334 := by
    unfold C
    simp [show (1119744 * k + 324668) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 162334) = 279936 * k + 81167 := by
    unfold C
    simp [show (559872 * k + 162334) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 81167) = 839808 * k + 243502 := by
    unfold C
    simp [show (279936 * k + 81167) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 243502) = 419904 * k + 121751 := by
    unfold C
    simp [show (839808 * k + 243502) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 121751) = 1259712 * k + 365254 := by
    unfold C
    simp [show (419904 * k + 121751) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 365254) = 629856 * k + 182627 := by
    unfold C
    simp [show (1259712 * k + 365254) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 182627) = 1889568 * k + 547882 := by
    unfold C
    simp [show (629856 * k + 182627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 547882) = 944784 * k + 273941 := by
    unfold C
    simp [show (1889568 * k + 547882) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 273941) = 2834352 * k + 821824 := by
    unfold C
    simp [show (944784 * k + 273941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 821824) = 1417176 * k + 410912 := by
    unfold C
    simp [show (2834352 * k + 821824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 410912) = 708588 * k + 205456 := by
    unfold C
    simp [show (1417176 * k + 410912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 205456) = 354294 * k + 102728 := by
    unfold C
    simp [show (708588 * k + 205456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 102728) = 177147 * k + 51364 := by
    unfold C
    simp [show (354294 * k + 102728) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 76007) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 76007))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_76239 : ∀ k : Nat,
    iterate (262144 * k + 76239) 29 = 177147 * k + 51521 ∧
      177147 * k + 51521 < 262144 * k + 76239 := by
  intro k
  have h1 : C (262144 * k + 76239) = 786432 * k + 228718 := by
    unfold C
    simp [show (262144 * k + 76239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 228718) = 393216 * k + 114359 := by
    unfold C
    simp [show (786432 * k + 228718) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 114359) = 1179648 * k + 343078 := by
    unfold C
    simp [show (393216 * k + 114359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 343078) = 589824 * k + 171539 := by
    unfold C
    simp [show (1179648 * k + 343078) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 171539) = 1769472 * k + 514618 := by
    unfold C
    simp [show (589824 * k + 171539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 514618) = 884736 * k + 257309 := by
    unfold C
    simp [show (1769472 * k + 514618) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 257309) = 2654208 * k + 771928 := by
    unfold C
    simp [show (884736 * k + 257309) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 771928) = 1327104 * k + 385964 := by
    unfold C
    simp [show (2654208 * k + 771928) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 385964) = 663552 * k + 192982 := by
    unfold C
    simp [show (1327104 * k + 385964) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 192982) = 331776 * k + 96491 := by
    unfold C
    simp [show (663552 * k + 192982) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 96491) = 995328 * k + 289474 := by
    unfold C
    simp [show (331776 * k + 96491) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 289474) = 497664 * k + 144737 := by
    unfold C
    simp [show (995328 * k + 289474) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 144737) = 1492992 * k + 434212 := by
    unfold C
    simp [show (497664 * k + 144737) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 434212) = 746496 * k + 217106 := by
    unfold C
    simp [show (1492992 * k + 434212) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 217106) = 373248 * k + 108553 := by
    unfold C
    simp [show (746496 * k + 217106) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 108553) = 1119744 * k + 325660 := by
    unfold C
    simp [show (373248 * k + 108553) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 325660) = 559872 * k + 162830 := by
    unfold C
    simp [show (1119744 * k + 325660) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 162830) = 279936 * k + 81415 := by
    unfold C
    simp [show (559872 * k + 162830) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 81415) = 839808 * k + 244246 := by
    unfold C
    simp [show (279936 * k + 81415) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 244246) = 419904 * k + 122123 := by
    unfold C
    simp [show (839808 * k + 244246) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 122123) = 1259712 * k + 366370 := by
    unfold C
    simp [show (419904 * k + 122123) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 366370) = 629856 * k + 183185 := by
    unfold C
    simp [show (1259712 * k + 366370) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 183185) = 1889568 * k + 549556 := by
    unfold C
    simp [show (629856 * k + 183185) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 549556) = 944784 * k + 274778 := by
    unfold C
    simp [show (1889568 * k + 549556) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 274778) = 472392 * k + 137389 := by
    unfold C
    simp [show (944784 * k + 274778) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 137389) = 1417176 * k + 412168 := by
    unfold C
    simp [show (472392 * k + 137389) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 412168) = 708588 * k + 206084 := by
    unfold C
    simp [show (1417176 * k + 412168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 206084) = 354294 * k + 103042 := by
    unfold C
    simp [show (708588 * k + 206084) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 103042) = 177147 * k + 51521 := by
    unfold C
    simp [show (354294 * k + 103042) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 76239) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 76239))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_76447 : ∀ k : Nat,
    iterate (262144 * k + 76447) 29 = 177147 * k + 51661 ∧
      177147 * k + 51661 < 262144 * k + 76447 := by
  intro k
  have h1 : C (262144 * k + 76447) = 786432 * k + 229342 := by
    unfold C
    simp [show (262144 * k + 76447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 229342) = 393216 * k + 114671 := by
    unfold C
    simp [show (786432 * k + 229342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 114671) = 1179648 * k + 344014 := by
    unfold C
    simp [show (393216 * k + 114671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 344014) = 589824 * k + 172007 := by
    unfold C
    simp [show (1179648 * k + 344014) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 172007) = 1769472 * k + 516022 := by
    unfold C
    simp [show (589824 * k + 172007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 516022) = 884736 * k + 258011 := by
    unfold C
    simp [show (1769472 * k + 516022) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 258011) = 2654208 * k + 774034 := by
    unfold C
    simp [show (884736 * k + 258011) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 774034) = 1327104 * k + 387017 := by
    unfold C
    simp [show (2654208 * k + 774034) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 387017) = 3981312 * k + 1161052 := by
    unfold C
    simp [show (1327104 * k + 387017) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1161052) = 1990656 * k + 580526 := by
    unfold C
    simp [show (3981312 * k + 1161052) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 580526) = 995328 * k + 290263 := by
    unfold C
    simp [show (1990656 * k + 580526) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 290263) = 2985984 * k + 870790 := by
    unfold C
    simp [show (995328 * k + 290263) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 870790) = 1492992 * k + 435395 := by
    unfold C
    simp [show (2985984 * k + 870790) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 435395) = 4478976 * k + 1306186 := by
    unfold C
    simp [show (1492992 * k + 435395) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1306186) = 2239488 * k + 653093 := by
    unfold C
    simp [show (4478976 * k + 1306186) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 653093) = 6718464 * k + 1959280 := by
    unfold C
    simp [show (2239488 * k + 653093) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1959280) = 3359232 * k + 979640 := by
    unfold C
    simp [show (6718464 * k + 1959280) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 979640) = 1679616 * k + 489820 := by
    unfold C
    simp [show (3359232 * k + 979640) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 489820) = 839808 * k + 244910 := by
    unfold C
    simp [show (1679616 * k + 489820) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 244910) = 419904 * k + 122455 := by
    unfold C
    simp [show (839808 * k + 244910) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 122455) = 1259712 * k + 367366 := by
    unfold C
    simp [show (419904 * k + 122455) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 367366) = 629856 * k + 183683 := by
    unfold C
    simp [show (1259712 * k + 367366) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 183683) = 1889568 * k + 551050 := by
    unfold C
    simp [show (629856 * k + 183683) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 551050) = 944784 * k + 275525 := by
    unfold C
    simp [show (1889568 * k + 551050) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 275525) = 2834352 * k + 826576 := by
    unfold C
    simp [show (944784 * k + 275525) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 826576) = 1417176 * k + 413288 := by
    unfold C
    simp [show (2834352 * k + 826576) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 413288) = 708588 * k + 206644 := by
    unfold C
    simp [show (1417176 * k + 413288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 206644) = 354294 * k + 103322 := by
    unfold C
    simp [show (708588 * k + 206644) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 103322) = 177147 * k + 51661 := by
    unfold C
    simp [show (354294 * k + 103322) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 76447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 76447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_76527 : ∀ k : Nat,
    iterate (262144 * k + 76527) 29 = 177147 * k + 51715 ∧
      177147 * k + 51715 < 262144 * k + 76527 := by
  intro k
  have h1 : C (262144 * k + 76527) = 786432 * k + 229582 := by
    unfold C
    simp [show (262144 * k + 76527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 229582) = 393216 * k + 114791 := by
    unfold C
    simp [show (786432 * k + 229582) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 114791) = 1179648 * k + 344374 := by
    unfold C
    simp [show (393216 * k + 114791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 344374) = 589824 * k + 172187 := by
    unfold C
    simp [show (1179648 * k + 344374) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 172187) = 1769472 * k + 516562 := by
    unfold C
    simp [show (589824 * k + 172187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 516562) = 884736 * k + 258281 := by
    unfold C
    simp [show (1769472 * k + 516562) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 258281) = 2654208 * k + 774844 := by
    unfold C
    simp [show (884736 * k + 258281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 774844) = 1327104 * k + 387422 := by
    unfold C
    simp [show (2654208 * k + 774844) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 387422) = 663552 * k + 193711 := by
    unfold C
    simp [show (1327104 * k + 387422) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 193711) = 1990656 * k + 581134 := by
    unfold C
    simp [show (663552 * k + 193711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 581134) = 995328 * k + 290567 := by
    unfold C
    simp [show (1990656 * k + 581134) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 290567) = 2985984 * k + 871702 := by
    unfold C
    simp [show (995328 * k + 290567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 871702) = 1492992 * k + 435851 := by
    unfold C
    simp [show (2985984 * k + 871702) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 435851) = 4478976 * k + 1307554 := by
    unfold C
    simp [show (1492992 * k + 435851) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1307554) = 2239488 * k + 653777 := by
    unfold C
    simp [show (4478976 * k + 1307554) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 653777) = 6718464 * k + 1961332 := by
    unfold C
    simp [show (2239488 * k + 653777) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1961332) = 3359232 * k + 980666 := by
    unfold C
    simp [show (6718464 * k + 1961332) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 980666) = 1679616 * k + 490333 := by
    unfold C
    simp [show (3359232 * k + 980666) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 490333) = 5038848 * k + 1471000 := by
    unfold C
    simp [show (1679616 * k + 490333) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1471000) = 2519424 * k + 735500 := by
    unfold C
    simp [show (5038848 * k + 1471000) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 735500) = 1259712 * k + 367750 := by
    unfold C
    simp [show (2519424 * k + 735500) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 367750) = 629856 * k + 183875 := by
    unfold C
    simp [show (1259712 * k + 367750) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 183875) = 1889568 * k + 551626 := by
    unfold C
    simp [show (629856 * k + 183875) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 551626) = 944784 * k + 275813 := by
    unfold C
    simp [show (1889568 * k + 551626) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 275813) = 2834352 * k + 827440 := by
    unfold C
    simp [show (944784 * k + 275813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 827440) = 1417176 * k + 413720 := by
    unfold C
    simp [show (2834352 * k + 827440) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 413720) = 708588 * k + 206860 := by
    unfold C
    simp [show (1417176 * k + 413720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 206860) = 354294 * k + 103430 := by
    unfold C
    simp [show (708588 * k + 206860) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 103430) = 177147 * k + 51715 := by
    unfold C
    simp [show (354294 * k + 103430) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 76527) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 76527))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_77007 : ∀ k : Nat,
    iterate (262144 * k + 77007) 29 = 177147 * k + 52040 ∧
      177147 * k + 52040 < 262144 * k + 77007 := by
  intro k
  have h1 : C (262144 * k + 77007) = 786432 * k + 231022 := by
    unfold C
    simp [show (262144 * k + 77007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 231022) = 393216 * k + 115511 := by
    unfold C
    simp [show (786432 * k + 231022) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 115511) = 1179648 * k + 346534 := by
    unfold C
    simp [show (393216 * k + 115511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 346534) = 589824 * k + 173267 := by
    unfold C
    simp [show (1179648 * k + 346534) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 173267) = 1769472 * k + 519802 := by
    unfold C
    simp [show (589824 * k + 173267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 519802) = 884736 * k + 259901 := by
    unfold C
    simp [show (1769472 * k + 519802) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 259901) = 2654208 * k + 779704 := by
    unfold C
    simp [show (884736 * k + 259901) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 779704) = 1327104 * k + 389852 := by
    unfold C
    simp [show (2654208 * k + 779704) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 389852) = 663552 * k + 194926 := by
    unfold C
    simp [show (1327104 * k + 389852) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 194926) = 331776 * k + 97463 := by
    unfold C
    simp [show (663552 * k + 194926) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 97463) = 995328 * k + 292390 := by
    unfold C
    simp [show (331776 * k + 97463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 292390) = 497664 * k + 146195 := by
    unfold C
    simp [show (995328 * k + 292390) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 146195) = 1492992 * k + 438586 := by
    unfold C
    simp [show (497664 * k + 146195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 438586) = 746496 * k + 219293 := by
    unfold C
    simp [show (1492992 * k + 438586) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 219293) = 2239488 * k + 657880 := by
    unfold C
    simp [show (746496 * k + 219293) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 657880) = 1119744 * k + 328940 := by
    unfold C
    simp [show (2239488 * k + 657880) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 328940) = 559872 * k + 164470 := by
    unfold C
    simp [show (1119744 * k + 328940) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 164470) = 279936 * k + 82235 := by
    unfold C
    simp [show (559872 * k + 164470) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 82235) = 839808 * k + 246706 := by
    unfold C
    simp [show (279936 * k + 82235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 246706) = 419904 * k + 123353 := by
    unfold C
    simp [show (839808 * k + 246706) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 123353) = 1259712 * k + 370060 := by
    unfold C
    simp [show (419904 * k + 123353) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 370060) = 629856 * k + 185030 := by
    unfold C
    simp [show (1259712 * k + 370060) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 185030) = 314928 * k + 92515 := by
    unfold C
    simp [show (629856 * k + 185030) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 92515) = 944784 * k + 277546 := by
    unfold C
    simp [show (314928 * k + 92515) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 277546) = 472392 * k + 138773 := by
    unfold C
    simp [show (944784 * k + 277546) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 138773) = 1417176 * k + 416320 := by
    unfold C
    simp [show (472392 * k + 138773) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 416320) = 708588 * k + 208160 := by
    unfold C
    simp [show (1417176 * k + 416320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 208160) = 354294 * k + 104080 := by
    unfold C
    simp [show (708588 * k + 208160) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 104080) = 177147 * k + 52040 := by
    unfold C
    simp [show (354294 * k + 104080) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 77007) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 77007))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard015
