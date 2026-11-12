import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard003

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_10471 : ∀ k : Nat,
    iterate (1048576 * k + 10471) 32 = 531441 * k + 5308 ∧
      531441 * k + 5308 < 1048576 * k + 10471 := by
  intro k
  have h1 : C (1048576 * k + 10471) = 3145728 * k + 31414 := by
    unfold C
    simp [show (1048576 * k + 10471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 31414) = 1572864 * k + 15707 := by
    unfold C
    simp [show (3145728 * k + 31414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 15707) = 4718592 * k + 47122 := by
    unfold C
    simp [show (1572864 * k + 15707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 47122) = 2359296 * k + 23561 := by
    unfold C
    simp [show (4718592 * k + 47122) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 23561) = 7077888 * k + 70684 := by
    unfold C
    simp [show (2359296 * k + 23561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 70684) = 3538944 * k + 35342 := by
    unfold C
    simp [show (7077888 * k + 70684) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 35342) = 1769472 * k + 17671 := by
    unfold C
    simp [show (3538944 * k + 35342) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 17671) = 5308416 * k + 53014 := by
    unfold C
    simp [show (1769472 * k + 17671) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 53014) = 2654208 * k + 26507 := by
    unfold C
    simp [show (5308416 * k + 53014) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 26507) = 7962624 * k + 79522 := by
    unfold C
    simp [show (2654208 * k + 26507) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 79522) = 3981312 * k + 39761 := by
    unfold C
    simp [show (7962624 * k + 79522) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 39761) = 11943936 * k + 119284 := by
    unfold C
    simp [show (3981312 * k + 39761) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 119284) = 5971968 * k + 59642 := by
    unfold C
    simp [show (11943936 * k + 119284) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 59642) = 2985984 * k + 29821 := by
    unfold C
    simp [show (5971968 * k + 59642) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 29821) = 8957952 * k + 89464 := by
    unfold C
    simp [show (2985984 * k + 29821) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 89464) = 4478976 * k + 44732 := by
    unfold C
    simp [show (8957952 * k + 89464) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 44732) = 2239488 * k + 22366 := by
    unfold C
    simp [show (4478976 * k + 44732) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 22366) = 1119744 * k + 11183 := by
    unfold C
    simp [show (2239488 * k + 22366) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 11183) = 3359232 * k + 33550 := by
    unfold C
    simp [show (1119744 * k + 11183) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 33550) = 1679616 * k + 16775 := by
    unfold C
    simp [show (3359232 * k + 33550) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 16775) = 5038848 * k + 50326 := by
    unfold C
    simp [show (1679616 * k + 16775) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 50326) = 2519424 * k + 25163 := by
    unfold C
    simp [show (5038848 * k + 50326) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 25163) = 7558272 * k + 75490 := by
    unfold C
    simp [show (2519424 * k + 25163) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 75490) = 3779136 * k + 37745 := by
    unfold C
    simp [show (7558272 * k + 75490) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 37745) = 11337408 * k + 113236 := by
    unfold C
    simp [show (3779136 * k + 37745) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 113236) = 5668704 * k + 56618 := by
    unfold C
    simp [show (11337408 * k + 113236) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 56618) = 2834352 * k + 28309 := by
    unfold C
    simp [show (5668704 * k + 56618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 28309) = 8503056 * k + 84928 := by
    unfold C
    simp [show (2834352 * k + 28309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 84928) = 4251528 * k + 42464 := by
    unfold C
    simp [show (8503056 * k + 84928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 42464) = 2125764 * k + 21232 := by
    unfold C
    simp [show (4251528 * k + 42464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 21232) = 1062882 * k + 10616 := by
    unfold C
    simp [show (2125764 * k + 21232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 10616) = 531441 * k + 5308 := by
    unfold C
    simp [show (1062882 * k + 10616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 10471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 10471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_10687 : ∀ k : Nat,
    iterate (1048576 * k + 10687) 32 = 531441 * k + 5417 ∧
      531441 * k + 5417 < 1048576 * k + 10687 := by
  intro k
  have h1 : C (1048576 * k + 10687) = 3145728 * k + 32062 := by
    unfold C
    simp [show (1048576 * k + 10687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 32062) = 1572864 * k + 16031 := by
    unfold C
    simp [show (3145728 * k + 32062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 16031) = 4718592 * k + 48094 := by
    unfold C
    simp [show (1572864 * k + 16031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 48094) = 2359296 * k + 24047 := by
    unfold C
    simp [show (4718592 * k + 48094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 24047) = 7077888 * k + 72142 := by
    unfold C
    simp [show (2359296 * k + 24047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 72142) = 3538944 * k + 36071 := by
    unfold C
    simp [show (7077888 * k + 72142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 36071) = 10616832 * k + 108214 := by
    unfold C
    simp [show (3538944 * k + 36071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 108214) = 5308416 * k + 54107 := by
    unfold C
    simp [show (10616832 * k + 108214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 54107) = 15925248 * k + 162322 := by
    unfold C
    simp [show (5308416 * k + 54107) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 162322) = 7962624 * k + 81161 := by
    unfold C
    simp [show (15925248 * k + 162322) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 81161) = 23887872 * k + 243484 := by
    unfold C
    simp [show (7962624 * k + 81161) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 243484) = 11943936 * k + 121742 := by
    unfold C
    simp [show (23887872 * k + 243484) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 121742) = 5971968 * k + 60871 := by
    unfold C
    simp [show (11943936 * k + 121742) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 60871) = 17915904 * k + 182614 := by
    unfold C
    simp [show (5971968 * k + 60871) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 182614) = 8957952 * k + 91307 := by
    unfold C
    simp [show (17915904 * k + 182614) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 91307) = 26873856 * k + 273922 := by
    unfold C
    simp [show (8957952 * k + 91307) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 273922) = 13436928 * k + 136961 := by
    unfold C
    simp [show (26873856 * k + 273922) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 136961) = 40310784 * k + 410884 := by
    unfold C
    simp [show (13436928 * k + 136961) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 410884) = 20155392 * k + 205442 := by
    unfold C
    simp [show (40310784 * k + 410884) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 205442) = 10077696 * k + 102721 := by
    unfold C
    simp [show (20155392 * k + 205442) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 102721) = 30233088 * k + 308164 := by
    unfold C
    simp [show (10077696 * k + 102721) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 308164) = 15116544 * k + 154082 := by
    unfold C
    simp [show (30233088 * k + 308164) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 154082) = 7558272 * k + 77041 := by
    unfold C
    simp [show (15116544 * k + 154082) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 77041) = 22674816 * k + 231124 := by
    unfold C
    simp [show (7558272 * k + 77041) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 231124) = 11337408 * k + 115562 := by
    unfold C
    simp [show (22674816 * k + 231124) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 115562) = 5668704 * k + 57781 := by
    unfold C
    simp [show (11337408 * k + 115562) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 57781) = 17006112 * k + 173344 := by
    unfold C
    simp [show (5668704 * k + 57781) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 173344) = 8503056 * k + 86672 := by
    unfold C
    simp [show (17006112 * k + 173344) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 86672) = 4251528 * k + 43336 := by
    unfold C
    simp [show (8503056 * k + 86672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 43336) = 2125764 * k + 21668 := by
    unfold C
    simp [show (4251528 * k + 43336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 21668) = 1062882 * k + 10834 := by
    unfold C
    simp [show (2125764 * k + 21668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 10834) = 531441 * k + 5417 := by
    unfold C
    simp [show (1062882 * k + 10834) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 10687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 10687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_11111 : ∀ k : Nat,
    iterate (1048576 * k + 11111) 32 = 531441 * k + 5632 ∧
      531441 * k + 5632 < 1048576 * k + 11111 := by
  intro k
  have h1 : C (1048576 * k + 11111) = 3145728 * k + 33334 := by
    unfold C
    simp [show (1048576 * k + 11111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 33334) = 1572864 * k + 16667 := by
    unfold C
    simp [show (3145728 * k + 33334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 16667) = 4718592 * k + 50002 := by
    unfold C
    simp [show (1572864 * k + 16667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 50002) = 2359296 * k + 25001 := by
    unfold C
    simp [show (4718592 * k + 50002) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 25001) = 7077888 * k + 75004 := by
    unfold C
    simp [show (2359296 * k + 25001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 75004) = 3538944 * k + 37502 := by
    unfold C
    simp [show (7077888 * k + 75004) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 37502) = 1769472 * k + 18751 := by
    unfold C
    simp [show (3538944 * k + 37502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 18751) = 5308416 * k + 56254 := by
    unfold C
    simp [show (1769472 * k + 18751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 56254) = 2654208 * k + 28127 := by
    unfold C
    simp [show (5308416 * k + 56254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 28127) = 7962624 * k + 84382 := by
    unfold C
    simp [show (2654208 * k + 28127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 84382) = 3981312 * k + 42191 := by
    unfold C
    simp [show (7962624 * k + 84382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 42191) = 11943936 * k + 126574 := by
    unfold C
    simp [show (3981312 * k + 42191) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 126574) = 5971968 * k + 63287 := by
    unfold C
    simp [show (11943936 * k + 126574) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 63287) = 17915904 * k + 189862 := by
    unfold C
    simp [show (5971968 * k + 63287) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 189862) = 8957952 * k + 94931 := by
    unfold C
    simp [show (17915904 * k + 189862) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 94931) = 26873856 * k + 284794 := by
    unfold C
    simp [show (8957952 * k + 94931) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 284794) = 13436928 * k + 142397 := by
    unfold C
    simp [show (26873856 * k + 284794) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 142397) = 40310784 * k + 427192 := by
    unfold C
    simp [show (13436928 * k + 142397) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 427192) = 20155392 * k + 213596 := by
    unfold C
    simp [show (40310784 * k + 427192) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 213596) = 10077696 * k + 106798 := by
    unfold C
    simp [show (20155392 * k + 213596) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 106798) = 5038848 * k + 53399 := by
    unfold C
    simp [show (10077696 * k + 106798) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 53399) = 15116544 * k + 160198 := by
    unfold C
    simp [show (5038848 * k + 53399) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 160198) = 7558272 * k + 80099 := by
    unfold C
    simp [show (15116544 * k + 160198) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 80099) = 22674816 * k + 240298 := by
    unfold C
    simp [show (7558272 * k + 80099) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 240298) = 11337408 * k + 120149 := by
    unfold C
    simp [show (22674816 * k + 240298) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 120149) = 34012224 * k + 360448 := by
    unfold C
    simp [show (11337408 * k + 120149) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 360448) = 17006112 * k + 180224 := by
    unfold C
    simp [show (34012224 * k + 360448) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 180224) = 8503056 * k + 90112 := by
    unfold C
    simp [show (17006112 * k + 180224) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 90112) = 4251528 * k + 45056 := by
    unfold C
    simp [show (8503056 * k + 90112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 45056) = 2125764 * k + 22528 := by
    unfold C
    simp [show (4251528 * k + 45056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 22528) = 1062882 * k + 11264 := by
    unfold C
    simp [show (2125764 * k + 22528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 11264) = 531441 * k + 5632 := by
    unfold C
    simp [show (1062882 * k + 11264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 11111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 11111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_11355 : ∀ k : Nat,
    iterate (1048576 * k + 11355) 32 = 531441 * k + 5756 ∧
      531441 * k + 5756 < 1048576 * k + 11355 := by
  intro k
  have h1 : C (1048576 * k + 11355) = 3145728 * k + 34066 := by
    unfold C
    simp [show (1048576 * k + 11355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 34066) = 1572864 * k + 17033 := by
    unfold C
    simp [show (3145728 * k + 34066) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 17033) = 4718592 * k + 51100 := by
    unfold C
    simp [show (1572864 * k + 17033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 51100) = 2359296 * k + 25550 := by
    unfold C
    simp [show (4718592 * k + 51100) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 25550) = 1179648 * k + 12775 := by
    unfold C
    simp [show (2359296 * k + 25550) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 12775) = 3538944 * k + 38326 := by
    unfold C
    simp [show (1179648 * k + 12775) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 38326) = 1769472 * k + 19163 := by
    unfold C
    simp [show (3538944 * k + 38326) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 19163) = 5308416 * k + 57490 := by
    unfold C
    simp [show (1769472 * k + 19163) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 57490) = 2654208 * k + 28745 := by
    unfold C
    simp [show (5308416 * k + 57490) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 28745) = 7962624 * k + 86236 := by
    unfold C
    simp [show (2654208 * k + 28745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 86236) = 3981312 * k + 43118 := by
    unfold C
    simp [show (7962624 * k + 86236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 43118) = 1990656 * k + 21559 := by
    unfold C
    simp [show (3981312 * k + 43118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 21559) = 5971968 * k + 64678 := by
    unfold C
    simp [show (1990656 * k + 21559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 64678) = 2985984 * k + 32339 := by
    unfold C
    simp [show (5971968 * k + 64678) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 32339) = 8957952 * k + 97018 := by
    unfold C
    simp [show (2985984 * k + 32339) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 97018) = 4478976 * k + 48509 := by
    unfold C
    simp [show (8957952 * k + 97018) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 48509) = 13436928 * k + 145528 := by
    unfold C
    simp [show (4478976 * k + 48509) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 145528) = 6718464 * k + 72764 := by
    unfold C
    simp [show (13436928 * k + 145528) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 72764) = 3359232 * k + 36382 := by
    unfold C
    simp [show (6718464 * k + 72764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 36382) = 1679616 * k + 18191 := by
    unfold C
    simp [show (3359232 * k + 36382) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 18191) = 5038848 * k + 54574 := by
    unfold C
    simp [show (1679616 * k + 18191) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 54574) = 2519424 * k + 27287 := by
    unfold C
    simp [show (5038848 * k + 54574) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 27287) = 7558272 * k + 81862 := by
    unfold C
    simp [show (2519424 * k + 27287) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 81862) = 3779136 * k + 40931 := by
    unfold C
    simp [show (7558272 * k + 81862) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 40931) = 11337408 * k + 122794 := by
    unfold C
    simp [show (3779136 * k + 40931) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 122794) = 5668704 * k + 61397 := by
    unfold C
    simp [show (11337408 * k + 122794) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 61397) = 17006112 * k + 184192 := by
    unfold C
    simp [show (5668704 * k + 61397) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 184192) = 8503056 * k + 92096 := by
    unfold C
    simp [show (17006112 * k + 184192) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 92096) = 4251528 * k + 46048 := by
    unfold C
    simp [show (8503056 * k + 92096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 46048) = 2125764 * k + 23024 := by
    unfold C
    simp [show (4251528 * k + 46048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 23024) = 1062882 * k + 11512 := by
    unfold C
    simp [show (2125764 * k + 23024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 11512) = 531441 * k + 5756 := by
    unfold C
    simp [show (1062882 * k + 11512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 11355) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 11355)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_11471 : ∀ k : Nat,
    iterate (1048576 * k + 11471) 32 = 531441 * k + 5815 ∧
      531441 * k + 5815 < 1048576 * k + 11471 := by
  intro k
  have h1 : C (1048576 * k + 11471) = 3145728 * k + 34414 := by
    unfold C
    simp [show (1048576 * k + 11471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 34414) = 1572864 * k + 17207 := by
    unfold C
    simp [show (3145728 * k + 34414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 17207) = 4718592 * k + 51622 := by
    unfold C
    simp [show (1572864 * k + 17207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 51622) = 2359296 * k + 25811 := by
    unfold C
    simp [show (4718592 * k + 51622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 25811) = 7077888 * k + 77434 := by
    unfold C
    simp [show (2359296 * k + 25811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 77434) = 3538944 * k + 38717 := by
    unfold C
    simp [show (7077888 * k + 77434) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 38717) = 10616832 * k + 116152 := by
    unfold C
    simp [show (3538944 * k + 38717) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 116152) = 5308416 * k + 58076 := by
    unfold C
    simp [show (10616832 * k + 116152) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 58076) = 2654208 * k + 29038 := by
    unfold C
    simp [show (5308416 * k + 58076) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 29038) = 1327104 * k + 14519 := by
    unfold C
    simp [show (2654208 * k + 29038) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 14519) = 3981312 * k + 43558 := by
    unfold C
    simp [show (1327104 * k + 14519) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 43558) = 1990656 * k + 21779 := by
    unfold C
    simp [show (3981312 * k + 43558) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 21779) = 5971968 * k + 65338 := by
    unfold C
    simp [show (1990656 * k + 21779) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 65338) = 2985984 * k + 32669 := by
    unfold C
    simp [show (5971968 * k + 65338) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 32669) = 8957952 * k + 98008 := by
    unfold C
    simp [show (2985984 * k + 32669) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 98008) = 4478976 * k + 49004 := by
    unfold C
    simp [show (8957952 * k + 98008) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 49004) = 2239488 * k + 24502 := by
    unfold C
    simp [show (4478976 * k + 49004) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 24502) = 1119744 * k + 12251 := by
    unfold C
    simp [show (2239488 * k + 24502) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 12251) = 3359232 * k + 36754 := by
    unfold C
    simp [show (1119744 * k + 12251) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 36754) = 1679616 * k + 18377 := by
    unfold C
    simp [show (3359232 * k + 36754) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 18377) = 5038848 * k + 55132 := by
    unfold C
    simp [show (1679616 * k + 18377) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 55132) = 2519424 * k + 27566 := by
    unfold C
    simp [show (5038848 * k + 55132) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 27566) = 1259712 * k + 13783 := by
    unfold C
    simp [show (2519424 * k + 27566) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 13783) = 3779136 * k + 41350 := by
    unfold C
    simp [show (1259712 * k + 13783) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 41350) = 1889568 * k + 20675 := by
    unfold C
    simp [show (3779136 * k + 41350) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 20675) = 5668704 * k + 62026 := by
    unfold C
    simp [show (1889568 * k + 20675) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 62026) = 2834352 * k + 31013 := by
    unfold C
    simp [show (5668704 * k + 62026) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 31013) = 8503056 * k + 93040 := by
    unfold C
    simp [show (2834352 * k + 31013) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 93040) = 4251528 * k + 46520 := by
    unfold C
    simp [show (8503056 * k + 93040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 46520) = 2125764 * k + 23260 := by
    unfold C
    simp [show (4251528 * k + 46520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 23260) = 1062882 * k + 11630 := by
    unfold C
    simp [show (2125764 * k + 23260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 11630) = 531441 * k + 5815 := by
    unfold C
    simp [show (1062882 * k + 11630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 11471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 11471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_11711 : ∀ k : Nat,
    iterate (1048576 * k + 11711) 32 = 531441 * k + 5936 ∧
      531441 * k + 5936 < 1048576 * k + 11711 := by
  intro k
  have h1 : C (1048576 * k + 11711) = 3145728 * k + 35134 := by
    unfold C
    simp [show (1048576 * k + 11711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 35134) = 1572864 * k + 17567 := by
    unfold C
    simp [show (3145728 * k + 35134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 17567) = 4718592 * k + 52702 := by
    unfold C
    simp [show (1572864 * k + 17567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 52702) = 2359296 * k + 26351 := by
    unfold C
    simp [show (4718592 * k + 52702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 26351) = 7077888 * k + 79054 := by
    unfold C
    simp [show (2359296 * k + 26351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 79054) = 3538944 * k + 39527 := by
    unfold C
    simp [show (7077888 * k + 79054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 39527) = 10616832 * k + 118582 := by
    unfold C
    simp [show (3538944 * k + 39527) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 118582) = 5308416 * k + 59291 := by
    unfold C
    simp [show (10616832 * k + 118582) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 59291) = 15925248 * k + 177874 := by
    unfold C
    simp [show (5308416 * k + 59291) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 177874) = 7962624 * k + 88937 := by
    unfold C
    simp [show (15925248 * k + 177874) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 88937) = 23887872 * k + 266812 := by
    unfold C
    simp [show (7962624 * k + 88937) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 266812) = 11943936 * k + 133406 := by
    unfold C
    simp [show (23887872 * k + 266812) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 133406) = 5971968 * k + 66703 := by
    unfold C
    simp [show (11943936 * k + 133406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 66703) = 17915904 * k + 200110 := by
    unfold C
    simp [show (5971968 * k + 66703) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 200110) = 8957952 * k + 100055 := by
    unfold C
    simp [show (17915904 * k + 200110) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 100055) = 26873856 * k + 300166 := by
    unfold C
    simp [show (8957952 * k + 100055) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 300166) = 13436928 * k + 150083 := by
    unfold C
    simp [show (26873856 * k + 300166) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 150083) = 40310784 * k + 450250 := by
    unfold C
    simp [show (13436928 * k + 150083) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 450250) = 20155392 * k + 225125 := by
    unfold C
    simp [show (40310784 * k + 450250) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 225125) = 60466176 * k + 675376 := by
    unfold C
    simp [show (20155392 * k + 225125) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 675376) = 30233088 * k + 337688 := by
    unfold C
    simp [show (60466176 * k + 675376) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 337688) = 15116544 * k + 168844 := by
    unfold C
    simp [show (30233088 * k + 337688) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 168844) = 7558272 * k + 84422 := by
    unfold C
    simp [show (15116544 * k + 168844) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 84422) = 3779136 * k + 42211 := by
    unfold C
    simp [show (7558272 * k + 84422) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 42211) = 11337408 * k + 126634 := by
    unfold C
    simp [show (3779136 * k + 42211) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 126634) = 5668704 * k + 63317 := by
    unfold C
    simp [show (11337408 * k + 126634) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 63317) = 17006112 * k + 189952 := by
    unfold C
    simp [show (5668704 * k + 63317) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 189952) = 8503056 * k + 94976 := by
    unfold C
    simp [show (17006112 * k + 189952) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 94976) = 4251528 * k + 47488 := by
    unfold C
    simp [show (8503056 * k + 94976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 47488) = 2125764 * k + 23744 := by
    unfold C
    simp [show (4251528 * k + 47488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 23744) = 1062882 * k + 11872 := by
    unfold C
    simp [show (2125764 * k + 23744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 11872) = 531441 * k + 5936 := by
    unfold C
    simp [show (1062882 * k + 11872) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 11711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 11711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_11803 : ∀ k : Nat,
    iterate (1048576 * k + 11803) 32 = 531441 * k + 5983 ∧
      531441 * k + 5983 < 1048576 * k + 11803 := by
  intro k
  have h1 : C (1048576 * k + 11803) = 3145728 * k + 35410 := by
    unfold C
    simp [show (1048576 * k + 11803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 35410) = 1572864 * k + 17705 := by
    unfold C
    simp [show (3145728 * k + 35410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 17705) = 4718592 * k + 53116 := by
    unfold C
    simp [show (1572864 * k + 17705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 53116) = 2359296 * k + 26558 := by
    unfold C
    simp [show (4718592 * k + 53116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 26558) = 1179648 * k + 13279 := by
    unfold C
    simp [show (2359296 * k + 26558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 13279) = 3538944 * k + 39838 := by
    unfold C
    simp [show (1179648 * k + 13279) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 39838) = 1769472 * k + 19919 := by
    unfold C
    simp [show (3538944 * k + 39838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 19919) = 5308416 * k + 59758 := by
    unfold C
    simp [show (1769472 * k + 19919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 59758) = 2654208 * k + 29879 := by
    unfold C
    simp [show (5308416 * k + 59758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 29879) = 7962624 * k + 89638 := by
    unfold C
    simp [show (2654208 * k + 29879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 89638) = 3981312 * k + 44819 := by
    unfold C
    simp [show (7962624 * k + 89638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 44819) = 11943936 * k + 134458 := by
    unfold C
    simp [show (3981312 * k + 44819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 134458) = 5971968 * k + 67229 := by
    unfold C
    simp [show (11943936 * k + 134458) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 67229) = 17915904 * k + 201688 := by
    unfold C
    simp [show (5971968 * k + 67229) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 201688) = 8957952 * k + 100844 := by
    unfold C
    simp [show (17915904 * k + 201688) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 100844) = 4478976 * k + 50422 := by
    unfold C
    simp [show (8957952 * k + 100844) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 50422) = 2239488 * k + 25211 := by
    unfold C
    simp [show (4478976 * k + 50422) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 25211) = 6718464 * k + 75634 := by
    unfold C
    simp [show (2239488 * k + 25211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 75634) = 3359232 * k + 37817 := by
    unfold C
    simp [show (6718464 * k + 75634) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 37817) = 10077696 * k + 113452 := by
    unfold C
    simp [show (3359232 * k + 37817) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 113452) = 5038848 * k + 56726 := by
    unfold C
    simp [show (10077696 * k + 113452) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 56726) = 2519424 * k + 28363 := by
    unfold C
    simp [show (5038848 * k + 56726) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 28363) = 7558272 * k + 85090 := by
    unfold C
    simp [show (2519424 * k + 28363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 85090) = 3779136 * k + 42545 := by
    unfold C
    simp [show (7558272 * k + 85090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 42545) = 11337408 * k + 127636 := by
    unfold C
    simp [show (3779136 * k + 42545) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 127636) = 5668704 * k + 63818 := by
    unfold C
    simp [show (11337408 * k + 127636) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 63818) = 2834352 * k + 31909 := by
    unfold C
    simp [show (5668704 * k + 63818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 31909) = 8503056 * k + 95728 := by
    unfold C
    simp [show (2834352 * k + 31909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 95728) = 4251528 * k + 47864 := by
    unfold C
    simp [show (8503056 * k + 95728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 47864) = 2125764 * k + 23932 := by
    unfold C
    simp [show (4251528 * k + 47864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 23932) = 1062882 * k + 11966 := by
    unfold C
    simp [show (2125764 * k + 23932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 11966) = 531441 * k + 5983 := by
    unfold C
    simp [show (1062882 * k + 11966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 11803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 11803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_12379 : ∀ k : Nat,
    iterate (1048576 * k + 12379) 32 = 531441 * k + 6275 ∧
      531441 * k + 6275 < 1048576 * k + 12379 := by
  intro k
  have h1 : C (1048576 * k + 12379) = 3145728 * k + 37138 := by
    unfold C
    simp [show (1048576 * k + 12379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 37138) = 1572864 * k + 18569 := by
    unfold C
    simp [show (3145728 * k + 37138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 18569) = 4718592 * k + 55708 := by
    unfold C
    simp [show (1572864 * k + 18569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 55708) = 2359296 * k + 27854 := by
    unfold C
    simp [show (4718592 * k + 55708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 27854) = 1179648 * k + 13927 := by
    unfold C
    simp [show (2359296 * k + 27854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 13927) = 3538944 * k + 41782 := by
    unfold C
    simp [show (1179648 * k + 13927) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 41782) = 1769472 * k + 20891 := by
    unfold C
    simp [show (3538944 * k + 41782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 20891) = 5308416 * k + 62674 := by
    unfold C
    simp [show (1769472 * k + 20891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 62674) = 2654208 * k + 31337 := by
    unfold C
    simp [show (5308416 * k + 62674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 31337) = 7962624 * k + 94012 := by
    unfold C
    simp [show (2654208 * k + 31337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 94012) = 3981312 * k + 47006 := by
    unfold C
    simp [show (7962624 * k + 94012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 47006) = 1990656 * k + 23503 := by
    unfold C
    simp [show (3981312 * k + 47006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 23503) = 5971968 * k + 70510 := by
    unfold C
    simp [show (1990656 * k + 23503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 70510) = 2985984 * k + 35255 := by
    unfold C
    simp [show (5971968 * k + 70510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 35255) = 8957952 * k + 105766 := by
    unfold C
    simp [show (2985984 * k + 35255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 105766) = 4478976 * k + 52883 := by
    unfold C
    simp [show (8957952 * k + 105766) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 52883) = 13436928 * k + 158650 := by
    unfold C
    simp [show (4478976 * k + 52883) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 158650) = 6718464 * k + 79325 := by
    unfold C
    simp [show (13436928 * k + 158650) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 79325) = 20155392 * k + 237976 := by
    unfold C
    simp [show (6718464 * k + 79325) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 237976) = 10077696 * k + 118988 := by
    unfold C
    simp [show (20155392 * k + 237976) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 118988) = 5038848 * k + 59494 := by
    unfold C
    simp [show (10077696 * k + 118988) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 59494) = 2519424 * k + 29747 := by
    unfold C
    simp [show (5038848 * k + 59494) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 29747) = 7558272 * k + 89242 := by
    unfold C
    simp [show (2519424 * k + 29747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 89242) = 3779136 * k + 44621 := by
    unfold C
    simp [show (7558272 * k + 89242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 44621) = 11337408 * k + 133864 := by
    unfold C
    simp [show (3779136 * k + 44621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 133864) = 5668704 * k + 66932 := by
    unfold C
    simp [show (11337408 * k + 133864) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 66932) = 2834352 * k + 33466 := by
    unfold C
    simp [show (5668704 * k + 66932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 33466) = 1417176 * k + 16733 := by
    unfold C
    simp [show (2834352 * k + 33466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 16733) = 4251528 * k + 50200 := by
    unfold C
    simp [show (1417176 * k + 16733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 50200) = 2125764 * k + 25100 := by
    unfold C
    simp [show (4251528 * k + 50200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 25100) = 1062882 * k + 12550 := by
    unfold C
    simp [show (2125764 * k + 25100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 12550) = 531441 * k + 6275 := by
    unfold C
    simp [show (1062882 * k + 12550) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 12379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 12379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_12847 : ∀ k : Nat,
    iterate (1048576 * k + 12847) 32 = 531441 * k + 6512 ∧
      531441 * k + 6512 < 1048576 * k + 12847 := by
  intro k
  have h1 : C (1048576 * k + 12847) = 3145728 * k + 38542 := by
    unfold C
    simp [show (1048576 * k + 12847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 38542) = 1572864 * k + 19271 := by
    unfold C
    simp [show (3145728 * k + 38542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 19271) = 4718592 * k + 57814 := by
    unfold C
    simp [show (1572864 * k + 19271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 57814) = 2359296 * k + 28907 := by
    unfold C
    simp [show (4718592 * k + 57814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 28907) = 7077888 * k + 86722 := by
    unfold C
    simp [show (2359296 * k + 28907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 86722) = 3538944 * k + 43361 := by
    unfold C
    simp [show (7077888 * k + 86722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 43361) = 10616832 * k + 130084 := by
    unfold C
    simp [show (3538944 * k + 43361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 130084) = 5308416 * k + 65042 := by
    unfold C
    simp [show (10616832 * k + 130084) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 65042) = 2654208 * k + 32521 := by
    unfold C
    simp [show (5308416 * k + 65042) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 32521) = 7962624 * k + 97564 := by
    unfold C
    simp [show (2654208 * k + 32521) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 97564) = 3981312 * k + 48782 := by
    unfold C
    simp [show (7962624 * k + 97564) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 48782) = 1990656 * k + 24391 := by
    unfold C
    simp [show (3981312 * k + 48782) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 24391) = 5971968 * k + 73174 := by
    unfold C
    simp [show (1990656 * k + 24391) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 73174) = 2985984 * k + 36587 := by
    unfold C
    simp [show (5971968 * k + 73174) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 36587) = 8957952 * k + 109762 := by
    unfold C
    simp [show (2985984 * k + 36587) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 109762) = 4478976 * k + 54881 := by
    unfold C
    simp [show (8957952 * k + 109762) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 54881) = 13436928 * k + 164644 := by
    unfold C
    simp [show (4478976 * k + 54881) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 164644) = 6718464 * k + 82322 := by
    unfold C
    simp [show (13436928 * k + 164644) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 82322) = 3359232 * k + 41161 := by
    unfold C
    simp [show (6718464 * k + 82322) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 41161) = 10077696 * k + 123484 := by
    unfold C
    simp [show (3359232 * k + 41161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 123484) = 5038848 * k + 61742 := by
    unfold C
    simp [show (10077696 * k + 123484) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 61742) = 2519424 * k + 30871 := by
    unfold C
    simp [show (5038848 * k + 61742) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 30871) = 7558272 * k + 92614 := by
    unfold C
    simp [show (2519424 * k + 30871) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 92614) = 3779136 * k + 46307 := by
    unfold C
    simp [show (7558272 * k + 92614) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 46307) = 11337408 * k + 138922 := by
    unfold C
    simp [show (3779136 * k + 46307) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 138922) = 5668704 * k + 69461 := by
    unfold C
    simp [show (11337408 * k + 138922) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 69461) = 17006112 * k + 208384 := by
    unfold C
    simp [show (5668704 * k + 69461) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 208384) = 8503056 * k + 104192 := by
    unfold C
    simp [show (17006112 * k + 208384) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 104192) = 4251528 * k + 52096 := by
    unfold C
    simp [show (8503056 * k + 104192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 52096) = 2125764 * k + 26048 := by
    unfold C
    simp [show (4251528 * k + 52096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 26048) = 1062882 * k + 13024 := by
    unfold C
    simp [show (2125764 * k + 26048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 13024) = 531441 * k + 6512 := by
    unfold C
    simp [show (1062882 * k + 13024) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 12847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 12847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_13159 : ∀ k : Nat,
    iterate (1048576 * k + 13159) 32 = 531441 * k + 6670 ∧
      531441 * k + 6670 < 1048576 * k + 13159 := by
  intro k
  have h1 : C (1048576 * k + 13159) = 3145728 * k + 39478 := by
    unfold C
    simp [show (1048576 * k + 13159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 39478) = 1572864 * k + 19739 := by
    unfold C
    simp [show (3145728 * k + 39478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 19739) = 4718592 * k + 59218 := by
    unfold C
    simp [show (1572864 * k + 19739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 59218) = 2359296 * k + 29609 := by
    unfold C
    simp [show (4718592 * k + 59218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 29609) = 7077888 * k + 88828 := by
    unfold C
    simp [show (2359296 * k + 29609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 88828) = 3538944 * k + 44414 := by
    unfold C
    simp [show (7077888 * k + 88828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 44414) = 1769472 * k + 22207 := by
    unfold C
    simp [show (3538944 * k + 44414) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 22207) = 5308416 * k + 66622 := by
    unfold C
    simp [show (1769472 * k + 22207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 66622) = 2654208 * k + 33311 := by
    unfold C
    simp [show (5308416 * k + 66622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 33311) = 7962624 * k + 99934 := by
    unfold C
    simp [show (2654208 * k + 33311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 99934) = 3981312 * k + 49967 := by
    unfold C
    simp [show (7962624 * k + 99934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 49967) = 11943936 * k + 149902 := by
    unfold C
    simp [show (3981312 * k + 49967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 149902) = 5971968 * k + 74951 := by
    unfold C
    simp [show (11943936 * k + 149902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 74951) = 17915904 * k + 224854 := by
    unfold C
    simp [show (5971968 * k + 74951) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 224854) = 8957952 * k + 112427 := by
    unfold C
    simp [show (17915904 * k + 224854) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 112427) = 26873856 * k + 337282 := by
    unfold C
    simp [show (8957952 * k + 112427) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 337282) = 13436928 * k + 168641 := by
    unfold C
    simp [show (26873856 * k + 337282) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 168641) = 40310784 * k + 505924 := by
    unfold C
    simp [show (13436928 * k + 168641) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 505924) = 20155392 * k + 252962 := by
    unfold C
    simp [show (40310784 * k + 505924) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 252962) = 10077696 * k + 126481 := by
    unfold C
    simp [show (20155392 * k + 252962) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 126481) = 30233088 * k + 379444 := by
    unfold C
    simp [show (10077696 * k + 126481) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 379444) = 15116544 * k + 189722 := by
    unfold C
    simp [show (30233088 * k + 379444) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 189722) = 7558272 * k + 94861 := by
    unfold C
    simp [show (15116544 * k + 189722) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 94861) = 22674816 * k + 284584 := by
    unfold C
    simp [show (7558272 * k + 94861) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 284584) = 11337408 * k + 142292 := by
    unfold C
    simp [show (22674816 * k + 284584) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 142292) = 5668704 * k + 71146 := by
    unfold C
    simp [show (11337408 * k + 142292) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 71146) = 2834352 * k + 35573 := by
    unfold C
    simp [show (5668704 * k + 71146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 35573) = 8503056 * k + 106720 := by
    unfold C
    simp [show (2834352 * k + 35573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 106720) = 4251528 * k + 53360 := by
    unfold C
    simp [show (8503056 * k + 106720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 53360) = 2125764 * k + 26680 := by
    unfold C
    simp [show (4251528 * k + 53360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 26680) = 1062882 * k + 13340 := by
    unfold C
    simp [show (2125764 * k + 26680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 13340) = 531441 * k + 6670 := by
    unfold C
    simp [show (1062882 * k + 13340) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 13159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 13159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_13871 : ∀ k : Nat,
    iterate (1048576 * k + 13871) 32 = 531441 * k + 7031 ∧
      531441 * k + 7031 < 1048576 * k + 13871 := by
  intro k
  have h1 : C (1048576 * k + 13871) = 3145728 * k + 41614 := by
    unfold C
    simp [show (1048576 * k + 13871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 41614) = 1572864 * k + 20807 := by
    unfold C
    simp [show (3145728 * k + 41614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 20807) = 4718592 * k + 62422 := by
    unfold C
    simp [show (1572864 * k + 20807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 62422) = 2359296 * k + 31211 := by
    unfold C
    simp [show (4718592 * k + 62422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 31211) = 7077888 * k + 93634 := by
    unfold C
    simp [show (2359296 * k + 31211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 93634) = 3538944 * k + 46817 := by
    unfold C
    simp [show (7077888 * k + 93634) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 46817) = 10616832 * k + 140452 := by
    unfold C
    simp [show (3538944 * k + 46817) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 140452) = 5308416 * k + 70226 := by
    unfold C
    simp [show (10616832 * k + 140452) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 70226) = 2654208 * k + 35113 := by
    unfold C
    simp [show (5308416 * k + 70226) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 35113) = 7962624 * k + 105340 := by
    unfold C
    simp [show (2654208 * k + 35113) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 105340) = 3981312 * k + 52670 := by
    unfold C
    simp [show (7962624 * k + 105340) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 52670) = 1990656 * k + 26335 := by
    unfold C
    simp [show (3981312 * k + 52670) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 26335) = 5971968 * k + 79006 := by
    unfold C
    simp [show (1990656 * k + 26335) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 79006) = 2985984 * k + 39503 := by
    unfold C
    simp [show (5971968 * k + 79006) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 39503) = 8957952 * k + 118510 := by
    unfold C
    simp [show (2985984 * k + 39503) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 118510) = 4478976 * k + 59255 := by
    unfold C
    simp [show (8957952 * k + 118510) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 59255) = 13436928 * k + 177766 := by
    unfold C
    simp [show (4478976 * k + 59255) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 177766) = 6718464 * k + 88883 := by
    unfold C
    simp [show (13436928 * k + 177766) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 88883) = 20155392 * k + 266650 := by
    unfold C
    simp [show (6718464 * k + 88883) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 266650) = 10077696 * k + 133325 := by
    unfold C
    simp [show (20155392 * k + 266650) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 133325) = 30233088 * k + 399976 := by
    unfold C
    simp [show (10077696 * k + 133325) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 399976) = 15116544 * k + 199988 := by
    unfold C
    simp [show (30233088 * k + 399976) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 199988) = 7558272 * k + 99994 := by
    unfold C
    simp [show (15116544 * k + 199988) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 99994) = 3779136 * k + 49997 := by
    unfold C
    simp [show (7558272 * k + 99994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 49997) = 11337408 * k + 149992 := by
    unfold C
    simp [show (3779136 * k + 49997) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 149992) = 5668704 * k + 74996 := by
    unfold C
    simp [show (11337408 * k + 149992) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 74996) = 2834352 * k + 37498 := by
    unfold C
    simp [show (5668704 * k + 74996) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 37498) = 1417176 * k + 18749 := by
    unfold C
    simp [show (2834352 * k + 37498) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 18749) = 4251528 * k + 56248 := by
    unfold C
    simp [show (1417176 * k + 18749) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 56248) = 2125764 * k + 28124 := by
    unfold C
    simp [show (4251528 * k + 56248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 28124) = 1062882 * k + 14062 := by
    unfold C
    simp [show (2125764 * k + 28124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 14062) = 531441 * k + 7031 := by
    unfold C
    simp [show (1062882 * k + 14062) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 13871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 13871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_14183 : ∀ k : Nat,
    iterate (1048576 * k + 14183) 32 = 531441 * k + 7189 ∧
      531441 * k + 7189 < 1048576 * k + 14183 := by
  intro k
  have h1 : C (1048576 * k + 14183) = 3145728 * k + 42550 := by
    unfold C
    simp [show (1048576 * k + 14183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 42550) = 1572864 * k + 21275 := by
    unfold C
    simp [show (3145728 * k + 42550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 21275) = 4718592 * k + 63826 := by
    unfold C
    simp [show (1572864 * k + 21275) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 63826) = 2359296 * k + 31913 := by
    unfold C
    simp [show (4718592 * k + 63826) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 31913) = 7077888 * k + 95740 := by
    unfold C
    simp [show (2359296 * k + 31913) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 95740) = 3538944 * k + 47870 := by
    unfold C
    simp [show (7077888 * k + 95740) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 47870) = 1769472 * k + 23935 := by
    unfold C
    simp [show (3538944 * k + 47870) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 23935) = 5308416 * k + 71806 := by
    unfold C
    simp [show (1769472 * k + 23935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 71806) = 2654208 * k + 35903 := by
    unfold C
    simp [show (5308416 * k + 71806) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 35903) = 7962624 * k + 107710 := by
    unfold C
    simp [show (2654208 * k + 35903) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 107710) = 3981312 * k + 53855 := by
    unfold C
    simp [show (7962624 * k + 107710) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 53855) = 11943936 * k + 161566 := by
    unfold C
    simp [show (3981312 * k + 53855) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 161566) = 5971968 * k + 80783 := by
    unfold C
    simp [show (11943936 * k + 161566) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 80783) = 17915904 * k + 242350 := by
    unfold C
    simp [show (5971968 * k + 80783) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 242350) = 8957952 * k + 121175 := by
    unfold C
    simp [show (17915904 * k + 242350) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 121175) = 26873856 * k + 363526 := by
    unfold C
    simp [show (8957952 * k + 121175) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 363526) = 13436928 * k + 181763 := by
    unfold C
    simp [show (26873856 * k + 363526) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 181763) = 40310784 * k + 545290 := by
    unfold C
    simp [show (13436928 * k + 181763) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 545290) = 20155392 * k + 272645 := by
    unfold C
    simp [show (40310784 * k + 545290) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 272645) = 60466176 * k + 817936 := by
    unfold C
    simp [show (20155392 * k + 272645) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 817936) = 30233088 * k + 408968 := by
    unfold C
    simp [show (60466176 * k + 817936) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 408968) = 15116544 * k + 204484 := by
    unfold C
    simp [show (30233088 * k + 408968) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 204484) = 7558272 * k + 102242 := by
    unfold C
    simp [show (15116544 * k + 204484) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 102242) = 3779136 * k + 51121 := by
    unfold C
    simp [show (7558272 * k + 102242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 51121) = 11337408 * k + 153364 := by
    unfold C
    simp [show (3779136 * k + 51121) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 153364) = 5668704 * k + 76682 := by
    unfold C
    simp [show (11337408 * k + 153364) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 76682) = 2834352 * k + 38341 := by
    unfold C
    simp [show (5668704 * k + 76682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 38341) = 8503056 * k + 115024 := by
    unfold C
    simp [show (2834352 * k + 38341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 115024) = 4251528 * k + 57512 := by
    unfold C
    simp [show (8503056 * k + 115024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 57512) = 2125764 * k + 28756 := by
    unfold C
    simp [show (4251528 * k + 57512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 28756) = 1062882 * k + 14378 := by
    unfold C
    simp [show (2125764 * k + 28756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 14378) = 531441 * k + 7189 := by
    unfold C
    simp [show (1062882 * k + 14378) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 14183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 14183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_14463 : ∀ k : Nat,
    iterate (1048576 * k + 14463) 32 = 531441 * k + 7331 ∧
      531441 * k + 7331 < 1048576 * k + 14463 := by
  intro k
  have h1 : C (1048576 * k + 14463) = 3145728 * k + 43390 := by
    unfold C
    simp [show (1048576 * k + 14463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 43390) = 1572864 * k + 21695 := by
    unfold C
    simp [show (3145728 * k + 43390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 21695) = 4718592 * k + 65086 := by
    unfold C
    simp [show (1572864 * k + 21695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 65086) = 2359296 * k + 32543 := by
    unfold C
    simp [show (4718592 * k + 65086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 32543) = 7077888 * k + 97630 := by
    unfold C
    simp [show (2359296 * k + 32543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 97630) = 3538944 * k + 48815 := by
    unfold C
    simp [show (7077888 * k + 97630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 48815) = 10616832 * k + 146446 := by
    unfold C
    simp [show (3538944 * k + 48815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 146446) = 5308416 * k + 73223 := by
    unfold C
    simp [show (10616832 * k + 146446) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 73223) = 15925248 * k + 219670 := by
    unfold C
    simp [show (5308416 * k + 73223) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 219670) = 7962624 * k + 109835 := by
    unfold C
    simp [show (15925248 * k + 219670) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 109835) = 23887872 * k + 329506 := by
    unfold C
    simp [show (7962624 * k + 109835) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 329506) = 11943936 * k + 164753 := by
    unfold C
    simp [show (23887872 * k + 329506) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 164753) = 35831808 * k + 494260 := by
    unfold C
    simp [show (11943936 * k + 164753) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 494260) = 17915904 * k + 247130 := by
    unfold C
    simp [show (35831808 * k + 494260) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 247130) = 8957952 * k + 123565 := by
    unfold C
    simp [show (17915904 * k + 247130) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 123565) = 26873856 * k + 370696 := by
    unfold C
    simp [show (8957952 * k + 123565) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 370696) = 13436928 * k + 185348 := by
    unfold C
    simp [show (26873856 * k + 370696) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 185348) = 6718464 * k + 92674 := by
    unfold C
    simp [show (13436928 * k + 185348) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 92674) = 3359232 * k + 46337 := by
    unfold C
    simp [show (6718464 * k + 92674) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 46337) = 10077696 * k + 139012 := by
    unfold C
    simp [show (3359232 * k + 46337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 139012) = 5038848 * k + 69506 := by
    unfold C
    simp [show (10077696 * k + 139012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 69506) = 2519424 * k + 34753 := by
    unfold C
    simp [show (5038848 * k + 69506) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 34753) = 7558272 * k + 104260 := by
    unfold C
    simp [show (2519424 * k + 34753) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 104260) = 3779136 * k + 52130 := by
    unfold C
    simp [show (7558272 * k + 104260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 52130) = 1889568 * k + 26065 := by
    unfold C
    simp [show (3779136 * k + 52130) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 26065) = 5668704 * k + 78196 := by
    unfold C
    simp [show (1889568 * k + 26065) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 78196) = 2834352 * k + 39098 := by
    unfold C
    simp [show (5668704 * k + 78196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 39098) = 1417176 * k + 19549 := by
    unfold C
    simp [show (2834352 * k + 39098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 19549) = 4251528 * k + 58648 := by
    unfold C
    simp [show (1417176 * k + 19549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 58648) = 2125764 * k + 29324 := by
    unfold C
    simp [show (4251528 * k + 58648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 29324) = 1062882 * k + 14662 := by
    unfold C
    simp [show (2125764 * k + 29324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 14662) = 531441 * k + 7331 := by
    unfold C
    simp [show (1062882 * k + 14662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 14463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 14463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_14587 : ∀ k : Nat,
    iterate (1048576 * k + 14587) 32 = 531441 * k + 7394 ∧
      531441 * k + 7394 < 1048576 * k + 14587 := by
  intro k
  have h1 : C (1048576 * k + 14587) = 3145728 * k + 43762 := by
    unfold C
    simp [show (1048576 * k + 14587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 43762) = 1572864 * k + 21881 := by
    unfold C
    simp [show (3145728 * k + 43762) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 21881) = 4718592 * k + 65644 := by
    unfold C
    simp [show (1572864 * k + 21881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 65644) = 2359296 * k + 32822 := by
    unfold C
    simp [show (4718592 * k + 65644) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 32822) = 1179648 * k + 16411 := by
    unfold C
    simp [show (2359296 * k + 32822) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 16411) = 3538944 * k + 49234 := by
    unfold C
    simp [show (1179648 * k + 16411) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 49234) = 1769472 * k + 24617 := by
    unfold C
    simp [show (3538944 * k + 49234) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 24617) = 5308416 * k + 73852 := by
    unfold C
    simp [show (1769472 * k + 24617) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 73852) = 2654208 * k + 36926 := by
    unfold C
    simp [show (5308416 * k + 73852) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 36926) = 1327104 * k + 18463 := by
    unfold C
    simp [show (2654208 * k + 36926) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 18463) = 3981312 * k + 55390 := by
    unfold C
    simp [show (1327104 * k + 18463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 55390) = 1990656 * k + 27695 := by
    unfold C
    simp [show (3981312 * k + 55390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 27695) = 5971968 * k + 83086 := by
    unfold C
    simp [show (1990656 * k + 27695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 83086) = 2985984 * k + 41543 := by
    unfold C
    simp [show (5971968 * k + 83086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 41543) = 8957952 * k + 124630 := by
    unfold C
    simp [show (2985984 * k + 41543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 124630) = 4478976 * k + 62315 := by
    unfold C
    simp [show (8957952 * k + 124630) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 62315) = 13436928 * k + 186946 := by
    unfold C
    simp [show (4478976 * k + 62315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 186946) = 6718464 * k + 93473 := by
    unfold C
    simp [show (13436928 * k + 186946) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 93473) = 20155392 * k + 280420 := by
    unfold C
    simp [show (6718464 * k + 93473) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 280420) = 10077696 * k + 140210 := by
    unfold C
    simp [show (20155392 * k + 280420) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 140210) = 5038848 * k + 70105 := by
    unfold C
    simp [show (10077696 * k + 140210) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 70105) = 15116544 * k + 210316 := by
    unfold C
    simp [show (5038848 * k + 70105) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 210316) = 7558272 * k + 105158 := by
    unfold C
    simp [show (15116544 * k + 210316) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 105158) = 3779136 * k + 52579 := by
    unfold C
    simp [show (7558272 * k + 105158) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 52579) = 11337408 * k + 157738 := by
    unfold C
    simp [show (3779136 * k + 52579) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 157738) = 5668704 * k + 78869 := by
    unfold C
    simp [show (11337408 * k + 157738) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 78869) = 17006112 * k + 236608 := by
    unfold C
    simp [show (5668704 * k + 78869) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 236608) = 8503056 * k + 118304 := by
    unfold C
    simp [show (17006112 * k + 236608) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 118304) = 4251528 * k + 59152 := by
    unfold C
    simp [show (8503056 * k + 118304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 59152) = 2125764 * k + 29576 := by
    unfold C
    simp [show (4251528 * k + 59152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 29576) = 1062882 * k + 14788 := by
    unfold C
    simp [show (2125764 * k + 29576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 14788) = 531441 * k + 7394 := by
    unfold C
    simp [show (1062882 * k + 14788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 14587) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 14587)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_15231 : ∀ k : Nat,
    iterate (1048576 * k + 15231) 32 = 531441 * k + 7720 ∧
      531441 * k + 7720 < 1048576 * k + 15231 := by
  intro k
  have h1 : C (1048576 * k + 15231) = 3145728 * k + 45694 := by
    unfold C
    simp [show (1048576 * k + 15231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 45694) = 1572864 * k + 22847 := by
    unfold C
    simp [show (3145728 * k + 45694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 22847) = 4718592 * k + 68542 := by
    unfold C
    simp [show (1572864 * k + 22847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 68542) = 2359296 * k + 34271 := by
    unfold C
    simp [show (4718592 * k + 68542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 34271) = 7077888 * k + 102814 := by
    unfold C
    simp [show (2359296 * k + 34271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 102814) = 3538944 * k + 51407 := by
    unfold C
    simp [show (7077888 * k + 102814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 51407) = 10616832 * k + 154222 := by
    unfold C
    simp [show (3538944 * k + 51407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 154222) = 5308416 * k + 77111 := by
    unfold C
    simp [show (10616832 * k + 154222) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 77111) = 15925248 * k + 231334 := by
    unfold C
    simp [show (5308416 * k + 77111) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 231334) = 7962624 * k + 115667 := by
    unfold C
    simp [show (15925248 * k + 231334) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 115667) = 23887872 * k + 347002 := by
    unfold C
    simp [show (7962624 * k + 115667) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 347002) = 11943936 * k + 173501 := by
    unfold C
    simp [show (23887872 * k + 347002) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 173501) = 35831808 * k + 520504 := by
    unfold C
    simp [show (11943936 * k + 173501) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 520504) = 17915904 * k + 260252 := by
    unfold C
    simp [show (35831808 * k + 520504) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 260252) = 8957952 * k + 130126 := by
    unfold C
    simp [show (17915904 * k + 260252) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 130126) = 4478976 * k + 65063 := by
    unfold C
    simp [show (8957952 * k + 130126) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 65063) = 13436928 * k + 195190 := by
    unfold C
    simp [show (4478976 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 195190) = 6718464 * k + 97595 := by
    unfold C
    simp [show (13436928 * k + 195190) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 97595) = 20155392 * k + 292786 := by
    unfold C
    simp [show (6718464 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 292786) = 10077696 * k + 146393 := by
    unfold C
    simp [show (20155392 * k + 292786) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 146393) = 30233088 * k + 439180 := by
    unfold C
    simp [show (10077696 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 439180) = 15116544 * k + 219590 := by
    unfold C
    simp [show (30233088 * k + 439180) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 219590) = 7558272 * k + 109795 := by
    unfold C
    simp [show (15116544 * k + 219590) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 109795) = 22674816 * k + 329386 := by
    unfold C
    simp [show (7558272 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 329386) = 11337408 * k + 164693 := by
    unfold C
    simp [show (22674816 * k + 329386) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 164693) = 34012224 * k + 494080 := by
    unfold C
    simp [show (11337408 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 494080) = 17006112 * k + 247040 := by
    unfold C
    simp [show (34012224 * k + 494080) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 247040) = 8503056 * k + 123520 := by
    unfold C
    simp [show (17006112 * k + 247040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 123520) = 4251528 * k + 61760 := by
    unfold C
    simp [show (8503056 * k + 123520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 61760) = 2125764 * k + 30880 := by
    unfold C
    simp [show (4251528 * k + 61760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 30880) = 1062882 * k + 15440 := by
    unfold C
    simp [show (2125764 * k + 30880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 15440) = 531441 * k + 7720 := by
    unfold C
    simp [show (1062882 * k + 15440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 15231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 15231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_15807 : ∀ k : Nat,
    iterate (1048576 * k + 15807) 32 = 531441 * k + 8012 ∧
      531441 * k + 8012 < 1048576 * k + 15807 := by
  intro k
  have h1 : C (1048576 * k + 15807) = 3145728 * k + 47422 := by
    unfold C
    simp [show (1048576 * k + 15807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 47422) = 1572864 * k + 23711 := by
    unfold C
    simp [show (3145728 * k + 47422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 23711) = 4718592 * k + 71134 := by
    unfold C
    simp [show (1572864 * k + 23711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 71134) = 2359296 * k + 35567 := by
    unfold C
    simp [show (4718592 * k + 71134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 35567) = 7077888 * k + 106702 := by
    unfold C
    simp [show (2359296 * k + 35567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 106702) = 3538944 * k + 53351 := by
    unfold C
    simp [show (7077888 * k + 106702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 53351) = 10616832 * k + 160054 := by
    unfold C
    simp [show (3538944 * k + 53351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 160054) = 5308416 * k + 80027 := by
    unfold C
    simp [show (10616832 * k + 160054) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 80027) = 15925248 * k + 240082 := by
    unfold C
    simp [show (5308416 * k + 80027) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 240082) = 7962624 * k + 120041 := by
    unfold C
    simp [show (15925248 * k + 240082) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 120041) = 23887872 * k + 360124 := by
    unfold C
    simp [show (7962624 * k + 120041) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 360124) = 11943936 * k + 180062 := by
    unfold C
    simp [show (23887872 * k + 360124) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 180062) = 5971968 * k + 90031 := by
    unfold C
    simp [show (11943936 * k + 180062) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 90031) = 17915904 * k + 270094 := by
    unfold C
    simp [show (5971968 * k + 90031) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 270094) = 8957952 * k + 135047 := by
    unfold C
    simp [show (17915904 * k + 270094) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 135047) = 26873856 * k + 405142 := by
    unfold C
    simp [show (8957952 * k + 135047) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 405142) = 13436928 * k + 202571 := by
    unfold C
    simp [show (26873856 * k + 405142) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 202571) = 40310784 * k + 607714 := by
    unfold C
    simp [show (13436928 * k + 202571) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 607714) = 20155392 * k + 303857 := by
    unfold C
    simp [show (40310784 * k + 607714) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 303857) = 60466176 * k + 911572 := by
    unfold C
    simp [show (20155392 * k + 303857) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 911572) = 30233088 * k + 455786 := by
    unfold C
    simp [show (60466176 * k + 911572) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 455786) = 15116544 * k + 227893 := by
    unfold C
    simp [show (30233088 * k + 455786) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 227893) = 45349632 * k + 683680 := by
    unfold C
    simp [show (15116544 * k + 227893) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 683680) = 22674816 * k + 341840 := by
    unfold C
    simp [show (45349632 * k + 683680) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 341840) = 11337408 * k + 170920 := by
    unfold C
    simp [show (22674816 * k + 341840) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 170920) = 5668704 * k + 85460 := by
    unfold C
    simp [show (11337408 * k + 170920) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 85460) = 2834352 * k + 42730 := by
    unfold C
    simp [show (5668704 * k + 85460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 42730) = 1417176 * k + 21365 := by
    unfold C
    simp [show (2834352 * k + 42730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 21365) = 4251528 * k + 64096 := by
    unfold C
    simp [show (1417176 * k + 21365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 64096) = 2125764 * k + 32048 := by
    unfold C
    simp [show (4251528 * k + 64096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 32048) = 1062882 * k + 16024 := by
    unfold C
    simp [show (2125764 * k + 32048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 16024) = 531441 * k + 8012 := by
    unfold C
    simp [show (1062882 * k + 16024) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 15807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 15807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_16079 : ∀ k : Nat,
    iterate (1048576 * k + 16079) 32 = 531441 * k + 8150 ∧
      531441 * k + 8150 < 1048576 * k + 16079 := by
  intro k
  have h1 : C (1048576 * k + 16079) = 3145728 * k + 48238 := by
    unfold C
    simp [show (1048576 * k + 16079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 48238) = 1572864 * k + 24119 := by
    unfold C
    simp [show (3145728 * k + 48238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 24119) = 4718592 * k + 72358 := by
    unfold C
    simp [show (1572864 * k + 24119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 72358) = 2359296 * k + 36179 := by
    unfold C
    simp [show (4718592 * k + 72358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 36179) = 7077888 * k + 108538 := by
    unfold C
    simp [show (2359296 * k + 36179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 108538) = 3538944 * k + 54269 := by
    unfold C
    simp [show (7077888 * k + 108538) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 54269) = 10616832 * k + 162808 := by
    unfold C
    simp [show (3538944 * k + 54269) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 162808) = 5308416 * k + 81404 := by
    unfold C
    simp [show (10616832 * k + 162808) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 81404) = 2654208 * k + 40702 := by
    unfold C
    simp [show (5308416 * k + 81404) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 40702) = 1327104 * k + 20351 := by
    unfold C
    simp [show (2654208 * k + 40702) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 20351) = 3981312 * k + 61054 := by
    unfold C
    simp [show (1327104 * k + 20351) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 61054) = 1990656 * k + 30527 := by
    unfold C
    simp [show (3981312 * k + 61054) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 30527) = 5971968 * k + 91582 := by
    unfold C
    simp [show (1990656 * k + 30527) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 91582) = 2985984 * k + 45791 := by
    unfold C
    simp [show (5971968 * k + 91582) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 45791) = 8957952 * k + 137374 := by
    unfold C
    simp [show (2985984 * k + 45791) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 137374) = 4478976 * k + 68687 := by
    unfold C
    simp [show (8957952 * k + 137374) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 68687) = 13436928 * k + 206062 := by
    unfold C
    simp [show (4478976 * k + 68687) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 206062) = 6718464 * k + 103031 := by
    unfold C
    simp [show (13436928 * k + 206062) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 103031) = 20155392 * k + 309094 := by
    unfold C
    simp [show (6718464 * k + 103031) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 309094) = 10077696 * k + 154547 := by
    unfold C
    simp [show (20155392 * k + 309094) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 154547) = 30233088 * k + 463642 := by
    unfold C
    simp [show (10077696 * k + 154547) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 463642) = 15116544 * k + 231821 := by
    unfold C
    simp [show (30233088 * k + 463642) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 231821) = 45349632 * k + 695464 := by
    unfold C
    simp [show (15116544 * k + 231821) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 695464) = 22674816 * k + 347732 := by
    unfold C
    simp [show (45349632 * k + 695464) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 347732) = 11337408 * k + 173866 := by
    unfold C
    simp [show (22674816 * k + 347732) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 173866) = 5668704 * k + 86933 := by
    unfold C
    simp [show (11337408 * k + 173866) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 86933) = 17006112 * k + 260800 := by
    unfold C
    simp [show (5668704 * k + 86933) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 260800) = 8503056 * k + 130400 := by
    unfold C
    simp [show (17006112 * k + 260800) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 130400) = 4251528 * k + 65200 := by
    unfold C
    simp [show (8503056 * k + 130400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 65200) = 2125764 * k + 32600 := by
    unfold C
    simp [show (4251528 * k + 65200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 32600) = 1062882 * k + 16300 := by
    unfold C
    simp [show (2125764 * k + 32600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 16300) = 531441 * k + 8150 := by
    unfold C
    simp [show (1062882 * k + 16300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 16079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 16079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_16487 : ∀ k : Nat,
    iterate (1048576 * k + 16487) 32 = 531441 * k + 8357 ∧
      531441 * k + 8357 < 1048576 * k + 16487 := by
  intro k
  have h1 : C (1048576 * k + 16487) = 3145728 * k + 49462 := by
    unfold C
    simp [show (1048576 * k + 16487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 49462) = 1572864 * k + 24731 := by
    unfold C
    simp [show (3145728 * k + 49462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 24731) = 4718592 * k + 74194 := by
    unfold C
    simp [show (1572864 * k + 24731) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 74194) = 2359296 * k + 37097 := by
    unfold C
    simp [show (4718592 * k + 74194) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 37097) = 7077888 * k + 111292 := by
    unfold C
    simp [show (2359296 * k + 37097) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 111292) = 3538944 * k + 55646 := by
    unfold C
    simp [show (7077888 * k + 111292) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 55646) = 1769472 * k + 27823 := by
    unfold C
    simp [show (3538944 * k + 55646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 27823) = 5308416 * k + 83470 := by
    unfold C
    simp [show (1769472 * k + 27823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 83470) = 2654208 * k + 41735 := by
    unfold C
    simp [show (5308416 * k + 83470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 41735) = 7962624 * k + 125206 := by
    unfold C
    simp [show (2654208 * k + 41735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 125206) = 3981312 * k + 62603 := by
    unfold C
    simp [show (7962624 * k + 125206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 62603) = 11943936 * k + 187810 := by
    unfold C
    simp [show (3981312 * k + 62603) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 187810) = 5971968 * k + 93905 := by
    unfold C
    simp [show (11943936 * k + 187810) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 93905) = 17915904 * k + 281716 := by
    unfold C
    simp [show (5971968 * k + 93905) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 281716) = 8957952 * k + 140858 := by
    unfold C
    simp [show (17915904 * k + 281716) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 140858) = 4478976 * k + 70429 := by
    unfold C
    simp [show (8957952 * k + 140858) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 70429) = 13436928 * k + 211288 := by
    unfold C
    simp [show (4478976 * k + 70429) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 211288) = 6718464 * k + 105644 := by
    unfold C
    simp [show (13436928 * k + 211288) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 105644) = 3359232 * k + 52822 := by
    unfold C
    simp [show (6718464 * k + 105644) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 52822) = 1679616 * k + 26411 := by
    unfold C
    simp [show (3359232 * k + 52822) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 26411) = 5038848 * k + 79234 := by
    unfold C
    simp [show (1679616 * k + 26411) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 79234) = 2519424 * k + 39617 := by
    unfold C
    simp [show (5038848 * k + 79234) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 39617) = 7558272 * k + 118852 := by
    unfold C
    simp [show (2519424 * k + 39617) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 118852) = 3779136 * k + 59426 := by
    unfold C
    simp [show (7558272 * k + 118852) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 59426) = 1889568 * k + 29713 := by
    unfold C
    simp [show (3779136 * k + 59426) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 29713) = 5668704 * k + 89140 := by
    unfold C
    simp [show (1889568 * k + 29713) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 89140) = 2834352 * k + 44570 := by
    unfold C
    simp [show (5668704 * k + 89140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 44570) = 1417176 * k + 22285 := by
    unfold C
    simp [show (2834352 * k + 44570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 22285) = 4251528 * k + 66856 := by
    unfold C
    simp [show (1417176 * k + 22285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 66856) = 2125764 * k + 33428 := by
    unfold C
    simp [show (4251528 * k + 66856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 33428) = 1062882 * k + 16714 := by
    unfold C
    simp [show (2125764 * k + 33428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 16714) = 531441 * k + 8357 := by
    unfold C
    simp [show (1062882 * k + 16714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 16487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 16487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_16799 : ∀ k : Nat,
    iterate (1048576 * k + 16799) 32 = 531441 * k + 8515 ∧
      531441 * k + 8515 < 1048576 * k + 16799 := by
  intro k
  have h1 : C (1048576 * k + 16799) = 3145728 * k + 50398 := by
    unfold C
    simp [show (1048576 * k + 16799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 50398) = 1572864 * k + 25199 := by
    unfold C
    simp [show (3145728 * k + 50398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 25199) = 4718592 * k + 75598 := by
    unfold C
    simp [show (1572864 * k + 25199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 75598) = 2359296 * k + 37799 := by
    unfold C
    simp [show (4718592 * k + 75598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 37799) = 7077888 * k + 113398 := by
    unfold C
    simp [show (2359296 * k + 37799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 113398) = 3538944 * k + 56699 := by
    unfold C
    simp [show (7077888 * k + 113398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 56699) = 10616832 * k + 170098 := by
    unfold C
    simp [show (3538944 * k + 56699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 170098) = 5308416 * k + 85049 := by
    unfold C
    simp [show (10616832 * k + 170098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 85049) = 15925248 * k + 255148 := by
    unfold C
    simp [show (5308416 * k + 85049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 255148) = 7962624 * k + 127574 := by
    unfold C
    simp [show (15925248 * k + 255148) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 127574) = 3981312 * k + 63787 := by
    unfold C
    simp [show (7962624 * k + 127574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 63787) = 11943936 * k + 191362 := by
    unfold C
    simp [show (3981312 * k + 63787) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 191362) = 5971968 * k + 95681 := by
    unfold C
    simp [show (11943936 * k + 191362) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 95681) = 17915904 * k + 287044 := by
    unfold C
    simp [show (5971968 * k + 95681) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 287044) = 8957952 * k + 143522 := by
    unfold C
    simp [show (17915904 * k + 287044) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 143522) = 4478976 * k + 71761 := by
    unfold C
    simp [show (8957952 * k + 143522) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 71761) = 13436928 * k + 215284 := by
    unfold C
    simp [show (4478976 * k + 71761) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 215284) = 6718464 * k + 107642 := by
    unfold C
    simp [show (13436928 * k + 215284) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 107642) = 3359232 * k + 53821 := by
    unfold C
    simp [show (6718464 * k + 107642) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 53821) = 10077696 * k + 161464 := by
    unfold C
    simp [show (3359232 * k + 53821) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 161464) = 5038848 * k + 80732 := by
    unfold C
    simp [show (10077696 * k + 161464) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 80732) = 2519424 * k + 40366 := by
    unfold C
    simp [show (5038848 * k + 80732) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 40366) = 1259712 * k + 20183 := by
    unfold C
    simp [show (2519424 * k + 40366) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 20183) = 3779136 * k + 60550 := by
    unfold C
    simp [show (1259712 * k + 20183) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 60550) = 1889568 * k + 30275 := by
    unfold C
    simp [show (3779136 * k + 60550) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 30275) = 5668704 * k + 90826 := by
    unfold C
    simp [show (1889568 * k + 30275) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 90826) = 2834352 * k + 45413 := by
    unfold C
    simp [show (5668704 * k + 90826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 45413) = 8503056 * k + 136240 := by
    unfold C
    simp [show (2834352 * k + 45413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 136240) = 4251528 * k + 68120 := by
    unfold C
    simp [show (8503056 * k + 136240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 68120) = 2125764 * k + 34060 := by
    unfold C
    simp [show (4251528 * k + 68120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 34060) = 1062882 * k + 17030 := by
    unfold C
    simp [show (2125764 * k + 34060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 17030) = 531441 * k + 8515 := by
    unfold C
    simp [show (1062882 * k + 17030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 16799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 16799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_16943 : ∀ k : Nat,
    iterate (1048576 * k + 16943) 32 = 531441 * k + 8588 ∧
      531441 * k + 8588 < 1048576 * k + 16943 := by
  intro k
  have h1 : C (1048576 * k + 16943) = 3145728 * k + 50830 := by
    unfold C
    simp [show (1048576 * k + 16943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 50830) = 1572864 * k + 25415 := by
    unfold C
    simp [show (3145728 * k + 50830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 25415) = 4718592 * k + 76246 := by
    unfold C
    simp [show (1572864 * k + 25415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 76246) = 2359296 * k + 38123 := by
    unfold C
    simp [show (4718592 * k + 76246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 38123) = 7077888 * k + 114370 := by
    unfold C
    simp [show (2359296 * k + 38123) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 114370) = 3538944 * k + 57185 := by
    unfold C
    simp [show (7077888 * k + 114370) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 57185) = 10616832 * k + 171556 := by
    unfold C
    simp [show (3538944 * k + 57185) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 171556) = 5308416 * k + 85778 := by
    unfold C
    simp [show (10616832 * k + 171556) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 85778) = 2654208 * k + 42889 := by
    unfold C
    simp [show (5308416 * k + 85778) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 42889) = 7962624 * k + 128668 := by
    unfold C
    simp [show (2654208 * k + 42889) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 128668) = 3981312 * k + 64334 := by
    unfold C
    simp [show (7962624 * k + 128668) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 64334) = 1990656 * k + 32167 := by
    unfold C
    simp [show (3981312 * k + 64334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 32167) = 5971968 * k + 96502 := by
    unfold C
    simp [show (1990656 * k + 32167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 96502) = 2985984 * k + 48251 := by
    unfold C
    simp [show (5971968 * k + 96502) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 48251) = 8957952 * k + 144754 := by
    unfold C
    simp [show (2985984 * k + 48251) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 144754) = 4478976 * k + 72377 := by
    unfold C
    simp [show (8957952 * k + 144754) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 72377) = 13436928 * k + 217132 := by
    unfold C
    simp [show (4478976 * k + 72377) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 217132) = 6718464 * k + 108566 := by
    unfold C
    simp [show (13436928 * k + 217132) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 108566) = 3359232 * k + 54283 := by
    unfold C
    simp [show (6718464 * k + 108566) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 54283) = 10077696 * k + 162850 := by
    unfold C
    simp [show (3359232 * k + 54283) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 162850) = 5038848 * k + 81425 := by
    unfold C
    simp [show (10077696 * k + 162850) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 81425) = 15116544 * k + 244276 := by
    unfold C
    simp [show (5038848 * k + 81425) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 244276) = 7558272 * k + 122138 := by
    unfold C
    simp [show (15116544 * k + 244276) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 122138) = 3779136 * k + 61069 := by
    unfold C
    simp [show (7558272 * k + 122138) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 61069) = 11337408 * k + 183208 := by
    unfold C
    simp [show (3779136 * k + 61069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 183208) = 5668704 * k + 91604 := by
    unfold C
    simp [show (11337408 * k + 183208) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 91604) = 2834352 * k + 45802 := by
    unfold C
    simp [show (5668704 * k + 91604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 45802) = 1417176 * k + 22901 := by
    unfold C
    simp [show (2834352 * k + 45802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 22901) = 4251528 * k + 68704 := by
    unfold C
    simp [show (1417176 * k + 22901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 68704) = 2125764 * k + 34352 := by
    unfold C
    simp [show (4251528 * k + 68704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 34352) = 1062882 * k + 17176 := by
    unfold C
    simp [show (2125764 * k + 34352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 17176) = 531441 * k + 8588 := by
    unfold C
    simp [show (1062882 * k + 17176) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 16943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 16943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard003
