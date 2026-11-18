import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard082

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_631455 : ∀ k : Nat,
    iterate (1048576 * k + 631455) 32 = 531441 * k + 320036 ∧
      531441 * k + 320036 < 1048576 * k + 631455 := by
  intro k
  have h1 : C (1048576 * k + 631455) = 3145728 * k + 1894366 := by
    unfold C
    simp [show (1048576 * k + 631455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1894366) = 1572864 * k + 947183 := by
    unfold C
    simp [show (3145728 * k + 1894366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 947183) = 4718592 * k + 2841550 := by
    unfold C
    simp [show (1572864 * k + 947183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2841550) = 2359296 * k + 1420775 := by
    unfold C
    simp [show (4718592 * k + 2841550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1420775) = 7077888 * k + 4262326 := by
    unfold C
    simp [show (2359296 * k + 1420775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4262326) = 3538944 * k + 2131163 := by
    unfold C
    simp [show (7077888 * k + 4262326) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2131163) = 10616832 * k + 6393490 := by
    unfold C
    simp [show (3538944 * k + 2131163) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6393490) = 5308416 * k + 3196745 := by
    unfold C
    simp [show (10616832 * k + 6393490) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3196745) = 15925248 * k + 9590236 := by
    unfold C
    simp [show (5308416 * k + 3196745) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9590236) = 7962624 * k + 4795118 := by
    unfold C
    simp [show (15925248 * k + 9590236) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4795118) = 3981312 * k + 2397559 := by
    unfold C
    simp [show (7962624 * k + 4795118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2397559) = 11943936 * k + 7192678 := by
    unfold C
    simp [show (3981312 * k + 2397559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7192678) = 5971968 * k + 3596339 := by
    unfold C
    simp [show (11943936 * k + 7192678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3596339) = 17915904 * k + 10789018 := by
    unfold C
    simp [show (5971968 * k + 3596339) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10789018) = 8957952 * k + 5394509 := by
    unfold C
    simp [show (17915904 * k + 10789018) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5394509) = 26873856 * k + 16183528 := by
    unfold C
    simp [show (8957952 * k + 5394509) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16183528) = 13436928 * k + 8091764 := by
    unfold C
    simp [show (26873856 * k + 16183528) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8091764) = 6718464 * k + 4045882 := by
    unfold C
    simp [show (13436928 * k + 8091764) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4045882) = 3359232 * k + 2022941 := by
    unfold C
    simp [show (6718464 * k + 4045882) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2022941) = 10077696 * k + 6068824 := by
    unfold C
    simp [show (3359232 * k + 2022941) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6068824) = 5038848 * k + 3034412 := by
    unfold C
    simp [show (10077696 * k + 6068824) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3034412) = 2519424 * k + 1517206 := by
    unfold C
    simp [show (5038848 * k + 3034412) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1517206) = 1259712 * k + 758603 := by
    unfold C
    simp [show (2519424 * k + 1517206) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 758603) = 3779136 * k + 2275810 := by
    unfold C
    simp [show (1259712 * k + 758603) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2275810) = 1889568 * k + 1137905 := by
    unfold C
    simp [show (3779136 * k + 2275810) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1137905) = 5668704 * k + 3413716 := by
    unfold C
    simp [show (1889568 * k + 1137905) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3413716) = 2834352 * k + 1706858 := by
    unfold C
    simp [show (5668704 * k + 3413716) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1706858) = 1417176 * k + 853429 := by
    unfold C
    simp [show (2834352 * k + 1706858) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 853429) = 4251528 * k + 2560288 := by
    unfold C
    simp [show (1417176 * k + 853429) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2560288) = 2125764 * k + 1280144 := by
    unfold C
    simp [show (4251528 * k + 2560288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1280144) = 1062882 * k + 640072 := by
    unfold C
    simp [show (2125764 * k + 1280144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 640072) = 531441 * k + 320036 := by
    unfold C
    simp [show (1062882 * k + 640072) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 631455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 631455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_631615 : ∀ k : Nat,
    iterate (1048576 * k + 631615) 32 = 531441 * k + 320117 ∧
      531441 * k + 320117 < 1048576 * k + 631615 := by
  intro k
  have h1 : C (1048576 * k + 631615) = 3145728 * k + 1894846 := by
    unfold C
    simp [show (1048576 * k + 631615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1894846) = 1572864 * k + 947423 := by
    unfold C
    simp [show (3145728 * k + 1894846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 947423) = 4718592 * k + 2842270 := by
    unfold C
    simp [show (1572864 * k + 947423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2842270) = 2359296 * k + 1421135 := by
    unfold C
    simp [show (4718592 * k + 2842270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1421135) = 7077888 * k + 4263406 := by
    unfold C
    simp [show (2359296 * k + 1421135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4263406) = 3538944 * k + 2131703 := by
    unfold C
    simp [show (7077888 * k + 4263406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2131703) = 10616832 * k + 6395110 := by
    unfold C
    simp [show (3538944 * k + 2131703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6395110) = 5308416 * k + 3197555 := by
    unfold C
    simp [show (10616832 * k + 6395110) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3197555) = 15925248 * k + 9592666 := by
    unfold C
    simp [show (5308416 * k + 3197555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9592666) = 7962624 * k + 4796333 := by
    unfold C
    simp [show (15925248 * k + 9592666) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4796333) = 23887872 * k + 14389000 := by
    unfold C
    simp [show (7962624 * k + 4796333) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14389000) = 11943936 * k + 7194500 := by
    unfold C
    simp [show (23887872 * k + 14389000) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7194500) = 5971968 * k + 3597250 := by
    unfold C
    simp [show (11943936 * k + 7194500) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3597250) = 2985984 * k + 1798625 := by
    unfold C
    simp [show (5971968 * k + 3597250) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1798625) = 8957952 * k + 5395876 := by
    unfold C
    simp [show (2985984 * k + 1798625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5395876) = 4478976 * k + 2697938 := by
    unfold C
    simp [show (8957952 * k + 5395876) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2697938) = 2239488 * k + 1348969 := by
    unfold C
    simp [show (4478976 * k + 2697938) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1348969) = 6718464 * k + 4046908 := by
    unfold C
    simp [show (2239488 * k + 1348969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4046908) = 3359232 * k + 2023454 := by
    unfold C
    simp [show (6718464 * k + 4046908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2023454) = 1679616 * k + 1011727 := by
    unfold C
    simp [show (3359232 * k + 2023454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1011727) = 5038848 * k + 3035182 := by
    unfold C
    simp [show (1679616 * k + 1011727) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3035182) = 2519424 * k + 1517591 := by
    unfold C
    simp [show (5038848 * k + 3035182) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1517591) = 7558272 * k + 4552774 := by
    unfold C
    simp [show (2519424 * k + 1517591) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4552774) = 3779136 * k + 2276387 := by
    unfold C
    simp [show (7558272 * k + 4552774) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2276387) = 11337408 * k + 6829162 := by
    unfold C
    simp [show (3779136 * k + 2276387) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6829162) = 5668704 * k + 3414581 := by
    unfold C
    simp [show (11337408 * k + 6829162) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3414581) = 17006112 * k + 10243744 := by
    unfold C
    simp [show (5668704 * k + 3414581) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10243744) = 8503056 * k + 5121872 := by
    unfold C
    simp [show (17006112 * k + 10243744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5121872) = 4251528 * k + 2560936 := by
    unfold C
    simp [show (8503056 * k + 5121872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2560936) = 2125764 * k + 1280468 := by
    unfold C
    simp [show (4251528 * k + 2560936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1280468) = 1062882 * k + 640234 := by
    unfold C
    simp [show (2125764 * k + 1280468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 640234) = 531441 * k + 320117 := by
    unfold C
    simp [show (1062882 * k + 640234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 631615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 631615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_631935 : ∀ k : Nat,
    iterate (1048576 * k + 631935) 32 = 531441 * k + 320279 ∧
      531441 * k + 320279 < 1048576 * k + 631935 := by
  intro k
  have h1 : C (1048576 * k + 631935) = 3145728 * k + 1895806 := by
    unfold C
    simp [show (1048576 * k + 631935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1895806) = 1572864 * k + 947903 := by
    unfold C
    simp [show (3145728 * k + 1895806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 947903) = 4718592 * k + 2843710 := by
    unfold C
    simp [show (1572864 * k + 947903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2843710) = 2359296 * k + 1421855 := by
    unfold C
    simp [show (4718592 * k + 2843710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1421855) = 7077888 * k + 4265566 := by
    unfold C
    simp [show (2359296 * k + 1421855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4265566) = 3538944 * k + 2132783 := by
    unfold C
    simp [show (7077888 * k + 4265566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2132783) = 10616832 * k + 6398350 := by
    unfold C
    simp [show (3538944 * k + 2132783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6398350) = 5308416 * k + 3199175 := by
    unfold C
    simp [show (10616832 * k + 6398350) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3199175) = 15925248 * k + 9597526 := by
    unfold C
    simp [show (5308416 * k + 3199175) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9597526) = 7962624 * k + 4798763 := by
    unfold C
    simp [show (15925248 * k + 9597526) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4798763) = 23887872 * k + 14396290 := by
    unfold C
    simp [show (7962624 * k + 4798763) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14396290) = 11943936 * k + 7198145 := by
    unfold C
    simp [show (23887872 * k + 14396290) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7198145) = 35831808 * k + 21594436 := by
    unfold C
    simp [show (11943936 * k + 7198145) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21594436) = 17915904 * k + 10797218 := by
    unfold C
    simp [show (35831808 * k + 21594436) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10797218) = 8957952 * k + 5398609 := by
    unfold C
    simp [show (17915904 * k + 10797218) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5398609) = 26873856 * k + 16195828 := by
    unfold C
    simp [show (8957952 * k + 5398609) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16195828) = 13436928 * k + 8097914 := by
    unfold C
    simp [show (26873856 * k + 16195828) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8097914) = 6718464 * k + 4048957 := by
    unfold C
    simp [show (13436928 * k + 8097914) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4048957) = 20155392 * k + 12146872 := by
    unfold C
    simp [show (6718464 * k + 4048957) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12146872) = 10077696 * k + 6073436 := by
    unfold C
    simp [show (20155392 * k + 12146872) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6073436) = 5038848 * k + 3036718 := by
    unfold C
    simp [show (10077696 * k + 6073436) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3036718) = 2519424 * k + 1518359 := by
    unfold C
    simp [show (5038848 * k + 3036718) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1518359) = 7558272 * k + 4555078 := by
    unfold C
    simp [show (2519424 * k + 1518359) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4555078) = 3779136 * k + 2277539 := by
    unfold C
    simp [show (7558272 * k + 4555078) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2277539) = 11337408 * k + 6832618 := by
    unfold C
    simp [show (3779136 * k + 2277539) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6832618) = 5668704 * k + 3416309 := by
    unfold C
    simp [show (11337408 * k + 6832618) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3416309) = 17006112 * k + 10248928 := by
    unfold C
    simp [show (5668704 * k + 3416309) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10248928) = 8503056 * k + 5124464 := by
    unfold C
    simp [show (17006112 * k + 10248928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5124464) = 4251528 * k + 2562232 := by
    unfold C
    simp [show (8503056 * k + 5124464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2562232) = 2125764 * k + 1281116 := by
    unfold C
    simp [show (4251528 * k + 2562232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1281116) = 1062882 * k + 640558 := by
    unfold C
    simp [show (2125764 * k + 1281116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 640558) = 531441 * k + 320279 := by
    unfold C
    simp [show (1062882 * k + 640558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 631935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 631935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_632223 : ∀ k : Nat,
    iterate (1048576 * k + 632223) 32 = 531441 * k + 320425 ∧
      531441 * k + 320425 < 1048576 * k + 632223 := by
  intro k
  have h1 : C (1048576 * k + 632223) = 3145728 * k + 1896670 := by
    unfold C
    simp [show (1048576 * k + 632223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1896670) = 1572864 * k + 948335 := by
    unfold C
    simp [show (3145728 * k + 1896670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 948335) = 4718592 * k + 2845006 := by
    unfold C
    simp [show (1572864 * k + 948335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2845006) = 2359296 * k + 1422503 := by
    unfold C
    simp [show (4718592 * k + 2845006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1422503) = 7077888 * k + 4267510 := by
    unfold C
    simp [show (2359296 * k + 1422503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4267510) = 3538944 * k + 2133755 := by
    unfold C
    simp [show (7077888 * k + 4267510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2133755) = 10616832 * k + 6401266 := by
    unfold C
    simp [show (3538944 * k + 2133755) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6401266) = 5308416 * k + 3200633 := by
    unfold C
    simp [show (10616832 * k + 6401266) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3200633) = 15925248 * k + 9601900 := by
    unfold C
    simp [show (5308416 * k + 3200633) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9601900) = 7962624 * k + 4800950 := by
    unfold C
    simp [show (15925248 * k + 9601900) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4800950) = 3981312 * k + 2400475 := by
    unfold C
    simp [show (7962624 * k + 4800950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2400475) = 11943936 * k + 7201426 := by
    unfold C
    simp [show (3981312 * k + 2400475) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7201426) = 5971968 * k + 3600713 := by
    unfold C
    simp [show (11943936 * k + 7201426) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3600713) = 17915904 * k + 10802140 := by
    unfold C
    simp [show (5971968 * k + 3600713) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10802140) = 8957952 * k + 5401070 := by
    unfold C
    simp [show (17915904 * k + 10802140) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5401070) = 4478976 * k + 2700535 := by
    unfold C
    simp [show (8957952 * k + 5401070) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2700535) = 13436928 * k + 8101606 := by
    unfold C
    simp [show (4478976 * k + 2700535) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8101606) = 6718464 * k + 4050803 := by
    unfold C
    simp [show (13436928 * k + 8101606) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4050803) = 20155392 * k + 12152410 := by
    unfold C
    simp [show (6718464 * k + 4050803) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12152410) = 10077696 * k + 6076205 := by
    unfold C
    simp [show (20155392 * k + 12152410) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6076205) = 30233088 * k + 18228616 := by
    unfold C
    simp [show (10077696 * k + 6076205) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18228616) = 15116544 * k + 9114308 := by
    unfold C
    simp [show (30233088 * k + 18228616) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9114308) = 7558272 * k + 4557154 := by
    unfold C
    simp [show (15116544 * k + 9114308) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4557154) = 3779136 * k + 2278577 := by
    unfold C
    simp [show (7558272 * k + 4557154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2278577) = 11337408 * k + 6835732 := by
    unfold C
    simp [show (3779136 * k + 2278577) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6835732) = 5668704 * k + 3417866 := by
    unfold C
    simp [show (11337408 * k + 6835732) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3417866) = 2834352 * k + 1708933 := by
    unfold C
    simp [show (5668704 * k + 3417866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1708933) = 8503056 * k + 5126800 := by
    unfold C
    simp [show (2834352 * k + 1708933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5126800) = 4251528 * k + 2563400 := by
    unfold C
    simp [show (8503056 * k + 5126800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2563400) = 2125764 * k + 1281700 := by
    unfold C
    simp [show (4251528 * k + 2563400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1281700) = 1062882 * k + 640850 := by
    unfold C
    simp [show (2125764 * k + 1281700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 640850) = 531441 * k + 320425 := by
    unfold C
    simp [show (1062882 * k + 640850) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 632223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 632223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_632367 : ∀ k : Nat,
    iterate (1048576 * k + 632367) 32 = 531441 * k + 320498 ∧
      531441 * k + 320498 < 1048576 * k + 632367 := by
  intro k
  have h1 : C (1048576 * k + 632367) = 3145728 * k + 1897102 := by
    unfold C
    simp [show (1048576 * k + 632367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1897102) = 1572864 * k + 948551 := by
    unfold C
    simp [show (3145728 * k + 1897102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 948551) = 4718592 * k + 2845654 := by
    unfold C
    simp [show (1572864 * k + 948551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2845654) = 2359296 * k + 1422827 := by
    unfold C
    simp [show (4718592 * k + 2845654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1422827) = 7077888 * k + 4268482 := by
    unfold C
    simp [show (2359296 * k + 1422827) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4268482) = 3538944 * k + 2134241 := by
    unfold C
    simp [show (7077888 * k + 4268482) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2134241) = 10616832 * k + 6402724 := by
    unfold C
    simp [show (3538944 * k + 2134241) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6402724) = 5308416 * k + 3201362 := by
    unfold C
    simp [show (10616832 * k + 6402724) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3201362) = 2654208 * k + 1600681 := by
    unfold C
    simp [show (5308416 * k + 3201362) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1600681) = 7962624 * k + 4802044 := by
    unfold C
    simp [show (2654208 * k + 1600681) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4802044) = 3981312 * k + 2401022 := by
    unfold C
    simp [show (7962624 * k + 4802044) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2401022) = 1990656 * k + 1200511 := by
    unfold C
    simp [show (3981312 * k + 2401022) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1200511) = 5971968 * k + 3601534 := by
    unfold C
    simp [show (1990656 * k + 1200511) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3601534) = 2985984 * k + 1800767 := by
    unfold C
    simp [show (5971968 * k + 3601534) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1800767) = 8957952 * k + 5402302 := by
    unfold C
    simp [show (2985984 * k + 1800767) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5402302) = 4478976 * k + 2701151 := by
    unfold C
    simp [show (8957952 * k + 5402302) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2701151) = 13436928 * k + 8103454 := by
    unfold C
    simp [show (4478976 * k + 2701151) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8103454) = 6718464 * k + 4051727 := by
    unfold C
    simp [show (13436928 * k + 8103454) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4051727) = 20155392 * k + 12155182 := by
    unfold C
    simp [show (6718464 * k + 4051727) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12155182) = 10077696 * k + 6077591 := by
    unfold C
    simp [show (20155392 * k + 12155182) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6077591) = 30233088 * k + 18232774 := by
    unfold C
    simp [show (10077696 * k + 6077591) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18232774) = 15116544 * k + 9116387 := by
    unfold C
    simp [show (30233088 * k + 18232774) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9116387) = 45349632 * k + 27349162 := by
    unfold C
    simp [show (15116544 * k + 9116387) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27349162) = 22674816 * k + 13674581 := by
    unfold C
    simp [show (45349632 * k + 27349162) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13674581) = 68024448 * k + 41023744 := by
    unfold C
    simp [show (22674816 * k + 13674581) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 41023744) = 34012224 * k + 20511872 := by
    unfold C
    simp [show (68024448 * k + 41023744) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 20511872) = 17006112 * k + 10255936 := by
    unfold C
    simp [show (34012224 * k + 20511872) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10255936) = 8503056 * k + 5127968 := by
    unfold C
    simp [show (17006112 * k + 10255936) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5127968) = 4251528 * k + 2563984 := by
    unfold C
    simp [show (8503056 * k + 5127968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2563984) = 2125764 * k + 1281992 := by
    unfold C
    simp [show (4251528 * k + 2563984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1281992) = 1062882 * k + 640996 := by
    unfold C
    simp [show (2125764 * k + 1281992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 640996) = 531441 * k + 320498 := by
    unfold C
    simp [show (1062882 * k + 640996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 632367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 632367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_632743 : ∀ k : Nat,
    iterate (1048576 * k + 632743) 32 = 531441 * k + 320689 ∧
      531441 * k + 320689 < 1048576 * k + 632743 := by
  intro k
  have h1 : C (1048576 * k + 632743) = 3145728 * k + 1898230 := by
    unfold C
    simp [show (1048576 * k + 632743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1898230) = 1572864 * k + 949115 := by
    unfold C
    simp [show (3145728 * k + 1898230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 949115) = 4718592 * k + 2847346 := by
    unfold C
    simp [show (1572864 * k + 949115) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2847346) = 2359296 * k + 1423673 := by
    unfold C
    simp [show (4718592 * k + 2847346) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1423673) = 7077888 * k + 4271020 := by
    unfold C
    simp [show (2359296 * k + 1423673) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4271020) = 3538944 * k + 2135510 := by
    unfold C
    simp [show (7077888 * k + 4271020) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2135510) = 1769472 * k + 1067755 := by
    unfold C
    simp [show (3538944 * k + 2135510) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1067755) = 5308416 * k + 3203266 := by
    unfold C
    simp [show (1769472 * k + 1067755) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3203266) = 2654208 * k + 1601633 := by
    unfold C
    simp [show (5308416 * k + 3203266) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1601633) = 7962624 * k + 4804900 := by
    unfold C
    simp [show (2654208 * k + 1601633) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4804900) = 3981312 * k + 2402450 := by
    unfold C
    simp [show (7962624 * k + 4804900) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2402450) = 1990656 * k + 1201225 := by
    unfold C
    simp [show (3981312 * k + 2402450) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1201225) = 5971968 * k + 3603676 := by
    unfold C
    simp [show (1990656 * k + 1201225) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3603676) = 2985984 * k + 1801838 := by
    unfold C
    simp [show (5971968 * k + 3603676) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1801838) = 1492992 * k + 900919 := by
    unfold C
    simp [show (2985984 * k + 1801838) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 900919) = 4478976 * k + 2702758 := by
    unfold C
    simp [show (1492992 * k + 900919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2702758) = 2239488 * k + 1351379 := by
    unfold C
    simp [show (4478976 * k + 2702758) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1351379) = 6718464 * k + 4054138 := by
    unfold C
    simp [show (2239488 * k + 1351379) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4054138) = 3359232 * k + 2027069 := by
    unfold C
    simp [show (6718464 * k + 4054138) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2027069) = 10077696 * k + 6081208 := by
    unfold C
    simp [show (3359232 * k + 2027069) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6081208) = 5038848 * k + 3040604 := by
    unfold C
    simp [show (10077696 * k + 6081208) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3040604) = 2519424 * k + 1520302 := by
    unfold C
    simp [show (5038848 * k + 3040604) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1520302) = 1259712 * k + 760151 := by
    unfold C
    simp [show (2519424 * k + 1520302) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 760151) = 3779136 * k + 2280454 := by
    unfold C
    simp [show (1259712 * k + 760151) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2280454) = 1889568 * k + 1140227 := by
    unfold C
    simp [show (3779136 * k + 2280454) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1140227) = 5668704 * k + 3420682 := by
    unfold C
    simp [show (1889568 * k + 1140227) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3420682) = 2834352 * k + 1710341 := by
    unfold C
    simp [show (5668704 * k + 3420682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1710341) = 8503056 * k + 5131024 := by
    unfold C
    simp [show (2834352 * k + 1710341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5131024) = 4251528 * k + 2565512 := by
    unfold C
    simp [show (8503056 * k + 5131024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2565512) = 2125764 * k + 1282756 := by
    unfold C
    simp [show (4251528 * k + 2565512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1282756) = 1062882 * k + 641378 := by
    unfold C
    simp [show (2125764 * k + 1282756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 641378) = 531441 * k + 320689 := by
    unfold C
    simp [show (1062882 * k + 641378) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 632743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 632743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_633319 : ∀ k : Nat,
    iterate (1048576 * k + 633319) 32 = 531441 * k + 320981 ∧
      531441 * k + 320981 < 1048576 * k + 633319 := by
  intro k
  have h1 : C (1048576 * k + 633319) = 3145728 * k + 1899958 := by
    unfold C
    simp [show (1048576 * k + 633319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1899958) = 1572864 * k + 949979 := by
    unfold C
    simp [show (3145728 * k + 1899958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 949979) = 4718592 * k + 2849938 := by
    unfold C
    simp [show (1572864 * k + 949979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2849938) = 2359296 * k + 1424969 := by
    unfold C
    simp [show (4718592 * k + 2849938) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1424969) = 7077888 * k + 4274908 := by
    unfold C
    simp [show (2359296 * k + 1424969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4274908) = 3538944 * k + 2137454 := by
    unfold C
    simp [show (7077888 * k + 4274908) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2137454) = 1769472 * k + 1068727 := by
    unfold C
    simp [show (3538944 * k + 2137454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1068727) = 5308416 * k + 3206182 := by
    unfold C
    simp [show (1769472 * k + 1068727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3206182) = 2654208 * k + 1603091 := by
    unfold C
    simp [show (5308416 * k + 3206182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1603091) = 7962624 * k + 4809274 := by
    unfold C
    simp [show (2654208 * k + 1603091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4809274) = 3981312 * k + 2404637 := by
    unfold C
    simp [show (7962624 * k + 4809274) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2404637) = 11943936 * k + 7213912 := by
    unfold C
    simp [show (3981312 * k + 2404637) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7213912) = 5971968 * k + 3606956 := by
    unfold C
    simp [show (11943936 * k + 7213912) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3606956) = 2985984 * k + 1803478 := by
    unfold C
    simp [show (5971968 * k + 3606956) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1803478) = 1492992 * k + 901739 := by
    unfold C
    simp [show (2985984 * k + 1803478) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 901739) = 4478976 * k + 2705218 := by
    unfold C
    simp [show (1492992 * k + 901739) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2705218) = 2239488 * k + 1352609 := by
    unfold C
    simp [show (4478976 * k + 2705218) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1352609) = 6718464 * k + 4057828 := by
    unfold C
    simp [show (2239488 * k + 1352609) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4057828) = 3359232 * k + 2028914 := by
    unfold C
    simp [show (6718464 * k + 4057828) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2028914) = 1679616 * k + 1014457 := by
    unfold C
    simp [show (3359232 * k + 2028914) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1014457) = 5038848 * k + 3043372 := by
    unfold C
    simp [show (1679616 * k + 1014457) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3043372) = 2519424 * k + 1521686 := by
    unfold C
    simp [show (5038848 * k + 3043372) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1521686) = 1259712 * k + 760843 := by
    unfold C
    simp [show (2519424 * k + 1521686) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 760843) = 3779136 * k + 2282530 := by
    unfold C
    simp [show (1259712 * k + 760843) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2282530) = 1889568 * k + 1141265 := by
    unfold C
    simp [show (3779136 * k + 2282530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1141265) = 5668704 * k + 3423796 := by
    unfold C
    simp [show (1889568 * k + 1141265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3423796) = 2834352 * k + 1711898 := by
    unfold C
    simp [show (5668704 * k + 3423796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1711898) = 1417176 * k + 855949 := by
    unfold C
    simp [show (2834352 * k + 1711898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 855949) = 4251528 * k + 2567848 := by
    unfold C
    simp [show (1417176 * k + 855949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2567848) = 2125764 * k + 1283924 := by
    unfold C
    simp [show (4251528 * k + 2567848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1283924) = 1062882 * k + 641962 := by
    unfold C
    simp [show (2125764 * k + 1283924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 641962) = 531441 * k + 320981 := by
    unfold C
    simp [show (1062882 * k + 641962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 633319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 633319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_633767 : ∀ k : Nat,
    iterate (1048576 * k + 633767) 32 = 531441 * k + 321208 ∧
      531441 * k + 321208 < 1048576 * k + 633767 := by
  intro k
  have h1 : C (1048576 * k + 633767) = 3145728 * k + 1901302 := by
    unfold C
    simp [show (1048576 * k + 633767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1901302) = 1572864 * k + 950651 := by
    unfold C
    simp [show (3145728 * k + 1901302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 950651) = 4718592 * k + 2851954 := by
    unfold C
    simp [show (1572864 * k + 950651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2851954) = 2359296 * k + 1425977 := by
    unfold C
    simp [show (4718592 * k + 2851954) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1425977) = 7077888 * k + 4277932 := by
    unfold C
    simp [show (2359296 * k + 1425977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4277932) = 3538944 * k + 2138966 := by
    unfold C
    simp [show (7077888 * k + 4277932) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2138966) = 1769472 * k + 1069483 := by
    unfold C
    simp [show (3538944 * k + 2138966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1069483) = 5308416 * k + 3208450 := by
    unfold C
    simp [show (1769472 * k + 1069483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3208450) = 2654208 * k + 1604225 := by
    unfold C
    simp [show (5308416 * k + 3208450) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1604225) = 7962624 * k + 4812676 := by
    unfold C
    simp [show (2654208 * k + 1604225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4812676) = 3981312 * k + 2406338 := by
    unfold C
    simp [show (7962624 * k + 4812676) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2406338) = 1990656 * k + 1203169 := by
    unfold C
    simp [show (3981312 * k + 2406338) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1203169) = 5971968 * k + 3609508 := by
    unfold C
    simp [show (1990656 * k + 1203169) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3609508) = 2985984 * k + 1804754 := by
    unfold C
    simp [show (5971968 * k + 3609508) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1804754) = 1492992 * k + 902377 := by
    unfold C
    simp [show (2985984 * k + 1804754) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 902377) = 4478976 * k + 2707132 := by
    unfold C
    simp [show (1492992 * k + 902377) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2707132) = 2239488 * k + 1353566 := by
    unfold C
    simp [show (4478976 * k + 2707132) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1353566) = 1119744 * k + 676783 := by
    unfold C
    simp [show (2239488 * k + 1353566) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 676783) = 3359232 * k + 2030350 := by
    unfold C
    simp [show (1119744 * k + 676783) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2030350) = 1679616 * k + 1015175 := by
    unfold C
    simp [show (3359232 * k + 2030350) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1015175) = 5038848 * k + 3045526 := by
    unfold C
    simp [show (1679616 * k + 1015175) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3045526) = 2519424 * k + 1522763 := by
    unfold C
    simp [show (5038848 * k + 3045526) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1522763) = 7558272 * k + 4568290 := by
    unfold C
    simp [show (2519424 * k + 1522763) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4568290) = 3779136 * k + 2284145 := by
    unfold C
    simp [show (7558272 * k + 4568290) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2284145) = 11337408 * k + 6852436 := by
    unfold C
    simp [show (3779136 * k + 2284145) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6852436) = 5668704 * k + 3426218 := by
    unfold C
    simp [show (11337408 * k + 6852436) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3426218) = 2834352 * k + 1713109 := by
    unfold C
    simp [show (5668704 * k + 3426218) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1713109) = 8503056 * k + 5139328 := by
    unfold C
    simp [show (2834352 * k + 1713109) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5139328) = 4251528 * k + 2569664 := by
    unfold C
    simp [show (8503056 * k + 5139328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2569664) = 2125764 * k + 1284832 := by
    unfold C
    simp [show (4251528 * k + 2569664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1284832) = 1062882 * k + 642416 := by
    unfold C
    simp [show (2125764 * k + 1284832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 642416) = 531441 * k + 321208 := by
    unfold C
    simp [show (1062882 * k + 642416) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 633767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 633767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_634087 : ∀ k : Nat,
    iterate (1048576 * k + 634087) 32 = 531441 * k + 321370 ∧
      531441 * k + 321370 < 1048576 * k + 634087 := by
  intro k
  have h1 : C (1048576 * k + 634087) = 3145728 * k + 1902262 := by
    unfold C
    simp [show (1048576 * k + 634087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1902262) = 1572864 * k + 951131 := by
    unfold C
    simp [show (3145728 * k + 1902262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 951131) = 4718592 * k + 2853394 := by
    unfold C
    simp [show (1572864 * k + 951131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2853394) = 2359296 * k + 1426697 := by
    unfold C
    simp [show (4718592 * k + 2853394) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1426697) = 7077888 * k + 4280092 := by
    unfold C
    simp [show (2359296 * k + 1426697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4280092) = 3538944 * k + 2140046 := by
    unfold C
    simp [show (7077888 * k + 4280092) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2140046) = 1769472 * k + 1070023 := by
    unfold C
    simp [show (3538944 * k + 2140046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1070023) = 5308416 * k + 3210070 := by
    unfold C
    simp [show (1769472 * k + 1070023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3210070) = 2654208 * k + 1605035 := by
    unfold C
    simp [show (5308416 * k + 3210070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1605035) = 7962624 * k + 4815106 := by
    unfold C
    simp [show (2654208 * k + 1605035) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4815106) = 3981312 * k + 2407553 := by
    unfold C
    simp [show (7962624 * k + 4815106) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2407553) = 11943936 * k + 7222660 := by
    unfold C
    simp [show (3981312 * k + 2407553) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7222660) = 5971968 * k + 3611330 := by
    unfold C
    simp [show (11943936 * k + 7222660) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3611330) = 2985984 * k + 1805665 := by
    unfold C
    simp [show (5971968 * k + 3611330) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1805665) = 8957952 * k + 5416996 := by
    unfold C
    simp [show (2985984 * k + 1805665) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5416996) = 4478976 * k + 2708498 := by
    unfold C
    simp [show (8957952 * k + 5416996) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2708498) = 2239488 * k + 1354249 := by
    unfold C
    simp [show (4478976 * k + 2708498) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1354249) = 6718464 * k + 4062748 := by
    unfold C
    simp [show (2239488 * k + 1354249) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4062748) = 3359232 * k + 2031374 := by
    unfold C
    simp [show (6718464 * k + 4062748) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2031374) = 1679616 * k + 1015687 := by
    unfold C
    simp [show (3359232 * k + 2031374) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1015687) = 5038848 * k + 3047062 := by
    unfold C
    simp [show (1679616 * k + 1015687) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3047062) = 2519424 * k + 1523531 := by
    unfold C
    simp [show (5038848 * k + 3047062) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1523531) = 7558272 * k + 4570594 := by
    unfold C
    simp [show (2519424 * k + 1523531) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4570594) = 3779136 * k + 2285297 := by
    unfold C
    simp [show (7558272 * k + 4570594) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2285297) = 11337408 * k + 6855892 := by
    unfold C
    simp [show (3779136 * k + 2285297) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6855892) = 5668704 * k + 3427946 := by
    unfold C
    simp [show (11337408 * k + 6855892) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3427946) = 2834352 * k + 1713973 := by
    unfold C
    simp [show (5668704 * k + 3427946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1713973) = 8503056 * k + 5141920 := by
    unfold C
    simp [show (2834352 * k + 1713973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5141920) = 4251528 * k + 2570960 := by
    unfold C
    simp [show (8503056 * k + 5141920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2570960) = 2125764 * k + 1285480 := by
    unfold C
    simp [show (4251528 * k + 2570960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1285480) = 1062882 * k + 642740 := by
    unfold C
    simp [show (2125764 * k + 1285480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 642740) = 531441 * k + 321370 := by
    unfold C
    simp [show (1062882 * k + 642740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 634087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 634087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_634971 : ∀ k : Nat,
    iterate (1048576 * k + 634971) 32 = 531441 * k + 321818 ∧
      531441 * k + 321818 < 1048576 * k + 634971 := by
  intro k
  have h1 : C (1048576 * k + 634971) = 3145728 * k + 1904914 := by
    unfold C
    simp [show (1048576 * k + 634971) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1904914) = 1572864 * k + 952457 := by
    unfold C
    simp [show (3145728 * k + 1904914) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 952457) = 4718592 * k + 2857372 := by
    unfold C
    simp [show (1572864 * k + 952457) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2857372) = 2359296 * k + 1428686 := by
    unfold C
    simp [show (4718592 * k + 2857372) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1428686) = 1179648 * k + 714343 := by
    unfold C
    simp [show (2359296 * k + 1428686) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 714343) = 3538944 * k + 2143030 := by
    unfold C
    simp [show (1179648 * k + 714343) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2143030) = 1769472 * k + 1071515 := by
    unfold C
    simp [show (3538944 * k + 2143030) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1071515) = 5308416 * k + 3214546 := by
    unfold C
    simp [show (1769472 * k + 1071515) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3214546) = 2654208 * k + 1607273 := by
    unfold C
    simp [show (5308416 * k + 3214546) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1607273) = 7962624 * k + 4821820 := by
    unfold C
    simp [show (2654208 * k + 1607273) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4821820) = 3981312 * k + 2410910 := by
    unfold C
    simp [show (7962624 * k + 4821820) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2410910) = 1990656 * k + 1205455 := by
    unfold C
    simp [show (3981312 * k + 2410910) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1205455) = 5971968 * k + 3616366 := by
    unfold C
    simp [show (1990656 * k + 1205455) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3616366) = 2985984 * k + 1808183 := by
    unfold C
    simp [show (5971968 * k + 3616366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1808183) = 8957952 * k + 5424550 := by
    unfold C
    simp [show (2985984 * k + 1808183) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5424550) = 4478976 * k + 2712275 := by
    unfold C
    simp [show (8957952 * k + 5424550) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2712275) = 13436928 * k + 8136826 := by
    unfold C
    simp [show (4478976 * k + 2712275) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8136826) = 6718464 * k + 4068413 := by
    unfold C
    simp [show (13436928 * k + 8136826) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4068413) = 20155392 * k + 12205240 := by
    unfold C
    simp [show (6718464 * k + 4068413) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12205240) = 10077696 * k + 6102620 := by
    unfold C
    simp [show (20155392 * k + 12205240) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6102620) = 5038848 * k + 3051310 := by
    unfold C
    simp [show (10077696 * k + 6102620) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3051310) = 2519424 * k + 1525655 := by
    unfold C
    simp [show (5038848 * k + 3051310) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1525655) = 7558272 * k + 4576966 := by
    unfold C
    simp [show (2519424 * k + 1525655) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4576966) = 3779136 * k + 2288483 := by
    unfold C
    simp [show (7558272 * k + 4576966) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2288483) = 11337408 * k + 6865450 := by
    unfold C
    simp [show (3779136 * k + 2288483) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6865450) = 5668704 * k + 3432725 := by
    unfold C
    simp [show (11337408 * k + 6865450) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3432725) = 17006112 * k + 10298176 := by
    unfold C
    simp [show (5668704 * k + 3432725) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10298176) = 8503056 * k + 5149088 := by
    unfold C
    simp [show (17006112 * k + 10298176) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5149088) = 4251528 * k + 2574544 := by
    unfold C
    simp [show (8503056 * k + 5149088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2574544) = 2125764 * k + 1287272 := by
    unfold C
    simp [show (4251528 * k + 2574544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1287272) = 1062882 * k + 643636 := by
    unfold C
    simp [show (2125764 * k + 1287272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 643636) = 531441 * k + 321818 := by
    unfold C
    simp [show (1062882 * k + 643636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 634971) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 634971)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_635087 : ∀ k : Nat,
    iterate (1048576 * k + 635087) 32 = 531441 * k + 321877 ∧
      531441 * k + 321877 < 1048576 * k + 635087 := by
  intro k
  have h1 : C (1048576 * k + 635087) = 3145728 * k + 1905262 := by
    unfold C
    simp [show (1048576 * k + 635087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1905262) = 1572864 * k + 952631 := by
    unfold C
    simp [show (3145728 * k + 1905262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 952631) = 4718592 * k + 2857894 := by
    unfold C
    simp [show (1572864 * k + 952631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2857894) = 2359296 * k + 1428947 := by
    unfold C
    simp [show (4718592 * k + 2857894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1428947) = 7077888 * k + 4286842 := by
    unfold C
    simp [show (2359296 * k + 1428947) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4286842) = 3538944 * k + 2143421 := by
    unfold C
    simp [show (7077888 * k + 4286842) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2143421) = 10616832 * k + 6430264 := by
    unfold C
    simp [show (3538944 * k + 2143421) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6430264) = 5308416 * k + 3215132 := by
    unfold C
    simp [show (10616832 * k + 6430264) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3215132) = 2654208 * k + 1607566 := by
    unfold C
    simp [show (5308416 * k + 3215132) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1607566) = 1327104 * k + 803783 := by
    unfold C
    simp [show (2654208 * k + 1607566) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 803783) = 3981312 * k + 2411350 := by
    unfold C
    simp [show (1327104 * k + 803783) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2411350) = 1990656 * k + 1205675 := by
    unfold C
    simp [show (3981312 * k + 2411350) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1205675) = 5971968 * k + 3617026 := by
    unfold C
    simp [show (1990656 * k + 1205675) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3617026) = 2985984 * k + 1808513 := by
    unfold C
    simp [show (5971968 * k + 3617026) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1808513) = 8957952 * k + 5425540 := by
    unfold C
    simp [show (2985984 * k + 1808513) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5425540) = 4478976 * k + 2712770 := by
    unfold C
    simp [show (8957952 * k + 5425540) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2712770) = 2239488 * k + 1356385 := by
    unfold C
    simp [show (4478976 * k + 2712770) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1356385) = 6718464 * k + 4069156 := by
    unfold C
    simp [show (2239488 * k + 1356385) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4069156) = 3359232 * k + 2034578 := by
    unfold C
    simp [show (6718464 * k + 4069156) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2034578) = 1679616 * k + 1017289 := by
    unfold C
    simp [show (3359232 * k + 2034578) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1017289) = 5038848 * k + 3051868 := by
    unfold C
    simp [show (1679616 * k + 1017289) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3051868) = 2519424 * k + 1525934 := by
    unfold C
    simp [show (5038848 * k + 3051868) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1525934) = 1259712 * k + 762967 := by
    unfold C
    simp [show (2519424 * k + 1525934) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 762967) = 3779136 * k + 2288902 := by
    unfold C
    simp [show (1259712 * k + 762967) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2288902) = 1889568 * k + 1144451 := by
    unfold C
    simp [show (3779136 * k + 2288902) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1144451) = 5668704 * k + 3433354 := by
    unfold C
    simp [show (1889568 * k + 1144451) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3433354) = 2834352 * k + 1716677 := by
    unfold C
    simp [show (5668704 * k + 3433354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1716677) = 8503056 * k + 5150032 := by
    unfold C
    simp [show (2834352 * k + 1716677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5150032) = 4251528 * k + 2575016 := by
    unfold C
    simp [show (8503056 * k + 5150032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2575016) = 2125764 * k + 1287508 := by
    unfold C
    simp [show (4251528 * k + 2575016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1287508) = 1062882 * k + 643754 := by
    unfold C
    simp [show (2125764 * k + 1287508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 643754) = 531441 * k + 321877 := by
    unfold C
    simp [show (1062882 * k + 643754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 635087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 635087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_635295 : ∀ k : Nat,
    iterate (1048576 * k + 635295) 32 = 531441 * k + 321982 ∧
      531441 * k + 321982 < 1048576 * k + 635295 := by
  intro k
  have h1 : C (1048576 * k + 635295) = 3145728 * k + 1905886 := by
    unfold C
    simp [show (1048576 * k + 635295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1905886) = 1572864 * k + 952943 := by
    unfold C
    simp [show (3145728 * k + 1905886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 952943) = 4718592 * k + 2858830 := by
    unfold C
    simp [show (1572864 * k + 952943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2858830) = 2359296 * k + 1429415 := by
    unfold C
    simp [show (4718592 * k + 2858830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1429415) = 7077888 * k + 4288246 := by
    unfold C
    simp [show (2359296 * k + 1429415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4288246) = 3538944 * k + 2144123 := by
    unfold C
    simp [show (7077888 * k + 4288246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2144123) = 10616832 * k + 6432370 := by
    unfold C
    simp [show (3538944 * k + 2144123) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6432370) = 5308416 * k + 3216185 := by
    unfold C
    simp [show (10616832 * k + 6432370) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3216185) = 15925248 * k + 9648556 := by
    unfold C
    simp [show (5308416 * k + 3216185) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9648556) = 7962624 * k + 4824278 := by
    unfold C
    simp [show (15925248 * k + 9648556) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4824278) = 3981312 * k + 2412139 := by
    unfold C
    simp [show (7962624 * k + 4824278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2412139) = 11943936 * k + 7236418 := by
    unfold C
    simp [show (3981312 * k + 2412139) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7236418) = 5971968 * k + 3618209 := by
    unfold C
    simp [show (11943936 * k + 7236418) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3618209) = 17915904 * k + 10854628 := by
    unfold C
    simp [show (5971968 * k + 3618209) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10854628) = 8957952 * k + 5427314 := by
    unfold C
    simp [show (17915904 * k + 10854628) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5427314) = 4478976 * k + 2713657 := by
    unfold C
    simp [show (8957952 * k + 5427314) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2713657) = 13436928 * k + 8140972 := by
    unfold C
    simp [show (4478976 * k + 2713657) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8140972) = 6718464 * k + 4070486 := by
    unfold C
    simp [show (13436928 * k + 8140972) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4070486) = 3359232 * k + 2035243 := by
    unfold C
    simp [show (6718464 * k + 4070486) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2035243) = 10077696 * k + 6105730 := by
    unfold C
    simp [show (3359232 * k + 2035243) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6105730) = 5038848 * k + 3052865 := by
    unfold C
    simp [show (10077696 * k + 6105730) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3052865) = 15116544 * k + 9158596 := by
    unfold C
    simp [show (5038848 * k + 3052865) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9158596) = 7558272 * k + 4579298 := by
    unfold C
    simp [show (15116544 * k + 9158596) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4579298) = 3779136 * k + 2289649 := by
    unfold C
    simp [show (7558272 * k + 4579298) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2289649) = 11337408 * k + 6868948 := by
    unfold C
    simp [show (3779136 * k + 2289649) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6868948) = 5668704 * k + 3434474 := by
    unfold C
    simp [show (11337408 * k + 6868948) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3434474) = 2834352 * k + 1717237 := by
    unfold C
    simp [show (5668704 * k + 3434474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1717237) = 8503056 * k + 5151712 := by
    unfold C
    simp [show (2834352 * k + 1717237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5151712) = 4251528 * k + 2575856 := by
    unfold C
    simp [show (8503056 * k + 5151712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2575856) = 2125764 * k + 1287928 := by
    unfold C
    simp [show (4251528 * k + 2575856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1287928) = 1062882 * k + 643964 := by
    unfold C
    simp [show (2125764 * k + 1287928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 643964) = 531441 * k + 321982 := by
    unfold C
    simp [show (1062882 * k + 643964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 635295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 635295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_636031 : ∀ k : Nat,
    iterate (1048576 * k + 636031) 32 = 531441 * k + 322355 ∧
      531441 * k + 322355 < 1048576 * k + 636031 := by
  intro k
  have h1 : C (1048576 * k + 636031) = 3145728 * k + 1908094 := by
    unfold C
    simp [show (1048576 * k + 636031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1908094) = 1572864 * k + 954047 := by
    unfold C
    simp [show (3145728 * k + 1908094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 954047) = 4718592 * k + 2862142 := by
    unfold C
    simp [show (1572864 * k + 954047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2862142) = 2359296 * k + 1431071 := by
    unfold C
    simp [show (4718592 * k + 2862142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1431071) = 7077888 * k + 4293214 := by
    unfold C
    simp [show (2359296 * k + 1431071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4293214) = 3538944 * k + 2146607 := by
    unfold C
    simp [show (7077888 * k + 4293214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2146607) = 10616832 * k + 6439822 := by
    unfold C
    simp [show (3538944 * k + 2146607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6439822) = 5308416 * k + 3219911 := by
    unfold C
    simp [show (10616832 * k + 6439822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3219911) = 15925248 * k + 9659734 := by
    unfold C
    simp [show (5308416 * k + 3219911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9659734) = 7962624 * k + 4829867 := by
    unfold C
    simp [show (15925248 * k + 9659734) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4829867) = 23887872 * k + 14489602 := by
    unfold C
    simp [show (7962624 * k + 4829867) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14489602) = 11943936 * k + 7244801 := by
    unfold C
    simp [show (23887872 * k + 14489602) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7244801) = 35831808 * k + 21734404 := by
    unfold C
    simp [show (11943936 * k + 7244801) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21734404) = 17915904 * k + 10867202 := by
    unfold C
    simp [show (35831808 * k + 21734404) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10867202) = 8957952 * k + 5433601 := by
    unfold C
    simp [show (17915904 * k + 10867202) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5433601) = 26873856 * k + 16300804 := by
    unfold C
    simp [show (8957952 * k + 5433601) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16300804) = 13436928 * k + 8150402 := by
    unfold C
    simp [show (26873856 * k + 16300804) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8150402) = 6718464 * k + 4075201 := by
    unfold C
    simp [show (13436928 * k + 8150402) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4075201) = 20155392 * k + 12225604 := by
    unfold C
    simp [show (6718464 * k + 4075201) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12225604) = 10077696 * k + 6112802 := by
    unfold C
    simp [show (20155392 * k + 12225604) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6112802) = 5038848 * k + 3056401 := by
    unfold C
    simp [show (10077696 * k + 6112802) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3056401) = 15116544 * k + 9169204 := by
    unfold C
    simp [show (5038848 * k + 3056401) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9169204) = 7558272 * k + 4584602 := by
    unfold C
    simp [show (15116544 * k + 9169204) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4584602) = 3779136 * k + 2292301 := by
    unfold C
    simp [show (7558272 * k + 4584602) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2292301) = 11337408 * k + 6876904 := by
    unfold C
    simp [show (3779136 * k + 2292301) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6876904) = 5668704 * k + 3438452 := by
    unfold C
    simp [show (11337408 * k + 6876904) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3438452) = 2834352 * k + 1719226 := by
    unfold C
    simp [show (5668704 * k + 3438452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1719226) = 1417176 * k + 859613 := by
    unfold C
    simp [show (2834352 * k + 1719226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 859613) = 4251528 * k + 2578840 := by
    unfold C
    simp [show (1417176 * k + 859613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2578840) = 2125764 * k + 1289420 := by
    unfold C
    simp [show (4251528 * k + 2578840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1289420) = 1062882 * k + 644710 := by
    unfold C
    simp [show (2125764 * k + 1289420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 644710) = 531441 * k + 322355 := by
    unfold C
    simp [show (1062882 * k + 644710) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 636031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 636031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_636351 : ∀ k : Nat,
    iterate (1048576 * k + 636351) 32 = 531441 * k + 322517 ∧
      531441 * k + 322517 < 1048576 * k + 636351 := by
  intro k
  have h1 : C (1048576 * k + 636351) = 3145728 * k + 1909054 := by
    unfold C
    simp [show (1048576 * k + 636351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1909054) = 1572864 * k + 954527 := by
    unfold C
    simp [show (3145728 * k + 1909054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 954527) = 4718592 * k + 2863582 := by
    unfold C
    simp [show (1572864 * k + 954527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2863582) = 2359296 * k + 1431791 := by
    unfold C
    simp [show (4718592 * k + 2863582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1431791) = 7077888 * k + 4295374 := by
    unfold C
    simp [show (2359296 * k + 1431791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4295374) = 3538944 * k + 2147687 := by
    unfold C
    simp [show (7077888 * k + 4295374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2147687) = 10616832 * k + 6443062 := by
    unfold C
    simp [show (3538944 * k + 2147687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6443062) = 5308416 * k + 3221531 := by
    unfold C
    simp [show (10616832 * k + 6443062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3221531) = 15925248 * k + 9664594 := by
    unfold C
    simp [show (5308416 * k + 3221531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9664594) = 7962624 * k + 4832297 := by
    unfold C
    simp [show (15925248 * k + 9664594) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4832297) = 23887872 * k + 14496892 := by
    unfold C
    simp [show (7962624 * k + 4832297) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14496892) = 11943936 * k + 7248446 := by
    unfold C
    simp [show (23887872 * k + 14496892) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7248446) = 5971968 * k + 3624223 := by
    unfold C
    simp [show (11943936 * k + 7248446) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3624223) = 17915904 * k + 10872670 := by
    unfold C
    simp [show (5971968 * k + 3624223) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10872670) = 8957952 * k + 5436335 := by
    unfold C
    simp [show (17915904 * k + 10872670) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5436335) = 26873856 * k + 16309006 := by
    unfold C
    simp [show (8957952 * k + 5436335) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16309006) = 13436928 * k + 8154503 := by
    unfold C
    simp [show (26873856 * k + 16309006) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8154503) = 40310784 * k + 24463510 := by
    unfold C
    simp [show (13436928 * k + 8154503) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24463510) = 20155392 * k + 12231755 := by
    unfold C
    simp [show (40310784 * k + 24463510) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12231755) = 60466176 * k + 36695266 := by
    unfold C
    simp [show (20155392 * k + 12231755) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 36695266) = 30233088 * k + 18347633 := by
    unfold C
    simp [show (60466176 * k + 36695266) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 18347633) = 90699264 * k + 55042900 := by
    unfold C
    simp [show (30233088 * k + 18347633) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 55042900) = 45349632 * k + 27521450 := by
    unfold C
    simp [show (90699264 * k + 55042900) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 27521450) = 22674816 * k + 13760725 := by
    unfold C
    simp [show (45349632 * k + 27521450) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13760725) = 68024448 * k + 41282176 := by
    unfold C
    simp [show (22674816 * k + 13760725) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 41282176) = 34012224 * k + 20641088 := by
    unfold C
    simp [show (68024448 * k + 41282176) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 20641088) = 17006112 * k + 10320544 := by
    unfold C
    simp [show (34012224 * k + 20641088) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10320544) = 8503056 * k + 5160272 := by
    unfold C
    simp [show (17006112 * k + 10320544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5160272) = 4251528 * k + 2580136 := by
    unfold C
    simp [show (8503056 * k + 5160272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2580136) = 2125764 * k + 1290068 := by
    unfold C
    simp [show (4251528 * k + 2580136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1290068) = 1062882 * k + 645034 := by
    unfold C
    simp [show (2125764 * k + 1290068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 645034) = 531441 * k + 322517 := by
    unfold C
    simp [show (1062882 * k + 645034) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 636351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 636351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_636463 : ∀ k : Nat,
    iterate (1048576 * k + 636463) 32 = 531441 * k + 322574 ∧
      531441 * k + 322574 < 1048576 * k + 636463 := by
  intro k
  have h1 : C (1048576 * k + 636463) = 3145728 * k + 1909390 := by
    unfold C
    simp [show (1048576 * k + 636463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1909390) = 1572864 * k + 954695 := by
    unfold C
    simp [show (3145728 * k + 1909390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 954695) = 4718592 * k + 2864086 := by
    unfold C
    simp [show (1572864 * k + 954695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2864086) = 2359296 * k + 1432043 := by
    unfold C
    simp [show (4718592 * k + 2864086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1432043) = 7077888 * k + 4296130 := by
    unfold C
    simp [show (2359296 * k + 1432043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4296130) = 3538944 * k + 2148065 := by
    unfold C
    simp [show (7077888 * k + 4296130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2148065) = 10616832 * k + 6444196 := by
    unfold C
    simp [show (3538944 * k + 2148065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6444196) = 5308416 * k + 3222098 := by
    unfold C
    simp [show (10616832 * k + 6444196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3222098) = 2654208 * k + 1611049 := by
    unfold C
    simp [show (5308416 * k + 3222098) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1611049) = 7962624 * k + 4833148 := by
    unfold C
    simp [show (2654208 * k + 1611049) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4833148) = 3981312 * k + 2416574 := by
    unfold C
    simp [show (7962624 * k + 4833148) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2416574) = 1990656 * k + 1208287 := by
    unfold C
    simp [show (3981312 * k + 2416574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1208287) = 5971968 * k + 3624862 := by
    unfold C
    simp [show (1990656 * k + 1208287) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3624862) = 2985984 * k + 1812431 := by
    unfold C
    simp [show (5971968 * k + 3624862) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1812431) = 8957952 * k + 5437294 := by
    unfold C
    simp [show (2985984 * k + 1812431) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5437294) = 4478976 * k + 2718647 := by
    unfold C
    simp [show (8957952 * k + 5437294) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2718647) = 13436928 * k + 8155942 := by
    unfold C
    simp [show (4478976 * k + 2718647) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8155942) = 6718464 * k + 4077971 := by
    unfold C
    simp [show (13436928 * k + 8155942) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4077971) = 20155392 * k + 12233914 := by
    unfold C
    simp [show (6718464 * k + 4077971) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12233914) = 10077696 * k + 6116957 := by
    unfold C
    simp [show (20155392 * k + 12233914) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6116957) = 30233088 * k + 18350872 := by
    unfold C
    simp [show (10077696 * k + 6116957) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18350872) = 15116544 * k + 9175436 := by
    unfold C
    simp [show (30233088 * k + 18350872) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9175436) = 7558272 * k + 4587718 := by
    unfold C
    simp [show (15116544 * k + 9175436) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4587718) = 3779136 * k + 2293859 := by
    unfold C
    simp [show (7558272 * k + 4587718) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2293859) = 11337408 * k + 6881578 := by
    unfold C
    simp [show (3779136 * k + 2293859) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6881578) = 5668704 * k + 3440789 := by
    unfold C
    simp [show (11337408 * k + 6881578) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3440789) = 17006112 * k + 10322368 := by
    unfold C
    simp [show (5668704 * k + 3440789) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10322368) = 8503056 * k + 5161184 := by
    unfold C
    simp [show (17006112 * k + 10322368) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5161184) = 4251528 * k + 2580592 := by
    unfold C
    simp [show (8503056 * k + 5161184) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2580592) = 2125764 * k + 1290296 := by
    unfold C
    simp [show (4251528 * k + 2580592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1290296) = 1062882 * k + 645148 := by
    unfold C
    simp [show (2125764 * k + 1290296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 645148) = 531441 * k + 322574 := by
    unfold C
    simp [show (1062882 * k + 645148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 636463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 636463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_637375 : ∀ k : Nat,
    iterate (1048576 * k + 637375) 32 = 531441 * k + 323036 ∧
      531441 * k + 323036 < 1048576 * k + 637375 := by
  intro k
  have h1 : C (1048576 * k + 637375) = 3145728 * k + 1912126 := by
    unfold C
    simp [show (1048576 * k + 637375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1912126) = 1572864 * k + 956063 := by
    unfold C
    simp [show (3145728 * k + 1912126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 956063) = 4718592 * k + 2868190 := by
    unfold C
    simp [show (1572864 * k + 956063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2868190) = 2359296 * k + 1434095 := by
    unfold C
    simp [show (4718592 * k + 2868190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1434095) = 7077888 * k + 4302286 := by
    unfold C
    simp [show (2359296 * k + 1434095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4302286) = 3538944 * k + 2151143 := by
    unfold C
    simp [show (7077888 * k + 4302286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2151143) = 10616832 * k + 6453430 := by
    unfold C
    simp [show (3538944 * k + 2151143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6453430) = 5308416 * k + 3226715 := by
    unfold C
    simp [show (10616832 * k + 6453430) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3226715) = 15925248 * k + 9680146 := by
    unfold C
    simp [show (5308416 * k + 3226715) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9680146) = 7962624 * k + 4840073 := by
    unfold C
    simp [show (15925248 * k + 9680146) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4840073) = 23887872 * k + 14520220 := by
    unfold C
    simp [show (7962624 * k + 4840073) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14520220) = 11943936 * k + 7260110 := by
    unfold C
    simp [show (23887872 * k + 14520220) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7260110) = 5971968 * k + 3630055 := by
    unfold C
    simp [show (11943936 * k + 7260110) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3630055) = 17915904 * k + 10890166 := by
    unfold C
    simp [show (5971968 * k + 3630055) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10890166) = 8957952 * k + 5445083 := by
    unfold C
    simp [show (17915904 * k + 10890166) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5445083) = 26873856 * k + 16335250 := by
    unfold C
    simp [show (8957952 * k + 5445083) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16335250) = 13436928 * k + 8167625 := by
    unfold C
    simp [show (26873856 * k + 16335250) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8167625) = 40310784 * k + 24502876 := by
    unfold C
    simp [show (13436928 * k + 8167625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24502876) = 20155392 * k + 12251438 := by
    unfold C
    simp [show (40310784 * k + 24502876) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12251438) = 10077696 * k + 6125719 := by
    unfold C
    simp [show (20155392 * k + 12251438) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6125719) = 30233088 * k + 18377158 := by
    unfold C
    simp [show (10077696 * k + 6125719) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18377158) = 15116544 * k + 9188579 := by
    unfold C
    simp [show (30233088 * k + 18377158) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9188579) = 45349632 * k + 27565738 := by
    unfold C
    simp [show (15116544 * k + 9188579) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27565738) = 22674816 * k + 13782869 := by
    unfold C
    simp [show (45349632 * k + 27565738) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13782869) = 68024448 * k + 41348608 := by
    unfold C
    simp [show (22674816 * k + 13782869) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 41348608) = 34012224 * k + 20674304 := by
    unfold C
    simp [show (68024448 * k + 41348608) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 20674304) = 17006112 * k + 10337152 := by
    unfold C
    simp [show (34012224 * k + 20674304) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10337152) = 8503056 * k + 5168576 := by
    unfold C
    simp [show (17006112 * k + 10337152) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5168576) = 4251528 * k + 2584288 := by
    unfold C
    simp [show (8503056 * k + 5168576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2584288) = 2125764 * k + 1292144 := by
    unfold C
    simp [show (4251528 * k + 2584288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1292144) = 1062882 * k + 646072 := by
    unfold C
    simp [show (2125764 * k + 1292144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 646072) = 531441 * k + 323036 := by
    unfold C
    simp [show (1062882 * k + 646072) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 637375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 637375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_637759 : ∀ k : Nat,
    iterate (1048576 * k + 637759) 32 = 531441 * k + 323231 ∧
      531441 * k + 323231 < 1048576 * k + 637759 := by
  intro k
  have h1 : C (1048576 * k + 637759) = 3145728 * k + 1913278 := by
    unfold C
    simp [show (1048576 * k + 637759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1913278) = 1572864 * k + 956639 := by
    unfold C
    simp [show (3145728 * k + 1913278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 956639) = 4718592 * k + 2869918 := by
    unfold C
    simp [show (1572864 * k + 956639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2869918) = 2359296 * k + 1434959 := by
    unfold C
    simp [show (4718592 * k + 2869918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1434959) = 7077888 * k + 4304878 := by
    unfold C
    simp [show (2359296 * k + 1434959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4304878) = 3538944 * k + 2152439 := by
    unfold C
    simp [show (7077888 * k + 4304878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2152439) = 10616832 * k + 6457318 := by
    unfold C
    simp [show (3538944 * k + 2152439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6457318) = 5308416 * k + 3228659 := by
    unfold C
    simp [show (10616832 * k + 6457318) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3228659) = 15925248 * k + 9685978 := by
    unfold C
    simp [show (5308416 * k + 3228659) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9685978) = 7962624 * k + 4842989 := by
    unfold C
    simp [show (15925248 * k + 9685978) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4842989) = 23887872 * k + 14528968 := by
    unfold C
    simp [show (7962624 * k + 4842989) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14528968) = 11943936 * k + 7264484 := by
    unfold C
    simp [show (23887872 * k + 14528968) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7264484) = 5971968 * k + 3632242 := by
    unfold C
    simp [show (11943936 * k + 7264484) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3632242) = 2985984 * k + 1816121 := by
    unfold C
    simp [show (5971968 * k + 3632242) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1816121) = 8957952 * k + 5448364 := by
    unfold C
    simp [show (2985984 * k + 1816121) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5448364) = 4478976 * k + 2724182 := by
    unfold C
    simp [show (8957952 * k + 5448364) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2724182) = 2239488 * k + 1362091 := by
    unfold C
    simp [show (4478976 * k + 2724182) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1362091) = 6718464 * k + 4086274 := by
    unfold C
    simp [show (2239488 * k + 1362091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4086274) = 3359232 * k + 2043137 := by
    unfold C
    simp [show (6718464 * k + 4086274) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2043137) = 10077696 * k + 6129412 := by
    unfold C
    simp [show (3359232 * k + 2043137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6129412) = 5038848 * k + 3064706 := by
    unfold C
    simp [show (10077696 * k + 6129412) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3064706) = 2519424 * k + 1532353 := by
    unfold C
    simp [show (5038848 * k + 3064706) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1532353) = 7558272 * k + 4597060 := by
    unfold C
    simp [show (2519424 * k + 1532353) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4597060) = 3779136 * k + 2298530 := by
    unfold C
    simp [show (7558272 * k + 4597060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2298530) = 1889568 * k + 1149265 := by
    unfold C
    simp [show (3779136 * k + 2298530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1149265) = 5668704 * k + 3447796 := by
    unfold C
    simp [show (1889568 * k + 1149265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3447796) = 2834352 * k + 1723898 := by
    unfold C
    simp [show (5668704 * k + 3447796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1723898) = 1417176 * k + 861949 := by
    unfold C
    simp [show (2834352 * k + 1723898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 861949) = 4251528 * k + 2585848 := by
    unfold C
    simp [show (1417176 * k + 861949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2585848) = 2125764 * k + 1292924 := by
    unfold C
    simp [show (4251528 * k + 2585848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1292924) = 1062882 * k + 646462 := by
    unfold C
    simp [show (2125764 * k + 1292924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 646462) = 531441 * k + 323231 := by
    unfold C
    simp [show (1062882 * k + 646462) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 637759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 637759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_638079 : ∀ k : Nat,
    iterate (1048576 * k + 638079) 32 = 531441 * k + 323393 ∧
      531441 * k + 323393 < 1048576 * k + 638079 := by
  intro k
  have h1 : C (1048576 * k + 638079) = 3145728 * k + 1914238 := by
    unfold C
    simp [show (1048576 * k + 638079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1914238) = 1572864 * k + 957119 := by
    unfold C
    simp [show (3145728 * k + 1914238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 957119) = 4718592 * k + 2871358 := by
    unfold C
    simp [show (1572864 * k + 957119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2871358) = 2359296 * k + 1435679 := by
    unfold C
    simp [show (4718592 * k + 2871358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1435679) = 7077888 * k + 4307038 := by
    unfold C
    simp [show (2359296 * k + 1435679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4307038) = 3538944 * k + 2153519 := by
    unfold C
    simp [show (7077888 * k + 4307038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2153519) = 10616832 * k + 6460558 := by
    unfold C
    simp [show (3538944 * k + 2153519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6460558) = 5308416 * k + 3230279 := by
    unfold C
    simp [show (10616832 * k + 6460558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3230279) = 15925248 * k + 9690838 := by
    unfold C
    simp [show (5308416 * k + 3230279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9690838) = 7962624 * k + 4845419 := by
    unfold C
    simp [show (15925248 * k + 9690838) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4845419) = 23887872 * k + 14536258 := by
    unfold C
    simp [show (7962624 * k + 4845419) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14536258) = 11943936 * k + 7268129 := by
    unfold C
    simp [show (23887872 * k + 14536258) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7268129) = 35831808 * k + 21804388 := by
    unfold C
    simp [show (11943936 * k + 7268129) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 21804388) = 17915904 * k + 10902194 := by
    unfold C
    simp [show (35831808 * k + 21804388) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10902194) = 8957952 * k + 5451097 := by
    unfold C
    simp [show (17915904 * k + 10902194) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5451097) = 26873856 * k + 16353292 := by
    unfold C
    simp [show (8957952 * k + 5451097) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16353292) = 13436928 * k + 8176646 := by
    unfold C
    simp [show (26873856 * k + 16353292) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8176646) = 6718464 * k + 4088323 := by
    unfold C
    simp [show (13436928 * k + 8176646) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4088323) = 20155392 * k + 12264970 := by
    unfold C
    simp [show (6718464 * k + 4088323) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12264970) = 10077696 * k + 6132485 := by
    unfold C
    simp [show (20155392 * k + 12264970) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6132485) = 30233088 * k + 18397456 := by
    unfold C
    simp [show (10077696 * k + 6132485) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18397456) = 15116544 * k + 9198728 := by
    unfold C
    simp [show (30233088 * k + 18397456) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9198728) = 7558272 * k + 4599364 := by
    unfold C
    simp [show (15116544 * k + 9198728) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4599364) = 3779136 * k + 2299682 := by
    unfold C
    simp [show (7558272 * k + 4599364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2299682) = 1889568 * k + 1149841 := by
    unfold C
    simp [show (3779136 * k + 2299682) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1149841) = 5668704 * k + 3449524 := by
    unfold C
    simp [show (1889568 * k + 1149841) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3449524) = 2834352 * k + 1724762 := by
    unfold C
    simp [show (5668704 * k + 3449524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1724762) = 1417176 * k + 862381 := by
    unfold C
    simp [show (2834352 * k + 1724762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 862381) = 4251528 * k + 2587144 := by
    unfold C
    simp [show (1417176 * k + 862381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2587144) = 2125764 * k + 1293572 := by
    unfold C
    simp [show (4251528 * k + 2587144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1293572) = 1062882 * k + 646786 := by
    unfold C
    simp [show (2125764 * k + 1293572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 646786) = 531441 * k + 323393 := by
    unfold C
    simp [show (1062882 * k + 646786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 638079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 638079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_638399 : ∀ k : Nat,
    iterate (1048576 * k + 638399) 32 = 531441 * k + 323555 ∧
      531441 * k + 323555 < 1048576 * k + 638399 := by
  intro k
  have h1 : C (1048576 * k + 638399) = 3145728 * k + 1915198 := by
    unfold C
    simp [show (1048576 * k + 638399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1915198) = 1572864 * k + 957599 := by
    unfold C
    simp [show (3145728 * k + 1915198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 957599) = 4718592 * k + 2872798 := by
    unfold C
    simp [show (1572864 * k + 957599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2872798) = 2359296 * k + 1436399 := by
    unfold C
    simp [show (4718592 * k + 2872798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1436399) = 7077888 * k + 4309198 := by
    unfold C
    simp [show (2359296 * k + 1436399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4309198) = 3538944 * k + 2154599 := by
    unfold C
    simp [show (7077888 * k + 4309198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2154599) = 10616832 * k + 6463798 := by
    unfold C
    simp [show (3538944 * k + 2154599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6463798) = 5308416 * k + 3231899 := by
    unfold C
    simp [show (10616832 * k + 6463798) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3231899) = 15925248 * k + 9695698 := by
    unfold C
    simp [show (5308416 * k + 3231899) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9695698) = 7962624 * k + 4847849 := by
    unfold C
    simp [show (15925248 * k + 9695698) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4847849) = 23887872 * k + 14543548 := by
    unfold C
    simp [show (7962624 * k + 4847849) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14543548) = 11943936 * k + 7271774 := by
    unfold C
    simp [show (23887872 * k + 14543548) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7271774) = 5971968 * k + 3635887 := by
    unfold C
    simp [show (11943936 * k + 7271774) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3635887) = 17915904 * k + 10907662 := by
    unfold C
    simp [show (5971968 * k + 3635887) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10907662) = 8957952 * k + 5453831 := by
    unfold C
    simp [show (17915904 * k + 10907662) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5453831) = 26873856 * k + 16361494 := by
    unfold C
    simp [show (8957952 * k + 5453831) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16361494) = 13436928 * k + 8180747 := by
    unfold C
    simp [show (26873856 * k + 16361494) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8180747) = 40310784 * k + 24542242 := by
    unfold C
    simp [show (13436928 * k + 8180747) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24542242) = 20155392 * k + 12271121 := by
    unfold C
    simp [show (40310784 * k + 24542242) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12271121) = 60466176 * k + 36813364 := by
    unfold C
    simp [show (20155392 * k + 12271121) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 36813364) = 30233088 * k + 18406682 := by
    unfold C
    simp [show (60466176 * k + 36813364) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 18406682) = 15116544 * k + 9203341 := by
    unfold C
    simp [show (30233088 * k + 18406682) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9203341) = 45349632 * k + 27610024 := by
    unfold C
    simp [show (15116544 * k + 9203341) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 27610024) = 22674816 * k + 13805012 := by
    unfold C
    simp [show (45349632 * k + 27610024) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 13805012) = 11337408 * k + 6902506 := by
    unfold C
    simp [show (22674816 * k + 13805012) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6902506) = 5668704 * k + 3451253 := by
    unfold C
    simp [show (11337408 * k + 6902506) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3451253) = 17006112 * k + 10353760 := by
    unfold C
    simp [show (5668704 * k + 3451253) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10353760) = 8503056 * k + 5176880 := by
    unfold C
    simp [show (17006112 * k + 10353760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5176880) = 4251528 * k + 2588440 := by
    unfold C
    simp [show (8503056 * k + 5176880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2588440) = 2125764 * k + 1294220 := by
    unfold C
    simp [show (4251528 * k + 2588440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1294220) = 1062882 * k + 647110 := by
    unfold C
    simp [show (2125764 * k + 1294220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 647110) = 531441 * k + 323555 := by
    unfold C
    simp [show (1062882 * k + 647110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 638399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 638399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_638491 : ∀ k : Nat,
    iterate (1048576 * k + 638491) 32 = 531441 * k + 323602 ∧
      531441 * k + 323602 < 1048576 * k + 638491 := by
  intro k
  have h1 : C (1048576 * k + 638491) = 3145728 * k + 1915474 := by
    unfold C
    simp [show (1048576 * k + 638491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1915474) = 1572864 * k + 957737 := by
    unfold C
    simp [show (3145728 * k + 1915474) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 957737) = 4718592 * k + 2873212 := by
    unfold C
    simp [show (1572864 * k + 957737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2873212) = 2359296 * k + 1436606 := by
    unfold C
    simp [show (4718592 * k + 2873212) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1436606) = 1179648 * k + 718303 := by
    unfold C
    simp [show (2359296 * k + 1436606) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 718303) = 3538944 * k + 2154910 := by
    unfold C
    simp [show (1179648 * k + 718303) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2154910) = 1769472 * k + 1077455 := by
    unfold C
    simp [show (3538944 * k + 2154910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1077455) = 5308416 * k + 3232366 := by
    unfold C
    simp [show (1769472 * k + 1077455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3232366) = 2654208 * k + 1616183 := by
    unfold C
    simp [show (5308416 * k + 3232366) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1616183) = 7962624 * k + 4848550 := by
    unfold C
    simp [show (2654208 * k + 1616183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4848550) = 3981312 * k + 2424275 := by
    unfold C
    simp [show (7962624 * k + 4848550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2424275) = 11943936 * k + 7272826 := by
    unfold C
    simp [show (3981312 * k + 2424275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7272826) = 5971968 * k + 3636413 := by
    unfold C
    simp [show (11943936 * k + 7272826) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3636413) = 17915904 * k + 10909240 := by
    unfold C
    simp [show (5971968 * k + 3636413) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10909240) = 8957952 * k + 5454620 := by
    unfold C
    simp [show (17915904 * k + 10909240) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5454620) = 4478976 * k + 2727310 := by
    unfold C
    simp [show (8957952 * k + 5454620) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2727310) = 2239488 * k + 1363655 := by
    unfold C
    simp [show (4478976 * k + 2727310) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1363655) = 6718464 * k + 4090966 := by
    unfold C
    simp [show (2239488 * k + 1363655) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4090966) = 3359232 * k + 2045483 := by
    unfold C
    simp [show (6718464 * k + 4090966) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2045483) = 10077696 * k + 6136450 := by
    unfold C
    simp [show (3359232 * k + 2045483) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6136450) = 5038848 * k + 3068225 := by
    unfold C
    simp [show (10077696 * k + 6136450) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3068225) = 15116544 * k + 9204676 := by
    unfold C
    simp [show (5038848 * k + 3068225) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9204676) = 7558272 * k + 4602338 := by
    unfold C
    simp [show (15116544 * k + 9204676) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4602338) = 3779136 * k + 2301169 := by
    unfold C
    simp [show (7558272 * k + 4602338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2301169) = 11337408 * k + 6903508 := by
    unfold C
    simp [show (3779136 * k + 2301169) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6903508) = 5668704 * k + 3451754 := by
    unfold C
    simp [show (11337408 * k + 6903508) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3451754) = 2834352 * k + 1725877 := by
    unfold C
    simp [show (5668704 * k + 3451754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1725877) = 8503056 * k + 5177632 := by
    unfold C
    simp [show (2834352 * k + 1725877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5177632) = 4251528 * k + 2588816 := by
    unfold C
    simp [show (8503056 * k + 5177632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2588816) = 2125764 * k + 1294408 := by
    unfold C
    simp [show (4251528 * k + 2588816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1294408) = 1062882 * k + 647204 := by
    unfold C
    simp [show (2125764 * k + 1294408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 647204) = 531441 * k + 323602 := by
    unfold C
    simp [show (1062882 * k + 647204) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 638491) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 638491)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard082
