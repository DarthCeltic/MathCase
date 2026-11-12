import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard010

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_59887 : ∀ k : Nat,
    iterate (1048576 * k + 59887) 32 = 531441 * k + 30353 ∧
      531441 * k + 30353 < 1048576 * k + 59887 := by
  intro k
  have h1 : C (1048576 * k + 59887) = 3145728 * k + 179662 := by
    unfold C
    simp [show (1048576 * k + 59887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 179662) = 1572864 * k + 89831 := by
    unfold C
    simp [show (3145728 * k + 179662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 89831) = 4718592 * k + 269494 := by
    unfold C
    simp [show (1572864 * k + 89831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 269494) = 2359296 * k + 134747 := by
    unfold C
    simp [show (4718592 * k + 269494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 134747) = 7077888 * k + 404242 := by
    unfold C
    simp [show (2359296 * k + 134747) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 404242) = 3538944 * k + 202121 := by
    unfold C
    simp [show (7077888 * k + 404242) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 202121) = 10616832 * k + 606364 := by
    unfold C
    simp [show (3538944 * k + 202121) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 606364) = 5308416 * k + 303182 := by
    unfold C
    simp [show (10616832 * k + 606364) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 303182) = 2654208 * k + 151591 := by
    unfold C
    simp [show (5308416 * k + 303182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 151591) = 7962624 * k + 454774 := by
    unfold C
    simp [show (2654208 * k + 151591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 454774) = 3981312 * k + 227387 := by
    unfold C
    simp [show (7962624 * k + 454774) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 227387) = 11943936 * k + 682162 := by
    unfold C
    simp [show (3981312 * k + 227387) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 682162) = 5971968 * k + 341081 := by
    unfold C
    simp [show (11943936 * k + 682162) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 341081) = 17915904 * k + 1023244 := by
    unfold C
    simp [show (5971968 * k + 341081) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1023244) = 8957952 * k + 511622 := by
    unfold C
    simp [show (17915904 * k + 1023244) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 511622) = 4478976 * k + 255811 := by
    unfold C
    simp [show (8957952 * k + 511622) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 255811) = 13436928 * k + 767434 := by
    unfold C
    simp [show (4478976 * k + 255811) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 767434) = 6718464 * k + 383717 := by
    unfold C
    simp [show (13436928 * k + 767434) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 383717) = 20155392 * k + 1151152 := by
    unfold C
    simp [show (6718464 * k + 383717) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1151152) = 10077696 * k + 575576 := by
    unfold C
    simp [show (20155392 * k + 1151152) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 575576) = 5038848 * k + 287788 := by
    unfold C
    simp [show (10077696 * k + 575576) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 287788) = 2519424 * k + 143894 := by
    unfold C
    simp [show (5038848 * k + 287788) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 143894) = 1259712 * k + 71947 := by
    unfold C
    simp [show (2519424 * k + 143894) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 71947) = 3779136 * k + 215842 := by
    unfold C
    simp [show (1259712 * k + 71947) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 215842) = 1889568 * k + 107921 := by
    unfold C
    simp [show (3779136 * k + 215842) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 107921) = 5668704 * k + 323764 := by
    unfold C
    simp [show (1889568 * k + 107921) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 323764) = 2834352 * k + 161882 := by
    unfold C
    simp [show (5668704 * k + 323764) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 161882) = 1417176 * k + 80941 := by
    unfold C
    simp [show (2834352 * k + 161882) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 80941) = 4251528 * k + 242824 := by
    unfold C
    simp [show (1417176 * k + 80941) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 242824) = 2125764 * k + 121412 := by
    unfold C
    simp [show (4251528 * k + 242824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 121412) = 1062882 * k + 60706 := by
    unfold C
    simp [show (2125764 * k + 121412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 60706) = 531441 * k + 30353 := by
    unfold C
    simp [show (1062882 * k + 60706) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 59887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 59887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_61087 : ∀ k : Nat,
    iterate (1048576 * k + 61087) 32 = 531441 * k + 30961 ∧
      531441 * k + 30961 < 1048576 * k + 61087 := by
  intro k
  have h1 : C (1048576 * k + 61087) = 3145728 * k + 183262 := by
    unfold C
    simp [show (1048576 * k + 61087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 183262) = 1572864 * k + 91631 := by
    unfold C
    simp [show (3145728 * k + 183262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 91631) = 4718592 * k + 274894 := by
    unfold C
    simp [show (1572864 * k + 91631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 274894) = 2359296 * k + 137447 := by
    unfold C
    simp [show (4718592 * k + 274894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 137447) = 7077888 * k + 412342 := by
    unfold C
    simp [show (2359296 * k + 137447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 412342) = 3538944 * k + 206171 := by
    unfold C
    simp [show (7077888 * k + 412342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 206171) = 10616832 * k + 618514 := by
    unfold C
    simp [show (3538944 * k + 206171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 618514) = 5308416 * k + 309257 := by
    unfold C
    simp [show (10616832 * k + 618514) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 309257) = 15925248 * k + 927772 := by
    unfold C
    simp [show (5308416 * k + 309257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 927772) = 7962624 * k + 463886 := by
    unfold C
    simp [show (15925248 * k + 927772) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 463886) = 3981312 * k + 231943 := by
    unfold C
    simp [show (7962624 * k + 463886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 231943) = 11943936 * k + 695830 := by
    unfold C
    simp [show (3981312 * k + 231943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 695830) = 5971968 * k + 347915 := by
    unfold C
    simp [show (11943936 * k + 695830) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 347915) = 17915904 * k + 1043746 := by
    unfold C
    simp [show (5971968 * k + 347915) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1043746) = 8957952 * k + 521873 := by
    unfold C
    simp [show (17915904 * k + 1043746) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 521873) = 26873856 * k + 1565620 := by
    unfold C
    simp [show (8957952 * k + 521873) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1565620) = 13436928 * k + 782810 := by
    unfold C
    simp [show (26873856 * k + 1565620) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 782810) = 6718464 * k + 391405 := by
    unfold C
    simp [show (13436928 * k + 782810) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 391405) = 20155392 * k + 1174216 := by
    unfold C
    simp [show (6718464 * k + 391405) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1174216) = 10077696 * k + 587108 := by
    unfold C
    simp [show (20155392 * k + 1174216) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 587108) = 5038848 * k + 293554 := by
    unfold C
    simp [show (10077696 * k + 587108) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 293554) = 2519424 * k + 146777 := by
    unfold C
    simp [show (5038848 * k + 293554) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 146777) = 7558272 * k + 440332 := by
    unfold C
    simp [show (2519424 * k + 146777) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 440332) = 3779136 * k + 220166 := by
    unfold C
    simp [show (7558272 * k + 440332) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 220166) = 1889568 * k + 110083 := by
    unfold C
    simp [show (3779136 * k + 220166) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 110083) = 5668704 * k + 330250 := by
    unfold C
    simp [show (1889568 * k + 110083) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 330250) = 2834352 * k + 165125 := by
    unfold C
    simp [show (5668704 * k + 330250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 165125) = 8503056 * k + 495376 := by
    unfold C
    simp [show (2834352 * k + 165125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 495376) = 4251528 * k + 247688 := by
    unfold C
    simp [show (8503056 * k + 495376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 247688) = 2125764 * k + 123844 := by
    unfold C
    simp [show (4251528 * k + 247688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 123844) = 1062882 * k + 61922 := by
    unfold C
    simp [show (2125764 * k + 123844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 61922) = 531441 * k + 30961 := by
    unfold C
    simp [show (1062882 * k + 61922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 61087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 61087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_62107 : ∀ k : Nat,
    iterate (1048576 * k + 62107) 32 = 531441 * k + 31478 ∧
      531441 * k + 31478 < 1048576 * k + 62107 := by
  intro k
  have h1 : C (1048576 * k + 62107) = 3145728 * k + 186322 := by
    unfold C
    simp [show (1048576 * k + 62107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 186322) = 1572864 * k + 93161 := by
    unfold C
    simp [show (3145728 * k + 186322) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 93161) = 4718592 * k + 279484 := by
    unfold C
    simp [show (1572864 * k + 93161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 279484) = 2359296 * k + 139742 := by
    unfold C
    simp [show (4718592 * k + 279484) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 139742) = 1179648 * k + 69871 := by
    unfold C
    simp [show (2359296 * k + 139742) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 69871) = 3538944 * k + 209614 := by
    unfold C
    simp [show (1179648 * k + 69871) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 209614) = 1769472 * k + 104807 := by
    unfold C
    simp [show (3538944 * k + 209614) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 104807) = 5308416 * k + 314422 := by
    unfold C
    simp [show (1769472 * k + 104807) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 314422) = 2654208 * k + 157211 := by
    unfold C
    simp [show (5308416 * k + 314422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 157211) = 7962624 * k + 471634 := by
    unfold C
    simp [show (2654208 * k + 157211) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 471634) = 3981312 * k + 235817 := by
    unfold C
    simp [show (7962624 * k + 471634) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 235817) = 11943936 * k + 707452 := by
    unfold C
    simp [show (3981312 * k + 235817) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 707452) = 5971968 * k + 353726 := by
    unfold C
    simp [show (11943936 * k + 707452) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 353726) = 2985984 * k + 176863 := by
    unfold C
    simp [show (5971968 * k + 353726) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 176863) = 8957952 * k + 530590 := by
    unfold C
    simp [show (2985984 * k + 176863) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 530590) = 4478976 * k + 265295 := by
    unfold C
    simp [show (8957952 * k + 530590) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 265295) = 13436928 * k + 795886 := by
    unfold C
    simp [show (4478976 * k + 265295) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 795886) = 6718464 * k + 397943 := by
    unfold C
    simp [show (13436928 * k + 795886) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 397943) = 20155392 * k + 1193830 := by
    unfold C
    simp [show (6718464 * k + 397943) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1193830) = 10077696 * k + 596915 := by
    unfold C
    simp [show (20155392 * k + 1193830) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 596915) = 30233088 * k + 1790746 := by
    unfold C
    simp [show (10077696 * k + 596915) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1790746) = 15116544 * k + 895373 := by
    unfold C
    simp [show (30233088 * k + 1790746) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 895373) = 45349632 * k + 2686120 := by
    unfold C
    simp [show (15116544 * k + 895373) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 2686120) = 22674816 * k + 1343060 := by
    unfold C
    simp [show (45349632 * k + 2686120) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1343060) = 11337408 * k + 671530 := by
    unfold C
    simp [show (22674816 * k + 1343060) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 671530) = 5668704 * k + 335765 := by
    unfold C
    simp [show (11337408 * k + 671530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 335765) = 17006112 * k + 1007296 := by
    unfold C
    simp [show (5668704 * k + 335765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1007296) = 8503056 * k + 503648 := by
    unfold C
    simp [show (17006112 * k + 1007296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 503648) = 4251528 * k + 251824 := by
    unfold C
    simp [show (8503056 * k + 503648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 251824) = 2125764 * k + 125912 := by
    unfold C
    simp [show (4251528 * k + 251824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 125912) = 1062882 * k + 62956 := by
    unfold C
    simp [show (2125764 * k + 125912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 62956) = 531441 * k + 31478 := by
    unfold C
    simp [show (1062882 * k + 62956) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 62107) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 62107)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_63847 : ∀ k : Nat,
    iterate (1048576 * k + 63847) 32 = 531441 * k + 32360 ∧
      531441 * k + 32360 < 1048576 * k + 63847 := by
  intro k
  have h1 : C (1048576 * k + 63847) = 3145728 * k + 191542 := by
    unfold C
    simp [show (1048576 * k + 63847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 191542) = 1572864 * k + 95771 := by
    unfold C
    simp [show (3145728 * k + 191542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 95771) = 4718592 * k + 287314 := by
    unfold C
    simp [show (1572864 * k + 95771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 287314) = 2359296 * k + 143657 := by
    unfold C
    simp [show (4718592 * k + 287314) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 143657) = 7077888 * k + 430972 := by
    unfold C
    simp [show (2359296 * k + 143657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 430972) = 3538944 * k + 215486 := by
    unfold C
    simp [show (7077888 * k + 430972) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 215486) = 1769472 * k + 107743 := by
    unfold C
    simp [show (3538944 * k + 215486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 107743) = 5308416 * k + 323230 := by
    unfold C
    simp [show (1769472 * k + 107743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 323230) = 2654208 * k + 161615 := by
    unfold C
    simp [show (5308416 * k + 323230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 161615) = 7962624 * k + 484846 := by
    unfold C
    simp [show (2654208 * k + 161615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 484846) = 3981312 * k + 242423 := by
    unfold C
    simp [show (7962624 * k + 484846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 242423) = 11943936 * k + 727270 := by
    unfold C
    simp [show (3981312 * k + 242423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 727270) = 5971968 * k + 363635 := by
    unfold C
    simp [show (11943936 * k + 727270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 363635) = 17915904 * k + 1090906 := by
    unfold C
    simp [show (5971968 * k + 363635) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1090906) = 8957952 * k + 545453 := by
    unfold C
    simp [show (17915904 * k + 1090906) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 545453) = 26873856 * k + 1636360 := by
    unfold C
    simp [show (8957952 * k + 545453) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1636360) = 13436928 * k + 818180 := by
    unfold C
    simp [show (26873856 * k + 1636360) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 818180) = 6718464 * k + 409090 := by
    unfold C
    simp [show (13436928 * k + 818180) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 409090) = 3359232 * k + 204545 := by
    unfold C
    simp [show (6718464 * k + 409090) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 204545) = 10077696 * k + 613636 := by
    unfold C
    simp [show (3359232 * k + 204545) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 613636) = 5038848 * k + 306818 := by
    unfold C
    simp [show (10077696 * k + 613636) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 306818) = 2519424 * k + 153409 := by
    unfold C
    simp [show (5038848 * k + 306818) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 153409) = 7558272 * k + 460228 := by
    unfold C
    simp [show (2519424 * k + 153409) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 460228) = 3779136 * k + 230114 := by
    unfold C
    simp [show (7558272 * k + 460228) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 230114) = 1889568 * k + 115057 := by
    unfold C
    simp [show (3779136 * k + 230114) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 115057) = 5668704 * k + 345172 := by
    unfold C
    simp [show (1889568 * k + 115057) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 345172) = 2834352 * k + 172586 := by
    unfold C
    simp [show (5668704 * k + 345172) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 172586) = 1417176 * k + 86293 := by
    unfold C
    simp [show (2834352 * k + 172586) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 86293) = 4251528 * k + 258880 := by
    unfold C
    simp [show (1417176 * k + 86293) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 258880) = 2125764 * k + 129440 := by
    unfold C
    simp [show (4251528 * k + 258880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 129440) = 1062882 * k + 64720 := by
    unfold C
    simp [show (2125764 * k + 129440) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 64720) = 531441 * k + 32360 := by
    unfold C
    simp [show (1062882 * k + 64720) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 63847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 63847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_64155 : ∀ k : Nat,
    iterate (1048576 * k + 64155) 32 = 531441 * k + 32516 ∧
      531441 * k + 32516 < 1048576 * k + 64155 := by
  intro k
  have h1 : C (1048576 * k + 64155) = 3145728 * k + 192466 := by
    unfold C
    simp [show (1048576 * k + 64155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 192466) = 1572864 * k + 96233 := by
    unfold C
    simp [show (3145728 * k + 192466) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 96233) = 4718592 * k + 288700 := by
    unfold C
    simp [show (1572864 * k + 96233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 288700) = 2359296 * k + 144350 := by
    unfold C
    simp [show (4718592 * k + 288700) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 144350) = 1179648 * k + 72175 := by
    unfold C
    simp [show (2359296 * k + 144350) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 72175) = 3538944 * k + 216526 := by
    unfold C
    simp [show (1179648 * k + 72175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 216526) = 1769472 * k + 108263 := by
    unfold C
    simp [show (3538944 * k + 216526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 108263) = 5308416 * k + 324790 := by
    unfold C
    simp [show (1769472 * k + 108263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 324790) = 2654208 * k + 162395 := by
    unfold C
    simp [show (5308416 * k + 324790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 162395) = 7962624 * k + 487186 := by
    unfold C
    simp [show (2654208 * k + 162395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 487186) = 3981312 * k + 243593 := by
    unfold C
    simp [show (7962624 * k + 487186) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 243593) = 11943936 * k + 730780 := by
    unfold C
    simp [show (3981312 * k + 243593) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 730780) = 5971968 * k + 365390 := by
    unfold C
    simp [show (11943936 * k + 730780) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 365390) = 2985984 * k + 182695 := by
    unfold C
    simp [show (5971968 * k + 365390) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 182695) = 8957952 * k + 548086 := by
    unfold C
    simp [show (2985984 * k + 182695) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 548086) = 4478976 * k + 274043 := by
    unfold C
    simp [show (8957952 * k + 548086) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 274043) = 13436928 * k + 822130 := by
    unfold C
    simp [show (4478976 * k + 274043) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 822130) = 6718464 * k + 411065 := by
    unfold C
    simp [show (13436928 * k + 822130) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 411065) = 20155392 * k + 1233196 := by
    unfold C
    simp [show (6718464 * k + 411065) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1233196) = 10077696 * k + 616598 := by
    unfold C
    simp [show (20155392 * k + 1233196) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 616598) = 5038848 * k + 308299 := by
    unfold C
    simp [show (10077696 * k + 616598) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 308299) = 15116544 * k + 924898 := by
    unfold C
    simp [show (5038848 * k + 308299) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 924898) = 7558272 * k + 462449 := by
    unfold C
    simp [show (15116544 * k + 924898) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 462449) = 22674816 * k + 1387348 := by
    unfold C
    simp [show (7558272 * k + 462449) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1387348) = 11337408 * k + 693674 := by
    unfold C
    simp [show (22674816 * k + 1387348) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 693674) = 5668704 * k + 346837 := by
    unfold C
    simp [show (11337408 * k + 693674) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 346837) = 17006112 * k + 1040512 := by
    unfold C
    simp [show (5668704 * k + 346837) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1040512) = 8503056 * k + 520256 := by
    unfold C
    simp [show (17006112 * k + 1040512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 520256) = 4251528 * k + 260128 := by
    unfold C
    simp [show (8503056 * k + 520256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 260128) = 2125764 * k + 130064 := by
    unfold C
    simp [show (4251528 * k + 260128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 130064) = 1062882 * k + 65032 := by
    unfold C
    simp [show (2125764 * k + 130064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 65032) = 531441 * k + 32516 := by
    unfold C
    simp [show (1062882 * k + 65032) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 64155) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 64155)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_64575 : ∀ k : Nat,
    iterate (1048576 * k + 64575) 32 = 531441 * k + 32729 ∧
      531441 * k + 32729 < 1048576 * k + 64575 := by
  intro k
  have h1 : C (1048576 * k + 64575) = 3145728 * k + 193726 := by
    unfold C
    simp [show (1048576 * k + 64575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 193726) = 1572864 * k + 96863 := by
    unfold C
    simp [show (3145728 * k + 193726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 96863) = 4718592 * k + 290590 := by
    unfold C
    simp [show (1572864 * k + 96863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 290590) = 2359296 * k + 145295 := by
    unfold C
    simp [show (4718592 * k + 290590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 145295) = 7077888 * k + 435886 := by
    unfold C
    simp [show (2359296 * k + 145295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 435886) = 3538944 * k + 217943 := by
    unfold C
    simp [show (7077888 * k + 435886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 217943) = 10616832 * k + 653830 := by
    unfold C
    simp [show (3538944 * k + 217943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 653830) = 5308416 * k + 326915 := by
    unfold C
    simp [show (10616832 * k + 653830) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 326915) = 15925248 * k + 980746 := by
    unfold C
    simp [show (5308416 * k + 326915) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 980746) = 7962624 * k + 490373 := by
    unfold C
    simp [show (15925248 * k + 980746) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 490373) = 23887872 * k + 1471120 := by
    unfold C
    simp [show (7962624 * k + 490373) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1471120) = 11943936 * k + 735560 := by
    unfold C
    simp [show (23887872 * k + 1471120) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 735560) = 5971968 * k + 367780 := by
    unfold C
    simp [show (11943936 * k + 735560) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 367780) = 2985984 * k + 183890 := by
    unfold C
    simp [show (5971968 * k + 367780) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 183890) = 1492992 * k + 91945 := by
    unfold C
    simp [show (2985984 * k + 183890) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 91945) = 4478976 * k + 275836 := by
    unfold C
    simp [show (1492992 * k + 91945) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 275836) = 2239488 * k + 137918 := by
    unfold C
    simp [show (4478976 * k + 275836) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 137918) = 1119744 * k + 68959 := by
    unfold C
    simp [show (2239488 * k + 137918) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 68959) = 3359232 * k + 206878 := by
    unfold C
    simp [show (1119744 * k + 68959) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 206878) = 1679616 * k + 103439 := by
    unfold C
    simp [show (3359232 * k + 206878) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 103439) = 5038848 * k + 310318 := by
    unfold C
    simp [show (1679616 * k + 103439) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 310318) = 2519424 * k + 155159 := by
    unfold C
    simp [show (5038848 * k + 310318) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 155159) = 7558272 * k + 465478 := by
    unfold C
    simp [show (2519424 * k + 155159) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 465478) = 3779136 * k + 232739 := by
    unfold C
    simp [show (7558272 * k + 465478) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 232739) = 11337408 * k + 698218 := by
    unfold C
    simp [show (3779136 * k + 232739) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 698218) = 5668704 * k + 349109 := by
    unfold C
    simp [show (11337408 * k + 698218) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 349109) = 17006112 * k + 1047328 := by
    unfold C
    simp [show (5668704 * k + 349109) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1047328) = 8503056 * k + 523664 := by
    unfold C
    simp [show (17006112 * k + 1047328) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 523664) = 4251528 * k + 261832 := by
    unfold C
    simp [show (8503056 * k + 523664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 261832) = 2125764 * k + 130916 := by
    unfold C
    simp [show (4251528 * k + 261832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 130916) = 1062882 * k + 65458 := by
    unfold C
    simp [show (2125764 * k + 130916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 65458) = 531441 * k + 32729 := by
    unfold C
    simp [show (1062882 * k + 65458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 64575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 64575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_64615 : ∀ k : Nat,
    iterate (1048576 * k + 64615) 32 = 531441 * k + 32749 ∧
      531441 * k + 32749 < 1048576 * k + 64615 := by
  intro k
  have h1 : C (1048576 * k + 64615) = 3145728 * k + 193846 := by
    unfold C
    simp [show (1048576 * k + 64615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 193846) = 1572864 * k + 96923 := by
    unfold C
    simp [show (3145728 * k + 193846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 96923) = 4718592 * k + 290770 := by
    unfold C
    simp [show (1572864 * k + 96923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 290770) = 2359296 * k + 145385 := by
    unfold C
    simp [show (4718592 * k + 290770) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 145385) = 7077888 * k + 436156 := by
    unfold C
    simp [show (2359296 * k + 145385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 436156) = 3538944 * k + 218078 := by
    unfold C
    simp [show (7077888 * k + 436156) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 218078) = 1769472 * k + 109039 := by
    unfold C
    simp [show (3538944 * k + 218078) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 109039) = 5308416 * k + 327118 := by
    unfold C
    simp [show (1769472 * k + 109039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 327118) = 2654208 * k + 163559 := by
    unfold C
    simp [show (5308416 * k + 327118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 163559) = 7962624 * k + 490678 := by
    unfold C
    simp [show (2654208 * k + 163559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 490678) = 3981312 * k + 245339 := by
    unfold C
    simp [show (7962624 * k + 490678) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 245339) = 11943936 * k + 736018 := by
    unfold C
    simp [show (3981312 * k + 245339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 736018) = 5971968 * k + 368009 := by
    unfold C
    simp [show (11943936 * k + 736018) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 368009) = 17915904 * k + 1104028 := by
    unfold C
    simp [show (5971968 * k + 368009) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1104028) = 8957952 * k + 552014 := by
    unfold C
    simp [show (17915904 * k + 1104028) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 552014) = 4478976 * k + 276007 := by
    unfold C
    simp [show (8957952 * k + 552014) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 276007) = 13436928 * k + 828022 := by
    unfold C
    simp [show (4478976 * k + 276007) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 828022) = 6718464 * k + 414011 := by
    unfold C
    simp [show (13436928 * k + 828022) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 414011) = 20155392 * k + 1242034 := by
    unfold C
    simp [show (6718464 * k + 414011) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1242034) = 10077696 * k + 621017 := by
    unfold C
    simp [show (20155392 * k + 1242034) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 621017) = 30233088 * k + 1863052 := by
    unfold C
    simp [show (10077696 * k + 621017) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1863052) = 15116544 * k + 931526 := by
    unfold C
    simp [show (30233088 * k + 1863052) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 931526) = 7558272 * k + 465763 := by
    unfold C
    simp [show (15116544 * k + 931526) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 465763) = 22674816 * k + 1397290 := by
    unfold C
    simp [show (7558272 * k + 465763) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1397290) = 11337408 * k + 698645 := by
    unfold C
    simp [show (22674816 * k + 1397290) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 698645) = 34012224 * k + 2095936 := by
    unfold C
    simp [show (11337408 * k + 698645) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 2095936) = 17006112 * k + 1047968 := by
    unfold C
    simp [show (34012224 * k + 2095936) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1047968) = 8503056 * k + 523984 := by
    unfold C
    simp [show (17006112 * k + 1047968) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 523984) = 4251528 * k + 261992 := by
    unfold C
    simp [show (8503056 * k + 523984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 261992) = 2125764 * k + 130996 := by
    unfold C
    simp [show (4251528 * k + 261992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 130996) = 1062882 * k + 65498 := by
    unfold C
    simp [show (2125764 * k + 130996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 65498) = 531441 * k + 32749 := by
    unfold C
    simp [show (1062882 * k + 65498) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 64615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 64615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_64895 : ∀ k : Nat,
    iterate (1048576 * k + 64895) 32 = 531441 * k + 32891 ∧
      531441 * k + 32891 < 1048576 * k + 64895 := by
  intro k
  have h1 : C (1048576 * k + 64895) = 3145728 * k + 194686 := by
    unfold C
    simp [show (1048576 * k + 64895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 194686) = 1572864 * k + 97343 := by
    unfold C
    simp [show (3145728 * k + 194686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 97343) = 4718592 * k + 292030 := by
    unfold C
    simp [show (1572864 * k + 97343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 292030) = 2359296 * k + 146015 := by
    unfold C
    simp [show (4718592 * k + 292030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 146015) = 7077888 * k + 438046 := by
    unfold C
    simp [show (2359296 * k + 146015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 438046) = 3538944 * k + 219023 := by
    unfold C
    simp [show (7077888 * k + 438046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 219023) = 10616832 * k + 657070 := by
    unfold C
    simp [show (3538944 * k + 219023) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 657070) = 5308416 * k + 328535 := by
    unfold C
    simp [show (10616832 * k + 657070) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 328535) = 15925248 * k + 985606 := by
    unfold C
    simp [show (5308416 * k + 328535) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 985606) = 7962624 * k + 492803 := by
    unfold C
    simp [show (15925248 * k + 985606) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 492803) = 23887872 * k + 1478410 := by
    unfold C
    simp [show (7962624 * k + 492803) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1478410) = 11943936 * k + 739205 := by
    unfold C
    simp [show (23887872 * k + 1478410) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 739205) = 35831808 * k + 2217616 := by
    unfold C
    simp [show (11943936 * k + 739205) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2217616) = 17915904 * k + 1108808 := by
    unfold C
    simp [show (35831808 * k + 2217616) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1108808) = 8957952 * k + 554404 := by
    unfold C
    simp [show (17915904 * k + 1108808) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 554404) = 4478976 * k + 277202 := by
    unfold C
    simp [show (8957952 * k + 554404) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 277202) = 2239488 * k + 138601 := by
    unfold C
    simp [show (4478976 * k + 277202) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 138601) = 6718464 * k + 415804 := by
    unfold C
    simp [show (2239488 * k + 138601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 415804) = 3359232 * k + 207902 := by
    unfold C
    simp [show (6718464 * k + 415804) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 207902) = 1679616 * k + 103951 := by
    unfold C
    simp [show (3359232 * k + 207902) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 103951) = 5038848 * k + 311854 := by
    unfold C
    simp [show (1679616 * k + 103951) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 311854) = 2519424 * k + 155927 := by
    unfold C
    simp [show (5038848 * k + 311854) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 155927) = 7558272 * k + 467782 := by
    unfold C
    simp [show (2519424 * k + 155927) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 467782) = 3779136 * k + 233891 := by
    unfold C
    simp [show (7558272 * k + 467782) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 233891) = 11337408 * k + 701674 := by
    unfold C
    simp [show (3779136 * k + 233891) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 701674) = 5668704 * k + 350837 := by
    unfold C
    simp [show (11337408 * k + 701674) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 350837) = 17006112 * k + 1052512 := by
    unfold C
    simp [show (5668704 * k + 350837) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1052512) = 8503056 * k + 526256 := by
    unfold C
    simp [show (17006112 * k + 1052512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 526256) = 4251528 * k + 263128 := by
    unfold C
    simp [show (8503056 * k + 526256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 263128) = 2125764 * k + 131564 := by
    unfold C
    simp [show (4251528 * k + 263128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 131564) = 1062882 * k + 65782 := by
    unfold C
    simp [show (2125764 * k + 131564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 65782) = 531441 * k + 32891 := by
    unfold C
    simp [show (1062882 * k + 65782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 64895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 64895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_65599 : ∀ k : Nat,
    iterate (1048576 * k + 65599) 32 = 531441 * k + 33248 ∧
      531441 * k + 33248 < 1048576 * k + 65599 := by
  intro k
  have h1 : C (1048576 * k + 65599) = 3145728 * k + 196798 := by
    unfold C
    simp [show (1048576 * k + 65599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 196798) = 1572864 * k + 98399 := by
    unfold C
    simp [show (3145728 * k + 196798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 98399) = 4718592 * k + 295198 := by
    unfold C
    simp [show (1572864 * k + 98399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 295198) = 2359296 * k + 147599 := by
    unfold C
    simp [show (4718592 * k + 295198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 147599) = 7077888 * k + 442798 := by
    unfold C
    simp [show (2359296 * k + 147599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 442798) = 3538944 * k + 221399 := by
    unfold C
    simp [show (7077888 * k + 442798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 221399) = 10616832 * k + 664198 := by
    unfold C
    simp [show (3538944 * k + 221399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 664198) = 5308416 * k + 332099 := by
    unfold C
    simp [show (10616832 * k + 664198) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 332099) = 15925248 * k + 996298 := by
    unfold C
    simp [show (5308416 * k + 332099) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 996298) = 7962624 * k + 498149 := by
    unfold C
    simp [show (15925248 * k + 996298) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 498149) = 23887872 * k + 1494448 := by
    unfold C
    simp [show (7962624 * k + 498149) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1494448) = 11943936 * k + 747224 := by
    unfold C
    simp [show (23887872 * k + 1494448) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 747224) = 5971968 * k + 373612 := by
    unfold C
    simp [show (11943936 * k + 747224) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 373612) = 2985984 * k + 186806 := by
    unfold C
    simp [show (5971968 * k + 373612) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 186806) = 1492992 * k + 93403 := by
    unfold C
    simp [show (2985984 * k + 186806) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 93403) = 4478976 * k + 280210 := by
    unfold C
    simp [show (1492992 * k + 93403) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 280210) = 2239488 * k + 140105 := by
    unfold C
    simp [show (4478976 * k + 280210) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 140105) = 6718464 * k + 420316 := by
    unfold C
    simp [show (2239488 * k + 140105) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 420316) = 3359232 * k + 210158 := by
    unfold C
    simp [show (6718464 * k + 420316) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 210158) = 1679616 * k + 105079 := by
    unfold C
    simp [show (3359232 * k + 210158) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 105079) = 5038848 * k + 315238 := by
    unfold C
    simp [show (1679616 * k + 105079) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 315238) = 2519424 * k + 157619 := by
    unfold C
    simp [show (5038848 * k + 315238) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 157619) = 7558272 * k + 472858 := by
    unfold C
    simp [show (2519424 * k + 157619) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 472858) = 3779136 * k + 236429 := by
    unfold C
    simp [show (7558272 * k + 472858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 236429) = 11337408 * k + 709288 := by
    unfold C
    simp [show (3779136 * k + 236429) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 709288) = 5668704 * k + 354644 := by
    unfold C
    simp [show (11337408 * k + 709288) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 354644) = 2834352 * k + 177322 := by
    unfold C
    simp [show (5668704 * k + 354644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 177322) = 1417176 * k + 88661 := by
    unfold C
    simp [show (2834352 * k + 177322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 88661) = 4251528 * k + 265984 := by
    unfold C
    simp [show (1417176 * k + 88661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 265984) = 2125764 * k + 132992 := by
    unfold C
    simp [show (4251528 * k + 265984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 132992) = 1062882 * k + 66496 := by
    unfold C
    simp [show (2125764 * k + 132992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 66496) = 531441 * k + 33248 := by
    unfold C
    simp [show (1062882 * k + 66496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 65599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 65599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_65647 : ∀ k : Nat,
    iterate (1048576 * k + 65647) 32 = 531441 * k + 33272 ∧
      531441 * k + 33272 < 1048576 * k + 65647 := by
  intro k
  have h1 : C (1048576 * k + 65647) = 3145728 * k + 196942 := by
    unfold C
    simp [show (1048576 * k + 65647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 196942) = 1572864 * k + 98471 := by
    unfold C
    simp [show (3145728 * k + 196942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 98471) = 4718592 * k + 295414 := by
    unfold C
    simp [show (1572864 * k + 98471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 295414) = 2359296 * k + 147707 := by
    unfold C
    simp [show (4718592 * k + 295414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 147707) = 7077888 * k + 443122 := by
    unfold C
    simp [show (2359296 * k + 147707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 443122) = 3538944 * k + 221561 := by
    unfold C
    simp [show (7077888 * k + 443122) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 221561) = 10616832 * k + 664684 := by
    unfold C
    simp [show (3538944 * k + 221561) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 664684) = 5308416 * k + 332342 := by
    unfold C
    simp [show (10616832 * k + 664684) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 332342) = 2654208 * k + 166171 := by
    unfold C
    simp [show (5308416 * k + 332342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 166171) = 7962624 * k + 498514 := by
    unfold C
    simp [show (2654208 * k + 166171) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 498514) = 3981312 * k + 249257 := by
    unfold C
    simp [show (7962624 * k + 498514) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 249257) = 11943936 * k + 747772 := by
    unfold C
    simp [show (3981312 * k + 249257) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 747772) = 5971968 * k + 373886 := by
    unfold C
    simp [show (11943936 * k + 747772) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 373886) = 2985984 * k + 186943 := by
    unfold C
    simp [show (5971968 * k + 373886) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 186943) = 8957952 * k + 560830 := by
    unfold C
    simp [show (2985984 * k + 186943) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 560830) = 4478976 * k + 280415 := by
    unfold C
    simp [show (8957952 * k + 560830) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 280415) = 13436928 * k + 841246 := by
    unfold C
    simp [show (4478976 * k + 280415) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 841246) = 6718464 * k + 420623 := by
    unfold C
    simp [show (13436928 * k + 841246) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 420623) = 20155392 * k + 1261870 := by
    unfold C
    simp [show (6718464 * k + 420623) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1261870) = 10077696 * k + 630935 := by
    unfold C
    simp [show (20155392 * k + 1261870) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 630935) = 30233088 * k + 1892806 := by
    unfold C
    simp [show (10077696 * k + 630935) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1892806) = 15116544 * k + 946403 := by
    unfold C
    simp [show (30233088 * k + 1892806) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 946403) = 45349632 * k + 2839210 := by
    unfold C
    simp [show (15116544 * k + 946403) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 2839210) = 22674816 * k + 1419605 := by
    unfold C
    simp [show (45349632 * k + 2839210) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1419605) = 68024448 * k + 4258816 := by
    unfold C
    simp [show (22674816 * k + 1419605) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 4258816) = 34012224 * k + 2129408 := by
    unfold C
    simp [show (68024448 * k + 4258816) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 2129408) = 17006112 * k + 1064704 := by
    unfold C
    simp [show (34012224 * k + 2129408) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1064704) = 8503056 * k + 532352 := by
    unfold C
    simp [show (17006112 * k + 1064704) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 532352) = 4251528 * k + 266176 := by
    unfold C
    simp [show (8503056 * k + 532352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 266176) = 2125764 * k + 133088 := by
    unfold C
    simp [show (4251528 * k + 266176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 133088) = 1062882 * k + 66544 := by
    unfold C
    simp [show (2125764 * k + 133088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 66544) = 531441 * k + 33272 := by
    unfold C
    simp [show (1062882 * k + 66544) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 65647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 65647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_65775 : ∀ k : Nat,
    iterate (1048576 * k + 65775) 32 = 531441 * k + 33337 ∧
      531441 * k + 33337 < 1048576 * k + 65775 := by
  intro k
  have h1 : C (1048576 * k + 65775) = 3145728 * k + 197326 := by
    unfold C
    simp [show (1048576 * k + 65775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 197326) = 1572864 * k + 98663 := by
    unfold C
    simp [show (3145728 * k + 197326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 98663) = 4718592 * k + 295990 := by
    unfold C
    simp [show (1572864 * k + 98663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 295990) = 2359296 * k + 147995 := by
    unfold C
    simp [show (4718592 * k + 295990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 147995) = 7077888 * k + 443986 := by
    unfold C
    simp [show (2359296 * k + 147995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 443986) = 3538944 * k + 221993 := by
    unfold C
    simp [show (7077888 * k + 443986) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 221993) = 10616832 * k + 665980 := by
    unfold C
    simp [show (3538944 * k + 221993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 665980) = 5308416 * k + 332990 := by
    unfold C
    simp [show (10616832 * k + 665980) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 332990) = 2654208 * k + 166495 := by
    unfold C
    simp [show (5308416 * k + 332990) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 166495) = 7962624 * k + 499486 := by
    unfold C
    simp [show (2654208 * k + 166495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 499486) = 3981312 * k + 249743 := by
    unfold C
    simp [show (7962624 * k + 499486) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 249743) = 11943936 * k + 749230 := by
    unfold C
    simp [show (3981312 * k + 249743) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 749230) = 5971968 * k + 374615 := by
    unfold C
    simp [show (11943936 * k + 749230) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 374615) = 17915904 * k + 1123846 := by
    unfold C
    simp [show (5971968 * k + 374615) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1123846) = 8957952 * k + 561923 := by
    unfold C
    simp [show (17915904 * k + 1123846) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 561923) = 26873856 * k + 1685770 := by
    unfold C
    simp [show (8957952 * k + 561923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1685770) = 13436928 * k + 842885 := by
    unfold C
    simp [show (26873856 * k + 1685770) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 842885) = 40310784 * k + 2528656 := by
    unfold C
    simp [show (13436928 * k + 842885) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 2528656) = 20155392 * k + 1264328 := by
    unfold C
    simp [show (40310784 * k + 2528656) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1264328) = 10077696 * k + 632164 := by
    unfold C
    simp [show (20155392 * k + 1264328) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 632164) = 5038848 * k + 316082 := by
    unfold C
    simp [show (10077696 * k + 632164) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 316082) = 2519424 * k + 158041 := by
    unfold C
    simp [show (5038848 * k + 316082) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 158041) = 7558272 * k + 474124 := by
    unfold C
    simp [show (2519424 * k + 158041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 474124) = 3779136 * k + 237062 := by
    unfold C
    simp [show (7558272 * k + 474124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 237062) = 1889568 * k + 118531 := by
    unfold C
    simp [show (3779136 * k + 237062) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 118531) = 5668704 * k + 355594 := by
    unfold C
    simp [show (1889568 * k + 118531) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 355594) = 2834352 * k + 177797 := by
    unfold C
    simp [show (5668704 * k + 355594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 177797) = 8503056 * k + 533392 := by
    unfold C
    simp [show (2834352 * k + 177797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 533392) = 4251528 * k + 266696 := by
    unfold C
    simp [show (8503056 * k + 533392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 266696) = 2125764 * k + 133348 := by
    unfold C
    simp [show (4251528 * k + 266696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 133348) = 1062882 * k + 66674 := by
    unfold C
    simp [show (2125764 * k + 133348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 66674) = 531441 * k + 33337 := by
    unfold C
    simp [show (1062882 * k + 66674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 65775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 65775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_66023 : ∀ k : Nat,
    iterate (1048576 * k + 66023) 32 = 531441 * k + 33463 ∧
      531441 * k + 33463 < 1048576 * k + 66023 := by
  intro k
  have h1 : C (1048576 * k + 66023) = 3145728 * k + 198070 := by
    unfold C
    simp [show (1048576 * k + 66023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 198070) = 1572864 * k + 99035 := by
    unfold C
    simp [show (3145728 * k + 198070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 99035) = 4718592 * k + 297106 := by
    unfold C
    simp [show (1572864 * k + 99035) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 297106) = 2359296 * k + 148553 := by
    unfold C
    simp [show (4718592 * k + 297106) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 148553) = 7077888 * k + 445660 := by
    unfold C
    simp [show (2359296 * k + 148553) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 445660) = 3538944 * k + 222830 := by
    unfold C
    simp [show (7077888 * k + 445660) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 222830) = 1769472 * k + 111415 := by
    unfold C
    simp [show (3538944 * k + 222830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 111415) = 5308416 * k + 334246 := by
    unfold C
    simp [show (1769472 * k + 111415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 334246) = 2654208 * k + 167123 := by
    unfold C
    simp [show (5308416 * k + 334246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 167123) = 7962624 * k + 501370 := by
    unfold C
    simp [show (2654208 * k + 167123) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 501370) = 3981312 * k + 250685 := by
    unfold C
    simp [show (7962624 * k + 501370) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 250685) = 11943936 * k + 752056 := by
    unfold C
    simp [show (3981312 * k + 250685) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 752056) = 5971968 * k + 376028 := by
    unfold C
    simp [show (11943936 * k + 752056) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 376028) = 2985984 * k + 188014 := by
    unfold C
    simp [show (5971968 * k + 376028) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 188014) = 1492992 * k + 94007 := by
    unfold C
    simp [show (2985984 * k + 188014) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 94007) = 4478976 * k + 282022 := by
    unfold C
    simp [show (1492992 * k + 94007) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 282022) = 2239488 * k + 141011 := by
    unfold C
    simp [show (4478976 * k + 282022) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 141011) = 6718464 * k + 423034 := by
    unfold C
    simp [show (2239488 * k + 141011) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 423034) = 3359232 * k + 211517 := by
    unfold C
    simp [show (6718464 * k + 423034) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 211517) = 10077696 * k + 634552 := by
    unfold C
    simp [show (3359232 * k + 211517) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 634552) = 5038848 * k + 317276 := by
    unfold C
    simp [show (10077696 * k + 634552) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 317276) = 2519424 * k + 158638 := by
    unfold C
    simp [show (5038848 * k + 317276) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 158638) = 1259712 * k + 79319 := by
    unfold C
    simp [show (2519424 * k + 158638) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 79319) = 3779136 * k + 237958 := by
    unfold C
    simp [show (1259712 * k + 79319) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 237958) = 1889568 * k + 118979 := by
    unfold C
    simp [show (3779136 * k + 237958) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 118979) = 5668704 * k + 356938 := by
    unfold C
    simp [show (1889568 * k + 118979) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 356938) = 2834352 * k + 178469 := by
    unfold C
    simp [show (5668704 * k + 356938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 178469) = 8503056 * k + 535408 := by
    unfold C
    simp [show (2834352 * k + 178469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 535408) = 4251528 * k + 267704 := by
    unfold C
    simp [show (8503056 * k + 535408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 267704) = 2125764 * k + 133852 := by
    unfold C
    simp [show (4251528 * k + 267704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 133852) = 1062882 * k + 66926 := by
    unfold C
    simp [show (2125764 * k + 133852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 66926) = 531441 * k + 33463 := by
    unfold C
    simp [show (1062882 * k + 66926) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 66023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 66023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_66919 : ∀ k : Nat,
    iterate (1048576 * k + 66919) 32 = 531441 * k + 33917 ∧
      531441 * k + 33917 < 1048576 * k + 66919 := by
  intro k
  have h1 : C (1048576 * k + 66919) = 3145728 * k + 200758 := by
    unfold C
    simp [show (1048576 * k + 66919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 200758) = 1572864 * k + 100379 := by
    unfold C
    simp [show (3145728 * k + 200758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 100379) = 4718592 * k + 301138 := by
    unfold C
    simp [show (1572864 * k + 100379) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 301138) = 2359296 * k + 150569 := by
    unfold C
    simp [show (4718592 * k + 301138) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 150569) = 7077888 * k + 451708 := by
    unfold C
    simp [show (2359296 * k + 150569) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 451708) = 3538944 * k + 225854 := by
    unfold C
    simp [show (7077888 * k + 451708) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 225854) = 1769472 * k + 112927 := by
    unfold C
    simp [show (3538944 * k + 225854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 112927) = 5308416 * k + 338782 := by
    unfold C
    simp [show (1769472 * k + 112927) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 338782) = 2654208 * k + 169391 := by
    unfold C
    simp [show (5308416 * k + 338782) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 169391) = 7962624 * k + 508174 := by
    unfold C
    simp [show (2654208 * k + 169391) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 508174) = 3981312 * k + 254087 := by
    unfold C
    simp [show (7962624 * k + 508174) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 254087) = 11943936 * k + 762262 := by
    unfold C
    simp [show (3981312 * k + 254087) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 762262) = 5971968 * k + 381131 := by
    unfold C
    simp [show (11943936 * k + 762262) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 381131) = 17915904 * k + 1143394 := by
    unfold C
    simp [show (5971968 * k + 381131) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1143394) = 8957952 * k + 571697 := by
    unfold C
    simp [show (17915904 * k + 1143394) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 571697) = 26873856 * k + 1715092 := by
    unfold C
    simp [show (8957952 * k + 571697) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1715092) = 13436928 * k + 857546 := by
    unfold C
    simp [show (26873856 * k + 1715092) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 857546) = 6718464 * k + 428773 := by
    unfold C
    simp [show (13436928 * k + 857546) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 428773) = 20155392 * k + 1286320 := by
    unfold C
    simp [show (6718464 * k + 428773) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1286320) = 10077696 * k + 643160 := by
    unfold C
    simp [show (20155392 * k + 1286320) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 643160) = 5038848 * k + 321580 := by
    unfold C
    simp [show (10077696 * k + 643160) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 321580) = 2519424 * k + 160790 := by
    unfold C
    simp [show (5038848 * k + 321580) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 160790) = 1259712 * k + 80395 := by
    unfold C
    simp [show (2519424 * k + 160790) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 80395) = 3779136 * k + 241186 := by
    unfold C
    simp [show (1259712 * k + 80395) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 241186) = 1889568 * k + 120593 := by
    unfold C
    simp [show (3779136 * k + 241186) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 120593) = 5668704 * k + 361780 := by
    unfold C
    simp [show (1889568 * k + 120593) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 361780) = 2834352 * k + 180890 := by
    unfold C
    simp [show (5668704 * k + 361780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 180890) = 1417176 * k + 90445 := by
    unfold C
    simp [show (2834352 * k + 180890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 90445) = 4251528 * k + 271336 := by
    unfold C
    simp [show (1417176 * k + 90445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 271336) = 2125764 * k + 135668 := by
    unfold C
    simp [show (4251528 * k + 271336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 135668) = 1062882 * k + 67834 := by
    unfold C
    simp [show (2125764 * k + 135668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 67834) = 531441 * k + 33917 := by
    unfold C
    simp [show (1062882 * k + 67834) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 66919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 66919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_67047 : ∀ k : Nat,
    iterate (1048576 * k + 67047) 32 = 531441 * k + 33982 ∧
      531441 * k + 33982 < 1048576 * k + 67047 := by
  intro k
  have h1 : C (1048576 * k + 67047) = 3145728 * k + 201142 := by
    unfold C
    simp [show (1048576 * k + 67047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 201142) = 1572864 * k + 100571 := by
    unfold C
    simp [show (3145728 * k + 201142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 100571) = 4718592 * k + 301714 := by
    unfold C
    simp [show (1572864 * k + 100571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 301714) = 2359296 * k + 150857 := by
    unfold C
    simp [show (4718592 * k + 301714) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 150857) = 7077888 * k + 452572 := by
    unfold C
    simp [show (2359296 * k + 150857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 452572) = 3538944 * k + 226286 := by
    unfold C
    simp [show (7077888 * k + 452572) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 226286) = 1769472 * k + 113143 := by
    unfold C
    simp [show (3538944 * k + 226286) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 113143) = 5308416 * k + 339430 := by
    unfold C
    simp [show (1769472 * k + 113143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 339430) = 2654208 * k + 169715 := by
    unfold C
    simp [show (5308416 * k + 339430) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 169715) = 7962624 * k + 509146 := by
    unfold C
    simp [show (2654208 * k + 169715) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 509146) = 3981312 * k + 254573 := by
    unfold C
    simp [show (7962624 * k + 509146) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 254573) = 11943936 * k + 763720 := by
    unfold C
    simp [show (3981312 * k + 254573) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 763720) = 5971968 * k + 381860 := by
    unfold C
    simp [show (11943936 * k + 763720) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 381860) = 2985984 * k + 190930 := by
    unfold C
    simp [show (5971968 * k + 381860) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 190930) = 1492992 * k + 95465 := by
    unfold C
    simp [show (2985984 * k + 190930) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 95465) = 4478976 * k + 286396 := by
    unfold C
    simp [show (1492992 * k + 95465) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 286396) = 2239488 * k + 143198 := by
    unfold C
    simp [show (4478976 * k + 286396) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 143198) = 1119744 * k + 71599 := by
    unfold C
    simp [show (2239488 * k + 143198) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 71599) = 3359232 * k + 214798 := by
    unfold C
    simp [show (1119744 * k + 71599) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 214798) = 1679616 * k + 107399 := by
    unfold C
    simp [show (3359232 * k + 214798) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 107399) = 5038848 * k + 322198 := by
    unfold C
    simp [show (1679616 * k + 107399) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 322198) = 2519424 * k + 161099 := by
    unfold C
    simp [show (5038848 * k + 322198) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 161099) = 7558272 * k + 483298 := by
    unfold C
    simp [show (2519424 * k + 161099) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 483298) = 3779136 * k + 241649 := by
    unfold C
    simp [show (7558272 * k + 483298) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 241649) = 11337408 * k + 724948 := by
    unfold C
    simp [show (3779136 * k + 241649) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 724948) = 5668704 * k + 362474 := by
    unfold C
    simp [show (11337408 * k + 724948) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 362474) = 2834352 * k + 181237 := by
    unfold C
    simp [show (5668704 * k + 362474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 181237) = 8503056 * k + 543712 := by
    unfold C
    simp [show (2834352 * k + 181237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 543712) = 4251528 * k + 271856 := by
    unfold C
    simp [show (8503056 * k + 543712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 271856) = 2125764 * k + 135928 := by
    unfold C
    simp [show (4251528 * k + 271856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 135928) = 1062882 * k + 67964 := by
    unfold C
    simp [show (2125764 * k + 135928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 67964) = 531441 * k + 33982 := by
    unfold C
    simp [show (1062882 * k + 67964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 67047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 67047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_67687 : ∀ k : Nat,
    iterate (1048576 * k + 67687) 32 = 531441 * k + 34306 ∧
      531441 * k + 34306 < 1048576 * k + 67687 := by
  intro k
  have h1 : C (1048576 * k + 67687) = 3145728 * k + 203062 := by
    unfold C
    simp [show (1048576 * k + 67687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 203062) = 1572864 * k + 101531 := by
    unfold C
    simp [show (3145728 * k + 203062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 101531) = 4718592 * k + 304594 := by
    unfold C
    simp [show (1572864 * k + 101531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 304594) = 2359296 * k + 152297 := by
    unfold C
    simp [show (4718592 * k + 304594) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 152297) = 7077888 * k + 456892 := by
    unfold C
    simp [show (2359296 * k + 152297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 456892) = 3538944 * k + 228446 := by
    unfold C
    simp [show (7077888 * k + 456892) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 228446) = 1769472 * k + 114223 := by
    unfold C
    simp [show (3538944 * k + 228446) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 114223) = 5308416 * k + 342670 := by
    unfold C
    simp [show (1769472 * k + 114223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 342670) = 2654208 * k + 171335 := by
    unfold C
    simp [show (5308416 * k + 342670) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 171335) = 7962624 * k + 514006 := by
    unfold C
    simp [show (2654208 * k + 171335) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 514006) = 3981312 * k + 257003 := by
    unfold C
    simp [show (7962624 * k + 514006) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 257003) = 11943936 * k + 771010 := by
    unfold C
    simp [show (3981312 * k + 257003) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 771010) = 5971968 * k + 385505 := by
    unfold C
    simp [show (11943936 * k + 771010) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 385505) = 17915904 * k + 1156516 := by
    unfold C
    simp [show (5971968 * k + 385505) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1156516) = 8957952 * k + 578258 := by
    unfold C
    simp [show (17915904 * k + 1156516) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 578258) = 4478976 * k + 289129 := by
    unfold C
    simp [show (8957952 * k + 578258) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 289129) = 13436928 * k + 867388 := by
    unfold C
    simp [show (4478976 * k + 289129) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 867388) = 6718464 * k + 433694 := by
    unfold C
    simp [show (13436928 * k + 867388) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 433694) = 3359232 * k + 216847 := by
    unfold C
    simp [show (6718464 * k + 433694) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 216847) = 10077696 * k + 650542 := by
    unfold C
    simp [show (3359232 * k + 216847) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 650542) = 5038848 * k + 325271 := by
    unfold C
    simp [show (10077696 * k + 650542) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 325271) = 15116544 * k + 975814 := by
    unfold C
    simp [show (5038848 * k + 325271) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 975814) = 7558272 * k + 487907 := by
    unfold C
    simp [show (15116544 * k + 975814) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 487907) = 22674816 * k + 1463722 := by
    unfold C
    simp [show (7558272 * k + 487907) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1463722) = 11337408 * k + 731861 := by
    unfold C
    simp [show (22674816 * k + 1463722) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 731861) = 34012224 * k + 2195584 := by
    unfold C
    simp [show (11337408 * k + 731861) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 2195584) = 17006112 * k + 1097792 := by
    unfold C
    simp [show (34012224 * k + 2195584) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1097792) = 8503056 * k + 548896 := by
    unfold C
    simp [show (17006112 * k + 1097792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 548896) = 4251528 * k + 274448 := by
    unfold C
    simp [show (8503056 * k + 548896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 274448) = 2125764 * k + 137224 := by
    unfold C
    simp [show (4251528 * k + 274448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 137224) = 1062882 * k + 68612 := by
    unfold C
    simp [show (2125764 * k + 137224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 68612) = 531441 * k + 34306 := by
    unfold C
    simp [show (1062882 * k + 68612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 67687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 67687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_68047 : ∀ k : Nat,
    iterate (1048576 * k + 68047) 32 = 531441 * k + 34489 ∧
      531441 * k + 34489 < 1048576 * k + 68047 := by
  intro k
  have h1 : C (1048576 * k + 68047) = 3145728 * k + 204142 := by
    unfold C
    simp [show (1048576 * k + 68047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 204142) = 1572864 * k + 102071 := by
    unfold C
    simp [show (3145728 * k + 204142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 102071) = 4718592 * k + 306214 := by
    unfold C
    simp [show (1572864 * k + 102071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 306214) = 2359296 * k + 153107 := by
    unfold C
    simp [show (4718592 * k + 306214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 153107) = 7077888 * k + 459322 := by
    unfold C
    simp [show (2359296 * k + 153107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 459322) = 3538944 * k + 229661 := by
    unfold C
    simp [show (7077888 * k + 459322) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 229661) = 10616832 * k + 688984 := by
    unfold C
    simp [show (3538944 * k + 229661) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 688984) = 5308416 * k + 344492 := by
    unfold C
    simp [show (10616832 * k + 688984) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 344492) = 2654208 * k + 172246 := by
    unfold C
    simp [show (5308416 * k + 344492) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 172246) = 1327104 * k + 86123 := by
    unfold C
    simp [show (2654208 * k + 172246) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 86123) = 3981312 * k + 258370 := by
    unfold C
    simp [show (1327104 * k + 86123) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 258370) = 1990656 * k + 129185 := by
    unfold C
    simp [show (3981312 * k + 258370) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 129185) = 5971968 * k + 387556 := by
    unfold C
    simp [show (1990656 * k + 129185) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 387556) = 2985984 * k + 193778 := by
    unfold C
    simp [show (5971968 * k + 387556) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 193778) = 1492992 * k + 96889 := by
    unfold C
    simp [show (2985984 * k + 193778) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 96889) = 4478976 * k + 290668 := by
    unfold C
    simp [show (1492992 * k + 96889) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 290668) = 2239488 * k + 145334 := by
    unfold C
    simp [show (4478976 * k + 290668) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 145334) = 1119744 * k + 72667 := by
    unfold C
    simp [show (2239488 * k + 145334) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 72667) = 3359232 * k + 218002 := by
    unfold C
    simp [show (1119744 * k + 72667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 218002) = 1679616 * k + 109001 := by
    unfold C
    simp [show (3359232 * k + 218002) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 109001) = 5038848 * k + 327004 := by
    unfold C
    simp [show (1679616 * k + 109001) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 327004) = 2519424 * k + 163502 := by
    unfold C
    simp [show (5038848 * k + 327004) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 163502) = 1259712 * k + 81751 := by
    unfold C
    simp [show (2519424 * k + 163502) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 81751) = 3779136 * k + 245254 := by
    unfold C
    simp [show (1259712 * k + 81751) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 245254) = 1889568 * k + 122627 := by
    unfold C
    simp [show (3779136 * k + 245254) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 122627) = 5668704 * k + 367882 := by
    unfold C
    simp [show (1889568 * k + 122627) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 367882) = 2834352 * k + 183941 := by
    unfold C
    simp [show (5668704 * k + 367882) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 183941) = 8503056 * k + 551824 := by
    unfold C
    simp [show (2834352 * k + 183941) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 551824) = 4251528 * k + 275912 := by
    unfold C
    simp [show (8503056 * k + 551824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 275912) = 2125764 * k + 137956 := by
    unfold C
    simp [show (4251528 * k + 275912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 137956) = 1062882 * k + 68978 := by
    unfold C
    simp [show (2125764 * k + 137956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 68978) = 531441 * k + 34489 := by
    unfold C
    simp [show (1062882 * k + 68978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 68047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 68047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_68251 : ∀ k : Nat,
    iterate (1048576 * k + 68251) 32 = 531441 * k + 34592 ∧
      531441 * k + 34592 < 1048576 * k + 68251 := by
  intro k
  have h1 : C (1048576 * k + 68251) = 3145728 * k + 204754 := by
    unfold C
    simp [show (1048576 * k + 68251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 204754) = 1572864 * k + 102377 := by
    unfold C
    simp [show (3145728 * k + 204754) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 102377) = 4718592 * k + 307132 := by
    unfold C
    simp [show (1572864 * k + 102377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 307132) = 2359296 * k + 153566 := by
    unfold C
    simp [show (4718592 * k + 307132) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 153566) = 1179648 * k + 76783 := by
    unfold C
    simp [show (2359296 * k + 153566) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 76783) = 3538944 * k + 230350 := by
    unfold C
    simp [show (1179648 * k + 76783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 230350) = 1769472 * k + 115175 := by
    unfold C
    simp [show (3538944 * k + 230350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 115175) = 5308416 * k + 345526 := by
    unfold C
    simp [show (1769472 * k + 115175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 345526) = 2654208 * k + 172763 := by
    unfold C
    simp [show (5308416 * k + 345526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 172763) = 7962624 * k + 518290 := by
    unfold C
    simp [show (2654208 * k + 172763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 518290) = 3981312 * k + 259145 := by
    unfold C
    simp [show (7962624 * k + 518290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 259145) = 11943936 * k + 777436 := by
    unfold C
    simp [show (3981312 * k + 259145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 777436) = 5971968 * k + 388718 := by
    unfold C
    simp [show (11943936 * k + 777436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 388718) = 2985984 * k + 194359 := by
    unfold C
    simp [show (5971968 * k + 388718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 194359) = 8957952 * k + 583078 := by
    unfold C
    simp [show (2985984 * k + 194359) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 583078) = 4478976 * k + 291539 := by
    unfold C
    simp [show (8957952 * k + 583078) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 291539) = 13436928 * k + 874618 := by
    unfold C
    simp [show (4478976 * k + 291539) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 874618) = 6718464 * k + 437309 := by
    unfold C
    simp [show (13436928 * k + 874618) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 437309) = 20155392 * k + 1311928 := by
    unfold C
    simp [show (6718464 * k + 437309) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1311928) = 10077696 * k + 655964 := by
    unfold C
    simp [show (20155392 * k + 1311928) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 655964) = 5038848 * k + 327982 := by
    unfold C
    simp [show (10077696 * k + 655964) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 327982) = 2519424 * k + 163991 := by
    unfold C
    simp [show (5038848 * k + 327982) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 163991) = 7558272 * k + 491974 := by
    unfold C
    simp [show (2519424 * k + 163991) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 491974) = 3779136 * k + 245987 := by
    unfold C
    simp [show (7558272 * k + 491974) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 245987) = 11337408 * k + 737962 := by
    unfold C
    simp [show (3779136 * k + 245987) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 737962) = 5668704 * k + 368981 := by
    unfold C
    simp [show (11337408 * k + 737962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 368981) = 17006112 * k + 1106944 := by
    unfold C
    simp [show (5668704 * k + 368981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1106944) = 8503056 * k + 553472 := by
    unfold C
    simp [show (17006112 * k + 1106944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 553472) = 4251528 * k + 276736 := by
    unfold C
    simp [show (8503056 * k + 553472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 276736) = 2125764 * k + 138368 := by
    unfold C
    simp [show (4251528 * k + 276736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 138368) = 1062882 * k + 69184 := by
    unfold C
    simp [show (2125764 * k + 138368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 69184) = 531441 * k + 34592 := by
    unfold C
    simp [show (1062882 * k + 69184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 68251) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 68251)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_68287 : ∀ k : Nat,
    iterate (1048576 * k + 68287) 32 = 531441 * k + 34610 ∧
      531441 * k + 34610 < 1048576 * k + 68287 := by
  intro k
  have h1 : C (1048576 * k + 68287) = 3145728 * k + 204862 := by
    unfold C
    simp [show (1048576 * k + 68287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 204862) = 1572864 * k + 102431 := by
    unfold C
    simp [show (3145728 * k + 204862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 102431) = 4718592 * k + 307294 := by
    unfold C
    simp [show (1572864 * k + 102431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 307294) = 2359296 * k + 153647 := by
    unfold C
    simp [show (4718592 * k + 307294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 153647) = 7077888 * k + 460942 := by
    unfold C
    simp [show (2359296 * k + 153647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 460942) = 3538944 * k + 230471 := by
    unfold C
    simp [show (7077888 * k + 460942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 230471) = 10616832 * k + 691414 := by
    unfold C
    simp [show (3538944 * k + 230471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 691414) = 5308416 * k + 345707 := by
    unfold C
    simp [show (10616832 * k + 691414) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 345707) = 15925248 * k + 1037122 := by
    unfold C
    simp [show (5308416 * k + 345707) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1037122) = 7962624 * k + 518561 := by
    unfold C
    simp [show (15925248 * k + 1037122) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 518561) = 23887872 * k + 1555684 := by
    unfold C
    simp [show (7962624 * k + 518561) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1555684) = 11943936 * k + 777842 := by
    unfold C
    simp [show (23887872 * k + 1555684) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 777842) = 5971968 * k + 388921 := by
    unfold C
    simp [show (11943936 * k + 777842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 388921) = 17915904 * k + 1166764 := by
    unfold C
    simp [show (5971968 * k + 388921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1166764) = 8957952 * k + 583382 := by
    unfold C
    simp [show (17915904 * k + 1166764) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 583382) = 4478976 * k + 291691 := by
    unfold C
    simp [show (8957952 * k + 583382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 291691) = 13436928 * k + 875074 := by
    unfold C
    simp [show (4478976 * k + 291691) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 875074) = 6718464 * k + 437537 := by
    unfold C
    simp [show (13436928 * k + 875074) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 437537) = 20155392 * k + 1312612 := by
    unfold C
    simp [show (6718464 * k + 437537) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1312612) = 10077696 * k + 656306 := by
    unfold C
    simp [show (20155392 * k + 1312612) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 656306) = 5038848 * k + 328153 := by
    unfold C
    simp [show (10077696 * k + 656306) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 328153) = 15116544 * k + 984460 := by
    unfold C
    simp [show (5038848 * k + 328153) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 984460) = 7558272 * k + 492230 := by
    unfold C
    simp [show (15116544 * k + 984460) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 492230) = 3779136 * k + 246115 := by
    unfold C
    simp [show (7558272 * k + 492230) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 246115) = 11337408 * k + 738346 := by
    unfold C
    simp [show (3779136 * k + 246115) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 738346) = 5668704 * k + 369173 := by
    unfold C
    simp [show (11337408 * k + 738346) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 369173) = 17006112 * k + 1107520 := by
    unfold C
    simp [show (5668704 * k + 369173) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1107520) = 8503056 * k + 553760 := by
    unfold C
    simp [show (17006112 * k + 1107520) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 553760) = 4251528 * k + 276880 := by
    unfold C
    simp [show (8503056 * k + 553760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 276880) = 2125764 * k + 138440 := by
    unfold C
    simp [show (4251528 * k + 276880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 138440) = 1062882 * k + 69220 := by
    unfold C
    simp [show (2125764 * k + 138440) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 69220) = 531441 * k + 34610 := by
    unfold C
    simp [show (1062882 * k + 69220) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 68287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 68287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_68415 : ∀ k : Nat,
    iterate (1048576 * k + 68415) 32 = 531441 * k + 34675 ∧
      531441 * k + 34675 < 1048576 * k + 68415 := by
  intro k
  have h1 : C (1048576 * k + 68415) = 3145728 * k + 205246 := by
    unfold C
    simp [show (1048576 * k + 68415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 205246) = 1572864 * k + 102623 := by
    unfold C
    simp [show (3145728 * k + 205246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 102623) = 4718592 * k + 307870 := by
    unfold C
    simp [show (1572864 * k + 102623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 307870) = 2359296 * k + 153935 := by
    unfold C
    simp [show (4718592 * k + 307870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 153935) = 7077888 * k + 461806 := by
    unfold C
    simp [show (2359296 * k + 153935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 461806) = 3538944 * k + 230903 := by
    unfold C
    simp [show (7077888 * k + 461806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 230903) = 10616832 * k + 692710 := by
    unfold C
    simp [show (3538944 * k + 230903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 692710) = 5308416 * k + 346355 := by
    unfold C
    simp [show (10616832 * k + 692710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 346355) = 15925248 * k + 1039066 := by
    unfold C
    simp [show (5308416 * k + 346355) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1039066) = 7962624 * k + 519533 := by
    unfold C
    simp [show (15925248 * k + 1039066) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 519533) = 23887872 * k + 1558600 := by
    unfold C
    simp [show (7962624 * k + 519533) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1558600) = 11943936 * k + 779300 := by
    unfold C
    simp [show (23887872 * k + 1558600) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 779300) = 5971968 * k + 389650 := by
    unfold C
    simp [show (11943936 * k + 779300) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 389650) = 2985984 * k + 194825 := by
    unfold C
    simp [show (5971968 * k + 389650) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 194825) = 8957952 * k + 584476 := by
    unfold C
    simp [show (2985984 * k + 194825) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 584476) = 4478976 * k + 292238 := by
    unfold C
    simp [show (8957952 * k + 584476) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 292238) = 2239488 * k + 146119 := by
    unfold C
    simp [show (4478976 * k + 292238) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 146119) = 6718464 * k + 438358 := by
    unfold C
    simp [show (2239488 * k + 146119) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 438358) = 3359232 * k + 219179 := by
    unfold C
    simp [show (6718464 * k + 438358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 219179) = 10077696 * k + 657538 := by
    unfold C
    simp [show (3359232 * k + 219179) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 657538) = 5038848 * k + 328769 := by
    unfold C
    simp [show (10077696 * k + 657538) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 328769) = 15116544 * k + 986308 := by
    unfold C
    simp [show (5038848 * k + 328769) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 986308) = 7558272 * k + 493154 := by
    unfold C
    simp [show (15116544 * k + 986308) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 493154) = 3779136 * k + 246577 := by
    unfold C
    simp [show (7558272 * k + 493154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 246577) = 11337408 * k + 739732 := by
    unfold C
    simp [show (3779136 * k + 246577) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 739732) = 5668704 * k + 369866 := by
    unfold C
    simp [show (11337408 * k + 739732) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 369866) = 2834352 * k + 184933 := by
    unfold C
    simp [show (5668704 * k + 369866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 184933) = 8503056 * k + 554800 := by
    unfold C
    simp [show (2834352 * k + 184933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 554800) = 4251528 * k + 277400 := by
    unfold C
    simp [show (8503056 * k + 554800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 277400) = 2125764 * k + 138700 := by
    unfold C
    simp [show (4251528 * k + 277400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 138700) = 1062882 * k + 69350 := by
    unfold C
    simp [show (2125764 * k + 138700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 69350) = 531441 * k + 34675 := by
    unfold C
    simp [show (1062882 * k + 69350) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 68415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 68415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_68735 : ∀ k : Nat,
    iterate (1048576 * k + 68735) 32 = 531441 * k + 34837 ∧
      531441 * k + 34837 < 1048576 * k + 68735 := by
  intro k
  have h1 : C (1048576 * k + 68735) = 3145728 * k + 206206 := by
    unfold C
    simp [show (1048576 * k + 68735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 206206) = 1572864 * k + 103103 := by
    unfold C
    simp [show (3145728 * k + 206206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 103103) = 4718592 * k + 309310 := by
    unfold C
    simp [show (1572864 * k + 103103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 309310) = 2359296 * k + 154655 := by
    unfold C
    simp [show (4718592 * k + 309310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 154655) = 7077888 * k + 463966 := by
    unfold C
    simp [show (2359296 * k + 154655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 463966) = 3538944 * k + 231983 := by
    unfold C
    simp [show (7077888 * k + 463966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 231983) = 10616832 * k + 695950 := by
    unfold C
    simp [show (3538944 * k + 231983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 695950) = 5308416 * k + 347975 := by
    unfold C
    simp [show (10616832 * k + 695950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 347975) = 15925248 * k + 1043926 := by
    unfold C
    simp [show (5308416 * k + 347975) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1043926) = 7962624 * k + 521963 := by
    unfold C
    simp [show (15925248 * k + 1043926) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 521963) = 23887872 * k + 1565890 := by
    unfold C
    simp [show (7962624 * k + 521963) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1565890) = 11943936 * k + 782945 := by
    unfold C
    simp [show (23887872 * k + 1565890) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 782945) = 35831808 * k + 2348836 := by
    unfold C
    simp [show (11943936 * k + 782945) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2348836) = 17915904 * k + 1174418 := by
    unfold C
    simp [show (35831808 * k + 2348836) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1174418) = 8957952 * k + 587209 := by
    unfold C
    simp [show (17915904 * k + 1174418) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 587209) = 26873856 * k + 1761628 := by
    unfold C
    simp [show (8957952 * k + 587209) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1761628) = 13436928 * k + 880814 := by
    unfold C
    simp [show (26873856 * k + 1761628) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 880814) = 6718464 * k + 440407 := by
    unfold C
    simp [show (13436928 * k + 880814) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 440407) = 20155392 * k + 1321222 := by
    unfold C
    simp [show (6718464 * k + 440407) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1321222) = 10077696 * k + 660611 := by
    unfold C
    simp [show (20155392 * k + 1321222) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 660611) = 30233088 * k + 1981834 := by
    unfold C
    simp [show (10077696 * k + 660611) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1981834) = 15116544 * k + 990917 := by
    unfold C
    simp [show (30233088 * k + 1981834) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 990917) = 45349632 * k + 2972752 := by
    unfold C
    simp [show (15116544 * k + 990917) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 2972752) = 22674816 * k + 1486376 := by
    unfold C
    simp [show (45349632 * k + 2972752) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1486376) = 11337408 * k + 743188 := by
    unfold C
    simp [show (22674816 * k + 1486376) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 743188) = 5668704 * k + 371594 := by
    unfold C
    simp [show (11337408 * k + 743188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 371594) = 2834352 * k + 185797 := by
    unfold C
    simp [show (5668704 * k + 371594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 185797) = 8503056 * k + 557392 := by
    unfold C
    simp [show (2834352 * k + 185797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 557392) = 4251528 * k + 278696 := by
    unfold C
    simp [show (8503056 * k + 557392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 278696) = 2125764 * k + 139348 := by
    unfold C
    simp [show (4251528 * k + 278696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 139348) = 1062882 * k + 69674 := by
    unfold C
    simp [show (2125764 * k + 139348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 69674) = 531441 * k + 34837 := by
    unfold C
    simp [show (1062882 * k + 69674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 68735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 68735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard010
