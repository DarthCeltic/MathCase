import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard005

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_23423 : ∀ k : Nat,
    iterate (1048576 * k + 23423) 32 = 531441 * k + 11872 ∧
      531441 * k + 11872 < 1048576 * k + 23423 := by
  intro k
  have h1 : C (1048576 * k + 23423) = 3145728 * k + 70270 := by
    unfold C
    simp [show (1048576 * k + 23423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 70270) = 1572864 * k + 35135 := by
    unfold C
    simp [show (3145728 * k + 70270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 35135) = 4718592 * k + 105406 := by
    unfold C
    simp [show (1572864 * k + 35135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 105406) = 2359296 * k + 52703 := by
    unfold C
    simp [show (4718592 * k + 105406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 52703) = 7077888 * k + 158110 := by
    unfold C
    simp [show (2359296 * k + 52703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 158110) = 3538944 * k + 79055 := by
    unfold C
    simp [show (7077888 * k + 158110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 79055) = 10616832 * k + 237166 := by
    unfold C
    simp [show (3538944 * k + 79055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 237166) = 5308416 * k + 118583 := by
    unfold C
    simp [show (10616832 * k + 237166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 118583) = 15925248 * k + 355750 := by
    unfold C
    simp [show (5308416 * k + 118583) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 355750) = 7962624 * k + 177875 := by
    unfold C
    simp [show (15925248 * k + 355750) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 177875) = 23887872 * k + 533626 := by
    unfold C
    simp [show (7962624 * k + 177875) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 533626) = 11943936 * k + 266813 := by
    unfold C
    simp [show (23887872 * k + 533626) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 266813) = 35831808 * k + 800440 := by
    unfold C
    simp [show (11943936 * k + 266813) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 800440) = 17915904 * k + 400220 := by
    unfold C
    simp [show (35831808 * k + 800440) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 400220) = 8957952 * k + 200110 := by
    unfold C
    simp [show (17915904 * k + 400220) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 200110) = 4478976 * k + 100055 := by
    unfold C
    simp [show (8957952 * k + 200110) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 100055) = 13436928 * k + 300166 := by
    unfold C
    simp [show (4478976 * k + 100055) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 300166) = 6718464 * k + 150083 := by
    unfold C
    simp [show (13436928 * k + 300166) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 150083) = 20155392 * k + 450250 := by
    unfold C
    simp [show (6718464 * k + 150083) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 450250) = 10077696 * k + 225125 := by
    unfold C
    simp [show (20155392 * k + 450250) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 225125) = 30233088 * k + 675376 := by
    unfold C
    simp [show (10077696 * k + 225125) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 675376) = 15116544 * k + 337688 := by
    unfold C
    simp [show (30233088 * k + 675376) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 337688) = 7558272 * k + 168844 := by
    unfold C
    simp [show (15116544 * k + 337688) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 168844) = 3779136 * k + 84422 := by
    unfold C
    simp [show (7558272 * k + 168844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 84422) = 1889568 * k + 42211 := by
    unfold C
    simp [show (3779136 * k + 84422) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 42211) = 5668704 * k + 126634 := by
    unfold C
    simp [show (1889568 * k + 42211) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 126634) = 2834352 * k + 63317 := by
    unfold C
    simp [show (5668704 * k + 126634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 63317) = 8503056 * k + 189952 := by
    unfold C
    simp [show (2834352 * k + 63317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 189952) = 4251528 * k + 94976 := by
    unfold C
    simp [show (8503056 * k + 189952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 94976) = 2125764 * k + 47488 := by
    unfold C
    simp [show (4251528 * k + 94976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 47488) = 1062882 * k + 23744 := by
    unfold C
    simp [show (2125764 * k + 47488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 23744) = 531441 * k + 11872 := by
    unfold C
    simp [show (1062882 * k + 23744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 23423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 23423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_23519 : ∀ k : Nat,
    iterate (1048576 * k + 23519) 32 = 531441 * k + 11921 ∧
      531441 * k + 11921 < 1048576 * k + 23519 := by
  intro k
  have h1 : C (1048576 * k + 23519) = 3145728 * k + 70558 := by
    unfold C
    simp [show (1048576 * k + 23519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 70558) = 1572864 * k + 35279 := by
    unfold C
    simp [show (3145728 * k + 70558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 35279) = 4718592 * k + 105838 := by
    unfold C
    simp [show (1572864 * k + 35279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 105838) = 2359296 * k + 52919 := by
    unfold C
    simp [show (4718592 * k + 105838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 52919) = 7077888 * k + 158758 := by
    unfold C
    simp [show (2359296 * k + 52919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 158758) = 3538944 * k + 79379 := by
    unfold C
    simp [show (7077888 * k + 158758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 79379) = 10616832 * k + 238138 := by
    unfold C
    simp [show (3538944 * k + 79379) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 238138) = 5308416 * k + 119069 := by
    unfold C
    simp [show (10616832 * k + 238138) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 119069) = 15925248 * k + 357208 := by
    unfold C
    simp [show (5308416 * k + 119069) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 357208) = 7962624 * k + 178604 := by
    unfold C
    simp [show (15925248 * k + 357208) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 178604) = 3981312 * k + 89302 := by
    unfold C
    simp [show (7962624 * k + 178604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 89302) = 1990656 * k + 44651 := by
    unfold C
    simp [show (3981312 * k + 89302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 44651) = 5971968 * k + 133954 := by
    unfold C
    simp [show (1990656 * k + 44651) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 133954) = 2985984 * k + 66977 := by
    unfold C
    simp [show (5971968 * k + 133954) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 66977) = 8957952 * k + 200932 := by
    unfold C
    simp [show (2985984 * k + 66977) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 200932) = 4478976 * k + 100466 := by
    unfold C
    simp [show (8957952 * k + 200932) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 100466) = 2239488 * k + 50233 := by
    unfold C
    simp [show (4478976 * k + 100466) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 50233) = 6718464 * k + 150700 := by
    unfold C
    simp [show (2239488 * k + 50233) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 150700) = 3359232 * k + 75350 := by
    unfold C
    simp [show (6718464 * k + 150700) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 75350) = 1679616 * k + 37675 := by
    unfold C
    simp [show (3359232 * k + 75350) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 37675) = 5038848 * k + 113026 := by
    unfold C
    simp [show (1679616 * k + 37675) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 113026) = 2519424 * k + 56513 := by
    unfold C
    simp [show (5038848 * k + 113026) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 56513) = 7558272 * k + 169540 := by
    unfold C
    simp [show (2519424 * k + 56513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 169540) = 3779136 * k + 84770 := by
    unfold C
    simp [show (7558272 * k + 169540) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 84770) = 1889568 * k + 42385 := by
    unfold C
    simp [show (3779136 * k + 84770) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 42385) = 5668704 * k + 127156 := by
    unfold C
    simp [show (1889568 * k + 42385) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 127156) = 2834352 * k + 63578 := by
    unfold C
    simp [show (5668704 * k + 127156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 63578) = 1417176 * k + 31789 := by
    unfold C
    simp [show (2834352 * k + 63578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 31789) = 4251528 * k + 95368 := by
    unfold C
    simp [show (1417176 * k + 31789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 95368) = 2125764 * k + 47684 := by
    unfold C
    simp [show (4251528 * k + 95368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 47684) = 1062882 * k + 23842 := by
    unfold C
    simp [show (2125764 * k + 47684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 23842) = 531441 * k + 11921 := by
    unfold C
    simp [show (1062882 * k + 23842) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 23519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 23519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_25319 : ∀ k : Nat,
    iterate (1048576 * k + 25319) 32 = 531441 * k + 12833 ∧
      531441 * k + 12833 < 1048576 * k + 25319 := by
  intro k
  have h1 : C (1048576 * k + 25319) = 3145728 * k + 75958 := by
    unfold C
    simp [show (1048576 * k + 25319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 75958) = 1572864 * k + 37979 := by
    unfold C
    simp [show (3145728 * k + 75958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 37979) = 4718592 * k + 113938 := by
    unfold C
    simp [show (1572864 * k + 37979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 113938) = 2359296 * k + 56969 := by
    unfold C
    simp [show (4718592 * k + 113938) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 56969) = 7077888 * k + 170908 := by
    unfold C
    simp [show (2359296 * k + 56969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 170908) = 3538944 * k + 85454 := by
    unfold C
    simp [show (7077888 * k + 170908) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 85454) = 1769472 * k + 42727 := by
    unfold C
    simp [show (3538944 * k + 85454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 42727) = 5308416 * k + 128182 := by
    unfold C
    simp [show (1769472 * k + 42727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 128182) = 2654208 * k + 64091 := by
    unfold C
    simp [show (5308416 * k + 128182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 64091) = 7962624 * k + 192274 := by
    unfold C
    simp [show (2654208 * k + 64091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 192274) = 3981312 * k + 96137 := by
    unfold C
    simp [show (7962624 * k + 192274) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 96137) = 11943936 * k + 288412 := by
    unfold C
    simp [show (3981312 * k + 96137) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 288412) = 5971968 * k + 144206 := by
    unfold C
    simp [show (11943936 * k + 288412) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 144206) = 2985984 * k + 72103 := by
    unfold C
    simp [show (5971968 * k + 144206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 72103) = 8957952 * k + 216310 := by
    unfold C
    simp [show (2985984 * k + 72103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 216310) = 4478976 * k + 108155 := by
    unfold C
    simp [show (8957952 * k + 216310) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 108155) = 13436928 * k + 324466 := by
    unfold C
    simp [show (4478976 * k + 108155) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 324466) = 6718464 * k + 162233 := by
    unfold C
    simp [show (13436928 * k + 324466) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 162233) = 20155392 * k + 486700 := by
    unfold C
    simp [show (6718464 * k + 162233) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 486700) = 10077696 * k + 243350 := by
    unfold C
    simp [show (20155392 * k + 486700) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 243350) = 5038848 * k + 121675 := by
    unfold C
    simp [show (10077696 * k + 243350) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 121675) = 15116544 * k + 365026 := by
    unfold C
    simp [show (5038848 * k + 121675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 365026) = 7558272 * k + 182513 := by
    unfold C
    simp [show (15116544 * k + 365026) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 182513) = 22674816 * k + 547540 := by
    unfold C
    simp [show (7558272 * k + 182513) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 547540) = 11337408 * k + 273770 := by
    unfold C
    simp [show (22674816 * k + 547540) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 273770) = 5668704 * k + 136885 := by
    unfold C
    simp [show (11337408 * k + 273770) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 136885) = 17006112 * k + 410656 := by
    unfold C
    simp [show (5668704 * k + 136885) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 410656) = 8503056 * k + 205328 := by
    unfold C
    simp [show (17006112 * k + 410656) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 205328) = 4251528 * k + 102664 := by
    unfold C
    simp [show (8503056 * k + 205328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 102664) = 2125764 * k + 51332 := by
    unfold C
    simp [show (4251528 * k + 102664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 51332) = 1062882 * k + 25666 := by
    unfold C
    simp [show (2125764 * k + 51332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 25666) = 531441 * k + 12833 := by
    unfold C
    simp [show (1062882 * k + 25666) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 25319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 25319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_25631 : ∀ k : Nat,
    iterate (1048576 * k + 25631) 32 = 531441 * k + 12991 ∧
      531441 * k + 12991 < 1048576 * k + 25631 := by
  intro k
  have h1 : C (1048576 * k + 25631) = 3145728 * k + 76894 := by
    unfold C
    simp [show (1048576 * k + 25631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 76894) = 1572864 * k + 38447 := by
    unfold C
    simp [show (3145728 * k + 76894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 38447) = 4718592 * k + 115342 := by
    unfold C
    simp [show (1572864 * k + 38447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 115342) = 2359296 * k + 57671 := by
    unfold C
    simp [show (4718592 * k + 115342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 57671) = 7077888 * k + 173014 := by
    unfold C
    simp [show (2359296 * k + 57671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 173014) = 3538944 * k + 86507 := by
    unfold C
    simp [show (7077888 * k + 173014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 86507) = 10616832 * k + 259522 := by
    unfold C
    simp [show (3538944 * k + 86507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 259522) = 5308416 * k + 129761 := by
    unfold C
    simp [show (10616832 * k + 259522) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 129761) = 15925248 * k + 389284 := by
    unfold C
    simp [show (5308416 * k + 129761) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 389284) = 7962624 * k + 194642 := by
    unfold C
    simp [show (15925248 * k + 389284) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 194642) = 3981312 * k + 97321 := by
    unfold C
    simp [show (7962624 * k + 194642) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 97321) = 11943936 * k + 291964 := by
    unfold C
    simp [show (3981312 * k + 97321) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 291964) = 5971968 * k + 145982 := by
    unfold C
    simp [show (11943936 * k + 291964) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 145982) = 2985984 * k + 72991 := by
    unfold C
    simp [show (5971968 * k + 145982) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 72991) = 8957952 * k + 218974 := by
    unfold C
    simp [show (2985984 * k + 72991) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 218974) = 4478976 * k + 109487 := by
    unfold C
    simp [show (8957952 * k + 218974) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 109487) = 13436928 * k + 328462 := by
    unfold C
    simp [show (4478976 * k + 109487) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 328462) = 6718464 * k + 164231 := by
    unfold C
    simp [show (13436928 * k + 328462) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 164231) = 20155392 * k + 492694 := by
    unfold C
    simp [show (6718464 * k + 164231) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 492694) = 10077696 * k + 246347 := by
    unfold C
    simp [show (20155392 * k + 492694) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 246347) = 30233088 * k + 739042 := by
    unfold C
    simp [show (10077696 * k + 246347) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 739042) = 15116544 * k + 369521 := by
    unfold C
    simp [show (30233088 * k + 739042) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 369521) = 45349632 * k + 1108564 := by
    unfold C
    simp [show (15116544 * k + 369521) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 1108564) = 22674816 * k + 554282 := by
    unfold C
    simp [show (45349632 * k + 1108564) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 554282) = 11337408 * k + 277141 := by
    unfold C
    simp [show (22674816 * k + 554282) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 277141) = 34012224 * k + 831424 := by
    unfold C
    simp [show (11337408 * k + 277141) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 831424) = 17006112 * k + 415712 := by
    unfold C
    simp [show (34012224 * k + 831424) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 415712) = 8503056 * k + 207856 := by
    unfold C
    simp [show (17006112 * k + 415712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 207856) = 4251528 * k + 103928 := by
    unfold C
    simp [show (8503056 * k + 207856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 103928) = 2125764 * k + 51964 := by
    unfold C
    simp [show (4251528 * k + 103928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 51964) = 1062882 * k + 25982 := by
    unfold C
    simp [show (2125764 * k + 51964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 25982) = 531441 * k + 12991 := by
    unfold C
    simp [show (1062882 * k + 25982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 25631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 25631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_26319 : ∀ k : Nat,
    iterate (1048576 * k + 26319) 32 = 531441 * k + 13340 ∧
      531441 * k + 13340 < 1048576 * k + 26319 := by
  intro k
  have h1 : C (1048576 * k + 26319) = 3145728 * k + 78958 := by
    unfold C
    simp [show (1048576 * k + 26319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 78958) = 1572864 * k + 39479 := by
    unfold C
    simp [show (3145728 * k + 78958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 39479) = 4718592 * k + 118438 := by
    unfold C
    simp [show (1572864 * k + 39479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 118438) = 2359296 * k + 59219 := by
    unfold C
    simp [show (4718592 * k + 118438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 59219) = 7077888 * k + 177658 := by
    unfold C
    simp [show (2359296 * k + 59219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 177658) = 3538944 * k + 88829 := by
    unfold C
    simp [show (7077888 * k + 177658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 88829) = 10616832 * k + 266488 := by
    unfold C
    simp [show (3538944 * k + 88829) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 266488) = 5308416 * k + 133244 := by
    unfold C
    simp [show (10616832 * k + 266488) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 133244) = 2654208 * k + 66622 := by
    unfold C
    simp [show (5308416 * k + 133244) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 66622) = 1327104 * k + 33311 := by
    unfold C
    simp [show (2654208 * k + 66622) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 33311) = 3981312 * k + 99934 := by
    unfold C
    simp [show (1327104 * k + 33311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 99934) = 1990656 * k + 49967 := by
    unfold C
    simp [show (3981312 * k + 99934) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 49967) = 5971968 * k + 149902 := by
    unfold C
    simp [show (1990656 * k + 49967) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 149902) = 2985984 * k + 74951 := by
    unfold C
    simp [show (5971968 * k + 149902) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 74951) = 8957952 * k + 224854 := by
    unfold C
    simp [show (2985984 * k + 74951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 224854) = 4478976 * k + 112427 := by
    unfold C
    simp [show (8957952 * k + 224854) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 112427) = 13436928 * k + 337282 := by
    unfold C
    simp [show (4478976 * k + 112427) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 337282) = 6718464 * k + 168641 := by
    unfold C
    simp [show (13436928 * k + 337282) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 168641) = 20155392 * k + 505924 := by
    unfold C
    simp [show (6718464 * k + 168641) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 505924) = 10077696 * k + 252962 := by
    unfold C
    simp [show (20155392 * k + 505924) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 252962) = 5038848 * k + 126481 := by
    unfold C
    simp [show (10077696 * k + 252962) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 126481) = 15116544 * k + 379444 := by
    unfold C
    simp [show (5038848 * k + 126481) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 379444) = 7558272 * k + 189722 := by
    unfold C
    simp [show (15116544 * k + 379444) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 189722) = 3779136 * k + 94861 := by
    unfold C
    simp [show (7558272 * k + 189722) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 94861) = 11337408 * k + 284584 := by
    unfold C
    simp [show (3779136 * k + 94861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 284584) = 5668704 * k + 142292 := by
    unfold C
    simp [show (11337408 * k + 284584) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 142292) = 2834352 * k + 71146 := by
    unfold C
    simp [show (5668704 * k + 142292) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 71146) = 1417176 * k + 35573 := by
    unfold C
    simp [show (2834352 * k + 71146) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 35573) = 4251528 * k + 106720 := by
    unfold C
    simp [show (1417176 * k + 35573) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 106720) = 2125764 * k + 53360 := by
    unfold C
    simp [show (4251528 * k + 106720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 53360) = 1062882 * k + 26680 := by
    unfold C
    simp [show (2125764 * k + 53360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 26680) = 531441 * k + 13340 := by
    unfold C
    simp [show (1062882 * k + 26680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 26319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 26319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_26495 : ∀ k : Nat,
    iterate (1048576 * k + 26495) 32 = 531441 * k + 13429 ∧
      531441 * k + 13429 < 1048576 * k + 26495 := by
  intro k
  have h1 : C (1048576 * k + 26495) = 3145728 * k + 79486 := by
    unfold C
    simp [show (1048576 * k + 26495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 79486) = 1572864 * k + 39743 := by
    unfold C
    simp [show (3145728 * k + 79486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 39743) = 4718592 * k + 119230 := by
    unfold C
    simp [show (1572864 * k + 39743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 119230) = 2359296 * k + 59615 := by
    unfold C
    simp [show (4718592 * k + 119230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 59615) = 7077888 * k + 178846 := by
    unfold C
    simp [show (2359296 * k + 59615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 178846) = 3538944 * k + 89423 := by
    unfold C
    simp [show (7077888 * k + 178846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 89423) = 10616832 * k + 268270 := by
    unfold C
    simp [show (3538944 * k + 89423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 268270) = 5308416 * k + 134135 := by
    unfold C
    simp [show (10616832 * k + 268270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 134135) = 15925248 * k + 402406 := by
    unfold C
    simp [show (5308416 * k + 134135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 402406) = 7962624 * k + 201203 := by
    unfold C
    simp [show (15925248 * k + 402406) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 201203) = 23887872 * k + 603610 := by
    unfold C
    simp [show (7962624 * k + 201203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 603610) = 11943936 * k + 301805 := by
    unfold C
    simp [show (23887872 * k + 603610) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 301805) = 35831808 * k + 905416 := by
    unfold C
    simp [show (11943936 * k + 301805) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 905416) = 17915904 * k + 452708 := by
    unfold C
    simp [show (35831808 * k + 905416) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 452708) = 8957952 * k + 226354 := by
    unfold C
    simp [show (17915904 * k + 452708) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 226354) = 4478976 * k + 113177 := by
    unfold C
    simp [show (8957952 * k + 226354) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 113177) = 13436928 * k + 339532 := by
    unfold C
    simp [show (4478976 * k + 113177) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 339532) = 6718464 * k + 169766 := by
    unfold C
    simp [show (13436928 * k + 339532) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 169766) = 3359232 * k + 84883 := by
    unfold C
    simp [show (6718464 * k + 169766) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 84883) = 10077696 * k + 254650 := by
    unfold C
    simp [show (3359232 * k + 84883) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 254650) = 5038848 * k + 127325 := by
    unfold C
    simp [show (10077696 * k + 254650) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 127325) = 15116544 * k + 381976 := by
    unfold C
    simp [show (5038848 * k + 127325) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 381976) = 7558272 * k + 190988 := by
    unfold C
    simp [show (15116544 * k + 381976) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 190988) = 3779136 * k + 95494 := by
    unfold C
    simp [show (7558272 * k + 190988) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 95494) = 1889568 * k + 47747 := by
    unfold C
    simp [show (3779136 * k + 95494) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 47747) = 5668704 * k + 143242 := by
    unfold C
    simp [show (1889568 * k + 47747) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 143242) = 2834352 * k + 71621 := by
    unfold C
    simp [show (5668704 * k + 143242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 71621) = 8503056 * k + 214864 := by
    unfold C
    simp [show (2834352 * k + 71621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 214864) = 4251528 * k + 107432 := by
    unfold C
    simp [show (8503056 * k + 214864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 107432) = 2125764 * k + 53716 := by
    unfold C
    simp [show (4251528 * k + 107432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 53716) = 1062882 * k + 26858 := by
    unfold C
    simp [show (2125764 * k + 53716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 26858) = 531441 * k + 13429 := by
    unfold C
    simp [show (1062882 * k + 26858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 26495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 26495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_26875 : ∀ k : Nat,
    iterate (1048576 * k + 26875) 32 = 531441 * k + 13622 ∧
      531441 * k + 13622 < 1048576 * k + 26875 := by
  intro k
  have h1 : C (1048576 * k + 26875) = 3145728 * k + 80626 := by
    unfold C
    simp [show (1048576 * k + 26875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 80626) = 1572864 * k + 40313 := by
    unfold C
    simp [show (3145728 * k + 80626) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 40313) = 4718592 * k + 120940 := by
    unfold C
    simp [show (1572864 * k + 40313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 120940) = 2359296 * k + 60470 := by
    unfold C
    simp [show (4718592 * k + 120940) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 60470) = 1179648 * k + 30235 := by
    unfold C
    simp [show (2359296 * k + 60470) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 30235) = 3538944 * k + 90706 := by
    unfold C
    simp [show (1179648 * k + 30235) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 90706) = 1769472 * k + 45353 := by
    unfold C
    simp [show (3538944 * k + 90706) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 45353) = 5308416 * k + 136060 := by
    unfold C
    simp [show (1769472 * k + 45353) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 136060) = 2654208 * k + 68030 := by
    unfold C
    simp [show (5308416 * k + 136060) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 68030) = 1327104 * k + 34015 := by
    unfold C
    simp [show (2654208 * k + 68030) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 34015) = 3981312 * k + 102046 := by
    unfold C
    simp [show (1327104 * k + 34015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 102046) = 1990656 * k + 51023 := by
    unfold C
    simp [show (3981312 * k + 102046) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 51023) = 5971968 * k + 153070 := by
    unfold C
    simp [show (1990656 * k + 51023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 153070) = 2985984 * k + 76535 := by
    unfold C
    simp [show (5971968 * k + 153070) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 76535) = 8957952 * k + 229606 := by
    unfold C
    simp [show (2985984 * k + 76535) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 229606) = 4478976 * k + 114803 := by
    unfold C
    simp [show (8957952 * k + 229606) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 114803) = 13436928 * k + 344410 := by
    unfold C
    simp [show (4478976 * k + 114803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 344410) = 6718464 * k + 172205 := by
    unfold C
    simp [show (13436928 * k + 344410) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 172205) = 20155392 * k + 516616 := by
    unfold C
    simp [show (6718464 * k + 172205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 516616) = 10077696 * k + 258308 := by
    unfold C
    simp [show (20155392 * k + 516616) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 258308) = 5038848 * k + 129154 := by
    unfold C
    simp [show (10077696 * k + 258308) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 129154) = 2519424 * k + 64577 := by
    unfold C
    simp [show (5038848 * k + 129154) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 64577) = 7558272 * k + 193732 := by
    unfold C
    simp [show (2519424 * k + 64577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 193732) = 3779136 * k + 96866 := by
    unfold C
    simp [show (7558272 * k + 193732) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 96866) = 1889568 * k + 48433 := by
    unfold C
    simp [show (3779136 * k + 96866) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 48433) = 5668704 * k + 145300 := by
    unfold C
    simp [show (1889568 * k + 48433) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 145300) = 2834352 * k + 72650 := by
    unfold C
    simp [show (5668704 * k + 145300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 72650) = 1417176 * k + 36325 := by
    unfold C
    simp [show (2834352 * k + 72650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 36325) = 4251528 * k + 108976 := by
    unfold C
    simp [show (1417176 * k + 36325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 108976) = 2125764 * k + 54488 := by
    unfold C
    simp [show (4251528 * k + 108976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 54488) = 1062882 * k + 27244 := by
    unfold C
    simp [show (2125764 * k + 54488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 27244) = 531441 * k + 13622 := by
    unfold C
    simp [show (1062882 * k + 27244) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 26875) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 26875)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_27035 : ∀ k : Nat,
    iterate (1048576 * k + 27035) 32 = 531441 * k + 13703 ∧
      531441 * k + 13703 < 1048576 * k + 27035 := by
  intro k
  have h1 : C (1048576 * k + 27035) = 3145728 * k + 81106 := by
    unfold C
    simp [show (1048576 * k + 27035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 81106) = 1572864 * k + 40553 := by
    unfold C
    simp [show (3145728 * k + 81106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 40553) = 4718592 * k + 121660 := by
    unfold C
    simp [show (1572864 * k + 40553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 121660) = 2359296 * k + 60830 := by
    unfold C
    simp [show (4718592 * k + 121660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 60830) = 1179648 * k + 30415 := by
    unfold C
    simp [show (2359296 * k + 60830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 30415) = 3538944 * k + 91246 := by
    unfold C
    simp [show (1179648 * k + 30415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 91246) = 1769472 * k + 45623 := by
    unfold C
    simp [show (3538944 * k + 91246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 45623) = 5308416 * k + 136870 := by
    unfold C
    simp [show (1769472 * k + 45623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 136870) = 2654208 * k + 68435 := by
    unfold C
    simp [show (5308416 * k + 136870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 68435) = 7962624 * k + 205306 := by
    unfold C
    simp [show (2654208 * k + 68435) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 205306) = 3981312 * k + 102653 := by
    unfold C
    simp [show (7962624 * k + 205306) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 102653) = 11943936 * k + 307960 := by
    unfold C
    simp [show (3981312 * k + 102653) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 307960) = 5971968 * k + 153980 := by
    unfold C
    simp [show (11943936 * k + 307960) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 153980) = 2985984 * k + 76990 := by
    unfold C
    simp [show (5971968 * k + 153980) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 76990) = 1492992 * k + 38495 := by
    unfold C
    simp [show (2985984 * k + 76990) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 38495) = 4478976 * k + 115486 := by
    unfold C
    simp [show (1492992 * k + 38495) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 115486) = 2239488 * k + 57743 := by
    unfold C
    simp [show (4478976 * k + 115486) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 57743) = 6718464 * k + 173230 := by
    unfold C
    simp [show (2239488 * k + 57743) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 173230) = 3359232 * k + 86615 := by
    unfold C
    simp [show (6718464 * k + 173230) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 86615) = 10077696 * k + 259846 := by
    unfold C
    simp [show (3359232 * k + 86615) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 259846) = 5038848 * k + 129923 := by
    unfold C
    simp [show (10077696 * k + 259846) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 129923) = 15116544 * k + 389770 := by
    unfold C
    simp [show (5038848 * k + 129923) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 389770) = 7558272 * k + 194885 := by
    unfold C
    simp [show (15116544 * k + 389770) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 194885) = 22674816 * k + 584656 := by
    unfold C
    simp [show (7558272 * k + 194885) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 584656) = 11337408 * k + 292328 := by
    unfold C
    simp [show (22674816 * k + 584656) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 292328) = 5668704 * k + 146164 := by
    unfold C
    simp [show (11337408 * k + 292328) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 146164) = 2834352 * k + 73082 := by
    unfold C
    simp [show (5668704 * k + 146164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 73082) = 1417176 * k + 36541 := by
    unfold C
    simp [show (2834352 * k + 73082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 36541) = 4251528 * k + 109624 := by
    unfold C
    simp [show (1417176 * k + 36541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 109624) = 2125764 * k + 54812 := by
    unfold C
    simp [show (4251528 * k + 109624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 54812) = 1062882 * k + 27406 := by
    unfold C
    simp [show (2125764 * k + 54812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 27406) = 531441 * k + 13703 := by
    unfold C
    simp [show (1062882 * k + 27406) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 27035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 27035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_27391 : ∀ k : Nat,
    iterate (1048576 * k + 27391) 32 = 531441 * k + 13883 ∧
      531441 * k + 13883 < 1048576 * k + 27391 := by
  intro k
  have h1 : C (1048576 * k + 27391) = 3145728 * k + 82174 := by
    unfold C
    simp [show (1048576 * k + 27391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 82174) = 1572864 * k + 41087 := by
    unfold C
    simp [show (3145728 * k + 82174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 41087) = 4718592 * k + 123262 := by
    unfold C
    simp [show (1572864 * k + 41087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 123262) = 2359296 * k + 61631 := by
    unfold C
    simp [show (4718592 * k + 123262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 61631) = 7077888 * k + 184894 := by
    unfold C
    simp [show (2359296 * k + 61631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 184894) = 3538944 * k + 92447 := by
    unfold C
    simp [show (7077888 * k + 184894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 92447) = 10616832 * k + 277342 := by
    unfold C
    simp [show (3538944 * k + 92447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 277342) = 5308416 * k + 138671 := by
    unfold C
    simp [show (10616832 * k + 277342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 138671) = 15925248 * k + 416014 := by
    unfold C
    simp [show (5308416 * k + 138671) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 416014) = 7962624 * k + 208007 := by
    unfold C
    simp [show (15925248 * k + 416014) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 208007) = 23887872 * k + 624022 := by
    unfold C
    simp [show (7962624 * k + 208007) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 624022) = 11943936 * k + 312011 := by
    unfold C
    simp [show (23887872 * k + 624022) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 312011) = 35831808 * k + 936034 := by
    unfold C
    simp [show (11943936 * k + 312011) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 936034) = 17915904 * k + 468017 := by
    unfold C
    simp [show (35831808 * k + 936034) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 468017) = 53747712 * k + 1404052 := by
    unfold C
    simp [show (17915904 * k + 468017) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1404052) = 26873856 * k + 702026 := by
    unfold C
    simp [show (53747712 * k + 1404052) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 702026) = 13436928 * k + 351013 := by
    unfold C
    simp [show (26873856 * k + 702026) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 351013) = 40310784 * k + 1053040 := by
    unfold C
    simp [show (13436928 * k + 351013) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1053040) = 20155392 * k + 526520 := by
    unfold C
    simp [show (40310784 * k + 1053040) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 526520) = 10077696 * k + 263260 := by
    unfold C
    simp [show (20155392 * k + 526520) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 263260) = 5038848 * k + 131630 := by
    unfold C
    simp [show (10077696 * k + 263260) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 131630) = 2519424 * k + 65815 := by
    unfold C
    simp [show (5038848 * k + 131630) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 65815) = 7558272 * k + 197446 := by
    unfold C
    simp [show (2519424 * k + 65815) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 197446) = 3779136 * k + 98723 := by
    unfold C
    simp [show (7558272 * k + 197446) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 98723) = 11337408 * k + 296170 := by
    unfold C
    simp [show (3779136 * k + 98723) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 296170) = 5668704 * k + 148085 := by
    unfold C
    simp [show (11337408 * k + 296170) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 148085) = 17006112 * k + 444256 := by
    unfold C
    simp [show (5668704 * k + 148085) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 444256) = 8503056 * k + 222128 := by
    unfold C
    simp [show (17006112 * k + 444256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 222128) = 4251528 * k + 111064 := by
    unfold C
    simp [show (8503056 * k + 222128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 111064) = 2125764 * k + 55532 := by
    unfold C
    simp [show (4251528 * k + 111064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 55532) = 1062882 * k + 27766 := by
    unfold C
    simp [show (2125764 * k + 55532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 27766) = 531441 * k + 13883 := by
    unfold C
    simp [show (1062882 * k + 27766) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 27391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 27391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_27679 : ∀ k : Nat,
    iterate (1048576 * k + 27679) 32 = 531441 * k + 14029 ∧
      531441 * k + 14029 < 1048576 * k + 27679 := by
  intro k
  have h1 : C (1048576 * k + 27679) = 3145728 * k + 83038 := by
    unfold C
    simp [show (1048576 * k + 27679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 83038) = 1572864 * k + 41519 := by
    unfold C
    simp [show (3145728 * k + 83038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 41519) = 4718592 * k + 124558 := by
    unfold C
    simp [show (1572864 * k + 41519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 124558) = 2359296 * k + 62279 := by
    unfold C
    simp [show (4718592 * k + 124558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 62279) = 7077888 * k + 186838 := by
    unfold C
    simp [show (2359296 * k + 62279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 186838) = 3538944 * k + 93419 := by
    unfold C
    simp [show (7077888 * k + 186838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 93419) = 10616832 * k + 280258 := by
    unfold C
    simp [show (3538944 * k + 93419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 280258) = 5308416 * k + 140129 := by
    unfold C
    simp [show (10616832 * k + 280258) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 140129) = 15925248 * k + 420388 := by
    unfold C
    simp [show (5308416 * k + 140129) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 420388) = 7962624 * k + 210194 := by
    unfold C
    simp [show (15925248 * k + 420388) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 210194) = 3981312 * k + 105097 := by
    unfold C
    simp [show (7962624 * k + 210194) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 105097) = 11943936 * k + 315292 := by
    unfold C
    simp [show (3981312 * k + 105097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 315292) = 5971968 * k + 157646 := by
    unfold C
    simp [show (11943936 * k + 315292) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 157646) = 2985984 * k + 78823 := by
    unfold C
    simp [show (5971968 * k + 157646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 78823) = 8957952 * k + 236470 := by
    unfold C
    simp [show (2985984 * k + 78823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 236470) = 4478976 * k + 118235 := by
    unfold C
    simp [show (8957952 * k + 236470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 118235) = 13436928 * k + 354706 := by
    unfold C
    simp [show (4478976 * k + 118235) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 354706) = 6718464 * k + 177353 := by
    unfold C
    simp [show (13436928 * k + 354706) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 177353) = 20155392 * k + 532060 := by
    unfold C
    simp [show (6718464 * k + 177353) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 532060) = 10077696 * k + 266030 := by
    unfold C
    simp [show (20155392 * k + 532060) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 266030) = 5038848 * k + 133015 := by
    unfold C
    simp [show (10077696 * k + 266030) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 133015) = 15116544 * k + 399046 := by
    unfold C
    simp [show (5038848 * k + 133015) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 399046) = 7558272 * k + 199523 := by
    unfold C
    simp [show (15116544 * k + 399046) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 199523) = 22674816 * k + 598570 := by
    unfold C
    simp [show (7558272 * k + 199523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 598570) = 11337408 * k + 299285 := by
    unfold C
    simp [show (22674816 * k + 598570) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 299285) = 34012224 * k + 897856 := by
    unfold C
    simp [show (11337408 * k + 299285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 897856) = 17006112 * k + 448928 := by
    unfold C
    simp [show (34012224 * k + 897856) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 448928) = 8503056 * k + 224464 := by
    unfold C
    simp [show (17006112 * k + 448928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 224464) = 4251528 * k + 112232 := by
    unfold C
    simp [show (8503056 * k + 224464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 112232) = 2125764 * k + 56116 := by
    unfold C
    simp [show (4251528 * k + 112232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 56116) = 1062882 * k + 28058 := by
    unfold C
    simp [show (2125764 * k + 56116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 28058) = 531441 * k + 14029 := by
    unfold C
    simp [show (1062882 * k + 28058) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 27679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 27679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_28367 : ∀ k : Nat,
    iterate (1048576 * k + 28367) 32 = 531441 * k + 14378 ∧
      531441 * k + 14378 < 1048576 * k + 28367 := by
  intro k
  have h1 : C (1048576 * k + 28367) = 3145728 * k + 85102 := by
    unfold C
    simp [show (1048576 * k + 28367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 85102) = 1572864 * k + 42551 := by
    unfold C
    simp [show (3145728 * k + 85102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 42551) = 4718592 * k + 127654 := by
    unfold C
    simp [show (1572864 * k + 42551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 127654) = 2359296 * k + 63827 := by
    unfold C
    simp [show (4718592 * k + 127654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 63827) = 7077888 * k + 191482 := by
    unfold C
    simp [show (2359296 * k + 63827) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 191482) = 3538944 * k + 95741 := by
    unfold C
    simp [show (7077888 * k + 191482) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 95741) = 10616832 * k + 287224 := by
    unfold C
    simp [show (3538944 * k + 95741) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 287224) = 5308416 * k + 143612 := by
    unfold C
    simp [show (10616832 * k + 287224) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 143612) = 2654208 * k + 71806 := by
    unfold C
    simp [show (5308416 * k + 143612) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 71806) = 1327104 * k + 35903 := by
    unfold C
    simp [show (2654208 * k + 71806) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 35903) = 3981312 * k + 107710 := by
    unfold C
    simp [show (1327104 * k + 35903) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 107710) = 1990656 * k + 53855 := by
    unfold C
    simp [show (3981312 * k + 107710) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 53855) = 5971968 * k + 161566 := by
    unfold C
    simp [show (1990656 * k + 53855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 161566) = 2985984 * k + 80783 := by
    unfold C
    simp [show (5971968 * k + 161566) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 80783) = 8957952 * k + 242350 := by
    unfold C
    simp [show (2985984 * k + 80783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 242350) = 4478976 * k + 121175 := by
    unfold C
    simp [show (8957952 * k + 242350) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 121175) = 13436928 * k + 363526 := by
    unfold C
    simp [show (4478976 * k + 121175) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 363526) = 6718464 * k + 181763 := by
    unfold C
    simp [show (13436928 * k + 363526) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 181763) = 20155392 * k + 545290 := by
    unfold C
    simp [show (6718464 * k + 181763) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 545290) = 10077696 * k + 272645 := by
    unfold C
    simp [show (20155392 * k + 545290) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 272645) = 30233088 * k + 817936 := by
    unfold C
    simp [show (10077696 * k + 272645) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 817936) = 15116544 * k + 408968 := by
    unfold C
    simp [show (30233088 * k + 817936) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 408968) = 7558272 * k + 204484 := by
    unfold C
    simp [show (15116544 * k + 408968) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 204484) = 3779136 * k + 102242 := by
    unfold C
    simp [show (7558272 * k + 204484) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 102242) = 1889568 * k + 51121 := by
    unfold C
    simp [show (3779136 * k + 102242) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 51121) = 5668704 * k + 153364 := by
    unfold C
    simp [show (1889568 * k + 51121) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 153364) = 2834352 * k + 76682 := by
    unfold C
    simp [show (5668704 * k + 153364) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 76682) = 1417176 * k + 38341 := by
    unfold C
    simp [show (2834352 * k + 76682) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 38341) = 4251528 * k + 115024 := by
    unfold C
    simp [show (1417176 * k + 38341) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 115024) = 2125764 * k + 57512 := by
    unfold C
    simp [show (4251528 * k + 115024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 57512) = 1062882 * k + 28756 := by
    unfold C
    simp [show (2125764 * k + 57512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 28756) = 531441 * k + 14378 := by
    unfold C
    simp [show (1062882 * k + 28756) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 28367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 28367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_29211 : ∀ k : Nat,
    iterate (1048576 * k + 29211) 32 = 531441 * k + 14806 ∧
      531441 * k + 14806 < 1048576 * k + 29211 := by
  intro k
  have h1 : C (1048576 * k + 29211) = 3145728 * k + 87634 := by
    unfold C
    simp [show (1048576 * k + 29211) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 87634) = 1572864 * k + 43817 := by
    unfold C
    simp [show (3145728 * k + 87634) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 43817) = 4718592 * k + 131452 := by
    unfold C
    simp [show (1572864 * k + 43817) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 131452) = 2359296 * k + 65726 := by
    unfold C
    simp [show (4718592 * k + 131452) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 65726) = 1179648 * k + 32863 := by
    unfold C
    simp [show (2359296 * k + 65726) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 32863) = 3538944 * k + 98590 := by
    unfold C
    simp [show (1179648 * k + 32863) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 98590) = 1769472 * k + 49295 := by
    unfold C
    simp [show (3538944 * k + 98590) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 49295) = 5308416 * k + 147886 := by
    unfold C
    simp [show (1769472 * k + 49295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 147886) = 2654208 * k + 73943 := by
    unfold C
    simp [show (5308416 * k + 147886) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 73943) = 7962624 * k + 221830 := by
    unfold C
    simp [show (2654208 * k + 73943) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 221830) = 3981312 * k + 110915 := by
    unfold C
    simp [show (7962624 * k + 221830) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 110915) = 11943936 * k + 332746 := by
    unfold C
    simp [show (3981312 * k + 110915) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 332746) = 5971968 * k + 166373 := by
    unfold C
    simp [show (11943936 * k + 332746) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 166373) = 17915904 * k + 499120 := by
    unfold C
    simp [show (5971968 * k + 166373) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 499120) = 8957952 * k + 249560 := by
    unfold C
    simp [show (17915904 * k + 499120) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 249560) = 4478976 * k + 124780 := by
    unfold C
    simp [show (8957952 * k + 249560) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 124780) = 2239488 * k + 62390 := by
    unfold C
    simp [show (4478976 * k + 124780) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 62390) = 1119744 * k + 31195 := by
    unfold C
    simp [show (2239488 * k + 62390) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 31195) = 3359232 * k + 93586 := by
    unfold C
    simp [show (1119744 * k + 31195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 93586) = 1679616 * k + 46793 := by
    unfold C
    simp [show (3359232 * k + 93586) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 46793) = 5038848 * k + 140380 := by
    unfold C
    simp [show (1679616 * k + 46793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 140380) = 2519424 * k + 70190 := by
    unfold C
    simp [show (5038848 * k + 140380) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 70190) = 1259712 * k + 35095 := by
    unfold C
    simp [show (2519424 * k + 70190) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 35095) = 3779136 * k + 105286 := by
    unfold C
    simp [show (1259712 * k + 35095) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 105286) = 1889568 * k + 52643 := by
    unfold C
    simp [show (3779136 * k + 105286) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 52643) = 5668704 * k + 157930 := by
    unfold C
    simp [show (1889568 * k + 52643) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 157930) = 2834352 * k + 78965 := by
    unfold C
    simp [show (5668704 * k + 157930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 78965) = 8503056 * k + 236896 := by
    unfold C
    simp [show (2834352 * k + 78965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 236896) = 4251528 * k + 118448 := by
    unfold C
    simp [show (8503056 * k + 236896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 118448) = 2125764 * k + 59224 := by
    unfold C
    simp [show (4251528 * k + 118448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 59224) = 1062882 * k + 29612 := by
    unfold C
    simp [show (2125764 * k + 59224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 29612) = 531441 * k + 14806 := by
    unfold C
    simp [show (1062882 * k + 29612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 29211) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 29211)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_29415 : ∀ k : Nat,
    iterate (1048576 * k + 29415) 32 = 531441 * k + 14909 ∧
      531441 * k + 14909 < 1048576 * k + 29415 := by
  intro k
  have h1 : C (1048576 * k + 29415) = 3145728 * k + 88246 := by
    unfold C
    simp [show (1048576 * k + 29415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 88246) = 1572864 * k + 44123 := by
    unfold C
    simp [show (3145728 * k + 88246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 44123) = 4718592 * k + 132370 := by
    unfold C
    simp [show (1572864 * k + 44123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 132370) = 2359296 * k + 66185 := by
    unfold C
    simp [show (4718592 * k + 132370) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 66185) = 7077888 * k + 198556 := by
    unfold C
    simp [show (2359296 * k + 66185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 198556) = 3538944 * k + 99278 := by
    unfold C
    simp [show (7077888 * k + 198556) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 99278) = 1769472 * k + 49639 := by
    unfold C
    simp [show (3538944 * k + 99278) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 49639) = 5308416 * k + 148918 := by
    unfold C
    simp [show (1769472 * k + 49639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 148918) = 2654208 * k + 74459 := by
    unfold C
    simp [show (5308416 * k + 148918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 74459) = 7962624 * k + 223378 := by
    unfold C
    simp [show (2654208 * k + 74459) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 223378) = 3981312 * k + 111689 := by
    unfold C
    simp [show (7962624 * k + 223378) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 111689) = 11943936 * k + 335068 := by
    unfold C
    simp [show (3981312 * k + 111689) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 335068) = 5971968 * k + 167534 := by
    unfold C
    simp [show (11943936 * k + 335068) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 167534) = 2985984 * k + 83767 := by
    unfold C
    simp [show (5971968 * k + 167534) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 83767) = 8957952 * k + 251302 := by
    unfold C
    simp [show (2985984 * k + 83767) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 251302) = 4478976 * k + 125651 := by
    unfold C
    simp [show (8957952 * k + 251302) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 125651) = 13436928 * k + 376954 := by
    unfold C
    simp [show (4478976 * k + 125651) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 376954) = 6718464 * k + 188477 := by
    unfold C
    simp [show (13436928 * k + 376954) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 188477) = 20155392 * k + 565432 := by
    unfold C
    simp [show (6718464 * k + 188477) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 565432) = 10077696 * k + 282716 := by
    unfold C
    simp [show (20155392 * k + 565432) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 282716) = 5038848 * k + 141358 := by
    unfold C
    simp [show (10077696 * k + 282716) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 141358) = 2519424 * k + 70679 := by
    unfold C
    simp [show (5038848 * k + 141358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 70679) = 7558272 * k + 212038 := by
    unfold C
    simp [show (2519424 * k + 70679) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 212038) = 3779136 * k + 106019 := by
    unfold C
    simp [show (7558272 * k + 212038) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 106019) = 11337408 * k + 318058 := by
    unfold C
    simp [show (3779136 * k + 106019) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 318058) = 5668704 * k + 159029 := by
    unfold C
    simp [show (11337408 * k + 318058) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 159029) = 17006112 * k + 477088 := by
    unfold C
    simp [show (5668704 * k + 159029) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 477088) = 8503056 * k + 238544 := by
    unfold C
    simp [show (17006112 * k + 477088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 238544) = 4251528 * k + 119272 := by
    unfold C
    simp [show (8503056 * k + 238544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 119272) = 2125764 * k + 59636 := by
    unfold C
    simp [show (4251528 * k + 119272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 59636) = 1062882 * k + 29818 := by
    unfold C
    simp [show (2125764 * k + 59636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 29818) = 531441 * k + 14909 := by
    unfold C
    simp [show (1062882 * k + 29818) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 29415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 29415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_29727 : ∀ k : Nat,
    iterate (1048576 * k + 29727) 32 = 531441 * k + 15067 ∧
      531441 * k + 15067 < 1048576 * k + 29727 := by
  intro k
  have h1 : C (1048576 * k + 29727) = 3145728 * k + 89182 := by
    unfold C
    simp [show (1048576 * k + 29727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 89182) = 1572864 * k + 44591 := by
    unfold C
    simp [show (3145728 * k + 89182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 44591) = 4718592 * k + 133774 := by
    unfold C
    simp [show (1572864 * k + 44591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 133774) = 2359296 * k + 66887 := by
    unfold C
    simp [show (4718592 * k + 133774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 66887) = 7077888 * k + 200662 := by
    unfold C
    simp [show (2359296 * k + 66887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 200662) = 3538944 * k + 100331 := by
    unfold C
    simp [show (7077888 * k + 200662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 100331) = 10616832 * k + 300994 := by
    unfold C
    simp [show (3538944 * k + 100331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 300994) = 5308416 * k + 150497 := by
    unfold C
    simp [show (10616832 * k + 300994) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 150497) = 15925248 * k + 451492 := by
    unfold C
    simp [show (5308416 * k + 150497) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 451492) = 7962624 * k + 225746 := by
    unfold C
    simp [show (15925248 * k + 451492) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 225746) = 3981312 * k + 112873 := by
    unfold C
    simp [show (7962624 * k + 225746) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 112873) = 11943936 * k + 338620 := by
    unfold C
    simp [show (3981312 * k + 112873) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 338620) = 5971968 * k + 169310 := by
    unfold C
    simp [show (11943936 * k + 338620) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 169310) = 2985984 * k + 84655 := by
    unfold C
    simp [show (5971968 * k + 169310) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 84655) = 8957952 * k + 253966 := by
    unfold C
    simp [show (2985984 * k + 84655) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 253966) = 4478976 * k + 126983 := by
    unfold C
    simp [show (8957952 * k + 253966) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 126983) = 13436928 * k + 380950 := by
    unfold C
    simp [show (4478976 * k + 126983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 380950) = 6718464 * k + 190475 := by
    unfold C
    simp [show (13436928 * k + 380950) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 190475) = 20155392 * k + 571426 := by
    unfold C
    simp [show (6718464 * k + 190475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 571426) = 10077696 * k + 285713 := by
    unfold C
    simp [show (20155392 * k + 571426) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 285713) = 30233088 * k + 857140 := by
    unfold C
    simp [show (10077696 * k + 285713) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 857140) = 15116544 * k + 428570 := by
    unfold C
    simp [show (30233088 * k + 857140) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 428570) = 7558272 * k + 214285 := by
    unfold C
    simp [show (15116544 * k + 428570) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 214285) = 22674816 * k + 642856 := by
    unfold C
    simp [show (7558272 * k + 214285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 642856) = 11337408 * k + 321428 := by
    unfold C
    simp [show (22674816 * k + 642856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 321428) = 5668704 * k + 160714 := by
    unfold C
    simp [show (11337408 * k + 321428) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 160714) = 2834352 * k + 80357 := by
    unfold C
    simp [show (5668704 * k + 160714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 80357) = 8503056 * k + 241072 := by
    unfold C
    simp [show (2834352 * k + 80357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 241072) = 4251528 * k + 120536 := by
    unfold C
    simp [show (8503056 * k + 241072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 120536) = 2125764 * k + 60268 := by
    unfold C
    simp [show (4251528 * k + 120536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 60268) = 1062882 * k + 30134 := by
    unfold C
    simp [show (2125764 * k + 60268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 30134) = 531441 * k + 15067 := by
    unfold C
    simp [show (1062882 * k + 30134) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 29727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 29727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_31131 : ∀ k : Nat,
    iterate (1048576 * k + 31131) 32 = 531441 * k + 15779 ∧
      531441 * k + 15779 < 1048576 * k + 31131 := by
  intro k
  have h1 : C (1048576 * k + 31131) = 3145728 * k + 93394 := by
    unfold C
    simp [show (1048576 * k + 31131) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 93394) = 1572864 * k + 46697 := by
    unfold C
    simp [show (3145728 * k + 93394) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 46697) = 4718592 * k + 140092 := by
    unfold C
    simp [show (1572864 * k + 46697) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 140092) = 2359296 * k + 70046 := by
    unfold C
    simp [show (4718592 * k + 140092) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 70046) = 1179648 * k + 35023 := by
    unfold C
    simp [show (2359296 * k + 70046) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 35023) = 3538944 * k + 105070 := by
    unfold C
    simp [show (1179648 * k + 35023) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 105070) = 1769472 * k + 52535 := by
    unfold C
    simp [show (3538944 * k + 105070) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 52535) = 5308416 * k + 157606 := by
    unfold C
    simp [show (1769472 * k + 52535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 157606) = 2654208 * k + 78803 := by
    unfold C
    simp [show (5308416 * k + 157606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 78803) = 7962624 * k + 236410 := by
    unfold C
    simp [show (2654208 * k + 78803) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 236410) = 3981312 * k + 118205 := by
    unfold C
    simp [show (7962624 * k + 236410) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 118205) = 11943936 * k + 354616 := by
    unfold C
    simp [show (3981312 * k + 118205) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 354616) = 5971968 * k + 177308 := by
    unfold C
    simp [show (11943936 * k + 354616) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 177308) = 2985984 * k + 88654 := by
    unfold C
    simp [show (5971968 * k + 177308) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 88654) = 1492992 * k + 44327 := by
    unfold C
    simp [show (2985984 * k + 88654) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 44327) = 4478976 * k + 132982 := by
    unfold C
    simp [show (1492992 * k + 44327) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 132982) = 2239488 * k + 66491 := by
    unfold C
    simp [show (4478976 * k + 132982) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 66491) = 6718464 * k + 199474 := by
    unfold C
    simp [show (2239488 * k + 66491) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 199474) = 3359232 * k + 99737 := by
    unfold C
    simp [show (6718464 * k + 199474) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 99737) = 10077696 * k + 299212 := by
    unfold C
    simp [show (3359232 * k + 99737) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 299212) = 5038848 * k + 149606 := by
    unfold C
    simp [show (10077696 * k + 299212) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 149606) = 2519424 * k + 74803 := by
    unfold C
    simp [show (5038848 * k + 149606) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 74803) = 7558272 * k + 224410 := by
    unfold C
    simp [show (2519424 * k + 74803) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 224410) = 3779136 * k + 112205 := by
    unfold C
    simp [show (7558272 * k + 224410) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 112205) = 11337408 * k + 336616 := by
    unfold C
    simp [show (3779136 * k + 112205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 336616) = 5668704 * k + 168308 := by
    unfold C
    simp [show (11337408 * k + 336616) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 168308) = 2834352 * k + 84154 := by
    unfold C
    simp [show (5668704 * k + 168308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 84154) = 1417176 * k + 42077 := by
    unfold C
    simp [show (2834352 * k + 84154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 42077) = 4251528 * k + 126232 := by
    unfold C
    simp [show (1417176 * k + 42077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 126232) = 2125764 * k + 63116 := by
    unfold C
    simp [show (4251528 * k + 126232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 63116) = 1062882 * k + 31558 := by
    unfold C
    simp [show (2125764 * k + 63116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 31558) = 531441 * k + 15779 := by
    unfold C
    simp [show (1062882 * k + 31558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 31131) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 31131)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_31279 : ∀ k : Nat,
    iterate (1048576 * k + 31279) 32 = 531441 * k + 15854 ∧
      531441 * k + 15854 < 1048576 * k + 31279 := by
  intro k
  have h1 : C (1048576 * k + 31279) = 3145728 * k + 93838 := by
    unfold C
    simp [show (1048576 * k + 31279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 93838) = 1572864 * k + 46919 := by
    unfold C
    simp [show (3145728 * k + 93838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 46919) = 4718592 * k + 140758 := by
    unfold C
    simp [show (1572864 * k + 46919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 140758) = 2359296 * k + 70379 := by
    unfold C
    simp [show (4718592 * k + 140758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 70379) = 7077888 * k + 211138 := by
    unfold C
    simp [show (2359296 * k + 70379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 211138) = 3538944 * k + 105569 := by
    unfold C
    simp [show (7077888 * k + 211138) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 105569) = 10616832 * k + 316708 := by
    unfold C
    simp [show (3538944 * k + 105569) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 316708) = 5308416 * k + 158354 := by
    unfold C
    simp [show (10616832 * k + 316708) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 158354) = 2654208 * k + 79177 := by
    unfold C
    simp [show (5308416 * k + 158354) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 79177) = 7962624 * k + 237532 := by
    unfold C
    simp [show (2654208 * k + 79177) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 237532) = 3981312 * k + 118766 := by
    unfold C
    simp [show (7962624 * k + 237532) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 118766) = 1990656 * k + 59383 := by
    unfold C
    simp [show (3981312 * k + 118766) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 59383) = 5971968 * k + 178150 := by
    unfold C
    simp [show (1990656 * k + 59383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 178150) = 2985984 * k + 89075 := by
    unfold C
    simp [show (5971968 * k + 178150) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 89075) = 8957952 * k + 267226 := by
    unfold C
    simp [show (2985984 * k + 89075) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 267226) = 4478976 * k + 133613 := by
    unfold C
    simp [show (8957952 * k + 267226) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 133613) = 13436928 * k + 400840 := by
    unfold C
    simp [show (4478976 * k + 133613) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 400840) = 6718464 * k + 200420 := by
    unfold C
    simp [show (13436928 * k + 400840) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 200420) = 3359232 * k + 100210 := by
    unfold C
    simp [show (6718464 * k + 200420) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 100210) = 1679616 * k + 50105 := by
    unfold C
    simp [show (3359232 * k + 100210) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 50105) = 5038848 * k + 150316 := by
    unfold C
    simp [show (1679616 * k + 50105) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 150316) = 2519424 * k + 75158 := by
    unfold C
    simp [show (5038848 * k + 150316) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 75158) = 1259712 * k + 37579 := by
    unfold C
    simp [show (2519424 * k + 75158) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 37579) = 3779136 * k + 112738 := by
    unfold C
    simp [show (1259712 * k + 37579) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 112738) = 1889568 * k + 56369 := by
    unfold C
    simp [show (3779136 * k + 112738) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 56369) = 5668704 * k + 169108 := by
    unfold C
    simp [show (1889568 * k + 56369) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 169108) = 2834352 * k + 84554 := by
    unfold C
    simp [show (5668704 * k + 169108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 84554) = 1417176 * k + 42277 := by
    unfold C
    simp [show (2834352 * k + 84554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 42277) = 4251528 * k + 126832 := by
    unfold C
    simp [show (1417176 * k + 42277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 126832) = 2125764 * k + 63416 := by
    unfold C
    simp [show (4251528 * k + 126832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 63416) = 1062882 * k + 31708 := by
    unfold C
    simp [show (2125764 * k + 63416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 31708) = 531441 * k + 15854 := by
    unfold C
    simp [show (1062882 * k + 31708) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 31279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 31279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_31439 : ∀ k : Nat,
    iterate (1048576 * k + 31439) 32 = 531441 * k + 15935 ∧
      531441 * k + 15935 < 1048576 * k + 31439 := by
  intro k
  have h1 : C (1048576 * k + 31439) = 3145728 * k + 94318 := by
    unfold C
    simp [show (1048576 * k + 31439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 94318) = 1572864 * k + 47159 := by
    unfold C
    simp [show (3145728 * k + 94318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 47159) = 4718592 * k + 141478 := by
    unfold C
    simp [show (1572864 * k + 47159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 141478) = 2359296 * k + 70739 := by
    unfold C
    simp [show (4718592 * k + 141478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 70739) = 7077888 * k + 212218 := by
    unfold C
    simp [show (2359296 * k + 70739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 212218) = 3538944 * k + 106109 := by
    unfold C
    simp [show (7077888 * k + 212218) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 106109) = 10616832 * k + 318328 := by
    unfold C
    simp [show (3538944 * k + 106109) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 318328) = 5308416 * k + 159164 := by
    unfold C
    simp [show (10616832 * k + 318328) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 159164) = 2654208 * k + 79582 := by
    unfold C
    simp [show (5308416 * k + 159164) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 79582) = 1327104 * k + 39791 := by
    unfold C
    simp [show (2654208 * k + 79582) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 39791) = 3981312 * k + 119374 := by
    unfold C
    simp [show (1327104 * k + 39791) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 119374) = 1990656 * k + 59687 := by
    unfold C
    simp [show (3981312 * k + 119374) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 59687) = 5971968 * k + 179062 := by
    unfold C
    simp [show (1990656 * k + 59687) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 179062) = 2985984 * k + 89531 := by
    unfold C
    simp [show (5971968 * k + 179062) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 89531) = 8957952 * k + 268594 := by
    unfold C
    simp [show (2985984 * k + 89531) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 268594) = 4478976 * k + 134297 := by
    unfold C
    simp [show (8957952 * k + 268594) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 134297) = 13436928 * k + 402892 := by
    unfold C
    simp [show (4478976 * k + 134297) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 402892) = 6718464 * k + 201446 := by
    unfold C
    simp [show (13436928 * k + 402892) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 201446) = 3359232 * k + 100723 := by
    unfold C
    simp [show (6718464 * k + 201446) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 100723) = 10077696 * k + 302170 := by
    unfold C
    simp [show (3359232 * k + 100723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 302170) = 5038848 * k + 151085 := by
    unfold C
    simp [show (10077696 * k + 302170) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 151085) = 15116544 * k + 453256 := by
    unfold C
    simp [show (5038848 * k + 151085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 453256) = 7558272 * k + 226628 := by
    unfold C
    simp [show (15116544 * k + 453256) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 226628) = 3779136 * k + 113314 := by
    unfold C
    simp [show (7558272 * k + 226628) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 113314) = 1889568 * k + 56657 := by
    unfold C
    simp [show (3779136 * k + 113314) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 56657) = 5668704 * k + 169972 := by
    unfold C
    simp [show (1889568 * k + 56657) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 169972) = 2834352 * k + 84986 := by
    unfold C
    simp [show (5668704 * k + 169972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 84986) = 1417176 * k + 42493 := by
    unfold C
    simp [show (2834352 * k + 84986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 42493) = 4251528 * k + 127480 := by
    unfold C
    simp [show (1417176 * k + 42493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 127480) = 2125764 * k + 63740 := by
    unfold C
    simp [show (4251528 * k + 127480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 63740) = 1062882 * k + 31870 := by
    unfold C
    simp [show (2125764 * k + 63740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 31870) = 531441 * k + 15935 := by
    unfold C
    simp [show (1062882 * k + 31870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 31439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 31439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_31487 : ∀ k : Nat,
    iterate (1048576 * k + 31487) 32 = 531441 * k + 15959 ∧
      531441 * k + 15959 < 1048576 * k + 31487 := by
  intro k
  have h1 : C (1048576 * k + 31487) = 3145728 * k + 94462 := by
    unfold C
    simp [show (1048576 * k + 31487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 94462) = 1572864 * k + 47231 := by
    unfold C
    simp [show (3145728 * k + 94462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 47231) = 4718592 * k + 141694 := by
    unfold C
    simp [show (1572864 * k + 47231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 141694) = 2359296 * k + 70847 := by
    unfold C
    simp [show (4718592 * k + 141694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 70847) = 7077888 * k + 212542 := by
    unfold C
    simp [show (2359296 * k + 70847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 212542) = 3538944 * k + 106271 := by
    unfold C
    simp [show (7077888 * k + 212542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 106271) = 10616832 * k + 318814 := by
    unfold C
    simp [show (3538944 * k + 106271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 318814) = 5308416 * k + 159407 := by
    unfold C
    simp [show (10616832 * k + 318814) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 159407) = 15925248 * k + 478222 := by
    unfold C
    simp [show (5308416 * k + 159407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 478222) = 7962624 * k + 239111 := by
    unfold C
    simp [show (15925248 * k + 478222) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 239111) = 23887872 * k + 717334 := by
    unfold C
    simp [show (7962624 * k + 239111) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 717334) = 11943936 * k + 358667 := by
    unfold C
    simp [show (23887872 * k + 717334) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 358667) = 35831808 * k + 1076002 := by
    unfold C
    simp [show (11943936 * k + 358667) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1076002) = 17915904 * k + 538001 := by
    unfold C
    simp [show (35831808 * k + 1076002) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 538001) = 53747712 * k + 1614004 := by
    unfold C
    simp [show (17915904 * k + 538001) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 1614004) = 26873856 * k + 807002 := by
    unfold C
    simp [show (53747712 * k + 1614004) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 807002) = 13436928 * k + 403501 := by
    unfold C
    simp [show (26873856 * k + 807002) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 403501) = 40310784 * k + 1210504 := by
    unfold C
    simp [show (13436928 * k + 403501) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1210504) = 20155392 * k + 605252 := by
    unfold C
    simp [show (40310784 * k + 1210504) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 605252) = 10077696 * k + 302626 := by
    unfold C
    simp [show (20155392 * k + 605252) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 302626) = 5038848 * k + 151313 := by
    unfold C
    simp [show (10077696 * k + 302626) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 151313) = 15116544 * k + 453940 := by
    unfold C
    simp [show (5038848 * k + 151313) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 453940) = 7558272 * k + 226970 := by
    unfold C
    simp [show (15116544 * k + 453940) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 226970) = 3779136 * k + 113485 := by
    unfold C
    simp [show (7558272 * k + 226970) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 113485) = 11337408 * k + 340456 := by
    unfold C
    simp [show (3779136 * k + 113485) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 340456) = 5668704 * k + 170228 := by
    unfold C
    simp [show (11337408 * k + 340456) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 170228) = 2834352 * k + 85114 := by
    unfold C
    simp [show (5668704 * k + 170228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 85114) = 1417176 * k + 42557 := by
    unfold C
    simp [show (2834352 * k + 85114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 42557) = 4251528 * k + 127672 := by
    unfold C
    simp [show (1417176 * k + 42557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 127672) = 2125764 * k + 63836 := by
    unfold C
    simp [show (4251528 * k + 127672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 63836) = 1062882 * k + 31918 := by
    unfold C
    simp [show (2125764 * k + 63836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 31918) = 531441 * k + 15959 := by
    unfold C
    simp [show (1062882 * k + 31918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 31487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 31487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_32047 : ∀ k : Nat,
    iterate (1048576 * k + 32047) 32 = 531441 * k + 16243 ∧
      531441 * k + 16243 < 1048576 * k + 32047 := by
  intro k
  have h1 : C (1048576 * k + 32047) = 3145728 * k + 96142 := by
    unfold C
    simp [show (1048576 * k + 32047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 96142) = 1572864 * k + 48071 := by
    unfold C
    simp [show (3145728 * k + 96142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 48071) = 4718592 * k + 144214 := by
    unfold C
    simp [show (1572864 * k + 48071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 144214) = 2359296 * k + 72107 := by
    unfold C
    simp [show (4718592 * k + 144214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 72107) = 7077888 * k + 216322 := by
    unfold C
    simp [show (2359296 * k + 72107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 216322) = 3538944 * k + 108161 := by
    unfold C
    simp [show (7077888 * k + 216322) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 108161) = 10616832 * k + 324484 := by
    unfold C
    simp [show (3538944 * k + 108161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 324484) = 5308416 * k + 162242 := by
    unfold C
    simp [show (10616832 * k + 324484) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 162242) = 2654208 * k + 81121 := by
    unfold C
    simp [show (5308416 * k + 162242) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 81121) = 7962624 * k + 243364 := by
    unfold C
    simp [show (2654208 * k + 81121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 243364) = 3981312 * k + 121682 := by
    unfold C
    simp [show (7962624 * k + 243364) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 121682) = 1990656 * k + 60841 := by
    unfold C
    simp [show (3981312 * k + 121682) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 60841) = 5971968 * k + 182524 := by
    unfold C
    simp [show (1990656 * k + 60841) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 182524) = 2985984 * k + 91262 := by
    unfold C
    simp [show (5971968 * k + 182524) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 91262) = 1492992 * k + 45631 := by
    unfold C
    simp [show (2985984 * k + 91262) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 45631) = 4478976 * k + 136894 := by
    unfold C
    simp [show (1492992 * k + 45631) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 136894) = 2239488 * k + 68447 := by
    unfold C
    simp [show (4478976 * k + 136894) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 68447) = 6718464 * k + 205342 := by
    unfold C
    simp [show (2239488 * k + 68447) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 205342) = 3359232 * k + 102671 := by
    unfold C
    simp [show (6718464 * k + 205342) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 102671) = 10077696 * k + 308014 := by
    unfold C
    simp [show (3359232 * k + 102671) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 308014) = 5038848 * k + 154007 := by
    unfold C
    simp [show (10077696 * k + 308014) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 154007) = 15116544 * k + 462022 := by
    unfold C
    simp [show (5038848 * k + 154007) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 462022) = 7558272 * k + 231011 := by
    unfold C
    simp [show (15116544 * k + 462022) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 231011) = 22674816 * k + 693034 := by
    unfold C
    simp [show (7558272 * k + 231011) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 693034) = 11337408 * k + 346517 := by
    unfold C
    simp [show (22674816 * k + 693034) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 346517) = 34012224 * k + 1039552 := by
    unfold C
    simp [show (11337408 * k + 346517) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 1039552) = 17006112 * k + 519776 := by
    unfold C
    simp [show (34012224 * k + 1039552) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 519776) = 8503056 * k + 259888 := by
    unfold C
    simp [show (17006112 * k + 519776) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 259888) = 4251528 * k + 129944 := by
    unfold C
    simp [show (8503056 * k + 259888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 129944) = 2125764 * k + 64972 := by
    unfold C
    simp [show (4251528 * k + 129944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 64972) = 1062882 * k + 32486 := by
    unfold C
    simp [show (2125764 * k + 64972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 32486) = 531441 * k + 16243 := by
    unfold C
    simp [show (1062882 * k + 32486) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 32047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 32047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_32639 : ∀ k : Nat,
    iterate (1048576 * k + 32639) 32 = 531441 * k + 16543 ∧
      531441 * k + 16543 < 1048576 * k + 32639 := by
  intro k
  have h1 : C (1048576 * k + 32639) = 3145728 * k + 97918 := by
    unfold C
    simp [show (1048576 * k + 32639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 97918) = 1572864 * k + 48959 := by
    unfold C
    simp [show (3145728 * k + 97918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 48959) = 4718592 * k + 146878 := by
    unfold C
    simp [show (1572864 * k + 48959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 146878) = 2359296 * k + 73439 := by
    unfold C
    simp [show (4718592 * k + 146878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 73439) = 7077888 * k + 220318 := by
    unfold C
    simp [show (2359296 * k + 73439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 220318) = 3538944 * k + 110159 := by
    unfold C
    simp [show (7077888 * k + 220318) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 110159) = 10616832 * k + 330478 := by
    unfold C
    simp [show (3538944 * k + 110159) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 330478) = 5308416 * k + 165239 := by
    unfold C
    simp [show (10616832 * k + 330478) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 165239) = 15925248 * k + 495718 := by
    unfold C
    simp [show (5308416 * k + 165239) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 495718) = 7962624 * k + 247859 := by
    unfold C
    simp [show (15925248 * k + 495718) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 247859) = 23887872 * k + 743578 := by
    unfold C
    simp [show (7962624 * k + 247859) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 743578) = 11943936 * k + 371789 := by
    unfold C
    simp [show (23887872 * k + 743578) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 371789) = 35831808 * k + 1115368 := by
    unfold C
    simp [show (11943936 * k + 371789) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1115368) = 17915904 * k + 557684 := by
    unfold C
    simp [show (35831808 * k + 1115368) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 557684) = 8957952 * k + 278842 := by
    unfold C
    simp [show (17915904 * k + 557684) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 278842) = 4478976 * k + 139421 := by
    unfold C
    simp [show (8957952 * k + 278842) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 139421) = 13436928 * k + 418264 := by
    unfold C
    simp [show (4478976 * k + 139421) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 418264) = 6718464 * k + 209132 := by
    unfold C
    simp [show (13436928 * k + 418264) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 209132) = 3359232 * k + 104566 := by
    unfold C
    simp [show (6718464 * k + 209132) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 104566) = 1679616 * k + 52283 := by
    unfold C
    simp [show (3359232 * k + 104566) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 52283) = 5038848 * k + 156850 := by
    unfold C
    simp [show (1679616 * k + 52283) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 156850) = 2519424 * k + 78425 := by
    unfold C
    simp [show (5038848 * k + 156850) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 78425) = 7558272 * k + 235276 := by
    unfold C
    simp [show (2519424 * k + 78425) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 235276) = 3779136 * k + 117638 := by
    unfold C
    simp [show (7558272 * k + 235276) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 117638) = 1889568 * k + 58819 := by
    unfold C
    simp [show (3779136 * k + 117638) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 58819) = 5668704 * k + 176458 := by
    unfold C
    simp [show (1889568 * k + 58819) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 176458) = 2834352 * k + 88229 := by
    unfold C
    simp [show (5668704 * k + 176458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 88229) = 8503056 * k + 264688 := by
    unfold C
    simp [show (2834352 * k + 88229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 264688) = 4251528 * k + 132344 := by
    unfold C
    simp [show (8503056 * k + 264688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 132344) = 2125764 * k + 66172 := by
    unfold C
    simp [show (4251528 * k + 132344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 66172) = 1062882 * k + 33086 := by
    unfold C
    simp [show (2125764 * k + 66172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 33086) = 531441 * k + 16543 := by
    unfold C
    simp [show (1062882 * k + 33086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 32639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 32639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard005
