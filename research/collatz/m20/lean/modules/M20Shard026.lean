import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard026

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_190111 : ∀ k : Nat,
    iterate (1048576 * k + 190111) 32 = 531441 * k + 96353 ∧
      531441 * k + 96353 < 1048576 * k + 190111 := by
  intro k
  have h1 : C (1048576 * k + 190111) = 3145728 * k + 570334 := by
    unfold C
    simp [show (1048576 * k + 190111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 570334) = 1572864 * k + 285167 := by
    unfold C
    simp [show (3145728 * k + 570334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 285167) = 4718592 * k + 855502 := by
    unfold C
    simp [show (1572864 * k + 285167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 855502) = 2359296 * k + 427751 := by
    unfold C
    simp [show (4718592 * k + 855502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 427751) = 7077888 * k + 1283254 := by
    unfold C
    simp [show (2359296 * k + 427751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1283254) = 3538944 * k + 641627 := by
    unfold C
    simp [show (7077888 * k + 1283254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 641627) = 10616832 * k + 1924882 := by
    unfold C
    simp [show (3538944 * k + 641627) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1924882) = 5308416 * k + 962441 := by
    unfold C
    simp [show (10616832 * k + 1924882) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 962441) = 15925248 * k + 2887324 := by
    unfold C
    simp [show (5308416 * k + 962441) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2887324) = 7962624 * k + 1443662 := by
    unfold C
    simp [show (15925248 * k + 2887324) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1443662) = 3981312 * k + 721831 := by
    unfold C
    simp [show (7962624 * k + 1443662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 721831) = 11943936 * k + 2165494 := by
    unfold C
    simp [show (3981312 * k + 721831) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2165494) = 5971968 * k + 1082747 := by
    unfold C
    simp [show (11943936 * k + 2165494) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1082747) = 17915904 * k + 3248242 := by
    unfold C
    simp [show (5971968 * k + 1082747) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3248242) = 8957952 * k + 1624121 := by
    unfold C
    simp [show (17915904 * k + 3248242) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1624121) = 26873856 * k + 4872364 := by
    unfold C
    simp [show (8957952 * k + 1624121) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4872364) = 13436928 * k + 2436182 := by
    unfold C
    simp [show (26873856 * k + 4872364) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2436182) = 6718464 * k + 1218091 := by
    unfold C
    simp [show (13436928 * k + 2436182) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1218091) = 20155392 * k + 3654274 := by
    unfold C
    simp [show (6718464 * k + 1218091) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3654274) = 10077696 * k + 1827137 := by
    unfold C
    simp [show (20155392 * k + 3654274) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1827137) = 30233088 * k + 5481412 := by
    unfold C
    simp [show (10077696 * k + 1827137) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5481412) = 15116544 * k + 2740706 := by
    unfold C
    simp [show (30233088 * k + 5481412) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2740706) = 7558272 * k + 1370353 := by
    unfold C
    simp [show (15116544 * k + 2740706) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1370353) = 22674816 * k + 4111060 := by
    unfold C
    simp [show (7558272 * k + 1370353) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4111060) = 11337408 * k + 2055530 := by
    unfold C
    simp [show (22674816 * k + 4111060) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2055530) = 5668704 * k + 1027765 := by
    unfold C
    simp [show (11337408 * k + 2055530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1027765) = 17006112 * k + 3083296 := by
    unfold C
    simp [show (5668704 * k + 1027765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3083296) = 8503056 * k + 1541648 := by
    unfold C
    simp [show (17006112 * k + 3083296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1541648) = 4251528 * k + 770824 := by
    unfold C
    simp [show (8503056 * k + 1541648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 770824) = 2125764 * k + 385412 := by
    unfold C
    simp [show (4251528 * k + 770824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 385412) = 1062882 * k + 192706 := by
    unfold C
    simp [show (2125764 * k + 385412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 192706) = 531441 * k + 96353 := by
    unfold C
    simp [show (1062882 * k + 192706) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 190111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 190111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_190299 : ∀ k : Nat,
    iterate (1048576 * k + 190299) 32 = 531441 * k + 96449 ∧
      531441 * k + 96449 < 1048576 * k + 190299 := by
  intro k
  have h1 : C (1048576 * k + 190299) = 3145728 * k + 570898 := by
    unfold C
    simp [show (1048576 * k + 190299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 570898) = 1572864 * k + 285449 := by
    unfold C
    simp [show (3145728 * k + 570898) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 285449) = 4718592 * k + 856348 := by
    unfold C
    simp [show (1572864 * k + 285449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 856348) = 2359296 * k + 428174 := by
    unfold C
    simp [show (4718592 * k + 856348) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 428174) = 1179648 * k + 214087 := by
    unfold C
    simp [show (2359296 * k + 428174) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 214087) = 3538944 * k + 642262 := by
    unfold C
    simp [show (1179648 * k + 214087) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 642262) = 1769472 * k + 321131 := by
    unfold C
    simp [show (3538944 * k + 642262) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 321131) = 5308416 * k + 963394 := by
    unfold C
    simp [show (1769472 * k + 321131) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 963394) = 2654208 * k + 481697 := by
    unfold C
    simp [show (5308416 * k + 963394) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 481697) = 7962624 * k + 1445092 := by
    unfold C
    simp [show (2654208 * k + 481697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1445092) = 3981312 * k + 722546 := by
    unfold C
    simp [show (7962624 * k + 1445092) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 722546) = 1990656 * k + 361273 := by
    unfold C
    simp [show (3981312 * k + 722546) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 361273) = 5971968 * k + 1083820 := by
    unfold C
    simp [show (1990656 * k + 361273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1083820) = 2985984 * k + 541910 := by
    unfold C
    simp [show (5971968 * k + 1083820) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 541910) = 1492992 * k + 270955 := by
    unfold C
    simp [show (2985984 * k + 541910) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 270955) = 4478976 * k + 812866 := by
    unfold C
    simp [show (1492992 * k + 270955) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 812866) = 2239488 * k + 406433 := by
    unfold C
    simp [show (4478976 * k + 812866) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 406433) = 6718464 * k + 1219300 := by
    unfold C
    simp [show (2239488 * k + 406433) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1219300) = 3359232 * k + 609650 := by
    unfold C
    simp [show (6718464 * k + 1219300) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 609650) = 1679616 * k + 304825 := by
    unfold C
    simp [show (3359232 * k + 609650) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 304825) = 5038848 * k + 914476 := by
    unfold C
    simp [show (1679616 * k + 304825) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 914476) = 2519424 * k + 457238 := by
    unfold C
    simp [show (5038848 * k + 914476) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 457238) = 1259712 * k + 228619 := by
    unfold C
    simp [show (2519424 * k + 457238) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 228619) = 3779136 * k + 685858 := by
    unfold C
    simp [show (1259712 * k + 228619) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 685858) = 1889568 * k + 342929 := by
    unfold C
    simp [show (3779136 * k + 685858) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 342929) = 5668704 * k + 1028788 := by
    unfold C
    simp [show (1889568 * k + 342929) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1028788) = 2834352 * k + 514394 := by
    unfold C
    simp [show (5668704 * k + 1028788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 514394) = 1417176 * k + 257197 := by
    unfold C
    simp [show (2834352 * k + 514394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 257197) = 4251528 * k + 771592 := by
    unfold C
    simp [show (1417176 * k + 257197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 771592) = 2125764 * k + 385796 := by
    unfold C
    simp [show (4251528 * k + 771592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 385796) = 1062882 * k + 192898 := by
    unfold C
    simp [show (2125764 * k + 385796) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 192898) = 531441 * k + 96449 := by
    unfold C
    simp [show (1062882 * k + 192898) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 190299) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 190299)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_190459 : ∀ k : Nat,
    iterate (1048576 * k + 190459) 32 = 531441 * k + 96530 ∧
      531441 * k + 96530 < 1048576 * k + 190459 := by
  intro k
  have h1 : C (1048576 * k + 190459) = 3145728 * k + 571378 := by
    unfold C
    simp [show (1048576 * k + 190459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 571378) = 1572864 * k + 285689 := by
    unfold C
    simp [show (3145728 * k + 571378) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 285689) = 4718592 * k + 857068 := by
    unfold C
    simp [show (1572864 * k + 285689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 857068) = 2359296 * k + 428534 := by
    unfold C
    simp [show (4718592 * k + 857068) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 428534) = 1179648 * k + 214267 := by
    unfold C
    simp [show (2359296 * k + 428534) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 214267) = 3538944 * k + 642802 := by
    unfold C
    simp [show (1179648 * k + 214267) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 642802) = 1769472 * k + 321401 := by
    unfold C
    simp [show (3538944 * k + 642802) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 321401) = 5308416 * k + 964204 := by
    unfold C
    simp [show (1769472 * k + 321401) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 964204) = 2654208 * k + 482102 := by
    unfold C
    simp [show (5308416 * k + 964204) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 482102) = 1327104 * k + 241051 := by
    unfold C
    simp [show (2654208 * k + 482102) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 241051) = 3981312 * k + 723154 := by
    unfold C
    simp [show (1327104 * k + 241051) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 723154) = 1990656 * k + 361577 := by
    unfold C
    simp [show (3981312 * k + 723154) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 361577) = 5971968 * k + 1084732 := by
    unfold C
    simp [show (1990656 * k + 361577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1084732) = 2985984 * k + 542366 := by
    unfold C
    simp [show (5971968 * k + 1084732) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 542366) = 1492992 * k + 271183 := by
    unfold C
    simp [show (2985984 * k + 542366) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 271183) = 4478976 * k + 813550 := by
    unfold C
    simp [show (1492992 * k + 271183) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 813550) = 2239488 * k + 406775 := by
    unfold C
    simp [show (4478976 * k + 813550) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 406775) = 6718464 * k + 1220326 := by
    unfold C
    simp [show (2239488 * k + 406775) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1220326) = 3359232 * k + 610163 := by
    unfold C
    simp [show (6718464 * k + 1220326) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 610163) = 10077696 * k + 1830490 := by
    unfold C
    simp [show (3359232 * k + 610163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1830490) = 5038848 * k + 915245 := by
    unfold C
    simp [show (10077696 * k + 1830490) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 915245) = 15116544 * k + 2745736 := by
    unfold C
    simp [show (5038848 * k + 915245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2745736) = 7558272 * k + 1372868 := by
    unfold C
    simp [show (15116544 * k + 2745736) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1372868) = 3779136 * k + 686434 := by
    unfold C
    simp [show (7558272 * k + 1372868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 686434) = 1889568 * k + 343217 := by
    unfold C
    simp [show (3779136 * k + 686434) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 343217) = 5668704 * k + 1029652 := by
    unfold C
    simp [show (1889568 * k + 343217) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1029652) = 2834352 * k + 514826 := by
    unfold C
    simp [show (5668704 * k + 1029652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 514826) = 1417176 * k + 257413 := by
    unfold C
    simp [show (2834352 * k + 514826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 257413) = 4251528 * k + 772240 := by
    unfold C
    simp [show (1417176 * k + 257413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 772240) = 2125764 * k + 386120 := by
    unfold C
    simp [show (4251528 * k + 772240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 386120) = 1062882 * k + 193060 := by
    unfold C
    simp [show (2125764 * k + 386120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 193060) = 531441 * k + 96530 := by
    unfold C
    simp [show (1062882 * k + 193060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 190459) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 190459)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_190791 : ∀ k : Nat,
    iterate (1048576 * k + 190791) 32 = 531441 * k + 96698 ∧
      531441 * k + 96698 < 1048576 * k + 190791 := by
  intro k
  have h1 : C (1048576 * k + 190791) = 3145728 * k + 572374 := by
    unfold C
    simp [show (1048576 * k + 190791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 572374) = 1572864 * k + 286187 := by
    unfold C
    simp [show (3145728 * k + 572374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 286187) = 4718592 * k + 858562 := by
    unfold C
    simp [show (1572864 * k + 286187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 858562) = 2359296 * k + 429281 := by
    unfold C
    simp [show (4718592 * k + 858562) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 429281) = 7077888 * k + 1287844 := by
    unfold C
    simp [show (2359296 * k + 429281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1287844) = 3538944 * k + 643922 := by
    unfold C
    simp [show (7077888 * k + 1287844) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 643922) = 1769472 * k + 321961 := by
    unfold C
    simp [show (3538944 * k + 643922) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 321961) = 5308416 * k + 965884 := by
    unfold C
    simp [show (1769472 * k + 321961) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 965884) = 2654208 * k + 482942 := by
    unfold C
    simp [show (5308416 * k + 965884) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 482942) = 1327104 * k + 241471 := by
    unfold C
    simp [show (2654208 * k + 482942) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 241471) = 3981312 * k + 724414 := by
    unfold C
    simp [show (1327104 * k + 241471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 724414) = 1990656 * k + 362207 := by
    unfold C
    simp [show (3981312 * k + 724414) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 362207) = 5971968 * k + 1086622 := by
    unfold C
    simp [show (1990656 * k + 362207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1086622) = 2985984 * k + 543311 := by
    unfold C
    simp [show (5971968 * k + 1086622) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 543311) = 8957952 * k + 1629934 := by
    unfold C
    simp [show (2985984 * k + 543311) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1629934) = 4478976 * k + 814967 := by
    unfold C
    simp [show (8957952 * k + 1629934) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 814967) = 13436928 * k + 2444902 := by
    unfold C
    simp [show (4478976 * k + 814967) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2444902) = 6718464 * k + 1222451 := by
    unfold C
    simp [show (13436928 * k + 2444902) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1222451) = 20155392 * k + 3667354 := by
    unfold C
    simp [show (6718464 * k + 1222451) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3667354) = 10077696 * k + 1833677 := by
    unfold C
    simp [show (20155392 * k + 3667354) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1833677) = 30233088 * k + 5501032 := by
    unfold C
    simp [show (10077696 * k + 1833677) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5501032) = 15116544 * k + 2750516 := by
    unfold C
    simp [show (30233088 * k + 5501032) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2750516) = 7558272 * k + 1375258 := by
    unfold C
    simp [show (15116544 * k + 2750516) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1375258) = 3779136 * k + 687629 := by
    unfold C
    simp [show (7558272 * k + 1375258) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 687629) = 11337408 * k + 2062888 := by
    unfold C
    simp [show (3779136 * k + 687629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2062888) = 5668704 * k + 1031444 := by
    unfold C
    simp [show (11337408 * k + 2062888) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1031444) = 2834352 * k + 515722 := by
    unfold C
    simp [show (5668704 * k + 1031444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 515722) = 1417176 * k + 257861 := by
    unfold C
    simp [show (2834352 * k + 515722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 257861) = 4251528 * k + 773584 := by
    unfold C
    simp [show (1417176 * k + 257861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 773584) = 2125764 * k + 386792 := by
    unfold C
    simp [show (4251528 * k + 773584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 386792) = 1062882 * k + 193396 := by
    unfold C
    simp [show (2125764 * k + 386792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 193396) = 531441 * k + 96698 := by
    unfold C
    simp [show (1062882 * k + 193396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 190791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 190791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191067 : ∀ k : Nat,
    iterate (1048576 * k + 191067) 32 = 531441 * k + 96838 ∧
      531441 * k + 96838 < 1048576 * k + 191067 := by
  intro k
  have h1 : C (1048576 * k + 191067) = 3145728 * k + 573202 := by
    unfold C
    simp [show (1048576 * k + 191067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 573202) = 1572864 * k + 286601 := by
    unfold C
    simp [show (3145728 * k + 573202) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 286601) = 4718592 * k + 859804 := by
    unfold C
    simp [show (1572864 * k + 286601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 859804) = 2359296 * k + 429902 := by
    unfold C
    simp [show (4718592 * k + 859804) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 429902) = 1179648 * k + 214951 := by
    unfold C
    simp [show (2359296 * k + 429902) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 214951) = 3538944 * k + 644854 := by
    unfold C
    simp [show (1179648 * k + 214951) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 644854) = 1769472 * k + 322427 := by
    unfold C
    simp [show (3538944 * k + 644854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 322427) = 5308416 * k + 967282 := by
    unfold C
    simp [show (1769472 * k + 322427) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 967282) = 2654208 * k + 483641 := by
    unfold C
    simp [show (5308416 * k + 967282) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 483641) = 7962624 * k + 1450924 := by
    unfold C
    simp [show (2654208 * k + 483641) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1450924) = 3981312 * k + 725462 := by
    unfold C
    simp [show (7962624 * k + 1450924) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 725462) = 1990656 * k + 362731 := by
    unfold C
    simp [show (3981312 * k + 725462) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 362731) = 5971968 * k + 1088194 := by
    unfold C
    simp [show (1990656 * k + 362731) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1088194) = 2985984 * k + 544097 := by
    unfold C
    simp [show (5971968 * k + 1088194) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 544097) = 8957952 * k + 1632292 := by
    unfold C
    simp [show (2985984 * k + 544097) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1632292) = 4478976 * k + 816146 := by
    unfold C
    simp [show (8957952 * k + 1632292) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 816146) = 2239488 * k + 408073 := by
    unfold C
    simp [show (4478976 * k + 816146) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 408073) = 6718464 * k + 1224220 := by
    unfold C
    simp [show (2239488 * k + 408073) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1224220) = 3359232 * k + 612110 := by
    unfold C
    simp [show (6718464 * k + 1224220) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 612110) = 1679616 * k + 306055 := by
    unfold C
    simp [show (3359232 * k + 612110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 306055) = 5038848 * k + 918166 := by
    unfold C
    simp [show (1679616 * k + 306055) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 918166) = 2519424 * k + 459083 := by
    unfold C
    simp [show (5038848 * k + 918166) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 459083) = 7558272 * k + 1377250 := by
    unfold C
    simp [show (2519424 * k + 459083) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1377250) = 3779136 * k + 688625 := by
    unfold C
    simp [show (7558272 * k + 1377250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 688625) = 11337408 * k + 2065876 := by
    unfold C
    simp [show (3779136 * k + 688625) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2065876) = 5668704 * k + 1032938 := by
    unfold C
    simp [show (11337408 * k + 2065876) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1032938) = 2834352 * k + 516469 := by
    unfold C
    simp [show (5668704 * k + 1032938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 516469) = 8503056 * k + 1549408 := by
    unfold C
    simp [show (2834352 * k + 516469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1549408) = 4251528 * k + 774704 := by
    unfold C
    simp [show (8503056 * k + 1549408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 774704) = 2125764 * k + 387352 := by
    unfold C
    simp [show (4251528 * k + 774704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 387352) = 1062882 * k + 193676 := by
    unfold C
    simp [show (2125764 * k + 387352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 193676) = 531441 * k + 96838 := by
    unfold C
    simp [show (1062882 * k + 193676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191067) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191067)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191227 : ∀ k : Nat,
    iterate (1048576 * k + 191227) 32 = 531441 * k + 96919 ∧
      531441 * k + 96919 < 1048576 * k + 191227 := by
  intro k
  have h1 : C (1048576 * k + 191227) = 3145728 * k + 573682 := by
    unfold C
    simp [show (1048576 * k + 191227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 573682) = 1572864 * k + 286841 := by
    unfold C
    simp [show (3145728 * k + 573682) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 286841) = 4718592 * k + 860524 := by
    unfold C
    simp [show (1572864 * k + 286841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 860524) = 2359296 * k + 430262 := by
    unfold C
    simp [show (4718592 * k + 860524) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 430262) = 1179648 * k + 215131 := by
    unfold C
    simp [show (2359296 * k + 430262) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 215131) = 3538944 * k + 645394 := by
    unfold C
    simp [show (1179648 * k + 215131) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 645394) = 1769472 * k + 322697 := by
    unfold C
    simp [show (3538944 * k + 645394) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 322697) = 5308416 * k + 968092 := by
    unfold C
    simp [show (1769472 * k + 322697) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 968092) = 2654208 * k + 484046 := by
    unfold C
    simp [show (5308416 * k + 968092) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 484046) = 1327104 * k + 242023 := by
    unfold C
    simp [show (2654208 * k + 484046) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 242023) = 3981312 * k + 726070 := by
    unfold C
    simp [show (1327104 * k + 242023) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 726070) = 1990656 * k + 363035 := by
    unfold C
    simp [show (3981312 * k + 726070) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 363035) = 5971968 * k + 1089106 := by
    unfold C
    simp [show (1990656 * k + 363035) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1089106) = 2985984 * k + 544553 := by
    unfold C
    simp [show (5971968 * k + 1089106) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 544553) = 8957952 * k + 1633660 := by
    unfold C
    simp [show (2985984 * k + 544553) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1633660) = 4478976 * k + 816830 := by
    unfold C
    simp [show (8957952 * k + 1633660) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 816830) = 2239488 * k + 408415 := by
    unfold C
    simp [show (4478976 * k + 816830) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 408415) = 6718464 * k + 1225246 := by
    unfold C
    simp [show (2239488 * k + 408415) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1225246) = 3359232 * k + 612623 := by
    unfold C
    simp [show (6718464 * k + 1225246) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 612623) = 10077696 * k + 1837870 := by
    unfold C
    simp [show (3359232 * k + 612623) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1837870) = 5038848 * k + 918935 := by
    unfold C
    simp [show (10077696 * k + 1837870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 918935) = 15116544 * k + 2756806 := by
    unfold C
    simp [show (5038848 * k + 918935) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2756806) = 7558272 * k + 1378403 := by
    unfold C
    simp [show (15116544 * k + 2756806) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1378403) = 22674816 * k + 4135210 := by
    unfold C
    simp [show (7558272 * k + 1378403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4135210) = 11337408 * k + 2067605 := by
    unfold C
    simp [show (22674816 * k + 4135210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2067605) = 34012224 * k + 6202816 := by
    unfold C
    simp [show (11337408 * k + 2067605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 6202816) = 17006112 * k + 3101408 := by
    unfold C
    simp [show (34012224 * k + 6202816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3101408) = 8503056 * k + 1550704 := by
    unfold C
    simp [show (17006112 * k + 3101408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1550704) = 4251528 * k + 775352 := by
    unfold C
    simp [show (8503056 * k + 1550704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 775352) = 2125764 * k + 387676 := by
    unfold C
    simp [show (4251528 * k + 775352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 387676) = 1062882 * k + 193838 := by
    unfold C
    simp [show (2125764 * k + 387676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 193838) = 531441 * k + 96919 := by
    unfold C
    simp [show (1062882 * k + 193838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191227) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191227)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191259 : ∀ k : Nat,
    iterate (1048576 * k + 191259) 32 = 531441 * k + 96935 ∧
      531441 * k + 96935 < 1048576 * k + 191259 := by
  intro k
  have h1 : C (1048576 * k + 191259) = 3145728 * k + 573778 := by
    unfold C
    simp [show (1048576 * k + 191259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 573778) = 1572864 * k + 286889 := by
    unfold C
    simp [show (3145728 * k + 573778) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 286889) = 4718592 * k + 860668 := by
    unfold C
    simp [show (1572864 * k + 286889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 860668) = 2359296 * k + 430334 := by
    unfold C
    simp [show (4718592 * k + 860668) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 430334) = 1179648 * k + 215167 := by
    unfold C
    simp [show (2359296 * k + 430334) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 215167) = 3538944 * k + 645502 := by
    unfold C
    simp [show (1179648 * k + 215167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 645502) = 1769472 * k + 322751 := by
    unfold C
    simp [show (3538944 * k + 645502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 322751) = 5308416 * k + 968254 := by
    unfold C
    simp [show (1769472 * k + 322751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 968254) = 2654208 * k + 484127 := by
    unfold C
    simp [show (5308416 * k + 968254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 484127) = 7962624 * k + 1452382 := by
    unfold C
    simp [show (2654208 * k + 484127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1452382) = 3981312 * k + 726191 := by
    unfold C
    simp [show (7962624 * k + 1452382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 726191) = 11943936 * k + 2178574 := by
    unfold C
    simp [show (3981312 * k + 726191) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2178574) = 5971968 * k + 1089287 := by
    unfold C
    simp [show (11943936 * k + 2178574) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1089287) = 17915904 * k + 3267862 := by
    unfold C
    simp [show (5971968 * k + 1089287) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3267862) = 8957952 * k + 1633931 := by
    unfold C
    simp [show (17915904 * k + 3267862) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1633931) = 26873856 * k + 4901794 := by
    unfold C
    simp [show (8957952 * k + 1633931) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4901794) = 13436928 * k + 2450897 := by
    unfold C
    simp [show (26873856 * k + 4901794) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2450897) = 40310784 * k + 7352692 := by
    unfold C
    simp [show (13436928 * k + 2450897) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7352692) = 20155392 * k + 3676346 := by
    unfold C
    simp [show (40310784 * k + 7352692) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3676346) = 10077696 * k + 1838173 := by
    unfold C
    simp [show (20155392 * k + 3676346) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1838173) = 30233088 * k + 5514520 := by
    unfold C
    simp [show (10077696 * k + 1838173) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5514520) = 15116544 * k + 2757260 := by
    unfold C
    simp [show (30233088 * k + 5514520) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2757260) = 7558272 * k + 1378630 := by
    unfold C
    simp [show (15116544 * k + 2757260) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1378630) = 3779136 * k + 689315 := by
    unfold C
    simp [show (7558272 * k + 1378630) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 689315) = 11337408 * k + 2067946 := by
    unfold C
    simp [show (3779136 * k + 689315) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2067946) = 5668704 * k + 1033973 := by
    unfold C
    simp [show (11337408 * k + 2067946) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1033973) = 17006112 * k + 3101920 := by
    unfold C
    simp [show (5668704 * k + 1033973) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3101920) = 8503056 * k + 1550960 := by
    unfold C
    simp [show (17006112 * k + 3101920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1550960) = 4251528 * k + 775480 := by
    unfold C
    simp [show (8503056 * k + 1550960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 775480) = 2125764 * k + 387740 := by
    unfold C
    simp [show (4251528 * k + 775480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 387740) = 1062882 * k + 193870 := by
    unfold C
    simp [show (2125764 * k + 387740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 193870) = 531441 * k + 96935 := by
    unfold C
    simp [show (1062882 * k + 193870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191259) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191259)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191423 : ∀ k : Nat,
    iterate (1048576 * k + 191423) 32 = 531441 * k + 97018 ∧
      531441 * k + 97018 < 1048576 * k + 191423 := by
  intro k
  have h1 : C (1048576 * k + 191423) = 3145728 * k + 574270 := by
    unfold C
    simp [show (1048576 * k + 191423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 574270) = 1572864 * k + 287135 := by
    unfold C
    simp [show (3145728 * k + 574270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 287135) = 4718592 * k + 861406 := by
    unfold C
    simp [show (1572864 * k + 287135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 861406) = 2359296 * k + 430703 := by
    unfold C
    simp [show (4718592 * k + 861406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 430703) = 7077888 * k + 1292110 := by
    unfold C
    simp [show (2359296 * k + 430703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1292110) = 3538944 * k + 646055 := by
    unfold C
    simp [show (7077888 * k + 1292110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 646055) = 10616832 * k + 1938166 := by
    unfold C
    simp [show (3538944 * k + 646055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1938166) = 5308416 * k + 969083 := by
    unfold C
    simp [show (10616832 * k + 1938166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 969083) = 15925248 * k + 2907250 := by
    unfold C
    simp [show (5308416 * k + 969083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2907250) = 7962624 * k + 1453625 := by
    unfold C
    simp [show (15925248 * k + 2907250) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1453625) = 23887872 * k + 4360876 := by
    unfold C
    simp [show (7962624 * k + 1453625) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4360876) = 11943936 * k + 2180438 := by
    unfold C
    simp [show (23887872 * k + 4360876) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2180438) = 5971968 * k + 1090219 := by
    unfold C
    simp [show (11943936 * k + 2180438) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1090219) = 17915904 * k + 3270658 := by
    unfold C
    simp [show (5971968 * k + 1090219) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3270658) = 8957952 * k + 1635329 := by
    unfold C
    simp [show (17915904 * k + 3270658) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1635329) = 26873856 * k + 4905988 := by
    unfold C
    simp [show (8957952 * k + 1635329) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4905988) = 13436928 * k + 2452994 := by
    unfold C
    simp [show (26873856 * k + 4905988) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2452994) = 6718464 * k + 1226497 := by
    unfold C
    simp [show (13436928 * k + 2452994) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1226497) = 20155392 * k + 3679492 := by
    unfold C
    simp [show (6718464 * k + 1226497) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3679492) = 10077696 * k + 1839746 := by
    unfold C
    simp [show (20155392 * k + 3679492) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1839746) = 5038848 * k + 919873 := by
    unfold C
    simp [show (10077696 * k + 1839746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 919873) = 15116544 * k + 2759620 := by
    unfold C
    simp [show (5038848 * k + 919873) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2759620) = 7558272 * k + 1379810 := by
    unfold C
    simp [show (15116544 * k + 2759620) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1379810) = 3779136 * k + 689905 := by
    unfold C
    simp [show (7558272 * k + 1379810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 689905) = 11337408 * k + 2069716 := by
    unfold C
    simp [show (3779136 * k + 689905) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2069716) = 5668704 * k + 1034858 := by
    unfold C
    simp [show (11337408 * k + 2069716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1034858) = 2834352 * k + 517429 := by
    unfold C
    simp [show (5668704 * k + 1034858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 517429) = 8503056 * k + 1552288 := by
    unfold C
    simp [show (2834352 * k + 517429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1552288) = 4251528 * k + 776144 := by
    unfold C
    simp [show (8503056 * k + 1552288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 776144) = 2125764 * k + 388072 := by
    unfold C
    simp [show (4251528 * k + 776144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 388072) = 1062882 * k + 194036 := by
    unfold C
    simp [show (2125764 * k + 388072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 194036) = 531441 * k + 97018 := by
    unfold C
    simp [show (1062882 * k + 194036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191727 : ∀ k : Nat,
    iterate (1048576 * k + 191727) 32 = 531441 * k + 97172 ∧
      531441 * k + 97172 < 1048576 * k + 191727 := by
  intro k
  have h1 : C (1048576 * k + 191727) = 3145728 * k + 575182 := by
    unfold C
    simp [show (1048576 * k + 191727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 575182) = 1572864 * k + 287591 := by
    unfold C
    simp [show (3145728 * k + 575182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 287591) = 4718592 * k + 862774 := by
    unfold C
    simp [show (1572864 * k + 287591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 862774) = 2359296 * k + 431387 := by
    unfold C
    simp [show (4718592 * k + 862774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 431387) = 7077888 * k + 1294162 := by
    unfold C
    simp [show (2359296 * k + 431387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1294162) = 3538944 * k + 647081 := by
    unfold C
    simp [show (7077888 * k + 1294162) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 647081) = 10616832 * k + 1941244 := by
    unfold C
    simp [show (3538944 * k + 647081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1941244) = 5308416 * k + 970622 := by
    unfold C
    simp [show (10616832 * k + 1941244) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 970622) = 2654208 * k + 485311 := by
    unfold C
    simp [show (5308416 * k + 970622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 485311) = 7962624 * k + 1455934 := by
    unfold C
    simp [show (2654208 * k + 485311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1455934) = 3981312 * k + 727967 := by
    unfold C
    simp [show (7962624 * k + 1455934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 727967) = 11943936 * k + 2183902 := by
    unfold C
    simp [show (3981312 * k + 727967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2183902) = 5971968 * k + 1091951 := by
    unfold C
    simp [show (11943936 * k + 2183902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1091951) = 17915904 * k + 3275854 := by
    unfold C
    simp [show (5971968 * k + 1091951) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3275854) = 8957952 * k + 1637927 := by
    unfold C
    simp [show (17915904 * k + 3275854) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1637927) = 26873856 * k + 4913782 := by
    unfold C
    simp [show (8957952 * k + 1637927) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4913782) = 13436928 * k + 2456891 := by
    unfold C
    simp [show (26873856 * k + 4913782) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2456891) = 40310784 * k + 7370674 := by
    unfold C
    simp [show (13436928 * k + 2456891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7370674) = 20155392 * k + 3685337 := by
    unfold C
    simp [show (40310784 * k + 7370674) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3685337) = 60466176 * k + 11056012 := by
    unfold C
    simp [show (20155392 * k + 3685337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 11056012) = 30233088 * k + 5528006 := by
    unfold C
    simp [show (60466176 * k + 11056012) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5528006) = 15116544 * k + 2764003 := by
    unfold C
    simp [show (30233088 * k + 5528006) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2764003) = 45349632 * k + 8292010 := by
    unfold C
    simp [show (15116544 * k + 2764003) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 8292010) = 22674816 * k + 4146005 := by
    unfold C
    simp [show (45349632 * k + 8292010) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4146005) = 68024448 * k + 12438016 := by
    unfold C
    simp [show (22674816 * k + 4146005) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 12438016) = 34012224 * k + 6219008 := by
    unfold C
    simp [show (68024448 * k + 12438016) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 6219008) = 17006112 * k + 3109504 := by
    unfold C
    simp [show (34012224 * k + 6219008) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3109504) = 8503056 * k + 1554752 := by
    unfold C
    simp [show (17006112 * k + 3109504) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1554752) = 4251528 * k + 777376 := by
    unfold C
    simp [show (8503056 * k + 1554752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 777376) = 2125764 * k + 388688 := by
    unfold C
    simp [show (4251528 * k + 777376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 388688) = 1062882 * k + 194344 := by
    unfold C
    simp [show (2125764 * k + 388688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 194344) = 531441 * k + 97172 := by
    unfold C
    simp [show (1062882 * k + 194344) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191791 : ∀ k : Nat,
    iterate (1048576 * k + 191791) 32 = 531441 * k + 97205 ∧
      531441 * k + 97205 < 1048576 * k + 191791 := by
  intro k
  have h1 : C (1048576 * k + 191791) = 3145728 * k + 575374 := by
    unfold C
    simp [show (1048576 * k + 191791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 575374) = 1572864 * k + 287687 := by
    unfold C
    simp [show (3145728 * k + 575374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 287687) = 4718592 * k + 863062 := by
    unfold C
    simp [show (1572864 * k + 287687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 863062) = 2359296 * k + 431531 := by
    unfold C
    simp [show (4718592 * k + 863062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 431531) = 7077888 * k + 1294594 := by
    unfold C
    simp [show (2359296 * k + 431531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1294594) = 3538944 * k + 647297 := by
    unfold C
    simp [show (7077888 * k + 1294594) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 647297) = 10616832 * k + 1941892 := by
    unfold C
    simp [show (3538944 * k + 647297) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1941892) = 5308416 * k + 970946 := by
    unfold C
    simp [show (10616832 * k + 1941892) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 970946) = 2654208 * k + 485473 := by
    unfold C
    simp [show (5308416 * k + 970946) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 485473) = 7962624 * k + 1456420 := by
    unfold C
    simp [show (2654208 * k + 485473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1456420) = 3981312 * k + 728210 := by
    unfold C
    simp [show (7962624 * k + 1456420) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 728210) = 1990656 * k + 364105 := by
    unfold C
    simp [show (3981312 * k + 728210) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 364105) = 5971968 * k + 1092316 := by
    unfold C
    simp [show (1990656 * k + 364105) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1092316) = 2985984 * k + 546158 := by
    unfold C
    simp [show (5971968 * k + 1092316) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 546158) = 1492992 * k + 273079 := by
    unfold C
    simp [show (2985984 * k + 546158) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 273079) = 4478976 * k + 819238 := by
    unfold C
    simp [show (1492992 * k + 273079) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 819238) = 2239488 * k + 409619 := by
    unfold C
    simp [show (4478976 * k + 819238) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 409619) = 6718464 * k + 1228858 := by
    unfold C
    simp [show (2239488 * k + 409619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1228858) = 3359232 * k + 614429 := by
    unfold C
    simp [show (6718464 * k + 1228858) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 614429) = 10077696 * k + 1843288 := by
    unfold C
    simp [show (3359232 * k + 614429) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1843288) = 5038848 * k + 921644 := by
    unfold C
    simp [show (10077696 * k + 1843288) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 921644) = 2519424 * k + 460822 := by
    unfold C
    simp [show (5038848 * k + 921644) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 460822) = 1259712 * k + 230411 := by
    unfold C
    simp [show (2519424 * k + 460822) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 230411) = 3779136 * k + 691234 := by
    unfold C
    simp [show (1259712 * k + 230411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 691234) = 1889568 * k + 345617 := by
    unfold C
    simp [show (3779136 * k + 691234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 345617) = 5668704 * k + 1036852 := by
    unfold C
    simp [show (1889568 * k + 345617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1036852) = 2834352 * k + 518426 := by
    unfold C
    simp [show (5668704 * k + 1036852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 518426) = 1417176 * k + 259213 := by
    unfold C
    simp [show (2834352 * k + 518426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 259213) = 4251528 * k + 777640 := by
    unfold C
    simp [show (1417176 * k + 259213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 777640) = 2125764 * k + 388820 := by
    unfold C
    simp [show (4251528 * k + 777640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 388820) = 1062882 * k + 194410 := by
    unfold C
    simp [show (2125764 * k + 388820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 194410) = 531441 * k + 97205 := by
    unfold C
    simp [show (1062882 * k + 194410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_191951 : ∀ k : Nat,
    iterate (1048576 * k + 191951) 32 = 531441 * k + 97286 ∧
      531441 * k + 97286 < 1048576 * k + 191951 := by
  intro k
  have h1 : C (1048576 * k + 191951) = 3145728 * k + 575854 := by
    unfold C
    simp [show (1048576 * k + 191951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 575854) = 1572864 * k + 287927 := by
    unfold C
    simp [show (3145728 * k + 575854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 287927) = 4718592 * k + 863782 := by
    unfold C
    simp [show (1572864 * k + 287927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 863782) = 2359296 * k + 431891 := by
    unfold C
    simp [show (4718592 * k + 863782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 431891) = 7077888 * k + 1295674 := by
    unfold C
    simp [show (2359296 * k + 431891) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1295674) = 3538944 * k + 647837 := by
    unfold C
    simp [show (7077888 * k + 1295674) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 647837) = 10616832 * k + 1943512 := by
    unfold C
    simp [show (3538944 * k + 647837) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1943512) = 5308416 * k + 971756 := by
    unfold C
    simp [show (10616832 * k + 1943512) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 971756) = 2654208 * k + 485878 := by
    unfold C
    simp [show (5308416 * k + 971756) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 485878) = 1327104 * k + 242939 := by
    unfold C
    simp [show (2654208 * k + 485878) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 242939) = 3981312 * k + 728818 := by
    unfold C
    simp [show (1327104 * k + 242939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 728818) = 1990656 * k + 364409 := by
    unfold C
    simp [show (3981312 * k + 728818) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 364409) = 5971968 * k + 1093228 := by
    unfold C
    simp [show (1990656 * k + 364409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1093228) = 2985984 * k + 546614 := by
    unfold C
    simp [show (5971968 * k + 1093228) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 546614) = 1492992 * k + 273307 := by
    unfold C
    simp [show (2985984 * k + 546614) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 273307) = 4478976 * k + 819922 := by
    unfold C
    simp [show (1492992 * k + 273307) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 819922) = 2239488 * k + 409961 := by
    unfold C
    simp [show (4478976 * k + 819922) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 409961) = 6718464 * k + 1229884 := by
    unfold C
    simp [show (2239488 * k + 409961) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1229884) = 3359232 * k + 614942 := by
    unfold C
    simp [show (6718464 * k + 1229884) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 614942) = 1679616 * k + 307471 := by
    unfold C
    simp [show (3359232 * k + 614942) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 307471) = 5038848 * k + 922414 := by
    unfold C
    simp [show (1679616 * k + 307471) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 922414) = 2519424 * k + 461207 := by
    unfold C
    simp [show (5038848 * k + 922414) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 461207) = 7558272 * k + 1383622 := by
    unfold C
    simp [show (2519424 * k + 461207) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1383622) = 3779136 * k + 691811 := by
    unfold C
    simp [show (7558272 * k + 1383622) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 691811) = 11337408 * k + 2075434 := by
    unfold C
    simp [show (3779136 * k + 691811) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2075434) = 5668704 * k + 1037717 := by
    unfold C
    simp [show (11337408 * k + 2075434) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1037717) = 17006112 * k + 3113152 := by
    unfold C
    simp [show (5668704 * k + 1037717) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3113152) = 8503056 * k + 1556576 := by
    unfold C
    simp [show (17006112 * k + 3113152) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1556576) = 4251528 * k + 778288 := by
    unfold C
    simp [show (8503056 * k + 1556576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 778288) = 2125764 * k + 389144 := by
    unfold C
    simp [show (4251528 * k + 778288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 389144) = 1062882 * k + 194572 := by
    unfold C
    simp [show (2125764 * k + 389144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 194572) = 531441 * k + 97286 := by
    unfold C
    simp [show (1062882 * k + 194572) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 191951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 191951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_192111 : ∀ k : Nat,
    iterate (1048576 * k + 192111) 32 = 531441 * k + 97367 ∧
      531441 * k + 97367 < 1048576 * k + 192111 := by
  intro k
  have h1 : C (1048576 * k + 192111) = 3145728 * k + 576334 := by
    unfold C
    simp [show (1048576 * k + 192111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 576334) = 1572864 * k + 288167 := by
    unfold C
    simp [show (3145728 * k + 576334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 288167) = 4718592 * k + 864502 := by
    unfold C
    simp [show (1572864 * k + 288167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 864502) = 2359296 * k + 432251 := by
    unfold C
    simp [show (4718592 * k + 864502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 432251) = 7077888 * k + 1296754 := by
    unfold C
    simp [show (2359296 * k + 432251) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1296754) = 3538944 * k + 648377 := by
    unfold C
    simp [show (7077888 * k + 1296754) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 648377) = 10616832 * k + 1945132 := by
    unfold C
    simp [show (3538944 * k + 648377) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1945132) = 5308416 * k + 972566 := by
    unfold C
    simp [show (10616832 * k + 1945132) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 972566) = 2654208 * k + 486283 := by
    unfold C
    simp [show (5308416 * k + 972566) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 486283) = 7962624 * k + 1458850 := by
    unfold C
    simp [show (2654208 * k + 486283) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1458850) = 3981312 * k + 729425 := by
    unfold C
    simp [show (7962624 * k + 1458850) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 729425) = 11943936 * k + 2188276 := by
    unfold C
    simp [show (3981312 * k + 729425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2188276) = 5971968 * k + 1094138 := by
    unfold C
    simp [show (11943936 * k + 2188276) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1094138) = 2985984 * k + 547069 := by
    unfold C
    simp [show (5971968 * k + 1094138) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 547069) = 8957952 * k + 1641208 := by
    unfold C
    simp [show (2985984 * k + 547069) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1641208) = 4478976 * k + 820604 := by
    unfold C
    simp [show (8957952 * k + 1641208) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 820604) = 2239488 * k + 410302 := by
    unfold C
    simp [show (4478976 * k + 820604) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 410302) = 1119744 * k + 205151 := by
    unfold C
    simp [show (2239488 * k + 410302) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 205151) = 3359232 * k + 615454 := by
    unfold C
    simp [show (1119744 * k + 205151) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 615454) = 1679616 * k + 307727 := by
    unfold C
    simp [show (3359232 * k + 615454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 307727) = 5038848 * k + 923182 := by
    unfold C
    simp [show (1679616 * k + 307727) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 923182) = 2519424 * k + 461591 := by
    unfold C
    simp [show (5038848 * k + 923182) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 461591) = 7558272 * k + 1384774 := by
    unfold C
    simp [show (2519424 * k + 461591) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1384774) = 3779136 * k + 692387 := by
    unfold C
    simp [show (7558272 * k + 1384774) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 692387) = 11337408 * k + 2077162 := by
    unfold C
    simp [show (3779136 * k + 692387) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2077162) = 5668704 * k + 1038581 := by
    unfold C
    simp [show (11337408 * k + 2077162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1038581) = 17006112 * k + 3115744 := by
    unfold C
    simp [show (5668704 * k + 1038581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3115744) = 8503056 * k + 1557872 := by
    unfold C
    simp [show (17006112 * k + 3115744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1557872) = 4251528 * k + 778936 := by
    unfold C
    simp [show (8503056 * k + 1557872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 778936) = 2125764 * k + 389468 := by
    unfold C
    simp [show (4251528 * k + 778936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 389468) = 1062882 * k + 194734 := by
    unfold C
    simp [show (2125764 * k + 389468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 194734) = 531441 * k + 97367 := by
    unfold C
    simp [show (1062882 * k + 194734) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 192111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 192111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_192559 : ∀ k : Nat,
    iterate (1048576 * k + 192559) 32 = 531441 * k + 97594 ∧
      531441 * k + 97594 < 1048576 * k + 192559 := by
  intro k
  have h1 : C (1048576 * k + 192559) = 3145728 * k + 577678 := by
    unfold C
    simp [show (1048576 * k + 192559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 577678) = 1572864 * k + 288839 := by
    unfold C
    simp [show (3145728 * k + 577678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 288839) = 4718592 * k + 866518 := by
    unfold C
    simp [show (1572864 * k + 288839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 866518) = 2359296 * k + 433259 := by
    unfold C
    simp [show (4718592 * k + 866518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 433259) = 7077888 * k + 1299778 := by
    unfold C
    simp [show (2359296 * k + 433259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1299778) = 3538944 * k + 649889 := by
    unfold C
    simp [show (7077888 * k + 1299778) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 649889) = 10616832 * k + 1949668 := by
    unfold C
    simp [show (3538944 * k + 649889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1949668) = 5308416 * k + 974834 := by
    unfold C
    simp [show (10616832 * k + 1949668) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 974834) = 2654208 * k + 487417 := by
    unfold C
    simp [show (5308416 * k + 974834) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 487417) = 7962624 * k + 1462252 := by
    unfold C
    simp [show (2654208 * k + 487417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1462252) = 3981312 * k + 731126 := by
    unfold C
    simp [show (7962624 * k + 1462252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 731126) = 1990656 * k + 365563 := by
    unfold C
    simp [show (3981312 * k + 731126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 365563) = 5971968 * k + 1096690 := by
    unfold C
    simp [show (1990656 * k + 365563) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1096690) = 2985984 * k + 548345 := by
    unfold C
    simp [show (5971968 * k + 1096690) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 548345) = 8957952 * k + 1645036 := by
    unfold C
    simp [show (2985984 * k + 548345) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1645036) = 4478976 * k + 822518 := by
    unfold C
    simp [show (8957952 * k + 1645036) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 822518) = 2239488 * k + 411259 := by
    unfold C
    simp [show (4478976 * k + 822518) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 411259) = 6718464 * k + 1233778 := by
    unfold C
    simp [show (2239488 * k + 411259) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1233778) = 3359232 * k + 616889 := by
    unfold C
    simp [show (6718464 * k + 1233778) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 616889) = 10077696 * k + 1850668 := by
    unfold C
    simp [show (3359232 * k + 616889) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1850668) = 5038848 * k + 925334 := by
    unfold C
    simp [show (10077696 * k + 1850668) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 925334) = 2519424 * k + 462667 := by
    unfold C
    simp [show (5038848 * k + 925334) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 462667) = 7558272 * k + 1388002 := by
    unfold C
    simp [show (2519424 * k + 462667) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1388002) = 3779136 * k + 694001 := by
    unfold C
    simp [show (7558272 * k + 1388002) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 694001) = 11337408 * k + 2082004 := by
    unfold C
    simp [show (3779136 * k + 694001) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2082004) = 5668704 * k + 1041002 := by
    unfold C
    simp [show (11337408 * k + 2082004) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1041002) = 2834352 * k + 520501 := by
    unfold C
    simp [show (5668704 * k + 1041002) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 520501) = 8503056 * k + 1561504 := by
    unfold C
    simp [show (2834352 * k + 520501) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1561504) = 4251528 * k + 780752 := by
    unfold C
    simp [show (8503056 * k + 1561504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 780752) = 2125764 * k + 390376 := by
    unfold C
    simp [show (4251528 * k + 780752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 390376) = 1062882 * k + 195188 := by
    unfold C
    simp [show (2125764 * k + 390376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 195188) = 531441 * k + 97594 := by
    unfold C
    simp [show (1062882 * k + 195188) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 192559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 192559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_192815 : ∀ k : Nat,
    iterate (1048576 * k + 192815) 32 = 531441 * k + 97724 ∧
      531441 * k + 97724 < 1048576 * k + 192815 := by
  intro k
  have h1 : C (1048576 * k + 192815) = 3145728 * k + 578446 := by
    unfold C
    simp [show (1048576 * k + 192815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 578446) = 1572864 * k + 289223 := by
    unfold C
    simp [show (3145728 * k + 578446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 289223) = 4718592 * k + 867670 := by
    unfold C
    simp [show (1572864 * k + 289223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 867670) = 2359296 * k + 433835 := by
    unfold C
    simp [show (4718592 * k + 867670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 433835) = 7077888 * k + 1301506 := by
    unfold C
    simp [show (2359296 * k + 433835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1301506) = 3538944 * k + 650753 := by
    unfold C
    simp [show (7077888 * k + 1301506) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 650753) = 10616832 * k + 1952260 := by
    unfold C
    simp [show (3538944 * k + 650753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1952260) = 5308416 * k + 976130 := by
    unfold C
    simp [show (10616832 * k + 1952260) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 976130) = 2654208 * k + 488065 := by
    unfold C
    simp [show (5308416 * k + 976130) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 488065) = 7962624 * k + 1464196 := by
    unfold C
    simp [show (2654208 * k + 488065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1464196) = 3981312 * k + 732098 := by
    unfold C
    simp [show (7962624 * k + 1464196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 732098) = 1990656 * k + 366049 := by
    unfold C
    simp [show (3981312 * k + 732098) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 366049) = 5971968 * k + 1098148 := by
    unfold C
    simp [show (1990656 * k + 366049) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1098148) = 2985984 * k + 549074 := by
    unfold C
    simp [show (5971968 * k + 1098148) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 549074) = 1492992 * k + 274537 := by
    unfold C
    simp [show (2985984 * k + 549074) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 274537) = 4478976 * k + 823612 := by
    unfold C
    simp [show (1492992 * k + 274537) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 823612) = 2239488 * k + 411806 := by
    unfold C
    simp [show (4478976 * k + 823612) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 411806) = 1119744 * k + 205903 := by
    unfold C
    simp [show (2239488 * k + 411806) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 205903) = 3359232 * k + 617710 := by
    unfold C
    simp [show (1119744 * k + 205903) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 617710) = 1679616 * k + 308855 := by
    unfold C
    simp [show (3359232 * k + 617710) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 308855) = 5038848 * k + 926566 := by
    unfold C
    simp [show (1679616 * k + 308855) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 926566) = 2519424 * k + 463283 := by
    unfold C
    simp [show (5038848 * k + 926566) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 463283) = 7558272 * k + 1389850 := by
    unfold C
    simp [show (2519424 * k + 463283) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1389850) = 3779136 * k + 694925 := by
    unfold C
    simp [show (7558272 * k + 1389850) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 694925) = 11337408 * k + 2084776 := by
    unfold C
    simp [show (3779136 * k + 694925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2084776) = 5668704 * k + 1042388 := by
    unfold C
    simp [show (11337408 * k + 2084776) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1042388) = 2834352 * k + 521194 := by
    unfold C
    simp [show (5668704 * k + 1042388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 521194) = 1417176 * k + 260597 := by
    unfold C
    simp [show (2834352 * k + 521194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 260597) = 4251528 * k + 781792 := by
    unfold C
    simp [show (1417176 * k + 260597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 781792) = 2125764 * k + 390896 := by
    unfold C
    simp [show (4251528 * k + 781792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 390896) = 1062882 * k + 195448 := by
    unfold C
    simp [show (2125764 * k + 390896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 195448) = 531441 * k + 97724 := by
    unfold C
    simp [show (1062882 * k + 195448) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 192815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 192815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_192999 : ∀ k : Nat,
    iterate (1048576 * k + 192999) 32 = 531441 * k + 97817 ∧
      531441 * k + 97817 < 1048576 * k + 192999 := by
  intro k
  have h1 : C (1048576 * k + 192999) = 3145728 * k + 578998 := by
    unfold C
    simp [show (1048576 * k + 192999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 578998) = 1572864 * k + 289499 := by
    unfold C
    simp [show (3145728 * k + 578998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 289499) = 4718592 * k + 868498 := by
    unfold C
    simp [show (1572864 * k + 289499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 868498) = 2359296 * k + 434249 := by
    unfold C
    simp [show (4718592 * k + 868498) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 434249) = 7077888 * k + 1302748 := by
    unfold C
    simp [show (2359296 * k + 434249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1302748) = 3538944 * k + 651374 := by
    unfold C
    simp [show (7077888 * k + 1302748) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 651374) = 1769472 * k + 325687 := by
    unfold C
    simp [show (3538944 * k + 651374) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 325687) = 5308416 * k + 977062 := by
    unfold C
    simp [show (1769472 * k + 325687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 977062) = 2654208 * k + 488531 := by
    unfold C
    simp [show (5308416 * k + 977062) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 488531) = 7962624 * k + 1465594 := by
    unfold C
    simp [show (2654208 * k + 488531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1465594) = 3981312 * k + 732797 := by
    unfold C
    simp [show (7962624 * k + 1465594) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 732797) = 11943936 * k + 2198392 := by
    unfold C
    simp [show (3981312 * k + 732797) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2198392) = 5971968 * k + 1099196 := by
    unfold C
    simp [show (11943936 * k + 2198392) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1099196) = 2985984 * k + 549598 := by
    unfold C
    simp [show (5971968 * k + 1099196) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 549598) = 1492992 * k + 274799 := by
    unfold C
    simp [show (2985984 * k + 549598) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 274799) = 4478976 * k + 824398 := by
    unfold C
    simp [show (1492992 * k + 274799) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 824398) = 2239488 * k + 412199 := by
    unfold C
    simp [show (4478976 * k + 824398) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 412199) = 6718464 * k + 1236598 := by
    unfold C
    simp [show (2239488 * k + 412199) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1236598) = 3359232 * k + 618299 := by
    unfold C
    simp [show (6718464 * k + 1236598) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 618299) = 10077696 * k + 1854898 := by
    unfold C
    simp [show (3359232 * k + 618299) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1854898) = 5038848 * k + 927449 := by
    unfold C
    simp [show (10077696 * k + 1854898) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 927449) = 15116544 * k + 2782348 := by
    unfold C
    simp [show (5038848 * k + 927449) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2782348) = 7558272 * k + 1391174 := by
    unfold C
    simp [show (15116544 * k + 2782348) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1391174) = 3779136 * k + 695587 := by
    unfold C
    simp [show (7558272 * k + 1391174) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 695587) = 11337408 * k + 2086762 := by
    unfold C
    simp [show (3779136 * k + 695587) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2086762) = 5668704 * k + 1043381 := by
    unfold C
    simp [show (11337408 * k + 2086762) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1043381) = 17006112 * k + 3130144 := by
    unfold C
    simp [show (5668704 * k + 1043381) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3130144) = 8503056 * k + 1565072 := by
    unfold C
    simp [show (17006112 * k + 3130144) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1565072) = 4251528 * k + 782536 := by
    unfold C
    simp [show (8503056 * k + 1565072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 782536) = 2125764 * k + 391268 := by
    unfold C
    simp [show (4251528 * k + 782536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 391268) = 1062882 * k + 195634 := by
    unfold C
    simp [show (2125764 * k + 391268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 195634) = 531441 * k + 97817 := by
    unfold C
    simp [show (1062882 * k + 195634) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 192999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 192999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_193135 : ∀ k : Nat,
    iterate (1048576 * k + 193135) 32 = 531441 * k + 97886 ∧
      531441 * k + 97886 < 1048576 * k + 193135 := by
  intro k
  have h1 : C (1048576 * k + 193135) = 3145728 * k + 579406 := by
    unfold C
    simp [show (1048576 * k + 193135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 579406) = 1572864 * k + 289703 := by
    unfold C
    simp [show (3145728 * k + 579406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 289703) = 4718592 * k + 869110 := by
    unfold C
    simp [show (1572864 * k + 289703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 869110) = 2359296 * k + 434555 := by
    unfold C
    simp [show (4718592 * k + 869110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 434555) = 7077888 * k + 1303666 := by
    unfold C
    simp [show (2359296 * k + 434555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1303666) = 3538944 * k + 651833 := by
    unfold C
    simp [show (7077888 * k + 1303666) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 651833) = 10616832 * k + 1955500 := by
    unfold C
    simp [show (3538944 * k + 651833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1955500) = 5308416 * k + 977750 := by
    unfold C
    simp [show (10616832 * k + 1955500) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 977750) = 2654208 * k + 488875 := by
    unfold C
    simp [show (5308416 * k + 977750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 488875) = 7962624 * k + 1466626 := by
    unfold C
    simp [show (2654208 * k + 488875) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1466626) = 3981312 * k + 733313 := by
    unfold C
    simp [show (7962624 * k + 1466626) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 733313) = 11943936 * k + 2199940 := by
    unfold C
    simp [show (3981312 * k + 733313) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2199940) = 5971968 * k + 1099970 := by
    unfold C
    simp [show (11943936 * k + 2199940) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1099970) = 2985984 * k + 549985 := by
    unfold C
    simp [show (5971968 * k + 1099970) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 549985) = 8957952 * k + 1649956 := by
    unfold C
    simp [show (2985984 * k + 549985) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1649956) = 4478976 * k + 824978 := by
    unfold C
    simp [show (8957952 * k + 1649956) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 824978) = 2239488 * k + 412489 := by
    unfold C
    simp [show (4478976 * k + 824978) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 412489) = 6718464 * k + 1237468 := by
    unfold C
    simp [show (2239488 * k + 412489) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1237468) = 3359232 * k + 618734 := by
    unfold C
    simp [show (6718464 * k + 1237468) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 618734) = 1679616 * k + 309367 := by
    unfold C
    simp [show (3359232 * k + 618734) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 309367) = 5038848 * k + 928102 := by
    unfold C
    simp [show (1679616 * k + 309367) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 928102) = 2519424 * k + 464051 := by
    unfold C
    simp [show (5038848 * k + 928102) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 464051) = 7558272 * k + 1392154 := by
    unfold C
    simp [show (2519424 * k + 464051) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1392154) = 3779136 * k + 696077 := by
    unfold C
    simp [show (7558272 * k + 1392154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 696077) = 11337408 * k + 2088232 := by
    unfold C
    simp [show (3779136 * k + 696077) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2088232) = 5668704 * k + 1044116 := by
    unfold C
    simp [show (11337408 * k + 2088232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1044116) = 2834352 * k + 522058 := by
    unfold C
    simp [show (5668704 * k + 1044116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 522058) = 1417176 * k + 261029 := by
    unfold C
    simp [show (2834352 * k + 522058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 261029) = 4251528 * k + 783088 := by
    unfold C
    simp [show (1417176 * k + 261029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 783088) = 2125764 * k + 391544 := by
    unfold C
    simp [show (4251528 * k + 783088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 391544) = 1062882 * k + 195772 := by
    unfold C
    simp [show (2125764 * k + 391544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 195772) = 531441 * k + 97886 := by
    unfold C
    simp [show (1062882 * k + 195772) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 193135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 193135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_193183 : ∀ k : Nat,
    iterate (1048576 * k + 193183) 32 = 531441 * k + 97910 ∧
      531441 * k + 97910 < 1048576 * k + 193183 := by
  intro k
  have h1 : C (1048576 * k + 193183) = 3145728 * k + 579550 := by
    unfold C
    simp [show (1048576 * k + 193183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 579550) = 1572864 * k + 289775 := by
    unfold C
    simp [show (3145728 * k + 579550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 289775) = 4718592 * k + 869326 := by
    unfold C
    simp [show (1572864 * k + 289775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 869326) = 2359296 * k + 434663 := by
    unfold C
    simp [show (4718592 * k + 869326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 434663) = 7077888 * k + 1303990 := by
    unfold C
    simp [show (2359296 * k + 434663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1303990) = 3538944 * k + 651995 := by
    unfold C
    simp [show (7077888 * k + 1303990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 651995) = 10616832 * k + 1955986 := by
    unfold C
    simp [show (3538944 * k + 651995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1955986) = 5308416 * k + 977993 := by
    unfold C
    simp [show (10616832 * k + 1955986) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 977993) = 15925248 * k + 2933980 := by
    unfold C
    simp [show (5308416 * k + 977993) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2933980) = 7962624 * k + 1466990 := by
    unfold C
    simp [show (15925248 * k + 2933980) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1466990) = 3981312 * k + 733495 := by
    unfold C
    simp [show (7962624 * k + 1466990) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 733495) = 11943936 * k + 2200486 := by
    unfold C
    simp [show (3981312 * k + 733495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2200486) = 5971968 * k + 1100243 := by
    unfold C
    simp [show (11943936 * k + 2200486) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1100243) = 17915904 * k + 3300730 := by
    unfold C
    simp [show (5971968 * k + 1100243) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3300730) = 8957952 * k + 1650365 := by
    unfold C
    simp [show (17915904 * k + 3300730) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1650365) = 26873856 * k + 4951096 := by
    unfold C
    simp [show (8957952 * k + 1650365) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4951096) = 13436928 * k + 2475548 := by
    unfold C
    simp [show (26873856 * k + 4951096) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2475548) = 6718464 * k + 1237774 := by
    unfold C
    simp [show (13436928 * k + 2475548) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1237774) = 3359232 * k + 618887 := by
    unfold C
    simp [show (6718464 * k + 1237774) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 618887) = 10077696 * k + 1856662 := by
    unfold C
    simp [show (3359232 * k + 618887) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1856662) = 5038848 * k + 928331 := by
    unfold C
    simp [show (10077696 * k + 1856662) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 928331) = 15116544 * k + 2784994 := by
    unfold C
    simp [show (5038848 * k + 928331) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2784994) = 7558272 * k + 1392497 := by
    unfold C
    simp [show (15116544 * k + 2784994) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1392497) = 22674816 * k + 4177492 := by
    unfold C
    simp [show (7558272 * k + 1392497) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4177492) = 11337408 * k + 2088746 := by
    unfold C
    simp [show (22674816 * k + 4177492) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2088746) = 5668704 * k + 1044373 := by
    unfold C
    simp [show (11337408 * k + 2088746) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1044373) = 17006112 * k + 3133120 := by
    unfold C
    simp [show (5668704 * k + 1044373) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3133120) = 8503056 * k + 1566560 := by
    unfold C
    simp [show (17006112 * k + 3133120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1566560) = 4251528 * k + 783280 := by
    unfold C
    simp [show (8503056 * k + 1566560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 783280) = 2125764 * k + 391640 := by
    unfold C
    simp [show (4251528 * k + 783280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 391640) = 1062882 * k + 195820 := by
    unfold C
    simp [show (2125764 * k + 391640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 195820) = 531441 * k + 97910 := by
    unfold C
    simp [show (1062882 * k + 195820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 193183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 193183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_193471 : ∀ k : Nat,
    iterate (1048576 * k + 193471) 32 = 531441 * k + 98056 ∧
      531441 * k + 98056 < 1048576 * k + 193471 := by
  intro k
  have h1 : C (1048576 * k + 193471) = 3145728 * k + 580414 := by
    unfold C
    simp [show (1048576 * k + 193471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 580414) = 1572864 * k + 290207 := by
    unfold C
    simp [show (3145728 * k + 580414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 290207) = 4718592 * k + 870622 := by
    unfold C
    simp [show (1572864 * k + 290207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 870622) = 2359296 * k + 435311 := by
    unfold C
    simp [show (4718592 * k + 870622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 435311) = 7077888 * k + 1305934 := by
    unfold C
    simp [show (2359296 * k + 435311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1305934) = 3538944 * k + 652967 := by
    unfold C
    simp [show (7077888 * k + 1305934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 652967) = 10616832 * k + 1958902 := by
    unfold C
    simp [show (3538944 * k + 652967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1958902) = 5308416 * k + 979451 := by
    unfold C
    simp [show (10616832 * k + 1958902) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 979451) = 15925248 * k + 2938354 := by
    unfold C
    simp [show (5308416 * k + 979451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2938354) = 7962624 * k + 1469177 := by
    unfold C
    simp [show (15925248 * k + 2938354) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1469177) = 23887872 * k + 4407532 := by
    unfold C
    simp [show (7962624 * k + 1469177) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4407532) = 11943936 * k + 2203766 := by
    unfold C
    simp [show (23887872 * k + 4407532) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2203766) = 5971968 * k + 1101883 := by
    unfold C
    simp [show (11943936 * k + 2203766) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1101883) = 17915904 * k + 3305650 := by
    unfold C
    simp [show (5971968 * k + 1101883) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3305650) = 8957952 * k + 1652825 := by
    unfold C
    simp [show (17915904 * k + 3305650) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1652825) = 26873856 * k + 4958476 := by
    unfold C
    simp [show (8957952 * k + 1652825) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4958476) = 13436928 * k + 2479238 := by
    unfold C
    simp [show (26873856 * k + 4958476) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2479238) = 6718464 * k + 1239619 := by
    unfold C
    simp [show (13436928 * k + 2479238) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1239619) = 20155392 * k + 3718858 := by
    unfold C
    simp [show (6718464 * k + 1239619) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3718858) = 10077696 * k + 1859429 := by
    unfold C
    simp [show (20155392 * k + 3718858) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1859429) = 30233088 * k + 5578288 := by
    unfold C
    simp [show (10077696 * k + 1859429) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5578288) = 15116544 * k + 2789144 := by
    unfold C
    simp [show (30233088 * k + 5578288) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2789144) = 7558272 * k + 1394572 := by
    unfold C
    simp [show (15116544 * k + 2789144) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1394572) = 3779136 * k + 697286 := by
    unfold C
    simp [show (7558272 * k + 1394572) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 697286) = 1889568 * k + 348643 := by
    unfold C
    simp [show (3779136 * k + 697286) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 348643) = 5668704 * k + 1045930 := by
    unfold C
    simp [show (1889568 * k + 348643) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1045930) = 2834352 * k + 522965 := by
    unfold C
    simp [show (5668704 * k + 1045930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 522965) = 8503056 * k + 1568896 := by
    unfold C
    simp [show (2834352 * k + 522965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1568896) = 4251528 * k + 784448 := by
    unfold C
    simp [show (8503056 * k + 1568896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 784448) = 2125764 * k + 392224 := by
    unfold C
    simp [show (4251528 * k + 784448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 392224) = 1062882 * k + 196112 := by
    unfold C
    simp [show (2125764 * k + 392224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 196112) = 531441 * k + 98056 := by
    unfold C
    simp [show (1062882 * k + 196112) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 193471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 193471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_193727 : ∀ k : Nat,
    iterate (1048576 * k + 193727) 32 = 531441 * k + 98186 ∧
      531441 * k + 98186 < 1048576 * k + 193727 := by
  intro k
  have h1 : C (1048576 * k + 193727) = 3145728 * k + 581182 := by
    unfold C
    simp [show (1048576 * k + 193727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 581182) = 1572864 * k + 290591 := by
    unfold C
    simp [show (3145728 * k + 581182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 290591) = 4718592 * k + 871774 := by
    unfold C
    simp [show (1572864 * k + 290591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 871774) = 2359296 * k + 435887 := by
    unfold C
    simp [show (4718592 * k + 871774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 435887) = 7077888 * k + 1307662 := by
    unfold C
    simp [show (2359296 * k + 435887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1307662) = 3538944 * k + 653831 := by
    unfold C
    simp [show (7077888 * k + 1307662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 653831) = 10616832 * k + 1961494 := by
    unfold C
    simp [show (3538944 * k + 653831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1961494) = 5308416 * k + 980747 := by
    unfold C
    simp [show (10616832 * k + 1961494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 980747) = 15925248 * k + 2942242 := by
    unfold C
    simp [show (5308416 * k + 980747) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2942242) = 7962624 * k + 1471121 := by
    unfold C
    simp [show (15925248 * k + 2942242) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1471121) = 23887872 * k + 4413364 := by
    unfold C
    simp [show (7962624 * k + 1471121) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4413364) = 11943936 * k + 2206682 := by
    unfold C
    simp [show (23887872 * k + 4413364) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2206682) = 5971968 * k + 1103341 := by
    unfold C
    simp [show (11943936 * k + 2206682) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1103341) = 17915904 * k + 3310024 := by
    unfold C
    simp [show (5971968 * k + 1103341) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3310024) = 8957952 * k + 1655012 := by
    unfold C
    simp [show (17915904 * k + 3310024) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1655012) = 4478976 * k + 827506 := by
    unfold C
    simp [show (8957952 * k + 1655012) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 827506) = 2239488 * k + 413753 := by
    unfold C
    simp [show (4478976 * k + 827506) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 413753) = 6718464 * k + 1241260 := by
    unfold C
    simp [show (2239488 * k + 413753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1241260) = 3359232 * k + 620630 := by
    unfold C
    simp [show (6718464 * k + 1241260) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 620630) = 1679616 * k + 310315 := by
    unfold C
    simp [show (3359232 * k + 620630) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 310315) = 5038848 * k + 930946 := by
    unfold C
    simp [show (1679616 * k + 310315) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 930946) = 2519424 * k + 465473 := by
    unfold C
    simp [show (5038848 * k + 930946) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 465473) = 7558272 * k + 1396420 := by
    unfold C
    simp [show (2519424 * k + 465473) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1396420) = 3779136 * k + 698210 := by
    unfold C
    simp [show (7558272 * k + 1396420) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 698210) = 1889568 * k + 349105 := by
    unfold C
    simp [show (3779136 * k + 698210) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 349105) = 5668704 * k + 1047316 := by
    unfold C
    simp [show (1889568 * k + 349105) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1047316) = 2834352 * k + 523658 := by
    unfold C
    simp [show (5668704 * k + 1047316) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 523658) = 1417176 * k + 261829 := by
    unfold C
    simp [show (2834352 * k + 523658) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 261829) = 4251528 * k + 785488 := by
    unfold C
    simp [show (1417176 * k + 261829) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 785488) = 2125764 * k + 392744 := by
    unfold C
    simp [show (4251528 * k + 785488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 392744) = 1062882 * k + 196372 := by
    unfold C
    simp [show (2125764 * k + 392744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 196372) = 531441 * k + 98186 := by
    unfold C
    simp [show (1062882 * k + 196372) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 193727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 193727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_193863 : ∀ k : Nat,
    iterate (1048576 * k + 193863) 32 = 531441 * k + 98255 ∧
      531441 * k + 98255 < 1048576 * k + 193863 := by
  intro k
  have h1 : C (1048576 * k + 193863) = 3145728 * k + 581590 := by
    unfold C
    simp [show (1048576 * k + 193863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 581590) = 1572864 * k + 290795 := by
    unfold C
    simp [show (3145728 * k + 581590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 290795) = 4718592 * k + 872386 := by
    unfold C
    simp [show (1572864 * k + 290795) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 872386) = 2359296 * k + 436193 := by
    unfold C
    simp [show (4718592 * k + 872386) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 436193) = 7077888 * k + 1308580 := by
    unfold C
    simp [show (2359296 * k + 436193) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1308580) = 3538944 * k + 654290 := by
    unfold C
    simp [show (7077888 * k + 1308580) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 654290) = 1769472 * k + 327145 := by
    unfold C
    simp [show (3538944 * k + 654290) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 327145) = 5308416 * k + 981436 := by
    unfold C
    simp [show (1769472 * k + 327145) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 981436) = 2654208 * k + 490718 := by
    unfold C
    simp [show (5308416 * k + 981436) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 490718) = 1327104 * k + 245359 := by
    unfold C
    simp [show (2654208 * k + 490718) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 245359) = 3981312 * k + 736078 := by
    unfold C
    simp [show (1327104 * k + 245359) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 736078) = 1990656 * k + 368039 := by
    unfold C
    simp [show (3981312 * k + 736078) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 368039) = 5971968 * k + 1104118 := by
    unfold C
    simp [show (1990656 * k + 368039) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1104118) = 2985984 * k + 552059 := by
    unfold C
    simp [show (5971968 * k + 1104118) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 552059) = 8957952 * k + 1656178 := by
    unfold C
    simp [show (2985984 * k + 552059) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1656178) = 4478976 * k + 828089 := by
    unfold C
    simp [show (8957952 * k + 1656178) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 828089) = 13436928 * k + 2484268 := by
    unfold C
    simp [show (4478976 * k + 828089) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2484268) = 6718464 * k + 1242134 := by
    unfold C
    simp [show (13436928 * k + 2484268) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1242134) = 3359232 * k + 621067 := by
    unfold C
    simp [show (6718464 * k + 1242134) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 621067) = 10077696 * k + 1863202 := by
    unfold C
    simp [show (3359232 * k + 621067) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1863202) = 5038848 * k + 931601 := by
    unfold C
    simp [show (10077696 * k + 1863202) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 931601) = 15116544 * k + 2794804 := by
    unfold C
    simp [show (5038848 * k + 931601) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2794804) = 7558272 * k + 1397402 := by
    unfold C
    simp [show (15116544 * k + 2794804) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1397402) = 3779136 * k + 698701 := by
    unfold C
    simp [show (7558272 * k + 1397402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 698701) = 11337408 * k + 2096104 := by
    unfold C
    simp [show (3779136 * k + 698701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2096104) = 5668704 * k + 1048052 := by
    unfold C
    simp [show (11337408 * k + 2096104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1048052) = 2834352 * k + 524026 := by
    unfold C
    simp [show (5668704 * k + 1048052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 524026) = 1417176 * k + 262013 := by
    unfold C
    simp [show (2834352 * k + 524026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 262013) = 4251528 * k + 786040 := by
    unfold C
    simp [show (1417176 * k + 262013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 786040) = 2125764 * k + 393020 := by
    unfold C
    simp [show (4251528 * k + 786040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 393020) = 1062882 * k + 196510 := by
    unfold C
    simp [show (2125764 * k + 393020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 196510) = 531441 * k + 98255 := by
    unfold C
    simp [show (1062882 * k + 196510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 193863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 193863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard026
