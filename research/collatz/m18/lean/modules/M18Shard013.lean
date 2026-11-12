import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard013

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_62791 : ∀ k : Nat,
    iterate (262144 * k + 62791) 29 = 177147 * k + 42433 ∧
      177147 * k + 42433 < 262144 * k + 62791 := by
  intro k
  have h1 : C (262144 * k + 62791) = 786432 * k + 188374 := by
    unfold C
    simp [show (262144 * k + 62791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 188374) = 393216 * k + 94187 := by
    unfold C
    simp [show (786432 * k + 188374) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 94187) = 1179648 * k + 282562 := by
    unfold C
    simp [show (393216 * k + 94187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 282562) = 589824 * k + 141281 := by
    unfold C
    simp [show (1179648 * k + 282562) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 141281) = 1769472 * k + 423844 := by
    unfold C
    simp [show (589824 * k + 141281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 423844) = 884736 * k + 211922 := by
    unfold C
    simp [show (1769472 * k + 423844) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 211922) = 442368 * k + 105961 := by
    unfold C
    simp [show (884736 * k + 211922) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 105961) = 1327104 * k + 317884 := by
    unfold C
    simp [show (442368 * k + 105961) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 317884) = 663552 * k + 158942 := by
    unfold C
    simp [show (1327104 * k + 317884) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 158942) = 331776 * k + 79471 := by
    unfold C
    simp [show (663552 * k + 158942) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 79471) = 995328 * k + 238414 := by
    unfold C
    simp [show (331776 * k + 79471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 238414) = 497664 * k + 119207 := by
    unfold C
    simp [show (995328 * k + 238414) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 119207) = 1492992 * k + 357622 := by
    unfold C
    simp [show (497664 * k + 119207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 357622) = 746496 * k + 178811 := by
    unfold C
    simp [show (1492992 * k + 357622) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 178811) = 2239488 * k + 536434 := by
    unfold C
    simp [show (746496 * k + 178811) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 536434) = 1119744 * k + 268217 := by
    unfold C
    simp [show (2239488 * k + 536434) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 268217) = 3359232 * k + 804652 := by
    unfold C
    simp [show (1119744 * k + 268217) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 804652) = 1679616 * k + 402326 := by
    unfold C
    simp [show (3359232 * k + 804652) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 402326) = 839808 * k + 201163 := by
    unfold C
    simp [show (1679616 * k + 402326) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 201163) = 2519424 * k + 603490 := by
    unfold C
    simp [show (839808 * k + 201163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 603490) = 1259712 * k + 301745 := by
    unfold C
    simp [show (2519424 * k + 603490) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 301745) = 3779136 * k + 905236 := by
    unfold C
    simp [show (1259712 * k + 301745) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 905236) = 1889568 * k + 452618 := by
    unfold C
    simp [show (3779136 * k + 905236) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 452618) = 944784 * k + 226309 := by
    unfold C
    simp [show (1889568 * k + 452618) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 226309) = 2834352 * k + 678928 := by
    unfold C
    simp [show (944784 * k + 226309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 678928) = 1417176 * k + 339464 := by
    unfold C
    simp [show (2834352 * k + 678928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 339464) = 708588 * k + 169732 := by
    unfold C
    simp [show (1417176 * k + 339464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 169732) = 354294 * k + 84866 := by
    unfold C
    simp [show (708588 * k + 169732) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 84866) = 177147 * k + 42433 := by
    unfold C
    simp [show (354294 * k + 84866) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62791) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62791))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_62975 : ∀ k : Nat,
    iterate (262144 * k + 62975) 29 = 177147 * k + 42557 ∧
      177147 * k + 42557 < 262144 * k + 62975 := by
  intro k
  have h1 : C (262144 * k + 62975) = 786432 * k + 188926 := by
    unfold C
    simp [show (262144 * k + 62975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 188926) = 393216 * k + 94463 := by
    unfold C
    simp [show (786432 * k + 188926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 94463) = 1179648 * k + 283390 := by
    unfold C
    simp [show (393216 * k + 94463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 283390) = 589824 * k + 141695 := by
    unfold C
    simp [show (1179648 * k + 283390) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 141695) = 1769472 * k + 425086 := by
    unfold C
    simp [show (589824 * k + 141695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 425086) = 884736 * k + 212543 := by
    unfold C
    simp [show (1769472 * k + 425086) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 212543) = 2654208 * k + 637630 := by
    unfold C
    simp [show (884736 * k + 212543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 637630) = 1327104 * k + 318815 := by
    unfold C
    simp [show (2654208 * k + 637630) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 318815) = 3981312 * k + 956446 := by
    unfold C
    simp [show (1327104 * k + 318815) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 956446) = 1990656 * k + 478223 := by
    unfold C
    simp [show (3981312 * k + 956446) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 478223) = 5971968 * k + 1434670 := by
    unfold C
    simp [show (1990656 * k + 478223) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1434670) = 2985984 * k + 717335 := by
    unfold C
    simp [show (5971968 * k + 1434670) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 717335) = 8957952 * k + 2152006 := by
    unfold C
    simp [show (2985984 * k + 717335) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2152006) = 4478976 * k + 1076003 := by
    unfold C
    simp [show (8957952 * k + 2152006) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1076003) = 13436928 * k + 3228010 := by
    unfold C
    simp [show (4478976 * k + 1076003) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3228010) = 6718464 * k + 1614005 := by
    unfold C
    simp [show (13436928 * k + 3228010) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1614005) = 20155392 * k + 4842016 := by
    unfold C
    simp [show (6718464 * k + 1614005) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 4842016) = 10077696 * k + 2421008 := by
    unfold C
    simp [show (20155392 * k + 4842016) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 2421008) = 5038848 * k + 1210504 := by
    unfold C
    simp [show (10077696 * k + 2421008) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1210504) = 2519424 * k + 605252 := by
    unfold C
    simp [show (5038848 * k + 1210504) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 605252) = 1259712 * k + 302626 := by
    unfold C
    simp [show (2519424 * k + 605252) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 302626) = 629856 * k + 151313 := by
    unfold C
    simp [show (1259712 * k + 302626) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 151313) = 1889568 * k + 453940 := by
    unfold C
    simp [show (629856 * k + 151313) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 453940) = 944784 * k + 226970 := by
    unfold C
    simp [show (1889568 * k + 453940) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 226970) = 472392 * k + 113485 := by
    unfold C
    simp [show (944784 * k + 226970) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 113485) = 1417176 * k + 340456 := by
    unfold C
    simp [show (472392 * k + 113485) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 340456) = 708588 * k + 170228 := by
    unfold C
    simp [show (1417176 * k + 340456) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 170228) = 354294 * k + 85114 := by
    unfold C
    simp [show (708588 * k + 170228) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 85114) = 177147 * k + 42557 := by
    unfold C
    simp [show (354294 * k + 85114) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_63183 : ∀ k : Nat,
    iterate (262144 * k + 63183) 29 = 177147 * k + 42698 ∧
      177147 * k + 42698 < 262144 * k + 63183 := by
  intro k
  have h1 : C (262144 * k + 63183) = 786432 * k + 189550 := by
    unfold C
    simp [show (262144 * k + 63183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 189550) = 393216 * k + 94775 := by
    unfold C
    simp [show (786432 * k + 189550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 94775) = 1179648 * k + 284326 := by
    unfold C
    simp [show (393216 * k + 94775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 284326) = 589824 * k + 142163 := by
    unfold C
    simp [show (1179648 * k + 284326) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 142163) = 1769472 * k + 426490 := by
    unfold C
    simp [show (589824 * k + 142163) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 426490) = 884736 * k + 213245 := by
    unfold C
    simp [show (1769472 * k + 426490) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 213245) = 2654208 * k + 639736 := by
    unfold C
    simp [show (884736 * k + 213245) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 639736) = 1327104 * k + 319868 := by
    unfold C
    simp [show (2654208 * k + 639736) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 319868) = 663552 * k + 159934 := by
    unfold C
    simp [show (1327104 * k + 319868) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 159934) = 331776 * k + 79967 := by
    unfold C
    simp [show (663552 * k + 159934) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 79967) = 995328 * k + 239902 := by
    unfold C
    simp [show (331776 * k + 79967) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 239902) = 497664 * k + 119951 := by
    unfold C
    simp [show (995328 * k + 239902) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 119951) = 1492992 * k + 359854 := by
    unfold C
    simp [show (497664 * k + 119951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 359854) = 746496 * k + 179927 := by
    unfold C
    simp [show (1492992 * k + 359854) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 179927) = 2239488 * k + 539782 := by
    unfold C
    simp [show (746496 * k + 179927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 539782) = 1119744 * k + 269891 := by
    unfold C
    simp [show (2239488 * k + 539782) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 269891) = 3359232 * k + 809674 := by
    unfold C
    simp [show (1119744 * k + 269891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 809674) = 1679616 * k + 404837 := by
    unfold C
    simp [show (3359232 * k + 809674) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 404837) = 5038848 * k + 1214512 := by
    unfold C
    simp [show (1679616 * k + 404837) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1214512) = 2519424 * k + 607256 := by
    unfold C
    simp [show (5038848 * k + 1214512) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 607256) = 1259712 * k + 303628 := by
    unfold C
    simp [show (2519424 * k + 607256) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 303628) = 629856 * k + 151814 := by
    unfold C
    simp [show (1259712 * k + 303628) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 151814) = 314928 * k + 75907 := by
    unfold C
    simp [show (629856 * k + 151814) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 75907) = 944784 * k + 227722 := by
    unfold C
    simp [show (314928 * k + 75907) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 227722) = 472392 * k + 113861 := by
    unfold C
    simp [show (944784 * k + 227722) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 113861) = 1417176 * k + 341584 := by
    unfold C
    simp [show (472392 * k + 113861) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 341584) = 708588 * k + 170792 := by
    unfold C
    simp [show (1417176 * k + 341584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 170792) = 354294 * k + 85396 := by
    unfold C
    simp [show (708588 * k + 170792) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 85396) = 177147 * k + 42698 := by
    unfold C
    simp [show (354294 * k + 85396) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 63183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 63183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_63259 : ∀ k : Nat,
    iterate (262144 * k + 63259) 29 = 177147 * k + 42749 ∧
      177147 * k + 42749 < 262144 * k + 63259 := by
  intro k
  have h1 : C (262144 * k + 63259) = 786432 * k + 189778 := by
    unfold C
    simp [show (262144 * k + 63259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 189778) = 393216 * k + 94889 := by
    unfold C
    simp [show (786432 * k + 189778) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 94889) = 1179648 * k + 284668 := by
    unfold C
    simp [show (393216 * k + 94889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 284668) = 589824 * k + 142334 := by
    unfold C
    simp [show (1179648 * k + 284668) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 142334) = 294912 * k + 71167 := by
    unfold C
    simp [show (589824 * k + 142334) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 71167) = 884736 * k + 213502 := by
    unfold C
    simp [show (294912 * k + 71167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 213502) = 442368 * k + 106751 := by
    unfold C
    simp [show (884736 * k + 213502) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 106751) = 1327104 * k + 320254 := by
    unfold C
    simp [show (442368 * k + 106751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 320254) = 663552 * k + 160127 := by
    unfold C
    simp [show (1327104 * k + 320254) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 160127) = 1990656 * k + 480382 := by
    unfold C
    simp [show (663552 * k + 160127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 480382) = 995328 * k + 240191 := by
    unfold C
    simp [show (1990656 * k + 480382) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 240191) = 2985984 * k + 720574 := by
    unfold C
    simp [show (995328 * k + 240191) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 720574) = 1492992 * k + 360287 := by
    unfold C
    simp [show (2985984 * k + 720574) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 360287) = 4478976 * k + 1080862 := by
    unfold C
    simp [show (1492992 * k + 360287) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1080862) = 2239488 * k + 540431 := by
    unfold C
    simp [show (4478976 * k + 1080862) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 540431) = 6718464 * k + 1621294 := by
    unfold C
    simp [show (2239488 * k + 540431) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1621294) = 3359232 * k + 810647 := by
    unfold C
    simp [show (6718464 * k + 1621294) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 810647) = 10077696 * k + 2431942 := by
    unfold C
    simp [show (3359232 * k + 810647) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2431942) = 5038848 * k + 1215971 := by
    unfold C
    simp [show (10077696 * k + 2431942) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1215971) = 15116544 * k + 3647914 := by
    unfold C
    simp [show (5038848 * k + 1215971) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 3647914) = 7558272 * k + 1823957 := by
    unfold C
    simp [show (15116544 * k + 3647914) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1823957) = 22674816 * k + 5471872 := by
    unfold C
    simp [show (7558272 * k + 1823957) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 5471872) = 11337408 * k + 2735936 := by
    unfold C
    simp [show (22674816 * k + 5471872) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 2735936) = 5668704 * k + 1367968 := by
    unfold C
    simp [show (11337408 * k + 2735936) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1367968) = 2834352 * k + 683984 := by
    unfold C
    simp [show (5668704 * k + 1367968) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 683984) = 1417176 * k + 341992 := by
    unfold C
    simp [show (2834352 * k + 683984) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 341992) = 708588 * k + 170996 := by
    unfold C
    simp [show (1417176 * k + 341992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 170996) = 354294 * k + 85498 := by
    unfold C
    simp [show (708588 * k + 170996) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 85498) = 177147 * k + 42749 := by
    unfold C
    simp [show (354294 * k + 85498) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 63259) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 63259))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_63343 : ∀ k : Nat,
    iterate (262144 * k + 63343) 29 = 177147 * k + 42806 ∧
      177147 * k + 42806 < 262144 * k + 63343 := by
  intro k
  have h1 : C (262144 * k + 63343) = 786432 * k + 190030 := by
    unfold C
    simp [show (262144 * k + 63343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 190030) = 393216 * k + 95015 := by
    unfold C
    simp [show (786432 * k + 190030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 95015) = 1179648 * k + 285046 := by
    unfold C
    simp [show (393216 * k + 95015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 285046) = 589824 * k + 142523 := by
    unfold C
    simp [show (1179648 * k + 285046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 142523) = 1769472 * k + 427570 := by
    unfold C
    simp [show (589824 * k + 142523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 427570) = 884736 * k + 213785 := by
    unfold C
    simp [show (1769472 * k + 427570) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 213785) = 2654208 * k + 641356 := by
    unfold C
    simp [show (884736 * k + 213785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 641356) = 1327104 * k + 320678 := by
    unfold C
    simp [show (2654208 * k + 641356) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 320678) = 663552 * k + 160339 := by
    unfold C
    simp [show (1327104 * k + 320678) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 160339) = 1990656 * k + 481018 := by
    unfold C
    simp [show (663552 * k + 160339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 481018) = 995328 * k + 240509 := by
    unfold C
    simp [show (1990656 * k + 481018) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 240509) = 2985984 * k + 721528 := by
    unfold C
    simp [show (995328 * k + 240509) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 721528) = 1492992 * k + 360764 := by
    unfold C
    simp [show (2985984 * k + 721528) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 360764) = 746496 * k + 180382 := by
    unfold C
    simp [show (1492992 * k + 360764) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 180382) = 373248 * k + 90191 := by
    unfold C
    simp [show (746496 * k + 180382) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 90191) = 1119744 * k + 270574 := by
    unfold C
    simp [show (373248 * k + 90191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 270574) = 559872 * k + 135287 := by
    unfold C
    simp [show (1119744 * k + 270574) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 135287) = 1679616 * k + 405862 := by
    unfold C
    simp [show (559872 * k + 135287) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 405862) = 839808 * k + 202931 := by
    unfold C
    simp [show (1679616 * k + 405862) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 202931) = 2519424 * k + 608794 := by
    unfold C
    simp [show (839808 * k + 202931) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 608794) = 1259712 * k + 304397 := by
    unfold C
    simp [show (2519424 * k + 608794) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 304397) = 3779136 * k + 913192 := by
    unfold C
    simp [show (1259712 * k + 304397) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 913192) = 1889568 * k + 456596 := by
    unfold C
    simp [show (3779136 * k + 913192) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 456596) = 944784 * k + 228298 := by
    unfold C
    simp [show (1889568 * k + 456596) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 228298) = 472392 * k + 114149 := by
    unfold C
    simp [show (944784 * k + 228298) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 114149) = 1417176 * k + 342448 := by
    unfold C
    simp [show (472392 * k + 114149) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 342448) = 708588 * k + 171224 := by
    unfold C
    simp [show (1417176 * k + 342448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 171224) = 354294 * k + 85612 := by
    unfold C
    simp [show (708588 * k + 171224) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 85612) = 177147 * k + 42806 := by
    unfold C
    simp [show (354294 * k + 85612) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 63343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 63343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_63423 : ∀ k : Nat,
    iterate (262144 * k + 63423) 29 = 177147 * k + 42860 ∧
      177147 * k + 42860 < 262144 * k + 63423 := by
  intro k
  have h1 : C (262144 * k + 63423) = 786432 * k + 190270 := by
    unfold C
    simp [show (262144 * k + 63423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 190270) = 393216 * k + 95135 := by
    unfold C
    simp [show (786432 * k + 190270) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 95135) = 1179648 * k + 285406 := by
    unfold C
    simp [show (393216 * k + 95135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 285406) = 589824 * k + 142703 := by
    unfold C
    simp [show (1179648 * k + 285406) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 142703) = 1769472 * k + 428110 := by
    unfold C
    simp [show (589824 * k + 142703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 428110) = 884736 * k + 214055 := by
    unfold C
    simp [show (1769472 * k + 428110) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 214055) = 2654208 * k + 642166 := by
    unfold C
    simp [show (884736 * k + 214055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 642166) = 1327104 * k + 321083 := by
    unfold C
    simp [show (2654208 * k + 642166) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 321083) = 3981312 * k + 963250 := by
    unfold C
    simp [show (1327104 * k + 321083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 963250) = 1990656 * k + 481625 := by
    unfold C
    simp [show (3981312 * k + 963250) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 481625) = 5971968 * k + 1444876 := by
    unfold C
    simp [show (1990656 * k + 481625) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1444876) = 2985984 * k + 722438 := by
    unfold C
    simp [show (5971968 * k + 1444876) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 722438) = 1492992 * k + 361219 := by
    unfold C
    simp [show (2985984 * k + 722438) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 361219) = 4478976 * k + 1083658 := by
    unfold C
    simp [show (1492992 * k + 361219) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1083658) = 2239488 * k + 541829 := by
    unfold C
    simp [show (4478976 * k + 1083658) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 541829) = 6718464 * k + 1625488 := by
    unfold C
    simp [show (2239488 * k + 541829) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1625488) = 3359232 * k + 812744 := by
    unfold C
    simp [show (6718464 * k + 1625488) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 812744) = 1679616 * k + 406372 := by
    unfold C
    simp [show (3359232 * k + 812744) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 406372) = 839808 * k + 203186 := by
    unfold C
    simp [show (1679616 * k + 406372) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 203186) = 419904 * k + 101593 := by
    unfold C
    simp [show (839808 * k + 203186) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 101593) = 1259712 * k + 304780 := by
    unfold C
    simp [show (419904 * k + 101593) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 304780) = 629856 * k + 152390 := by
    unfold C
    simp [show (1259712 * k + 304780) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 152390) = 314928 * k + 76195 := by
    unfold C
    simp [show (629856 * k + 152390) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 76195) = 944784 * k + 228586 := by
    unfold C
    simp [show (314928 * k + 76195) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 228586) = 472392 * k + 114293 := by
    unfold C
    simp [show (944784 * k + 228586) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 114293) = 1417176 * k + 342880 := by
    unfold C
    simp [show (472392 * k + 114293) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 342880) = 708588 * k + 171440 := by
    unfold C
    simp [show (1417176 * k + 342880) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 171440) = 354294 * k + 85720 := by
    unfold C
    simp [show (708588 * k + 171440) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 85720) = 177147 * k + 42860 := by
    unfold C
    simp [show (354294 * k + 85720) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 63423) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 63423))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_63743 : ∀ k : Nat,
    iterate (262144 * k + 63743) 29 = 177147 * k + 43076 ∧
      177147 * k + 43076 < 262144 * k + 63743 := by
  intro k
  have h1 : C (262144 * k + 63743) = 786432 * k + 191230 := by
    unfold C
    simp [show (262144 * k + 63743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 191230) = 393216 * k + 95615 := by
    unfold C
    simp [show (786432 * k + 191230) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 95615) = 1179648 * k + 286846 := by
    unfold C
    simp [show (393216 * k + 95615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 286846) = 589824 * k + 143423 := by
    unfold C
    simp [show (1179648 * k + 286846) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 143423) = 1769472 * k + 430270 := by
    unfold C
    simp [show (589824 * k + 143423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 430270) = 884736 * k + 215135 := by
    unfold C
    simp [show (1769472 * k + 430270) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 215135) = 2654208 * k + 645406 := by
    unfold C
    simp [show (884736 * k + 215135) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 645406) = 1327104 * k + 322703 := by
    unfold C
    simp [show (2654208 * k + 645406) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 322703) = 3981312 * k + 968110 := by
    unfold C
    simp [show (1327104 * k + 322703) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 968110) = 1990656 * k + 484055 := by
    unfold C
    simp [show (3981312 * k + 968110) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 484055) = 5971968 * k + 1452166 := by
    unfold C
    simp [show (1990656 * k + 484055) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1452166) = 2985984 * k + 726083 := by
    unfold C
    simp [show (5971968 * k + 1452166) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 726083) = 8957952 * k + 2178250 := by
    unfold C
    simp [show (2985984 * k + 726083) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2178250) = 4478976 * k + 1089125 := by
    unfold C
    simp [show (8957952 * k + 2178250) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1089125) = 13436928 * k + 3267376 := by
    unfold C
    simp [show (4478976 * k + 1089125) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3267376) = 6718464 * k + 1633688 := by
    unfold C
    simp [show (13436928 * k + 3267376) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1633688) = 3359232 * k + 816844 := by
    unfold C
    simp [show (6718464 * k + 1633688) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 816844) = 1679616 * k + 408422 := by
    unfold C
    simp [show (3359232 * k + 816844) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 408422) = 839808 * k + 204211 := by
    unfold C
    simp [show (1679616 * k + 408422) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 204211) = 2519424 * k + 612634 := by
    unfold C
    simp [show (839808 * k + 204211) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 612634) = 1259712 * k + 306317 := by
    unfold C
    simp [show (2519424 * k + 612634) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 306317) = 3779136 * k + 918952 := by
    unfold C
    simp [show (1259712 * k + 306317) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 918952) = 1889568 * k + 459476 := by
    unfold C
    simp [show (3779136 * k + 918952) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 459476) = 944784 * k + 229738 := by
    unfold C
    simp [show (1889568 * k + 459476) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 229738) = 472392 * k + 114869 := by
    unfold C
    simp [show (944784 * k + 229738) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 114869) = 1417176 * k + 344608 := by
    unfold C
    simp [show (472392 * k + 114869) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 344608) = 708588 * k + 172304 := by
    unfold C
    simp [show (1417176 * k + 344608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 172304) = 354294 * k + 86152 := by
    unfold C
    simp [show (708588 * k + 172304) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 86152) = 177147 * k + 43076 := by
    unfold C
    simp [show (354294 * k + 86152) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 63743) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 63743))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_64283 : ∀ k : Nat,
    iterate (262144 * k + 64283) 29 = 177147 * k + 43441 ∧
      177147 * k + 43441 < 262144 * k + 64283 := by
  intro k
  have h1 : C (262144 * k + 64283) = 786432 * k + 192850 := by
    unfold C
    simp [show (262144 * k + 64283) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 192850) = 393216 * k + 96425 := by
    unfold C
    simp [show (786432 * k + 192850) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 96425) = 1179648 * k + 289276 := by
    unfold C
    simp [show (393216 * k + 96425) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 289276) = 589824 * k + 144638 := by
    unfold C
    simp [show (1179648 * k + 289276) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 144638) = 294912 * k + 72319 := by
    unfold C
    simp [show (589824 * k + 144638) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 72319) = 884736 * k + 216958 := by
    unfold C
    simp [show (294912 * k + 72319) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 216958) = 442368 * k + 108479 := by
    unfold C
    simp [show (884736 * k + 216958) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 108479) = 1327104 * k + 325438 := by
    unfold C
    simp [show (442368 * k + 108479) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 325438) = 663552 * k + 162719 := by
    unfold C
    simp [show (1327104 * k + 325438) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 162719) = 1990656 * k + 488158 := by
    unfold C
    simp [show (663552 * k + 162719) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 488158) = 995328 * k + 244079 := by
    unfold C
    simp [show (1990656 * k + 488158) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 244079) = 2985984 * k + 732238 := by
    unfold C
    simp [show (995328 * k + 244079) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 732238) = 1492992 * k + 366119 := by
    unfold C
    simp [show (2985984 * k + 732238) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 366119) = 4478976 * k + 1098358 := by
    unfold C
    simp [show (1492992 * k + 366119) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1098358) = 2239488 * k + 549179 := by
    unfold C
    simp [show (4478976 * k + 1098358) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 549179) = 6718464 * k + 1647538 := by
    unfold C
    simp [show (2239488 * k + 549179) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1647538) = 3359232 * k + 823769 := by
    unfold C
    simp [show (6718464 * k + 1647538) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 823769) = 10077696 * k + 2471308 := by
    unfold C
    simp [show (3359232 * k + 823769) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2471308) = 5038848 * k + 1235654 := by
    unfold C
    simp [show (10077696 * k + 2471308) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1235654) = 2519424 * k + 617827 := by
    unfold C
    simp [show (5038848 * k + 1235654) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 617827) = 7558272 * k + 1853482 := by
    unfold C
    simp [show (2519424 * k + 617827) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1853482) = 3779136 * k + 926741 := by
    unfold C
    simp [show (7558272 * k + 1853482) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 926741) = 11337408 * k + 2780224 := by
    unfold C
    simp [show (3779136 * k + 926741) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 2780224) = 5668704 * k + 1390112 := by
    unfold C
    simp [show (11337408 * k + 2780224) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1390112) = 2834352 * k + 695056 := by
    unfold C
    simp [show (5668704 * k + 1390112) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 695056) = 1417176 * k + 347528 := by
    unfold C
    simp [show (2834352 * k + 695056) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 347528) = 708588 * k + 173764 := by
    unfold C
    simp [show (1417176 * k + 347528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 173764) = 354294 * k + 86882 := by
    unfold C
    simp [show (708588 * k + 173764) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 86882) = 177147 * k + 43441 := by
    unfold C
    simp [show (354294 * k + 86882) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 64283) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 64283))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_64671 : ∀ k : Nat,
    iterate (262144 * k + 64671) 29 = 177147 * k + 43703 ∧
      177147 * k + 43703 < 262144 * k + 64671 := by
  intro k
  have h1 : C (262144 * k + 64671) = 786432 * k + 194014 := by
    unfold C
    simp [show (262144 * k + 64671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 194014) = 393216 * k + 97007 := by
    unfold C
    simp [show (786432 * k + 194014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 97007) = 1179648 * k + 291022 := by
    unfold C
    simp [show (393216 * k + 97007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 291022) = 589824 * k + 145511 := by
    unfold C
    simp [show (1179648 * k + 291022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 145511) = 1769472 * k + 436534 := by
    unfold C
    simp [show (589824 * k + 145511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 436534) = 884736 * k + 218267 := by
    unfold C
    simp [show (1769472 * k + 436534) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 218267) = 2654208 * k + 654802 := by
    unfold C
    simp [show (884736 * k + 218267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 654802) = 1327104 * k + 327401 := by
    unfold C
    simp [show (2654208 * k + 654802) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 327401) = 3981312 * k + 982204 := by
    unfold C
    simp [show (1327104 * k + 327401) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 982204) = 1990656 * k + 491102 := by
    unfold C
    simp [show (3981312 * k + 982204) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 491102) = 995328 * k + 245551 := by
    unfold C
    simp [show (1990656 * k + 491102) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 245551) = 2985984 * k + 736654 := by
    unfold C
    simp [show (995328 * k + 245551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 736654) = 1492992 * k + 368327 := by
    unfold C
    simp [show (2985984 * k + 736654) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 368327) = 4478976 * k + 1104982 := by
    unfold C
    simp [show (1492992 * k + 368327) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1104982) = 2239488 * k + 552491 := by
    unfold C
    simp [show (4478976 * k + 1104982) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 552491) = 6718464 * k + 1657474 := by
    unfold C
    simp [show (2239488 * k + 552491) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1657474) = 3359232 * k + 828737 := by
    unfold C
    simp [show (6718464 * k + 1657474) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 828737) = 10077696 * k + 2486212 := by
    unfold C
    simp [show (3359232 * k + 828737) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2486212) = 5038848 * k + 1243106 := by
    unfold C
    simp [show (10077696 * k + 2486212) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1243106) = 2519424 * k + 621553 := by
    unfold C
    simp [show (5038848 * k + 1243106) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 621553) = 7558272 * k + 1864660 := by
    unfold C
    simp [show (2519424 * k + 621553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1864660) = 3779136 * k + 932330 := by
    unfold C
    simp [show (7558272 * k + 1864660) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 932330) = 1889568 * k + 466165 := by
    unfold C
    simp [show (3779136 * k + 932330) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 466165) = 5668704 * k + 1398496 := by
    unfold C
    simp [show (1889568 * k + 466165) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1398496) = 2834352 * k + 699248 := by
    unfold C
    simp [show (5668704 * k + 1398496) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 699248) = 1417176 * k + 349624 := by
    unfold C
    simp [show (2834352 * k + 699248) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 349624) = 708588 * k + 174812 := by
    unfold C
    simp [show (1417176 * k + 349624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 174812) = 354294 * k + 87406 := by
    unfold C
    simp [show (708588 * k + 174812) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 87406) = 177147 * k + 43703 := by
    unfold C
    simp [show (354294 * k + 87406) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 64671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 64671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_65531 : ∀ k : Nat,
    iterate (262144 * k + 65531) 29 = 177147 * k + 44285 ∧
      177147 * k + 44285 < 262144 * k + 65531 := by
  intro k
  have h1 : C (262144 * k + 65531) = 786432 * k + 196594 := by
    unfold C
    simp [show (262144 * k + 65531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 196594) = 393216 * k + 98297 := by
    unfold C
    simp [show (786432 * k + 196594) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 98297) = 1179648 * k + 294892 := by
    unfold C
    simp [show (393216 * k + 98297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 294892) = 589824 * k + 147446 := by
    unfold C
    simp [show (1179648 * k + 294892) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 147446) = 294912 * k + 73723 := by
    unfold C
    simp [show (589824 * k + 147446) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 73723) = 884736 * k + 221170 := by
    unfold C
    simp [show (294912 * k + 73723) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 221170) = 442368 * k + 110585 := by
    unfold C
    simp [show (884736 * k + 221170) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 110585) = 1327104 * k + 331756 := by
    unfold C
    simp [show (442368 * k + 110585) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 331756) = 663552 * k + 165878 := by
    unfold C
    simp [show (1327104 * k + 331756) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 165878) = 331776 * k + 82939 := by
    unfold C
    simp [show (663552 * k + 165878) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 82939) = 995328 * k + 248818 := by
    unfold C
    simp [show (331776 * k + 82939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 248818) = 497664 * k + 124409 := by
    unfold C
    simp [show (995328 * k + 248818) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 124409) = 1492992 * k + 373228 := by
    unfold C
    simp [show (497664 * k + 124409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 373228) = 746496 * k + 186614 := by
    unfold C
    simp [show (1492992 * k + 373228) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 186614) = 373248 * k + 93307 := by
    unfold C
    simp [show (746496 * k + 186614) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 93307) = 1119744 * k + 279922 := by
    unfold C
    simp [show (373248 * k + 93307) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 279922) = 559872 * k + 139961 := by
    unfold C
    simp [show (1119744 * k + 279922) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 139961) = 1679616 * k + 419884 := by
    unfold C
    simp [show (559872 * k + 139961) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 419884) = 839808 * k + 209942 := by
    unfold C
    simp [show (1679616 * k + 419884) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 209942) = 419904 * k + 104971 := by
    unfold C
    simp [show (839808 * k + 209942) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 104971) = 1259712 * k + 314914 := by
    unfold C
    simp [show (419904 * k + 104971) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 314914) = 629856 * k + 157457 := by
    unfold C
    simp [show (1259712 * k + 314914) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 157457) = 1889568 * k + 472372 := by
    unfold C
    simp [show (629856 * k + 157457) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 472372) = 944784 * k + 236186 := by
    unfold C
    simp [show (1889568 * k + 472372) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 236186) = 472392 * k + 118093 := by
    unfold C
    simp [show (944784 * k + 236186) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 118093) = 1417176 * k + 354280 := by
    unfold C
    simp [show (472392 * k + 118093) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 354280) = 708588 * k + 177140 := by
    unfold C
    simp [show (1417176 * k + 354280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 177140) = 354294 * k + 88570 := by
    unfold C
    simp [show (708588 * k + 177140) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 88570) = 177147 * k + 44285 := by
    unfold C
    simp [show (354294 * k + 88570) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 65531) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 65531))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_65691 : ∀ k : Nat,
    iterate (262144 * k + 65691) 29 = 177147 * k + 44393 ∧
      177147 * k + 44393 < 262144 * k + 65691 := by
  intro k
  have h1 : C (262144 * k + 65691) = 786432 * k + 197074 := by
    unfold C
    simp [show (262144 * k + 65691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 197074) = 393216 * k + 98537 := by
    unfold C
    simp [show (786432 * k + 197074) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 98537) = 1179648 * k + 295612 := by
    unfold C
    simp [show (393216 * k + 98537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 295612) = 589824 * k + 147806 := by
    unfold C
    simp [show (1179648 * k + 295612) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 147806) = 294912 * k + 73903 := by
    unfold C
    simp [show (589824 * k + 147806) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 73903) = 884736 * k + 221710 := by
    unfold C
    simp [show (294912 * k + 73903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 221710) = 442368 * k + 110855 := by
    unfold C
    simp [show (884736 * k + 221710) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 110855) = 1327104 * k + 332566 := by
    unfold C
    simp [show (442368 * k + 110855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 332566) = 663552 * k + 166283 := by
    unfold C
    simp [show (1327104 * k + 332566) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 166283) = 1990656 * k + 498850 := by
    unfold C
    simp [show (663552 * k + 166283) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 498850) = 995328 * k + 249425 := by
    unfold C
    simp [show (1990656 * k + 498850) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 249425) = 2985984 * k + 748276 := by
    unfold C
    simp [show (995328 * k + 249425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 748276) = 1492992 * k + 374138 := by
    unfold C
    simp [show (2985984 * k + 748276) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 374138) = 746496 * k + 187069 := by
    unfold C
    simp [show (1492992 * k + 374138) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 187069) = 2239488 * k + 561208 := by
    unfold C
    simp [show (746496 * k + 187069) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 561208) = 1119744 * k + 280604 := by
    unfold C
    simp [show (2239488 * k + 561208) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 280604) = 559872 * k + 140302 := by
    unfold C
    simp [show (1119744 * k + 280604) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 140302) = 279936 * k + 70151 := by
    unfold C
    simp [show (559872 * k + 140302) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 70151) = 839808 * k + 210454 := by
    unfold C
    simp [show (279936 * k + 70151) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 210454) = 419904 * k + 105227 := by
    unfold C
    simp [show (839808 * k + 210454) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 105227) = 1259712 * k + 315682 := by
    unfold C
    simp [show (419904 * k + 105227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 315682) = 629856 * k + 157841 := by
    unfold C
    simp [show (1259712 * k + 315682) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 157841) = 1889568 * k + 473524 := by
    unfold C
    simp [show (629856 * k + 157841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 473524) = 944784 * k + 236762 := by
    unfold C
    simp [show (1889568 * k + 473524) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 236762) = 472392 * k + 118381 := by
    unfold C
    simp [show (944784 * k + 236762) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 118381) = 1417176 * k + 355144 := by
    unfold C
    simp [show (472392 * k + 118381) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 355144) = 708588 * k + 177572 := by
    unfold C
    simp [show (1417176 * k + 355144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 177572) = 354294 * k + 88786 := by
    unfold C
    simp [show (708588 * k + 177572) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 88786) = 177147 * k + 44393 := by
    unfold C
    simp [show (354294 * k + 88786) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 65691) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 65691))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_65695 : ∀ k : Nat,
    iterate (262144 * k + 65695) 29 = 177147 * k + 44395 ∧
      177147 * k + 44395 < 262144 * k + 65695 := by
  intro k
  have h1 : C (262144 * k + 65695) = 786432 * k + 197086 := by
    unfold C
    simp [show (262144 * k + 65695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 197086) = 393216 * k + 98543 := by
    unfold C
    simp [show (786432 * k + 197086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 98543) = 1179648 * k + 295630 := by
    unfold C
    simp [show (393216 * k + 98543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 295630) = 589824 * k + 147815 := by
    unfold C
    simp [show (1179648 * k + 295630) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 147815) = 1769472 * k + 443446 := by
    unfold C
    simp [show (589824 * k + 147815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 443446) = 884736 * k + 221723 := by
    unfold C
    simp [show (1769472 * k + 443446) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 221723) = 2654208 * k + 665170 := by
    unfold C
    simp [show (884736 * k + 221723) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 665170) = 1327104 * k + 332585 := by
    unfold C
    simp [show (2654208 * k + 665170) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 332585) = 3981312 * k + 997756 := by
    unfold C
    simp [show (1327104 * k + 332585) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 997756) = 1990656 * k + 498878 := by
    unfold C
    simp [show (3981312 * k + 997756) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 498878) = 995328 * k + 249439 := by
    unfold C
    simp [show (1990656 * k + 498878) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 249439) = 2985984 * k + 748318 := by
    unfold C
    simp [show (995328 * k + 249439) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 748318) = 1492992 * k + 374159 := by
    unfold C
    simp [show (2985984 * k + 748318) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 374159) = 4478976 * k + 1122478 := by
    unfold C
    simp [show (1492992 * k + 374159) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1122478) = 2239488 * k + 561239 := by
    unfold C
    simp [show (4478976 * k + 1122478) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 561239) = 6718464 * k + 1683718 := by
    unfold C
    simp [show (2239488 * k + 561239) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1683718) = 3359232 * k + 841859 := by
    unfold C
    simp [show (6718464 * k + 1683718) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 841859) = 10077696 * k + 2525578 := by
    unfold C
    simp [show (3359232 * k + 841859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2525578) = 5038848 * k + 1262789 := by
    unfold C
    simp [show (10077696 * k + 2525578) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1262789) = 15116544 * k + 3788368 := by
    unfold C
    simp [show (5038848 * k + 1262789) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 3788368) = 7558272 * k + 1894184 := by
    unfold C
    simp [show (15116544 * k + 3788368) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1894184) = 3779136 * k + 947092 := by
    unfold C
    simp [show (7558272 * k + 1894184) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 947092) = 1889568 * k + 473546 := by
    unfold C
    simp [show (3779136 * k + 947092) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 473546) = 944784 * k + 236773 := by
    unfold C
    simp [show (1889568 * k + 473546) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 236773) = 2834352 * k + 710320 := by
    unfold C
    simp [show (944784 * k + 236773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 710320) = 1417176 * k + 355160 := by
    unfold C
    simp [show (2834352 * k + 710320) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 355160) = 708588 * k + 177580 := by
    unfold C
    simp [show (1417176 * k + 355160) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 177580) = 354294 * k + 88790 := by
    unfold C
    simp [show (708588 * k + 177580) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 88790) = 177147 * k + 44395 := by
    unfold C
    simp [show (354294 * k + 88790) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 65695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 65695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_66299 : ∀ k : Nat,
    iterate (262144 * k + 66299) 29 = 177147 * k + 44804 ∧
      177147 * k + 44804 < 262144 * k + 66299 := by
  intro k
  have h1 : C (262144 * k + 66299) = 786432 * k + 198898 := by
    unfold C
    simp [show (262144 * k + 66299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 198898) = 393216 * k + 99449 := by
    unfold C
    simp [show (786432 * k + 198898) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 99449) = 1179648 * k + 298348 := by
    unfold C
    simp [show (393216 * k + 99449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 298348) = 589824 * k + 149174 := by
    unfold C
    simp [show (1179648 * k + 298348) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 149174) = 294912 * k + 74587 := by
    unfold C
    simp [show (589824 * k + 149174) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 74587) = 884736 * k + 223762 := by
    unfold C
    simp [show (294912 * k + 74587) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 223762) = 442368 * k + 111881 := by
    unfold C
    simp [show (884736 * k + 223762) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 111881) = 1327104 * k + 335644 := by
    unfold C
    simp [show (442368 * k + 111881) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 335644) = 663552 * k + 167822 := by
    unfold C
    simp [show (1327104 * k + 335644) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 167822) = 331776 * k + 83911 := by
    unfold C
    simp [show (663552 * k + 167822) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 83911) = 995328 * k + 251734 := by
    unfold C
    simp [show (331776 * k + 83911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 251734) = 497664 * k + 125867 := by
    unfold C
    simp [show (995328 * k + 251734) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 125867) = 1492992 * k + 377602 := by
    unfold C
    simp [show (497664 * k + 125867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 377602) = 746496 * k + 188801 := by
    unfold C
    simp [show (1492992 * k + 377602) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 188801) = 2239488 * k + 566404 := by
    unfold C
    simp [show (746496 * k + 188801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 566404) = 1119744 * k + 283202 := by
    unfold C
    simp [show (2239488 * k + 566404) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 283202) = 559872 * k + 141601 := by
    unfold C
    simp [show (1119744 * k + 283202) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 141601) = 1679616 * k + 424804 := by
    unfold C
    simp [show (559872 * k + 141601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 424804) = 839808 * k + 212402 := by
    unfold C
    simp [show (1679616 * k + 424804) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 212402) = 419904 * k + 106201 := by
    unfold C
    simp [show (839808 * k + 212402) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 106201) = 1259712 * k + 318604 := by
    unfold C
    simp [show (419904 * k + 106201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 318604) = 629856 * k + 159302 := by
    unfold C
    simp [show (1259712 * k + 318604) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 159302) = 314928 * k + 79651 := by
    unfold C
    simp [show (629856 * k + 159302) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 79651) = 944784 * k + 238954 := by
    unfold C
    simp [show (314928 * k + 79651) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 238954) = 472392 * k + 119477 := by
    unfold C
    simp [show (944784 * k + 238954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 119477) = 1417176 * k + 358432 := by
    unfold C
    simp [show (472392 * k + 119477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 358432) = 708588 * k + 179216 := by
    unfold C
    simp [show (1417176 * k + 358432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 179216) = 354294 * k + 89608 := by
    unfold C
    simp [show (708588 * k + 179216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 89608) = 177147 * k + 44804 := by
    unfold C
    simp [show (354294 * k + 89608) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 66299) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 66299))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_66331 : ∀ k : Nat,
    iterate (262144 * k + 66331) 29 = 177147 * k + 44825 ∧
      177147 * k + 44825 < 262144 * k + 66331 := by
  intro k
  have h1 : C (262144 * k + 66331) = 786432 * k + 198994 := by
    unfold C
    simp [show (262144 * k + 66331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 198994) = 393216 * k + 99497 := by
    unfold C
    simp [show (786432 * k + 198994) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 99497) = 1179648 * k + 298492 := by
    unfold C
    simp [show (393216 * k + 99497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 298492) = 589824 * k + 149246 := by
    unfold C
    simp [show (1179648 * k + 298492) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 149246) = 294912 * k + 74623 := by
    unfold C
    simp [show (589824 * k + 149246) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 74623) = 884736 * k + 223870 := by
    unfold C
    simp [show (294912 * k + 74623) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 223870) = 442368 * k + 111935 := by
    unfold C
    simp [show (884736 * k + 223870) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 111935) = 1327104 * k + 335806 := by
    unfold C
    simp [show (442368 * k + 111935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 335806) = 663552 * k + 167903 := by
    unfold C
    simp [show (1327104 * k + 335806) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 167903) = 1990656 * k + 503710 := by
    unfold C
    simp [show (663552 * k + 167903) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 503710) = 995328 * k + 251855 := by
    unfold C
    simp [show (1990656 * k + 503710) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 251855) = 2985984 * k + 755566 := by
    unfold C
    simp [show (995328 * k + 251855) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 755566) = 1492992 * k + 377783 := by
    unfold C
    simp [show (2985984 * k + 755566) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 377783) = 4478976 * k + 1133350 := by
    unfold C
    simp [show (1492992 * k + 377783) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1133350) = 2239488 * k + 566675 := by
    unfold C
    simp [show (4478976 * k + 1133350) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 566675) = 6718464 * k + 1700026 := by
    unfold C
    simp [show (2239488 * k + 566675) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1700026) = 3359232 * k + 850013 := by
    unfold C
    simp [show (6718464 * k + 1700026) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 850013) = 10077696 * k + 2550040 := by
    unfold C
    simp [show (3359232 * k + 850013) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2550040) = 5038848 * k + 1275020 := by
    unfold C
    simp [show (10077696 * k + 2550040) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1275020) = 2519424 * k + 637510 := by
    unfold C
    simp [show (5038848 * k + 1275020) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 637510) = 1259712 * k + 318755 := by
    unfold C
    simp [show (2519424 * k + 637510) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 318755) = 3779136 * k + 956266 := by
    unfold C
    simp [show (1259712 * k + 318755) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 956266) = 1889568 * k + 478133 := by
    unfold C
    simp [show (3779136 * k + 956266) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 478133) = 5668704 * k + 1434400 := by
    unfold C
    simp [show (1889568 * k + 478133) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1434400) = 2834352 * k + 717200 := by
    unfold C
    simp [show (5668704 * k + 1434400) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 717200) = 1417176 * k + 358600 := by
    unfold C
    simp [show (2834352 * k + 717200) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 358600) = 708588 * k + 179300 := by
    unfold C
    simp [show (1417176 * k + 358600) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 179300) = 354294 * k + 89650 := by
    unfold C
    simp [show (708588 * k + 179300) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 89650) = 177147 * k + 44825 := by
    unfold C
    simp [show (354294 * k + 89650) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 66331) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 66331))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_66587 : ∀ k : Nat,
    iterate (262144 * k + 66587) 29 = 177147 * k + 44998 ∧
      177147 * k + 44998 < 262144 * k + 66587 := by
  intro k
  have h1 : C (262144 * k + 66587) = 786432 * k + 199762 := by
    unfold C
    simp [show (262144 * k + 66587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 199762) = 393216 * k + 99881 := by
    unfold C
    simp [show (786432 * k + 199762) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 99881) = 1179648 * k + 299644 := by
    unfold C
    simp [show (393216 * k + 99881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 299644) = 589824 * k + 149822 := by
    unfold C
    simp [show (1179648 * k + 299644) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 149822) = 294912 * k + 74911 := by
    unfold C
    simp [show (589824 * k + 149822) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 74911) = 884736 * k + 224734 := by
    unfold C
    simp [show (294912 * k + 74911) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 224734) = 442368 * k + 112367 := by
    unfold C
    simp [show (884736 * k + 224734) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 112367) = 1327104 * k + 337102 := by
    unfold C
    simp [show (442368 * k + 112367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 337102) = 663552 * k + 168551 := by
    unfold C
    simp [show (1327104 * k + 337102) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 168551) = 1990656 * k + 505654 := by
    unfold C
    simp [show (663552 * k + 168551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 505654) = 995328 * k + 252827 := by
    unfold C
    simp [show (1990656 * k + 505654) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 252827) = 2985984 * k + 758482 := by
    unfold C
    simp [show (995328 * k + 252827) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 758482) = 1492992 * k + 379241 := by
    unfold C
    simp [show (2985984 * k + 758482) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 379241) = 4478976 * k + 1137724 := by
    unfold C
    simp [show (1492992 * k + 379241) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1137724) = 2239488 * k + 568862 := by
    unfold C
    simp [show (4478976 * k + 1137724) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 568862) = 1119744 * k + 284431 := by
    unfold C
    simp [show (2239488 * k + 568862) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 284431) = 3359232 * k + 853294 := by
    unfold C
    simp [show (1119744 * k + 284431) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 853294) = 1679616 * k + 426647 := by
    unfold C
    simp [show (3359232 * k + 853294) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 426647) = 5038848 * k + 1279942 := by
    unfold C
    simp [show (1679616 * k + 426647) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1279942) = 2519424 * k + 639971 := by
    unfold C
    simp [show (5038848 * k + 1279942) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 639971) = 7558272 * k + 1919914 := by
    unfold C
    simp [show (2519424 * k + 639971) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1919914) = 3779136 * k + 959957 := by
    unfold C
    simp [show (7558272 * k + 1919914) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 959957) = 11337408 * k + 2879872 := by
    unfold C
    simp [show (3779136 * k + 959957) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 2879872) = 5668704 * k + 1439936 := by
    unfold C
    simp [show (11337408 * k + 2879872) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1439936) = 2834352 * k + 719968 := by
    unfold C
    simp [show (5668704 * k + 1439936) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 719968) = 1417176 * k + 359984 := by
    unfold C
    simp [show (2834352 * k + 719968) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 359984) = 708588 * k + 179992 := by
    unfold C
    simp [show (1417176 * k + 359984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 179992) = 354294 * k + 89996 := by
    unfold C
    simp [show (708588 * k + 179992) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 89996) = 177147 * k + 44998 := by
    unfold C
    simp [show (354294 * k + 89996) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 66587) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 66587))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_66791 : ∀ k : Nat,
    iterate (262144 * k + 66791) 29 = 177147 * k + 45136 ∧
      177147 * k + 45136 < 262144 * k + 66791 := by
  intro k
  have h1 : C (262144 * k + 66791) = 786432 * k + 200374 := by
    unfold C
    simp [show (262144 * k + 66791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 200374) = 393216 * k + 100187 := by
    unfold C
    simp [show (786432 * k + 200374) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 100187) = 1179648 * k + 300562 := by
    unfold C
    simp [show (393216 * k + 100187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 300562) = 589824 * k + 150281 := by
    unfold C
    simp [show (1179648 * k + 300562) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 150281) = 1769472 * k + 450844 := by
    unfold C
    simp [show (589824 * k + 150281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 450844) = 884736 * k + 225422 := by
    unfold C
    simp [show (1769472 * k + 450844) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 225422) = 442368 * k + 112711 := by
    unfold C
    simp [show (884736 * k + 225422) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 112711) = 1327104 * k + 338134 := by
    unfold C
    simp [show (442368 * k + 112711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 338134) = 663552 * k + 169067 := by
    unfold C
    simp [show (1327104 * k + 338134) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 169067) = 1990656 * k + 507202 := by
    unfold C
    simp [show (663552 * k + 169067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 507202) = 995328 * k + 253601 := by
    unfold C
    simp [show (1990656 * k + 507202) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 253601) = 2985984 * k + 760804 := by
    unfold C
    simp [show (995328 * k + 253601) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 760804) = 1492992 * k + 380402 := by
    unfold C
    simp [show (2985984 * k + 760804) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 380402) = 746496 * k + 190201 := by
    unfold C
    simp [show (1492992 * k + 380402) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 190201) = 2239488 * k + 570604 := by
    unfold C
    simp [show (746496 * k + 190201) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 570604) = 1119744 * k + 285302 := by
    unfold C
    simp [show (2239488 * k + 570604) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 285302) = 559872 * k + 142651 := by
    unfold C
    simp [show (1119744 * k + 285302) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 142651) = 1679616 * k + 427954 := by
    unfold C
    simp [show (559872 * k + 142651) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 427954) = 839808 * k + 213977 := by
    unfold C
    simp [show (1679616 * k + 427954) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 213977) = 2519424 * k + 641932 := by
    unfold C
    simp [show (839808 * k + 213977) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 641932) = 1259712 * k + 320966 := by
    unfold C
    simp [show (2519424 * k + 641932) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 320966) = 629856 * k + 160483 := by
    unfold C
    simp [show (1259712 * k + 320966) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 160483) = 1889568 * k + 481450 := by
    unfold C
    simp [show (629856 * k + 160483) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 481450) = 944784 * k + 240725 := by
    unfold C
    simp [show (1889568 * k + 481450) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 240725) = 2834352 * k + 722176 := by
    unfold C
    simp [show (944784 * k + 240725) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 722176) = 1417176 * k + 361088 := by
    unfold C
    simp [show (2834352 * k + 722176) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 361088) = 708588 * k + 180544 := by
    unfold C
    simp [show (1417176 * k + 361088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 180544) = 354294 * k + 90272 := by
    unfold C
    simp [show (708588 * k + 180544) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 90272) = 177147 * k + 45136 := by
    unfold C
    simp [show (354294 * k + 90272) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 66791) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 66791))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_66975 : ∀ k : Nat,
    iterate (262144 * k + 66975) 29 = 177147 * k + 45260 ∧
      177147 * k + 45260 < 262144 * k + 66975 := by
  intro k
  have h1 : C (262144 * k + 66975) = 786432 * k + 200926 := by
    unfold C
    simp [show (262144 * k + 66975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 200926) = 393216 * k + 100463 := by
    unfold C
    simp [show (786432 * k + 200926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 100463) = 1179648 * k + 301390 := by
    unfold C
    simp [show (393216 * k + 100463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 301390) = 589824 * k + 150695 := by
    unfold C
    simp [show (1179648 * k + 301390) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 150695) = 1769472 * k + 452086 := by
    unfold C
    simp [show (589824 * k + 150695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 452086) = 884736 * k + 226043 := by
    unfold C
    simp [show (1769472 * k + 452086) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 226043) = 2654208 * k + 678130 := by
    unfold C
    simp [show (884736 * k + 226043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 678130) = 1327104 * k + 339065 := by
    unfold C
    simp [show (2654208 * k + 678130) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 339065) = 3981312 * k + 1017196 := by
    unfold C
    simp [show (1327104 * k + 339065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1017196) = 1990656 * k + 508598 := by
    unfold C
    simp [show (3981312 * k + 1017196) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 508598) = 995328 * k + 254299 := by
    unfold C
    simp [show (1990656 * k + 508598) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 254299) = 2985984 * k + 762898 := by
    unfold C
    simp [show (995328 * k + 254299) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 762898) = 1492992 * k + 381449 := by
    unfold C
    simp [show (2985984 * k + 762898) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 381449) = 4478976 * k + 1144348 := by
    unfold C
    simp [show (1492992 * k + 381449) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1144348) = 2239488 * k + 572174 := by
    unfold C
    simp [show (4478976 * k + 1144348) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 572174) = 1119744 * k + 286087 := by
    unfold C
    simp [show (2239488 * k + 572174) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 286087) = 3359232 * k + 858262 := by
    unfold C
    simp [show (1119744 * k + 286087) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 858262) = 1679616 * k + 429131 := by
    unfold C
    simp [show (3359232 * k + 858262) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 429131) = 5038848 * k + 1287394 := by
    unfold C
    simp [show (1679616 * k + 429131) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1287394) = 2519424 * k + 643697 := by
    unfold C
    simp [show (5038848 * k + 1287394) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 643697) = 7558272 * k + 1931092 := by
    unfold C
    simp [show (2519424 * k + 643697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1931092) = 3779136 * k + 965546 := by
    unfold C
    simp [show (7558272 * k + 1931092) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 965546) = 1889568 * k + 482773 := by
    unfold C
    simp [show (3779136 * k + 965546) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 482773) = 5668704 * k + 1448320 := by
    unfold C
    simp [show (1889568 * k + 482773) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1448320) = 2834352 * k + 724160 := by
    unfold C
    simp [show (5668704 * k + 1448320) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 724160) = 1417176 * k + 362080 := by
    unfold C
    simp [show (2834352 * k + 724160) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 362080) = 708588 * k + 181040 := by
    unfold C
    simp [show (1417176 * k + 362080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 181040) = 354294 * k + 90520 := by
    unfold C
    simp [show (708588 * k + 181040) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 90520) = 177147 * k + 45260 := by
    unfold C
    simp [show (354294 * k + 90520) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 66975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 66975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_67023 : ∀ k : Nat,
    iterate (262144 * k + 67023) 29 = 177147 * k + 45293 ∧
      177147 * k + 45293 < 262144 * k + 67023 := by
  intro k
  have h1 : C (262144 * k + 67023) = 786432 * k + 201070 := by
    unfold C
    simp [show (262144 * k + 67023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 201070) = 393216 * k + 100535 := by
    unfold C
    simp [show (786432 * k + 201070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 100535) = 1179648 * k + 301606 := by
    unfold C
    simp [show (393216 * k + 100535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 301606) = 589824 * k + 150803 := by
    unfold C
    simp [show (1179648 * k + 301606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 150803) = 1769472 * k + 452410 := by
    unfold C
    simp [show (589824 * k + 150803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 452410) = 884736 * k + 226205 := by
    unfold C
    simp [show (1769472 * k + 452410) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 226205) = 2654208 * k + 678616 := by
    unfold C
    simp [show (884736 * k + 226205) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 678616) = 1327104 * k + 339308 := by
    unfold C
    simp [show (2654208 * k + 678616) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 339308) = 663552 * k + 169654 := by
    unfold C
    simp [show (1327104 * k + 339308) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 169654) = 331776 * k + 84827 := by
    unfold C
    simp [show (663552 * k + 169654) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 84827) = 995328 * k + 254482 := by
    unfold C
    simp [show (331776 * k + 84827) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 254482) = 497664 * k + 127241 := by
    unfold C
    simp [show (995328 * k + 254482) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 127241) = 1492992 * k + 381724 := by
    unfold C
    simp [show (497664 * k + 127241) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 381724) = 746496 * k + 190862 := by
    unfold C
    simp [show (1492992 * k + 381724) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 190862) = 373248 * k + 95431 := by
    unfold C
    simp [show (746496 * k + 190862) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 95431) = 1119744 * k + 286294 := by
    unfold C
    simp [show (373248 * k + 95431) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 286294) = 559872 * k + 143147 := by
    unfold C
    simp [show (1119744 * k + 286294) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 143147) = 1679616 * k + 429442 := by
    unfold C
    simp [show (559872 * k + 143147) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 429442) = 839808 * k + 214721 := by
    unfold C
    simp [show (1679616 * k + 429442) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 214721) = 2519424 * k + 644164 := by
    unfold C
    simp [show (839808 * k + 214721) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 644164) = 1259712 * k + 322082 := by
    unfold C
    simp [show (2519424 * k + 644164) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 322082) = 629856 * k + 161041 := by
    unfold C
    simp [show (1259712 * k + 322082) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 161041) = 1889568 * k + 483124 := by
    unfold C
    simp [show (629856 * k + 161041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 483124) = 944784 * k + 241562 := by
    unfold C
    simp [show (1889568 * k + 483124) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 241562) = 472392 * k + 120781 := by
    unfold C
    simp [show (944784 * k + 241562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 120781) = 1417176 * k + 362344 := by
    unfold C
    simp [show (472392 * k + 120781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 362344) = 708588 * k + 181172 := by
    unfold C
    simp [show (1417176 * k + 362344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 181172) = 354294 * k + 90586 := by
    unfold C
    simp [show (708588 * k + 181172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 90586) = 177147 * k + 45293 := by
    unfold C
    simp [show (354294 * k + 90586) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 67023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 67023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_67231 : ∀ k : Nat,
    iterate (262144 * k + 67231) 29 = 177147 * k + 45433 ∧
      177147 * k + 45433 < 262144 * k + 67231 := by
  intro k
  have h1 : C (262144 * k + 67231) = 786432 * k + 201694 := by
    unfold C
    simp [show (262144 * k + 67231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 201694) = 393216 * k + 100847 := by
    unfold C
    simp [show (786432 * k + 201694) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 100847) = 1179648 * k + 302542 := by
    unfold C
    simp [show (393216 * k + 100847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 302542) = 589824 * k + 151271 := by
    unfold C
    simp [show (1179648 * k + 302542) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 151271) = 1769472 * k + 453814 := by
    unfold C
    simp [show (589824 * k + 151271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 453814) = 884736 * k + 226907 := by
    unfold C
    simp [show (1769472 * k + 453814) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 226907) = 2654208 * k + 680722 := by
    unfold C
    simp [show (884736 * k + 226907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 680722) = 1327104 * k + 340361 := by
    unfold C
    simp [show (2654208 * k + 680722) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 340361) = 3981312 * k + 1021084 := by
    unfold C
    simp [show (1327104 * k + 340361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1021084) = 1990656 * k + 510542 := by
    unfold C
    simp [show (3981312 * k + 1021084) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 510542) = 995328 * k + 255271 := by
    unfold C
    simp [show (1990656 * k + 510542) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 255271) = 2985984 * k + 765814 := by
    unfold C
    simp [show (995328 * k + 255271) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 765814) = 1492992 * k + 382907 := by
    unfold C
    simp [show (2985984 * k + 765814) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 382907) = 4478976 * k + 1148722 := by
    unfold C
    simp [show (1492992 * k + 382907) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1148722) = 2239488 * k + 574361 := by
    unfold C
    simp [show (4478976 * k + 1148722) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 574361) = 6718464 * k + 1723084 := by
    unfold C
    simp [show (2239488 * k + 574361) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1723084) = 3359232 * k + 861542 := by
    unfold C
    simp [show (6718464 * k + 1723084) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 861542) = 1679616 * k + 430771 := by
    unfold C
    simp [show (3359232 * k + 861542) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 430771) = 5038848 * k + 1292314 := by
    unfold C
    simp [show (1679616 * k + 430771) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1292314) = 2519424 * k + 646157 := by
    unfold C
    simp [show (5038848 * k + 1292314) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 646157) = 7558272 * k + 1938472 := by
    unfold C
    simp [show (2519424 * k + 646157) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1938472) = 3779136 * k + 969236 := by
    unfold C
    simp [show (7558272 * k + 1938472) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 969236) = 1889568 * k + 484618 := by
    unfold C
    simp [show (3779136 * k + 969236) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 484618) = 944784 * k + 242309 := by
    unfold C
    simp [show (1889568 * k + 484618) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 242309) = 2834352 * k + 726928 := by
    unfold C
    simp [show (944784 * k + 242309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 726928) = 1417176 * k + 363464 := by
    unfold C
    simp [show (2834352 * k + 726928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 363464) = 708588 * k + 181732 := by
    unfold C
    simp [show (1417176 * k + 363464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 181732) = 354294 * k + 90866 := by
    unfold C
    simp [show (708588 * k + 181732) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 90866) = 177147 * k + 45433 := by
    unfold C
    simp [show (354294 * k + 90866) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 67231) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 67231))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_67303 : ∀ k : Nat,
    iterate (262144 * k + 67303) 29 = 177147 * k + 45482 ∧
      177147 * k + 45482 < 262144 * k + 67303 := by
  intro k
  have h1 : C (262144 * k + 67303) = 786432 * k + 201910 := by
    unfold C
    simp [show (262144 * k + 67303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 201910) = 393216 * k + 100955 := by
    unfold C
    simp [show (786432 * k + 201910) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 100955) = 1179648 * k + 302866 := by
    unfold C
    simp [show (393216 * k + 100955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 302866) = 589824 * k + 151433 := by
    unfold C
    simp [show (1179648 * k + 302866) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 151433) = 1769472 * k + 454300 := by
    unfold C
    simp [show (589824 * k + 151433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 454300) = 884736 * k + 227150 := by
    unfold C
    simp [show (1769472 * k + 454300) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 227150) = 442368 * k + 113575 := by
    unfold C
    simp [show (884736 * k + 227150) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 113575) = 1327104 * k + 340726 := by
    unfold C
    simp [show (442368 * k + 113575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 340726) = 663552 * k + 170363 := by
    unfold C
    simp [show (1327104 * k + 340726) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 170363) = 1990656 * k + 511090 := by
    unfold C
    simp [show (663552 * k + 170363) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 511090) = 995328 * k + 255545 := by
    unfold C
    simp [show (1990656 * k + 511090) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 255545) = 2985984 * k + 766636 := by
    unfold C
    simp [show (995328 * k + 255545) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 766636) = 1492992 * k + 383318 := by
    unfold C
    simp [show (2985984 * k + 766636) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 383318) = 746496 * k + 191659 := by
    unfold C
    simp [show (1492992 * k + 383318) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 191659) = 2239488 * k + 574978 := by
    unfold C
    simp [show (746496 * k + 191659) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 574978) = 1119744 * k + 287489 := by
    unfold C
    simp [show (2239488 * k + 574978) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 287489) = 3359232 * k + 862468 := by
    unfold C
    simp [show (1119744 * k + 287489) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 862468) = 1679616 * k + 431234 := by
    unfold C
    simp [show (3359232 * k + 862468) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 431234) = 839808 * k + 215617 := by
    unfold C
    simp [show (1679616 * k + 431234) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 215617) = 2519424 * k + 646852 := by
    unfold C
    simp [show (839808 * k + 215617) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 646852) = 1259712 * k + 323426 := by
    unfold C
    simp [show (2519424 * k + 646852) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 323426) = 629856 * k + 161713 := by
    unfold C
    simp [show (1259712 * k + 323426) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 161713) = 1889568 * k + 485140 := by
    unfold C
    simp [show (629856 * k + 161713) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 485140) = 944784 * k + 242570 := by
    unfold C
    simp [show (1889568 * k + 485140) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 242570) = 472392 * k + 121285 := by
    unfold C
    simp [show (944784 * k + 242570) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 121285) = 1417176 * k + 363856 := by
    unfold C
    simp [show (472392 * k + 121285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 363856) = 708588 * k + 181928 := by
    unfold C
    simp [show (1417176 * k + 363856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 181928) = 354294 * k + 90964 := by
    unfold C
    simp [show (708588 * k + 181928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 90964) = 177147 * k + 45482 := by
    unfold C
    simp [show (354294 * k + 90964) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 67303) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 67303))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard013
