import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard023

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_113407 : ∀ k : Nat,
    iterate (262144 * k + 113407) 29 = 177147 * k + 76637 ∧
      177147 * k + 76637 < 262144 * k + 113407 := by
  intro k
  have h1 : C (262144 * k + 113407) = 786432 * k + 340222 := by
    unfold C
    simp [show (262144 * k + 113407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 340222) = 393216 * k + 170111 := by
    unfold C
    simp [show (786432 * k + 340222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 170111) = 1179648 * k + 510334 := by
    unfold C
    simp [show (393216 * k + 170111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 510334) = 589824 * k + 255167 := by
    unfold C
    simp [show (1179648 * k + 510334) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 255167) = 1769472 * k + 765502 := by
    unfold C
    simp [show (589824 * k + 255167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 765502) = 884736 * k + 382751 := by
    unfold C
    simp [show (1769472 * k + 765502) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 382751) = 2654208 * k + 1148254 := by
    unfold C
    simp [show (884736 * k + 382751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1148254) = 1327104 * k + 574127 := by
    unfold C
    simp [show (2654208 * k + 1148254) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 574127) = 3981312 * k + 1722382 := by
    unfold C
    simp [show (1327104 * k + 574127) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1722382) = 1990656 * k + 861191 := by
    unfold C
    simp [show (3981312 * k + 1722382) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 861191) = 5971968 * k + 2583574 := by
    unfold C
    simp [show (1990656 * k + 861191) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2583574) = 2985984 * k + 1291787 := by
    unfold C
    simp [show (5971968 * k + 2583574) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1291787) = 8957952 * k + 3875362 := by
    unfold C
    simp [show (2985984 * k + 1291787) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3875362) = 4478976 * k + 1937681 := by
    unfold C
    simp [show (8957952 * k + 3875362) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1937681) = 13436928 * k + 5813044 := by
    unfold C
    simp [show (4478976 * k + 1937681) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5813044) = 6718464 * k + 2906522 := by
    unfold C
    simp [show (13436928 * k + 5813044) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2906522) = 3359232 * k + 1453261 := by
    unfold C
    simp [show (6718464 * k + 2906522) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1453261) = 10077696 * k + 4359784 := by
    unfold C
    simp [show (3359232 * k + 1453261) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4359784) = 5038848 * k + 2179892 := by
    unfold C
    simp [show (10077696 * k + 4359784) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2179892) = 2519424 * k + 1089946 := by
    unfold C
    simp [show (5038848 * k + 2179892) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1089946) = 1259712 * k + 544973 := by
    unfold C
    simp [show (2519424 * k + 1089946) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 544973) = 3779136 * k + 1634920 := by
    unfold C
    simp [show (1259712 * k + 544973) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1634920) = 1889568 * k + 817460 := by
    unfold C
    simp [show (3779136 * k + 1634920) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 817460) = 944784 * k + 408730 := by
    unfold C
    simp [show (1889568 * k + 817460) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 408730) = 472392 * k + 204365 := by
    unfold C
    simp [show (944784 * k + 408730) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 204365) = 1417176 * k + 613096 := by
    unfold C
    simp [show (472392 * k + 204365) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 613096) = 708588 * k + 306548 := by
    unfold C
    simp [show (1417176 * k + 613096) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 306548) = 354294 * k + 153274 := by
    unfold C
    simp [show (708588 * k + 306548) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 153274) = 177147 * k + 76637 := by
    unfold C
    simp [show (354294 * k + 153274) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 113407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 113407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_113819 : ∀ k : Nat,
    iterate (262144 * k + 113819) 29 = 177147 * k + 76916 ∧
      177147 * k + 76916 < 262144 * k + 113819 := by
  intro k
  have h1 : C (262144 * k + 113819) = 786432 * k + 341458 := by
    unfold C
    simp [show (262144 * k + 113819) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 341458) = 393216 * k + 170729 := by
    unfold C
    simp [show (786432 * k + 341458) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 170729) = 1179648 * k + 512188 := by
    unfold C
    simp [show (393216 * k + 170729) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 512188) = 589824 * k + 256094 := by
    unfold C
    simp [show (1179648 * k + 512188) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 256094) = 294912 * k + 128047 := by
    unfold C
    simp [show (589824 * k + 256094) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 128047) = 884736 * k + 384142 := by
    unfold C
    simp [show (294912 * k + 128047) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 384142) = 442368 * k + 192071 := by
    unfold C
    simp [show (884736 * k + 384142) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 192071) = 1327104 * k + 576214 := by
    unfold C
    simp [show (442368 * k + 192071) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 576214) = 663552 * k + 288107 := by
    unfold C
    simp [show (1327104 * k + 576214) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 288107) = 1990656 * k + 864322 := by
    unfold C
    simp [show (663552 * k + 288107) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 864322) = 995328 * k + 432161 := by
    unfold C
    simp [show (1990656 * k + 864322) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 432161) = 2985984 * k + 1296484 := by
    unfold C
    simp [show (995328 * k + 432161) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1296484) = 1492992 * k + 648242 := by
    unfold C
    simp [show (2985984 * k + 1296484) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 648242) = 746496 * k + 324121 := by
    unfold C
    simp [show (1492992 * k + 648242) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 324121) = 2239488 * k + 972364 := by
    unfold C
    simp [show (746496 * k + 324121) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 972364) = 1119744 * k + 486182 := by
    unfold C
    simp [show (2239488 * k + 972364) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 486182) = 559872 * k + 243091 := by
    unfold C
    simp [show (1119744 * k + 486182) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 243091) = 1679616 * k + 729274 := by
    unfold C
    simp [show (559872 * k + 243091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 729274) = 839808 * k + 364637 := by
    unfold C
    simp [show (1679616 * k + 729274) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 364637) = 2519424 * k + 1093912 := by
    unfold C
    simp [show (839808 * k + 364637) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1093912) = 1259712 * k + 546956 := by
    unfold C
    simp [show (2519424 * k + 1093912) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 546956) = 629856 * k + 273478 := by
    unfold C
    simp [show (1259712 * k + 546956) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 273478) = 314928 * k + 136739 := by
    unfold C
    simp [show (629856 * k + 273478) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 136739) = 944784 * k + 410218 := by
    unfold C
    simp [show (314928 * k + 136739) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 410218) = 472392 * k + 205109 := by
    unfold C
    simp [show (944784 * k + 410218) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 205109) = 1417176 * k + 615328 := by
    unfold C
    simp [show (472392 * k + 205109) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 615328) = 708588 * k + 307664 := by
    unfold C
    simp [show (1417176 * k + 615328) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 307664) = 354294 * k + 153832 := by
    unfold C
    simp [show (708588 * k + 307664) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 153832) = 177147 * k + 76916 := by
    unfold C
    simp [show (354294 * k + 153832) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 113819) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 113819))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_114683 : ∀ k : Nat,
    iterate (262144 * k + 114683) 29 = 177147 * k + 77500 ∧
      177147 * k + 77500 < 262144 * k + 114683 := by
  intro k
  have h1 : C (262144 * k + 114683) = 786432 * k + 344050 := by
    unfold C
    simp [show (262144 * k + 114683) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 344050) = 393216 * k + 172025 := by
    unfold C
    simp [show (786432 * k + 344050) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 172025) = 1179648 * k + 516076 := by
    unfold C
    simp [show (393216 * k + 172025) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 516076) = 589824 * k + 258038 := by
    unfold C
    simp [show (1179648 * k + 516076) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 258038) = 294912 * k + 129019 := by
    unfold C
    simp [show (589824 * k + 258038) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 129019) = 884736 * k + 387058 := by
    unfold C
    simp [show (294912 * k + 129019) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 387058) = 442368 * k + 193529 := by
    unfold C
    simp [show (884736 * k + 387058) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 193529) = 1327104 * k + 580588 := by
    unfold C
    simp [show (442368 * k + 193529) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 580588) = 663552 * k + 290294 := by
    unfold C
    simp [show (1327104 * k + 580588) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 290294) = 331776 * k + 145147 := by
    unfold C
    simp [show (663552 * k + 290294) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 145147) = 995328 * k + 435442 := by
    unfold C
    simp [show (331776 * k + 145147) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 435442) = 497664 * k + 217721 := by
    unfold C
    simp [show (995328 * k + 435442) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 217721) = 1492992 * k + 653164 := by
    unfold C
    simp [show (497664 * k + 217721) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 653164) = 746496 * k + 326582 := by
    unfold C
    simp [show (1492992 * k + 653164) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 326582) = 373248 * k + 163291 := by
    unfold C
    simp [show (746496 * k + 326582) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 163291) = 1119744 * k + 489874 := by
    unfold C
    simp [show (373248 * k + 163291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 489874) = 559872 * k + 244937 := by
    unfold C
    simp [show (1119744 * k + 489874) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 244937) = 1679616 * k + 734812 := by
    unfold C
    simp [show (559872 * k + 244937) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 734812) = 839808 * k + 367406 := by
    unfold C
    simp [show (1679616 * k + 734812) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 367406) = 419904 * k + 183703 := by
    unfold C
    simp [show (839808 * k + 367406) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 183703) = 1259712 * k + 551110 := by
    unfold C
    simp [show (419904 * k + 183703) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 551110) = 629856 * k + 275555 := by
    unfold C
    simp [show (1259712 * k + 551110) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 275555) = 1889568 * k + 826666 := by
    unfold C
    simp [show (629856 * k + 275555) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 826666) = 944784 * k + 413333 := by
    unfold C
    simp [show (1889568 * k + 826666) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 413333) = 2834352 * k + 1240000 := by
    unfold C
    simp [show (944784 * k + 413333) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1240000) = 1417176 * k + 620000 := by
    unfold C
    simp [show (2834352 * k + 1240000) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 620000) = 708588 * k + 310000 := by
    unfold C
    simp [show (1417176 * k + 620000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 310000) = 354294 * k + 155000 := by
    unfold C
    simp [show (708588 * k + 310000) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 155000) = 177147 * k + 77500 := by
    unfold C
    simp [show (354294 * k + 155000) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 114683) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 114683))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_114843 : ∀ k : Nat,
    iterate (262144 * k + 114843) 29 = 177147 * k + 77608 ∧
      177147 * k + 77608 < 262144 * k + 114843 := by
  intro k
  have h1 : C (262144 * k + 114843) = 786432 * k + 344530 := by
    unfold C
    simp [show (262144 * k + 114843) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 344530) = 393216 * k + 172265 := by
    unfold C
    simp [show (786432 * k + 344530) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 172265) = 1179648 * k + 516796 := by
    unfold C
    simp [show (393216 * k + 172265) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 516796) = 589824 * k + 258398 := by
    unfold C
    simp [show (1179648 * k + 516796) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 258398) = 294912 * k + 129199 := by
    unfold C
    simp [show (589824 * k + 258398) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 129199) = 884736 * k + 387598 := by
    unfold C
    simp [show (294912 * k + 129199) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 387598) = 442368 * k + 193799 := by
    unfold C
    simp [show (884736 * k + 387598) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 193799) = 1327104 * k + 581398 := by
    unfold C
    simp [show (442368 * k + 193799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 581398) = 663552 * k + 290699 := by
    unfold C
    simp [show (1327104 * k + 581398) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 290699) = 1990656 * k + 872098 := by
    unfold C
    simp [show (663552 * k + 290699) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 872098) = 995328 * k + 436049 := by
    unfold C
    simp [show (1990656 * k + 872098) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 436049) = 2985984 * k + 1308148 := by
    unfold C
    simp [show (995328 * k + 436049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1308148) = 1492992 * k + 654074 := by
    unfold C
    simp [show (2985984 * k + 1308148) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 654074) = 746496 * k + 327037 := by
    unfold C
    simp [show (1492992 * k + 654074) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 327037) = 2239488 * k + 981112 := by
    unfold C
    simp [show (746496 * k + 327037) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 981112) = 1119744 * k + 490556 := by
    unfold C
    simp [show (2239488 * k + 981112) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 490556) = 559872 * k + 245278 := by
    unfold C
    simp [show (1119744 * k + 490556) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 245278) = 279936 * k + 122639 := by
    unfold C
    simp [show (559872 * k + 245278) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 122639) = 839808 * k + 367918 := by
    unfold C
    simp [show (279936 * k + 122639) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 367918) = 419904 * k + 183959 := by
    unfold C
    simp [show (839808 * k + 367918) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 183959) = 1259712 * k + 551878 := by
    unfold C
    simp [show (419904 * k + 183959) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 551878) = 629856 * k + 275939 := by
    unfold C
    simp [show (1259712 * k + 551878) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 275939) = 1889568 * k + 827818 := by
    unfold C
    simp [show (629856 * k + 275939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 827818) = 944784 * k + 413909 := by
    unfold C
    simp [show (1889568 * k + 827818) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 413909) = 2834352 * k + 1241728 := by
    unfold C
    simp [show (944784 * k + 413909) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1241728) = 1417176 * k + 620864 := by
    unfold C
    simp [show (2834352 * k + 1241728) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 620864) = 708588 * k + 310432 := by
    unfold C
    simp [show (1417176 * k + 620864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 310432) = 354294 * k + 155216 := by
    unfold C
    simp [show (708588 * k + 310432) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 155216) = 177147 * k + 77608 := by
    unfold C
    simp [show (354294 * k + 155216) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 114843) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 114843))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_115431 : ∀ k : Nat,
    iterate (262144 * k + 115431) 29 = 177147 * k + 78005 ∧
      177147 * k + 78005 < 262144 * k + 115431 := by
  intro k
  have h1 : C (262144 * k + 115431) = 786432 * k + 346294 := by
    unfold C
    simp [show (262144 * k + 115431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 346294) = 393216 * k + 173147 := by
    unfold C
    simp [show (786432 * k + 346294) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 173147) = 1179648 * k + 519442 := by
    unfold C
    simp [show (393216 * k + 173147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 519442) = 589824 * k + 259721 := by
    unfold C
    simp [show (1179648 * k + 519442) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 259721) = 1769472 * k + 779164 := by
    unfold C
    simp [show (589824 * k + 259721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 779164) = 884736 * k + 389582 := by
    unfold C
    simp [show (1769472 * k + 779164) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 389582) = 442368 * k + 194791 := by
    unfold C
    simp [show (884736 * k + 389582) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 194791) = 1327104 * k + 584374 := by
    unfold C
    simp [show (442368 * k + 194791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 584374) = 663552 * k + 292187 := by
    unfold C
    simp [show (1327104 * k + 584374) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 292187) = 1990656 * k + 876562 := by
    unfold C
    simp [show (663552 * k + 292187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 876562) = 995328 * k + 438281 := by
    unfold C
    simp [show (1990656 * k + 876562) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 438281) = 2985984 * k + 1314844 := by
    unfold C
    simp [show (995328 * k + 438281) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1314844) = 1492992 * k + 657422 := by
    unfold C
    simp [show (2985984 * k + 1314844) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 657422) = 746496 * k + 328711 := by
    unfold C
    simp [show (1492992 * k + 657422) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 328711) = 2239488 * k + 986134 := by
    unfold C
    simp [show (746496 * k + 328711) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 986134) = 1119744 * k + 493067 := by
    unfold C
    simp [show (2239488 * k + 986134) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 493067) = 3359232 * k + 1479202 := by
    unfold C
    simp [show (1119744 * k + 493067) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1479202) = 1679616 * k + 739601 := by
    unfold C
    simp [show (3359232 * k + 1479202) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 739601) = 5038848 * k + 2218804 := by
    unfold C
    simp [show (1679616 * k + 739601) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2218804) = 2519424 * k + 1109402 := by
    unfold C
    simp [show (5038848 * k + 2218804) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1109402) = 1259712 * k + 554701 := by
    unfold C
    simp [show (2519424 * k + 1109402) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 554701) = 3779136 * k + 1664104 := by
    unfold C
    simp [show (1259712 * k + 554701) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1664104) = 1889568 * k + 832052 := by
    unfold C
    simp [show (3779136 * k + 1664104) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 832052) = 944784 * k + 416026 := by
    unfold C
    simp [show (1889568 * k + 832052) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 416026) = 472392 * k + 208013 := by
    unfold C
    simp [show (944784 * k + 416026) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 208013) = 1417176 * k + 624040 := by
    unfold C
    simp [show (472392 * k + 208013) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 624040) = 708588 * k + 312020 := by
    unfold C
    simp [show (1417176 * k + 624040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 312020) = 354294 * k + 156010 := by
    unfold C
    simp [show (708588 * k + 312020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 156010) = 177147 * k + 78005 := by
    unfold C
    simp [show (354294 * k + 156010) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 115431) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 115431))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_115963 : ∀ k : Nat,
    iterate (262144 * k + 115963) 29 = 177147 * k + 78365 ∧
      177147 * k + 78365 < 262144 * k + 115963 := by
  intro k
  have h1 : C (262144 * k + 115963) = 786432 * k + 347890 := by
    unfold C
    simp [show (262144 * k + 115963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 347890) = 393216 * k + 173945 := by
    unfold C
    simp [show (786432 * k + 347890) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 173945) = 1179648 * k + 521836 := by
    unfold C
    simp [show (393216 * k + 173945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 521836) = 589824 * k + 260918 := by
    unfold C
    simp [show (1179648 * k + 521836) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 260918) = 294912 * k + 130459 := by
    unfold C
    simp [show (589824 * k + 260918) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 130459) = 884736 * k + 391378 := by
    unfold C
    simp [show (294912 * k + 130459) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 391378) = 442368 * k + 195689 := by
    unfold C
    simp [show (884736 * k + 391378) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 195689) = 1327104 * k + 587068 := by
    unfold C
    simp [show (442368 * k + 195689) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 587068) = 663552 * k + 293534 := by
    unfold C
    simp [show (1327104 * k + 587068) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 293534) = 331776 * k + 146767 := by
    unfold C
    simp [show (663552 * k + 293534) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 146767) = 995328 * k + 440302 := by
    unfold C
    simp [show (331776 * k + 146767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 440302) = 497664 * k + 220151 := by
    unfold C
    simp [show (995328 * k + 440302) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 220151) = 1492992 * k + 660454 := by
    unfold C
    simp [show (497664 * k + 220151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 660454) = 746496 * k + 330227 := by
    unfold C
    simp [show (1492992 * k + 660454) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 330227) = 2239488 * k + 990682 := by
    unfold C
    simp [show (746496 * k + 330227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 990682) = 1119744 * k + 495341 := by
    unfold C
    simp [show (2239488 * k + 990682) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 495341) = 3359232 * k + 1486024 := by
    unfold C
    simp [show (1119744 * k + 495341) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1486024) = 1679616 * k + 743012 := by
    unfold C
    simp [show (3359232 * k + 1486024) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 743012) = 839808 * k + 371506 := by
    unfold C
    simp [show (1679616 * k + 743012) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 371506) = 419904 * k + 185753 := by
    unfold C
    simp [show (839808 * k + 371506) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 185753) = 1259712 * k + 557260 := by
    unfold C
    simp [show (419904 * k + 185753) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 557260) = 629856 * k + 278630 := by
    unfold C
    simp [show (1259712 * k + 557260) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 278630) = 314928 * k + 139315 := by
    unfold C
    simp [show (629856 * k + 278630) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 139315) = 944784 * k + 417946 := by
    unfold C
    simp [show (314928 * k + 139315) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 417946) = 472392 * k + 208973 := by
    unfold C
    simp [show (944784 * k + 417946) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 208973) = 1417176 * k + 626920 := by
    unfold C
    simp [show (472392 * k + 208973) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 626920) = 708588 * k + 313460 := by
    unfold C
    simp [show (1417176 * k + 626920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 313460) = 354294 * k + 156730 := by
    unfold C
    simp [show (708588 * k + 313460) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 156730) = 177147 * k + 78365 := by
    unfold C
    simp [show (354294 * k + 156730) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 115963) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 115963))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_116175 : ∀ k : Nat,
    iterate (262144 * k + 116175) 29 = 177147 * k + 78508 ∧
      177147 * k + 78508 < 262144 * k + 116175 := by
  intro k
  have h1 : C (262144 * k + 116175) = 786432 * k + 348526 := by
    unfold C
    simp [show (262144 * k + 116175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 348526) = 393216 * k + 174263 := by
    unfold C
    simp [show (786432 * k + 348526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 174263) = 1179648 * k + 522790 := by
    unfold C
    simp [show (393216 * k + 174263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 522790) = 589824 * k + 261395 := by
    unfold C
    simp [show (1179648 * k + 522790) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 261395) = 1769472 * k + 784186 := by
    unfold C
    simp [show (589824 * k + 261395) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 784186) = 884736 * k + 392093 := by
    unfold C
    simp [show (1769472 * k + 784186) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 392093) = 2654208 * k + 1176280 := by
    unfold C
    simp [show (884736 * k + 392093) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1176280) = 1327104 * k + 588140 := by
    unfold C
    simp [show (2654208 * k + 1176280) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 588140) = 663552 * k + 294070 := by
    unfold C
    simp [show (1327104 * k + 588140) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 294070) = 331776 * k + 147035 := by
    unfold C
    simp [show (663552 * k + 294070) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 147035) = 995328 * k + 441106 := by
    unfold C
    simp [show (331776 * k + 147035) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 441106) = 497664 * k + 220553 := by
    unfold C
    simp [show (995328 * k + 441106) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 220553) = 1492992 * k + 661660 := by
    unfold C
    simp [show (497664 * k + 220553) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 661660) = 746496 * k + 330830 := by
    unfold C
    simp [show (1492992 * k + 661660) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 330830) = 373248 * k + 165415 := by
    unfold C
    simp [show (746496 * k + 330830) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 165415) = 1119744 * k + 496246 := by
    unfold C
    simp [show (373248 * k + 165415) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 496246) = 559872 * k + 248123 := by
    unfold C
    simp [show (1119744 * k + 496246) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 248123) = 1679616 * k + 744370 := by
    unfold C
    simp [show (559872 * k + 248123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 744370) = 839808 * k + 372185 := by
    unfold C
    simp [show (1679616 * k + 744370) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 372185) = 2519424 * k + 1116556 := by
    unfold C
    simp [show (839808 * k + 372185) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1116556) = 1259712 * k + 558278 := by
    unfold C
    simp [show (2519424 * k + 1116556) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 558278) = 629856 * k + 279139 := by
    unfold C
    simp [show (1259712 * k + 558278) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 279139) = 1889568 * k + 837418 := by
    unfold C
    simp [show (629856 * k + 279139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 837418) = 944784 * k + 418709 := by
    unfold C
    simp [show (1889568 * k + 837418) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 418709) = 2834352 * k + 1256128 := by
    unfold C
    simp [show (944784 * k + 418709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1256128) = 1417176 * k + 628064 := by
    unfold C
    simp [show (2834352 * k + 1256128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 628064) = 708588 * k + 314032 := by
    unfold C
    simp [show (1417176 * k + 628064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 314032) = 354294 * k + 157016 := by
    unfold C
    simp [show (708588 * k + 314032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 157016) = 177147 * k + 78508 := by
    unfold C
    simp [show (354294 * k + 157016) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 116175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 116175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_116455 : ∀ k : Nat,
    iterate (262144 * k + 116455) 29 = 177147 * k + 78697 ∧
      177147 * k + 78697 < 262144 * k + 116455 := by
  intro k
  have h1 : C (262144 * k + 116455) = 786432 * k + 349366 := by
    unfold C
    simp [show (262144 * k + 116455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 349366) = 393216 * k + 174683 := by
    unfold C
    simp [show (786432 * k + 349366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 174683) = 1179648 * k + 524050 := by
    unfold C
    simp [show (393216 * k + 174683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 524050) = 589824 * k + 262025 := by
    unfold C
    simp [show (1179648 * k + 524050) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 262025) = 1769472 * k + 786076 := by
    unfold C
    simp [show (589824 * k + 262025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 786076) = 884736 * k + 393038 := by
    unfold C
    simp [show (1769472 * k + 786076) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 393038) = 442368 * k + 196519 := by
    unfold C
    simp [show (884736 * k + 393038) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 196519) = 1327104 * k + 589558 := by
    unfold C
    simp [show (442368 * k + 196519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 589558) = 663552 * k + 294779 := by
    unfold C
    simp [show (1327104 * k + 589558) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 294779) = 1990656 * k + 884338 := by
    unfold C
    simp [show (663552 * k + 294779) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 884338) = 995328 * k + 442169 := by
    unfold C
    simp [show (1990656 * k + 884338) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 442169) = 2985984 * k + 1326508 := by
    unfold C
    simp [show (995328 * k + 442169) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1326508) = 1492992 * k + 663254 := by
    unfold C
    simp [show (2985984 * k + 1326508) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 663254) = 746496 * k + 331627 := by
    unfold C
    simp [show (1492992 * k + 663254) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 331627) = 2239488 * k + 994882 := by
    unfold C
    simp [show (746496 * k + 331627) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 994882) = 1119744 * k + 497441 := by
    unfold C
    simp [show (2239488 * k + 994882) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 497441) = 3359232 * k + 1492324 := by
    unfold C
    simp [show (1119744 * k + 497441) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1492324) = 1679616 * k + 746162 := by
    unfold C
    simp [show (3359232 * k + 1492324) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 746162) = 839808 * k + 373081 := by
    unfold C
    simp [show (1679616 * k + 746162) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 373081) = 2519424 * k + 1119244 := by
    unfold C
    simp [show (839808 * k + 373081) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1119244) = 1259712 * k + 559622 := by
    unfold C
    simp [show (2519424 * k + 1119244) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 559622) = 629856 * k + 279811 := by
    unfold C
    simp [show (1259712 * k + 559622) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 279811) = 1889568 * k + 839434 := by
    unfold C
    simp [show (629856 * k + 279811) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 839434) = 944784 * k + 419717 := by
    unfold C
    simp [show (1889568 * k + 839434) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 419717) = 2834352 * k + 1259152 := by
    unfold C
    simp [show (944784 * k + 419717) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1259152) = 1417176 * k + 629576 := by
    unfold C
    simp [show (2834352 * k + 1259152) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 629576) = 708588 * k + 314788 := by
    unfold C
    simp [show (1417176 * k + 629576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 314788) = 354294 * k + 157394 := by
    unfold C
    simp [show (708588 * k + 314788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 157394) = 177147 * k + 78697 := by
    unfold C
    simp [show (354294 * k + 157394) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 116455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 116455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_116647 : ∀ k : Nat,
    iterate (262144 * k + 116647) 29 = 177147 * k + 78827 ∧
      177147 * k + 78827 < 262144 * k + 116647 := by
  intro k
  have h1 : C (262144 * k + 116647) = 786432 * k + 349942 := by
    unfold C
    simp [show (262144 * k + 116647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 349942) = 393216 * k + 174971 := by
    unfold C
    simp [show (786432 * k + 349942) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 174971) = 1179648 * k + 524914 := by
    unfold C
    simp [show (393216 * k + 174971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 524914) = 589824 * k + 262457 := by
    unfold C
    simp [show (1179648 * k + 524914) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 262457) = 1769472 * k + 787372 := by
    unfold C
    simp [show (589824 * k + 262457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 787372) = 884736 * k + 393686 := by
    unfold C
    simp [show (1769472 * k + 787372) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 393686) = 442368 * k + 196843 := by
    unfold C
    simp [show (884736 * k + 393686) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 196843) = 1327104 * k + 590530 := by
    unfold C
    simp [show (442368 * k + 196843) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 590530) = 663552 * k + 295265 := by
    unfold C
    simp [show (1327104 * k + 590530) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 295265) = 1990656 * k + 885796 := by
    unfold C
    simp [show (663552 * k + 295265) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 885796) = 995328 * k + 442898 := by
    unfold C
    simp [show (1990656 * k + 885796) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 442898) = 497664 * k + 221449 := by
    unfold C
    simp [show (995328 * k + 442898) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 221449) = 1492992 * k + 664348 := by
    unfold C
    simp [show (497664 * k + 221449) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 664348) = 746496 * k + 332174 := by
    unfold C
    simp [show (1492992 * k + 664348) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 332174) = 373248 * k + 166087 := by
    unfold C
    simp [show (746496 * k + 332174) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 166087) = 1119744 * k + 498262 := by
    unfold C
    simp [show (373248 * k + 166087) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 498262) = 559872 * k + 249131 := by
    unfold C
    simp [show (1119744 * k + 498262) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 249131) = 1679616 * k + 747394 := by
    unfold C
    simp [show (559872 * k + 249131) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 747394) = 839808 * k + 373697 := by
    unfold C
    simp [show (1679616 * k + 747394) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 373697) = 2519424 * k + 1121092 := by
    unfold C
    simp [show (839808 * k + 373697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1121092) = 1259712 * k + 560546 := by
    unfold C
    simp [show (2519424 * k + 1121092) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 560546) = 629856 * k + 280273 := by
    unfold C
    simp [show (1259712 * k + 560546) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 280273) = 1889568 * k + 840820 := by
    unfold C
    simp [show (629856 * k + 280273) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 840820) = 944784 * k + 420410 := by
    unfold C
    simp [show (1889568 * k + 840820) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 420410) = 472392 * k + 210205 := by
    unfold C
    simp [show (944784 * k + 420410) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 210205) = 1417176 * k + 630616 := by
    unfold C
    simp [show (472392 * k + 210205) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 630616) = 708588 * k + 315308 := by
    unfold C
    simp [show (1417176 * k + 630616) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 315308) = 354294 * k + 157654 := by
    unfold C
    simp [show (708588 * k + 315308) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 157654) = 177147 * k + 78827 := by
    unfold C
    simp [show (354294 * k + 157654) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 116647) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 116647))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_117415 : ∀ k : Nat,
    iterate (262144 * k + 117415) 29 = 177147 * k + 79346 ∧
      177147 * k + 79346 < 262144 * k + 117415 := by
  intro k
  have h1 : C (262144 * k + 117415) = 786432 * k + 352246 := by
    unfold C
    simp [show (262144 * k + 117415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 352246) = 393216 * k + 176123 := by
    unfold C
    simp [show (786432 * k + 352246) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 176123) = 1179648 * k + 528370 := by
    unfold C
    simp [show (393216 * k + 176123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 528370) = 589824 * k + 264185 := by
    unfold C
    simp [show (1179648 * k + 528370) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 264185) = 1769472 * k + 792556 := by
    unfold C
    simp [show (589824 * k + 264185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 792556) = 884736 * k + 396278 := by
    unfold C
    simp [show (1769472 * k + 792556) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 396278) = 442368 * k + 198139 := by
    unfold C
    simp [show (884736 * k + 396278) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 198139) = 1327104 * k + 594418 := by
    unfold C
    simp [show (442368 * k + 198139) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 594418) = 663552 * k + 297209 := by
    unfold C
    simp [show (1327104 * k + 594418) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 297209) = 1990656 * k + 891628 := by
    unfold C
    simp [show (663552 * k + 297209) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 891628) = 995328 * k + 445814 := by
    unfold C
    simp [show (1990656 * k + 891628) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 445814) = 497664 * k + 222907 := by
    unfold C
    simp [show (995328 * k + 445814) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 222907) = 1492992 * k + 668722 := by
    unfold C
    simp [show (497664 * k + 222907) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 668722) = 746496 * k + 334361 := by
    unfold C
    simp [show (1492992 * k + 668722) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 334361) = 2239488 * k + 1003084 := by
    unfold C
    simp [show (746496 * k + 334361) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1003084) = 1119744 * k + 501542 := by
    unfold C
    simp [show (2239488 * k + 1003084) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 501542) = 559872 * k + 250771 := by
    unfold C
    simp [show (1119744 * k + 501542) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 250771) = 1679616 * k + 752314 := by
    unfold C
    simp [show (559872 * k + 250771) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 752314) = 839808 * k + 376157 := by
    unfold C
    simp [show (1679616 * k + 752314) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 376157) = 2519424 * k + 1128472 := by
    unfold C
    simp [show (839808 * k + 376157) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1128472) = 1259712 * k + 564236 := by
    unfold C
    simp [show (2519424 * k + 1128472) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 564236) = 629856 * k + 282118 := by
    unfold C
    simp [show (1259712 * k + 564236) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 282118) = 314928 * k + 141059 := by
    unfold C
    simp [show (629856 * k + 282118) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 141059) = 944784 * k + 423178 := by
    unfold C
    simp [show (314928 * k + 141059) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 423178) = 472392 * k + 211589 := by
    unfold C
    simp [show (944784 * k + 423178) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 211589) = 1417176 * k + 634768 := by
    unfold C
    simp [show (472392 * k + 211589) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 634768) = 708588 * k + 317384 := by
    unfold C
    simp [show (1417176 * k + 634768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 317384) = 354294 * k + 158692 := by
    unfold C
    simp [show (708588 * k + 317384) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 158692) = 177147 * k + 79346 := by
    unfold C
    simp [show (354294 * k + 158692) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 117415) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 117415))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_117455 : ∀ k : Nat,
    iterate (262144 * k + 117455) 29 = 177147 * k + 79373 ∧
      177147 * k + 79373 < 262144 * k + 117455 := by
  intro k
  have h1 : C (262144 * k + 117455) = 786432 * k + 352366 := by
    unfold C
    simp [show (262144 * k + 117455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 352366) = 393216 * k + 176183 := by
    unfold C
    simp [show (786432 * k + 352366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 176183) = 1179648 * k + 528550 := by
    unfold C
    simp [show (393216 * k + 176183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 528550) = 589824 * k + 264275 := by
    unfold C
    simp [show (1179648 * k + 528550) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 264275) = 1769472 * k + 792826 := by
    unfold C
    simp [show (589824 * k + 264275) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 792826) = 884736 * k + 396413 := by
    unfold C
    simp [show (1769472 * k + 792826) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 396413) = 2654208 * k + 1189240 := by
    unfold C
    simp [show (884736 * k + 396413) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1189240) = 1327104 * k + 594620 := by
    unfold C
    simp [show (2654208 * k + 1189240) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 594620) = 663552 * k + 297310 := by
    unfold C
    simp [show (1327104 * k + 594620) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 297310) = 331776 * k + 148655 := by
    unfold C
    simp [show (663552 * k + 297310) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 148655) = 995328 * k + 445966 := by
    unfold C
    simp [show (331776 * k + 148655) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 445966) = 497664 * k + 222983 := by
    unfold C
    simp [show (995328 * k + 445966) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 222983) = 1492992 * k + 668950 := by
    unfold C
    simp [show (497664 * k + 222983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 668950) = 746496 * k + 334475 := by
    unfold C
    simp [show (1492992 * k + 668950) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 334475) = 2239488 * k + 1003426 := by
    unfold C
    simp [show (746496 * k + 334475) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1003426) = 1119744 * k + 501713 := by
    unfold C
    simp [show (2239488 * k + 1003426) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 501713) = 3359232 * k + 1505140 := by
    unfold C
    simp [show (1119744 * k + 501713) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1505140) = 1679616 * k + 752570 := by
    unfold C
    simp [show (3359232 * k + 1505140) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 752570) = 839808 * k + 376285 := by
    unfold C
    simp [show (1679616 * k + 752570) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 376285) = 2519424 * k + 1128856 := by
    unfold C
    simp [show (839808 * k + 376285) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1128856) = 1259712 * k + 564428 := by
    unfold C
    simp [show (2519424 * k + 1128856) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 564428) = 629856 * k + 282214 := by
    unfold C
    simp [show (1259712 * k + 564428) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 282214) = 314928 * k + 141107 := by
    unfold C
    simp [show (629856 * k + 282214) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 141107) = 944784 * k + 423322 := by
    unfold C
    simp [show (314928 * k + 141107) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 423322) = 472392 * k + 211661 := by
    unfold C
    simp [show (944784 * k + 423322) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 211661) = 1417176 * k + 634984 := by
    unfold C
    simp [show (472392 * k + 211661) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 634984) = 708588 * k + 317492 := by
    unfold C
    simp [show (1417176 * k + 634984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 317492) = 354294 * k + 158746 := by
    unfold C
    simp [show (708588 * k + 317492) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 158746) = 177147 * k + 79373 := by
    unfold C
    simp [show (354294 * k + 158746) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 117455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 117455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_117531 : ∀ k : Nat,
    iterate (262144 * k + 117531) 29 = 177147 * k + 79424 ∧
      177147 * k + 79424 < 262144 * k + 117531 := by
  intro k
  have h1 : C (262144 * k + 117531) = 786432 * k + 352594 := by
    unfold C
    simp [show (262144 * k + 117531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 352594) = 393216 * k + 176297 := by
    unfold C
    simp [show (786432 * k + 352594) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 176297) = 1179648 * k + 528892 := by
    unfold C
    simp [show (393216 * k + 176297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 528892) = 589824 * k + 264446 := by
    unfold C
    simp [show (1179648 * k + 528892) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 264446) = 294912 * k + 132223 := by
    unfold C
    simp [show (589824 * k + 264446) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 132223) = 884736 * k + 396670 := by
    unfold C
    simp [show (294912 * k + 132223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 396670) = 442368 * k + 198335 := by
    unfold C
    simp [show (884736 * k + 396670) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 198335) = 1327104 * k + 595006 := by
    unfold C
    simp [show (442368 * k + 198335) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 595006) = 663552 * k + 297503 := by
    unfold C
    simp [show (1327104 * k + 595006) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 297503) = 1990656 * k + 892510 := by
    unfold C
    simp [show (663552 * k + 297503) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 892510) = 995328 * k + 446255 := by
    unfold C
    simp [show (1990656 * k + 892510) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 446255) = 2985984 * k + 1338766 := by
    unfold C
    simp [show (995328 * k + 446255) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1338766) = 1492992 * k + 669383 := by
    unfold C
    simp [show (2985984 * k + 1338766) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 669383) = 4478976 * k + 2008150 := by
    unfold C
    simp [show (1492992 * k + 669383) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2008150) = 2239488 * k + 1004075 := by
    unfold C
    simp [show (4478976 * k + 2008150) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1004075) = 6718464 * k + 3012226 := by
    unfold C
    simp [show (2239488 * k + 1004075) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3012226) = 3359232 * k + 1506113 := by
    unfold C
    simp [show (6718464 * k + 3012226) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1506113) = 10077696 * k + 4518340 := by
    unfold C
    simp [show (3359232 * k + 1506113) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4518340) = 5038848 * k + 2259170 := by
    unfold C
    simp [show (10077696 * k + 4518340) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2259170) = 2519424 * k + 1129585 := by
    unfold C
    simp [show (5038848 * k + 2259170) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1129585) = 7558272 * k + 3388756 := by
    unfold C
    simp [show (2519424 * k + 1129585) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3388756) = 3779136 * k + 1694378 := by
    unfold C
    simp [show (7558272 * k + 3388756) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1694378) = 1889568 * k + 847189 := by
    unfold C
    simp [show (3779136 * k + 1694378) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 847189) = 5668704 * k + 2541568 := by
    unfold C
    simp [show (1889568 * k + 847189) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2541568) = 2834352 * k + 1270784 := by
    unfold C
    simp [show (5668704 * k + 2541568) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1270784) = 1417176 * k + 635392 := by
    unfold C
    simp [show (2834352 * k + 1270784) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 635392) = 708588 * k + 317696 := by
    unfold C
    simp [show (1417176 * k + 635392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 317696) = 354294 * k + 158848 := by
    unfold C
    simp [show (708588 * k + 317696) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 158848) = 177147 * k + 79424 := by
    unfold C
    simp [show (354294 * k + 158848) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 117531) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 117531))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_117535 : ∀ k : Nat,
    iterate (262144 * k + 117535) 29 = 177147 * k + 79427 ∧
      177147 * k + 79427 < 262144 * k + 117535 := by
  intro k
  have h1 : C (262144 * k + 117535) = 786432 * k + 352606 := by
    unfold C
    simp [show (262144 * k + 117535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 352606) = 393216 * k + 176303 := by
    unfold C
    simp [show (786432 * k + 352606) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 176303) = 1179648 * k + 528910 := by
    unfold C
    simp [show (393216 * k + 176303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 528910) = 589824 * k + 264455 := by
    unfold C
    simp [show (1179648 * k + 528910) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 264455) = 1769472 * k + 793366 := by
    unfold C
    simp [show (589824 * k + 264455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 793366) = 884736 * k + 396683 := by
    unfold C
    simp [show (1769472 * k + 793366) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 396683) = 2654208 * k + 1190050 := by
    unfold C
    simp [show (884736 * k + 396683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1190050) = 1327104 * k + 595025 := by
    unfold C
    simp [show (2654208 * k + 1190050) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 595025) = 3981312 * k + 1785076 := by
    unfold C
    simp [show (1327104 * k + 595025) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1785076) = 1990656 * k + 892538 := by
    unfold C
    simp [show (3981312 * k + 1785076) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 892538) = 995328 * k + 446269 := by
    unfold C
    simp [show (1990656 * k + 892538) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 446269) = 2985984 * k + 1338808 := by
    unfold C
    simp [show (995328 * k + 446269) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1338808) = 1492992 * k + 669404 := by
    unfold C
    simp [show (2985984 * k + 1338808) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 669404) = 746496 * k + 334702 := by
    unfold C
    simp [show (1492992 * k + 669404) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 334702) = 373248 * k + 167351 := by
    unfold C
    simp [show (746496 * k + 334702) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 167351) = 1119744 * k + 502054 := by
    unfold C
    simp [show (373248 * k + 167351) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 502054) = 559872 * k + 251027 := by
    unfold C
    simp [show (1119744 * k + 502054) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 251027) = 1679616 * k + 753082 := by
    unfold C
    simp [show (559872 * k + 251027) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 753082) = 839808 * k + 376541 := by
    unfold C
    simp [show (1679616 * k + 753082) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 376541) = 2519424 * k + 1129624 := by
    unfold C
    simp [show (839808 * k + 376541) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1129624) = 1259712 * k + 564812 := by
    unfold C
    simp [show (2519424 * k + 1129624) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 564812) = 629856 * k + 282406 := by
    unfold C
    simp [show (1259712 * k + 564812) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 282406) = 314928 * k + 141203 := by
    unfold C
    simp [show (629856 * k + 282406) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 141203) = 944784 * k + 423610 := by
    unfold C
    simp [show (314928 * k + 141203) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 423610) = 472392 * k + 211805 := by
    unfold C
    simp [show (944784 * k + 423610) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 211805) = 1417176 * k + 635416 := by
    unfold C
    simp [show (472392 * k + 211805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 635416) = 708588 * k + 317708 := by
    unfold C
    simp [show (1417176 * k + 635416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 317708) = 354294 * k + 158854 := by
    unfold C
    simp [show (708588 * k + 317708) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 158854) = 177147 * k + 79427 := by
    unfold C
    simp [show (354294 * k + 158854) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 117535) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 117535))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_118439 : ∀ k : Nat,
    iterate (262144 * k + 118439) 29 = 177147 * k + 80038 ∧
      177147 * k + 80038 < 262144 * k + 118439 := by
  intro k
  have h1 : C (262144 * k + 118439) = 786432 * k + 355318 := by
    unfold C
    simp [show (262144 * k + 118439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 355318) = 393216 * k + 177659 := by
    unfold C
    simp [show (786432 * k + 355318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 177659) = 1179648 * k + 532978 := by
    unfold C
    simp [show (393216 * k + 177659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 532978) = 589824 * k + 266489 := by
    unfold C
    simp [show (1179648 * k + 532978) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 266489) = 1769472 * k + 799468 := by
    unfold C
    simp [show (589824 * k + 266489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 799468) = 884736 * k + 399734 := by
    unfold C
    simp [show (1769472 * k + 799468) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 399734) = 442368 * k + 199867 := by
    unfold C
    simp [show (884736 * k + 399734) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 199867) = 1327104 * k + 599602 := by
    unfold C
    simp [show (442368 * k + 199867) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 599602) = 663552 * k + 299801 := by
    unfold C
    simp [show (1327104 * k + 599602) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 299801) = 1990656 * k + 899404 := by
    unfold C
    simp [show (663552 * k + 299801) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 899404) = 995328 * k + 449702 := by
    unfold C
    simp [show (1990656 * k + 899404) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 449702) = 497664 * k + 224851 := by
    unfold C
    simp [show (995328 * k + 449702) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 224851) = 1492992 * k + 674554 := by
    unfold C
    simp [show (497664 * k + 224851) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 674554) = 746496 * k + 337277 := by
    unfold C
    simp [show (1492992 * k + 674554) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 337277) = 2239488 * k + 1011832 := by
    unfold C
    simp [show (746496 * k + 337277) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1011832) = 1119744 * k + 505916 := by
    unfold C
    simp [show (2239488 * k + 1011832) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 505916) = 559872 * k + 252958 := by
    unfold C
    simp [show (1119744 * k + 505916) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 252958) = 279936 * k + 126479 := by
    unfold C
    simp [show (559872 * k + 252958) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 126479) = 839808 * k + 379438 := by
    unfold C
    simp [show (279936 * k + 126479) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 379438) = 419904 * k + 189719 := by
    unfold C
    simp [show (839808 * k + 379438) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 189719) = 1259712 * k + 569158 := by
    unfold C
    simp [show (419904 * k + 189719) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 569158) = 629856 * k + 284579 := by
    unfold C
    simp [show (1259712 * k + 569158) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 284579) = 1889568 * k + 853738 := by
    unfold C
    simp [show (629856 * k + 284579) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 853738) = 944784 * k + 426869 := by
    unfold C
    simp [show (1889568 * k + 853738) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 426869) = 2834352 * k + 1280608 := by
    unfold C
    simp [show (944784 * k + 426869) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1280608) = 1417176 * k + 640304 := by
    unfold C
    simp [show (2834352 * k + 1280608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 640304) = 708588 * k + 320152 := by
    unfold C
    simp [show (1417176 * k + 640304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 320152) = 354294 * k + 160076 := by
    unfold C
    simp [show (708588 * k + 320152) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160076) = 177147 * k + 80038 := by
    unfold C
    simp [show (354294 * k + 160076) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 118439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 118439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_118555 : ∀ k : Nat,
    iterate (262144 * k + 118555) 29 = 177147 * k + 80116 ∧
      177147 * k + 80116 < 262144 * k + 118555 := by
  intro k
  have h1 : C (262144 * k + 118555) = 786432 * k + 355666 := by
    unfold C
    simp [show (262144 * k + 118555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 355666) = 393216 * k + 177833 := by
    unfold C
    simp [show (786432 * k + 355666) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 177833) = 1179648 * k + 533500 := by
    unfold C
    simp [show (393216 * k + 177833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 533500) = 589824 * k + 266750 := by
    unfold C
    simp [show (1179648 * k + 533500) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 266750) = 294912 * k + 133375 := by
    unfold C
    simp [show (589824 * k + 266750) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 133375) = 884736 * k + 400126 := by
    unfold C
    simp [show (294912 * k + 133375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 400126) = 442368 * k + 200063 := by
    unfold C
    simp [show (884736 * k + 400126) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 200063) = 1327104 * k + 600190 := by
    unfold C
    simp [show (442368 * k + 200063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 600190) = 663552 * k + 300095 := by
    unfold C
    simp [show (1327104 * k + 600190) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 300095) = 1990656 * k + 900286 := by
    unfold C
    simp [show (663552 * k + 300095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 900286) = 995328 * k + 450143 := by
    unfold C
    simp [show (1990656 * k + 900286) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 450143) = 2985984 * k + 1350430 := by
    unfold C
    simp [show (995328 * k + 450143) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1350430) = 1492992 * k + 675215 := by
    unfold C
    simp [show (2985984 * k + 1350430) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 675215) = 4478976 * k + 2025646 := by
    unfold C
    simp [show (1492992 * k + 675215) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2025646) = 2239488 * k + 1012823 := by
    unfold C
    simp [show (4478976 * k + 2025646) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1012823) = 6718464 * k + 3038470 := by
    unfold C
    simp [show (2239488 * k + 1012823) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3038470) = 3359232 * k + 1519235 := by
    unfold C
    simp [show (6718464 * k + 3038470) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1519235) = 10077696 * k + 4557706 := by
    unfold C
    simp [show (3359232 * k + 1519235) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4557706) = 5038848 * k + 2278853 := by
    unfold C
    simp [show (10077696 * k + 4557706) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2278853) = 15116544 * k + 6836560 := by
    unfold C
    simp [show (5038848 * k + 2278853) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 6836560) = 7558272 * k + 3418280 := by
    unfold C
    simp [show (15116544 * k + 6836560) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3418280) = 3779136 * k + 1709140 := by
    unfold C
    simp [show (7558272 * k + 3418280) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1709140) = 1889568 * k + 854570 := by
    unfold C
    simp [show (3779136 * k + 1709140) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 854570) = 944784 * k + 427285 := by
    unfold C
    simp [show (1889568 * k + 854570) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 427285) = 2834352 * k + 1281856 := by
    unfold C
    simp [show (944784 * k + 427285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1281856) = 1417176 * k + 640928 := by
    unfold C
    simp [show (2834352 * k + 1281856) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 640928) = 708588 * k + 320464 := by
    unfold C
    simp [show (1417176 * k + 640928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 320464) = 354294 * k + 160232 := by
    unfold C
    simp [show (708588 * k + 320464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160232) = 177147 * k + 80116 := by
    unfold C
    simp [show (354294 * k + 160232) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 118555) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 118555))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_118559 : ∀ k : Nat,
    iterate (262144 * k + 118559) 29 = 177147 * k + 80119 ∧
      177147 * k + 80119 < 262144 * k + 118559 := by
  intro k
  have h1 : C (262144 * k + 118559) = 786432 * k + 355678 := by
    unfold C
    simp [show (262144 * k + 118559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 355678) = 393216 * k + 177839 := by
    unfold C
    simp [show (786432 * k + 355678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 177839) = 1179648 * k + 533518 := by
    unfold C
    simp [show (393216 * k + 177839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 533518) = 589824 * k + 266759 := by
    unfold C
    simp [show (1179648 * k + 533518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 266759) = 1769472 * k + 800278 := by
    unfold C
    simp [show (589824 * k + 266759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 800278) = 884736 * k + 400139 := by
    unfold C
    simp [show (1769472 * k + 800278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 400139) = 2654208 * k + 1200418 := by
    unfold C
    simp [show (884736 * k + 400139) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1200418) = 1327104 * k + 600209 := by
    unfold C
    simp [show (2654208 * k + 1200418) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 600209) = 3981312 * k + 1800628 := by
    unfold C
    simp [show (1327104 * k + 600209) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1800628) = 1990656 * k + 900314 := by
    unfold C
    simp [show (3981312 * k + 1800628) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 900314) = 995328 * k + 450157 := by
    unfold C
    simp [show (1990656 * k + 900314) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 450157) = 2985984 * k + 1350472 := by
    unfold C
    simp [show (995328 * k + 450157) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1350472) = 1492992 * k + 675236 := by
    unfold C
    simp [show (2985984 * k + 1350472) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 675236) = 746496 * k + 337618 := by
    unfold C
    simp [show (1492992 * k + 675236) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 337618) = 373248 * k + 168809 := by
    unfold C
    simp [show (746496 * k + 337618) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 168809) = 1119744 * k + 506428 := by
    unfold C
    simp [show (373248 * k + 168809) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 506428) = 559872 * k + 253214 := by
    unfold C
    simp [show (1119744 * k + 506428) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 253214) = 279936 * k + 126607 := by
    unfold C
    simp [show (559872 * k + 253214) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 126607) = 839808 * k + 379822 := by
    unfold C
    simp [show (279936 * k + 126607) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 379822) = 419904 * k + 189911 := by
    unfold C
    simp [show (839808 * k + 379822) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 189911) = 1259712 * k + 569734 := by
    unfold C
    simp [show (419904 * k + 189911) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 569734) = 629856 * k + 284867 := by
    unfold C
    simp [show (1259712 * k + 569734) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 284867) = 1889568 * k + 854602 := by
    unfold C
    simp [show (629856 * k + 284867) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 854602) = 944784 * k + 427301 := by
    unfold C
    simp [show (1889568 * k + 854602) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 427301) = 2834352 * k + 1281904 := by
    unfold C
    simp [show (944784 * k + 427301) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1281904) = 1417176 * k + 640952 := by
    unfold C
    simp [show (2834352 * k + 1281904) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 640952) = 708588 * k + 320476 := by
    unfold C
    simp [show (1417176 * k + 640952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 320476) = 354294 * k + 160238 := by
    unfold C
    simp [show (708588 * k + 320476) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160238) = 177147 * k + 80119 := by
    unfold C
    simp [show (354294 * k + 160238) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 118559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 118559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_118639 : ∀ k : Nat,
    iterate (262144 * k + 118639) 29 = 177147 * k + 80173 ∧
      177147 * k + 80173 < 262144 * k + 118639 := by
  intro k
  have h1 : C (262144 * k + 118639) = 786432 * k + 355918 := by
    unfold C
    simp [show (262144 * k + 118639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 355918) = 393216 * k + 177959 := by
    unfold C
    simp [show (786432 * k + 355918) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 177959) = 1179648 * k + 533878 := by
    unfold C
    simp [show (393216 * k + 177959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 533878) = 589824 * k + 266939 := by
    unfold C
    simp [show (1179648 * k + 533878) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 266939) = 1769472 * k + 800818 := by
    unfold C
    simp [show (589824 * k + 266939) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 800818) = 884736 * k + 400409 := by
    unfold C
    simp [show (1769472 * k + 800818) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 400409) = 2654208 * k + 1201228 := by
    unfold C
    simp [show (884736 * k + 400409) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1201228) = 1327104 * k + 600614 := by
    unfold C
    simp [show (2654208 * k + 1201228) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 600614) = 663552 * k + 300307 := by
    unfold C
    simp [show (1327104 * k + 600614) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 300307) = 1990656 * k + 900922 := by
    unfold C
    simp [show (663552 * k + 300307) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 900922) = 995328 * k + 450461 := by
    unfold C
    simp [show (1990656 * k + 900922) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 450461) = 2985984 * k + 1351384 := by
    unfold C
    simp [show (995328 * k + 450461) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1351384) = 1492992 * k + 675692 := by
    unfold C
    simp [show (2985984 * k + 1351384) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 675692) = 746496 * k + 337846 := by
    unfold C
    simp [show (1492992 * k + 675692) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 337846) = 373248 * k + 168923 := by
    unfold C
    simp [show (746496 * k + 337846) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 168923) = 1119744 * k + 506770 := by
    unfold C
    simp [show (373248 * k + 168923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 506770) = 559872 * k + 253385 := by
    unfold C
    simp [show (1119744 * k + 506770) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 253385) = 1679616 * k + 760156 := by
    unfold C
    simp [show (559872 * k + 253385) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 760156) = 839808 * k + 380078 := by
    unfold C
    simp [show (1679616 * k + 760156) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 380078) = 419904 * k + 190039 := by
    unfold C
    simp [show (839808 * k + 380078) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 190039) = 1259712 * k + 570118 := by
    unfold C
    simp [show (419904 * k + 190039) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 570118) = 629856 * k + 285059 := by
    unfold C
    simp [show (1259712 * k + 570118) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 285059) = 1889568 * k + 855178 := by
    unfold C
    simp [show (629856 * k + 285059) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 855178) = 944784 * k + 427589 := by
    unfold C
    simp [show (1889568 * k + 855178) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 427589) = 2834352 * k + 1282768 := by
    unfold C
    simp [show (944784 * k + 427589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1282768) = 1417176 * k + 641384 := by
    unfold C
    simp [show (2834352 * k + 1282768) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 641384) = 708588 * k + 320692 := by
    unfold C
    simp [show (1417176 * k + 641384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 320692) = 354294 * k + 160346 := by
    unfold C
    simp [show (708588 * k + 320692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160346) = 177147 * k + 80173 := by
    unfold C
    simp [show (354294 * k + 160346) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 118639) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 118639))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_118991 : ∀ k : Nat,
    iterate (262144 * k + 118991) 29 = 177147 * k + 80411 ∧
      177147 * k + 80411 < 262144 * k + 118991 := by
  intro k
  have h1 : C (262144 * k + 118991) = 786432 * k + 356974 := by
    unfold C
    simp [show (262144 * k + 118991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 356974) = 393216 * k + 178487 := by
    unfold C
    simp [show (786432 * k + 356974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 178487) = 1179648 * k + 535462 := by
    unfold C
    simp [show (393216 * k + 178487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 535462) = 589824 * k + 267731 := by
    unfold C
    simp [show (1179648 * k + 535462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 267731) = 1769472 * k + 803194 := by
    unfold C
    simp [show (589824 * k + 267731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 803194) = 884736 * k + 401597 := by
    unfold C
    simp [show (1769472 * k + 803194) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 401597) = 2654208 * k + 1204792 := by
    unfold C
    simp [show (884736 * k + 401597) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1204792) = 1327104 * k + 602396 := by
    unfold C
    simp [show (2654208 * k + 1204792) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 602396) = 663552 * k + 301198 := by
    unfold C
    simp [show (1327104 * k + 602396) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 301198) = 331776 * k + 150599 := by
    unfold C
    simp [show (663552 * k + 301198) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 150599) = 995328 * k + 451798 := by
    unfold C
    simp [show (331776 * k + 150599) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 451798) = 497664 * k + 225899 := by
    unfold C
    simp [show (995328 * k + 451798) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 225899) = 1492992 * k + 677698 := by
    unfold C
    simp [show (497664 * k + 225899) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 677698) = 746496 * k + 338849 := by
    unfold C
    simp [show (1492992 * k + 677698) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 338849) = 2239488 * k + 1016548 := by
    unfold C
    simp [show (746496 * k + 338849) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1016548) = 1119744 * k + 508274 := by
    unfold C
    simp [show (2239488 * k + 1016548) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 508274) = 559872 * k + 254137 := by
    unfold C
    simp [show (1119744 * k + 508274) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 254137) = 1679616 * k + 762412 := by
    unfold C
    simp [show (559872 * k + 254137) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 762412) = 839808 * k + 381206 := by
    unfold C
    simp [show (1679616 * k + 762412) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 381206) = 419904 * k + 190603 := by
    unfold C
    simp [show (839808 * k + 381206) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 190603) = 1259712 * k + 571810 := by
    unfold C
    simp [show (419904 * k + 190603) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 571810) = 629856 * k + 285905 := by
    unfold C
    simp [show (1259712 * k + 571810) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 285905) = 1889568 * k + 857716 := by
    unfold C
    simp [show (629856 * k + 285905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 857716) = 944784 * k + 428858 := by
    unfold C
    simp [show (1889568 * k + 857716) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 428858) = 472392 * k + 214429 := by
    unfold C
    simp [show (944784 * k + 428858) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 214429) = 1417176 * k + 643288 := by
    unfold C
    simp [show (472392 * k + 214429) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 643288) = 708588 * k + 321644 := by
    unfold C
    simp [show (1417176 * k + 643288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 321644) = 354294 * k + 160822 := by
    unfold C
    simp [show (708588 * k + 321644) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160822) = 177147 * k + 80411 := by
    unfold C
    simp [show (354294 * k + 160822) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 118991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 118991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_119039 : ∀ k : Nat,
    iterate (262144 * k + 119039) 29 = 177147 * k + 80443 ∧
      177147 * k + 80443 < 262144 * k + 119039 := by
  intro k
  have h1 : C (262144 * k + 119039) = 786432 * k + 357118 := by
    unfold C
    simp [show (262144 * k + 119039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 357118) = 393216 * k + 178559 := by
    unfold C
    simp [show (786432 * k + 357118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 178559) = 1179648 * k + 535678 := by
    unfold C
    simp [show (393216 * k + 178559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 535678) = 589824 * k + 267839 := by
    unfold C
    simp [show (1179648 * k + 535678) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 267839) = 1769472 * k + 803518 := by
    unfold C
    simp [show (589824 * k + 267839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 803518) = 884736 * k + 401759 := by
    unfold C
    simp [show (1769472 * k + 803518) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 401759) = 2654208 * k + 1205278 := by
    unfold C
    simp [show (884736 * k + 401759) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1205278) = 1327104 * k + 602639 := by
    unfold C
    simp [show (2654208 * k + 1205278) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 602639) = 3981312 * k + 1807918 := by
    unfold C
    simp [show (1327104 * k + 602639) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1807918) = 1990656 * k + 903959 := by
    unfold C
    simp [show (3981312 * k + 1807918) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 903959) = 5971968 * k + 2711878 := by
    unfold C
    simp [show (1990656 * k + 903959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2711878) = 2985984 * k + 1355939 := by
    unfold C
    simp [show (5971968 * k + 2711878) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1355939) = 8957952 * k + 4067818 := by
    unfold C
    simp [show (2985984 * k + 1355939) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4067818) = 4478976 * k + 2033909 := by
    unfold C
    simp [show (8957952 * k + 4067818) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2033909) = 13436928 * k + 6101728 := by
    unfold C
    simp [show (4478976 * k + 2033909) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 6101728) = 6718464 * k + 3050864 := by
    unfold C
    simp [show (13436928 * k + 6101728) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 3050864) = 3359232 * k + 1525432 := by
    unfold C
    simp [show (6718464 * k + 3050864) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1525432) = 1679616 * k + 762716 := by
    unfold C
    simp [show (3359232 * k + 1525432) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 762716) = 839808 * k + 381358 := by
    unfold C
    simp [show (1679616 * k + 762716) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 381358) = 419904 * k + 190679 := by
    unfold C
    simp [show (839808 * k + 381358) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 190679) = 1259712 * k + 572038 := by
    unfold C
    simp [show (419904 * k + 190679) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 572038) = 629856 * k + 286019 := by
    unfold C
    simp [show (1259712 * k + 572038) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 286019) = 1889568 * k + 858058 := by
    unfold C
    simp [show (629856 * k + 286019) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 858058) = 944784 * k + 429029 := by
    unfold C
    simp [show (1889568 * k + 858058) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 429029) = 2834352 * k + 1287088 := by
    unfold C
    simp [show (944784 * k + 429029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1287088) = 1417176 * k + 643544 := by
    unfold C
    simp [show (2834352 * k + 1287088) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 643544) = 708588 * k + 321772 := by
    unfold C
    simp [show (1417176 * k + 643544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 321772) = 354294 * k + 160886 := by
    unfold C
    simp [show (708588 * k + 321772) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160886) = 177147 * k + 80443 := by
    unfold C
    simp [show (354294 * k + 160886) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_119111 : ∀ k : Nat,
    iterate (262144 * k + 119111) 29 = 177147 * k + 80492 ∧
      177147 * k + 80492 < 262144 * k + 119111 := by
  intro k
  have h1 : C (262144 * k + 119111) = 786432 * k + 357334 := by
    unfold C
    simp [show (262144 * k + 119111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 357334) = 393216 * k + 178667 := by
    unfold C
    simp [show (786432 * k + 357334) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 178667) = 1179648 * k + 536002 := by
    unfold C
    simp [show (393216 * k + 178667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 536002) = 589824 * k + 268001 := by
    unfold C
    simp [show (1179648 * k + 536002) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 268001) = 1769472 * k + 804004 := by
    unfold C
    simp [show (589824 * k + 268001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 804004) = 884736 * k + 402002 := by
    unfold C
    simp [show (1769472 * k + 804004) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 402002) = 442368 * k + 201001 := by
    unfold C
    simp [show (884736 * k + 402002) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 201001) = 1327104 * k + 603004 := by
    unfold C
    simp [show (442368 * k + 201001) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 603004) = 663552 * k + 301502 := by
    unfold C
    simp [show (1327104 * k + 603004) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 301502) = 331776 * k + 150751 := by
    unfold C
    simp [show (663552 * k + 301502) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 150751) = 995328 * k + 452254 := by
    unfold C
    simp [show (331776 * k + 150751) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 452254) = 497664 * k + 226127 := by
    unfold C
    simp [show (995328 * k + 452254) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 226127) = 1492992 * k + 678382 := by
    unfold C
    simp [show (497664 * k + 226127) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 678382) = 746496 * k + 339191 := by
    unfold C
    simp [show (1492992 * k + 678382) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 339191) = 2239488 * k + 1017574 := by
    unfold C
    simp [show (746496 * k + 339191) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1017574) = 1119744 * k + 508787 := by
    unfold C
    simp [show (2239488 * k + 1017574) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 508787) = 3359232 * k + 1526362 := by
    unfold C
    simp [show (1119744 * k + 508787) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1526362) = 1679616 * k + 763181 := by
    unfold C
    simp [show (3359232 * k + 1526362) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 763181) = 5038848 * k + 2289544 := by
    unfold C
    simp [show (1679616 * k + 763181) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2289544) = 2519424 * k + 1144772 := by
    unfold C
    simp [show (5038848 * k + 2289544) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1144772) = 1259712 * k + 572386 := by
    unfold C
    simp [show (2519424 * k + 1144772) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 572386) = 629856 * k + 286193 := by
    unfold C
    simp [show (1259712 * k + 572386) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 286193) = 1889568 * k + 858580 := by
    unfold C
    simp [show (629856 * k + 286193) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 858580) = 944784 * k + 429290 := by
    unfold C
    simp [show (1889568 * k + 858580) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 429290) = 472392 * k + 214645 := by
    unfold C
    simp [show (944784 * k + 429290) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 214645) = 1417176 * k + 643936 := by
    unfold C
    simp [show (472392 * k + 214645) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 643936) = 708588 * k + 321968 := by
    unfold C
    simp [show (1417176 * k + 643936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 321968) = 354294 * k + 160984 := by
    unfold C
    simp [show (708588 * k + 321968) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 160984) = 177147 * k + 80492 := by
    unfold C
    simp [show (354294 * k + 160984) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119111) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119111))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard023
