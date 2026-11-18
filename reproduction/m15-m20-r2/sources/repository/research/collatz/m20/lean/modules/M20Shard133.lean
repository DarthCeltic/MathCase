import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard133

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_1043583 : ∀ k : Nat,
    iterate (1048576 * k + 1043583) 32 = 531441 * k + 528911 ∧
      531441 * k + 528911 < 1048576 * k + 1043583 := by
  intro k
  have h1 : C (1048576 * k + 1043583) = 3145728 * k + 3130750 := by
    unfold C
    simp [show (1048576 * k + 1043583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3130750) = 1572864 * k + 1565375 := by
    unfold C
    simp [show (3145728 * k + 3130750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1565375) = 4718592 * k + 4696126 := by
    unfold C
    simp [show (1572864 * k + 1565375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4696126) = 2359296 * k + 2348063 := by
    unfold C
    simp [show (4718592 * k + 4696126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2348063) = 7077888 * k + 7044190 := by
    unfold C
    simp [show (2359296 * k + 2348063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7044190) = 3538944 * k + 3522095 := by
    unfold C
    simp [show (7077888 * k + 7044190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3522095) = 10616832 * k + 10566286 := by
    unfold C
    simp [show (3538944 * k + 3522095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10566286) = 5308416 * k + 5283143 := by
    unfold C
    simp [show (10616832 * k + 10566286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5283143) = 15925248 * k + 15849430 := by
    unfold C
    simp [show (5308416 * k + 5283143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15849430) = 7962624 * k + 7924715 := by
    unfold C
    simp [show (15925248 * k + 15849430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7924715) = 23887872 * k + 23774146 := by
    unfold C
    simp [show (7962624 * k + 7924715) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23774146) = 11943936 * k + 11887073 := by
    unfold C
    simp [show (23887872 * k + 23774146) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11887073) = 35831808 * k + 35661220 := by
    unfold C
    simp [show (11943936 * k + 11887073) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35661220) = 17915904 * k + 17830610 := by
    unfold C
    simp [show (35831808 * k + 35661220) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17830610) = 8957952 * k + 8915305 := by
    unfold C
    simp [show (17915904 * k + 17830610) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8915305) = 26873856 * k + 26745916 := by
    unfold C
    simp [show (8957952 * k + 8915305) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26745916) = 13436928 * k + 13372958 := by
    unfold C
    simp [show (26873856 * k + 26745916) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13372958) = 6718464 * k + 6686479 := by
    unfold C
    simp [show (13436928 * k + 13372958) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6686479) = 20155392 * k + 20059438 := by
    unfold C
    simp [show (6718464 * k + 6686479) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20059438) = 10077696 * k + 10029719 := by
    unfold C
    simp [show (20155392 * k + 20059438) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10029719) = 30233088 * k + 30089158 := by
    unfold C
    simp [show (10077696 * k + 10029719) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 30089158) = 15116544 * k + 15044579 := by
    unfold C
    simp [show (30233088 * k + 30089158) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 15044579) = 45349632 * k + 45133738 := by
    unfold C
    simp [show (15116544 * k + 15044579) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 45133738) = 22674816 * k + 22566869 := by
    unfold C
    simp [show (45349632 * k + 45133738) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 22566869) = 68024448 * k + 67700608 := by
    unfold C
    simp [show (22674816 * k + 22566869) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 67700608) = 34012224 * k + 33850304 := by
    unfold C
    simp [show (68024448 * k + 67700608) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 33850304) = 17006112 * k + 16925152 := by
    unfold C
    simp [show (34012224 * k + 33850304) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16925152) = 8503056 * k + 8462576 := by
    unfold C
    simp [show (17006112 * k + 16925152) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8462576) = 4251528 * k + 4231288 := by
    unfold C
    simp [show (8503056 * k + 8462576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4231288) = 2125764 * k + 2115644 := by
    unfold C
    simp [show (4251528 * k + 4231288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2115644) = 1062882 * k + 1057822 := by
    unfold C
    simp [show (2125764 * k + 2115644) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1057822) = 531441 * k + 528911 := by
    unfold C
    simp [show (1062882 * k + 1057822) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1043583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1043583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1043711 : ∀ k : Nat,
    iterate (1048576 * k + 1043711) 32 = 531441 * k + 528976 ∧
      531441 * k + 528976 < 1048576 * k + 1043711 := by
  intro k
  have h1 : C (1048576 * k + 1043711) = 3145728 * k + 3131134 := by
    unfold C
    simp [show (1048576 * k + 1043711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3131134) = 1572864 * k + 1565567 := by
    unfold C
    simp [show (3145728 * k + 3131134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1565567) = 4718592 * k + 4696702 := by
    unfold C
    simp [show (1572864 * k + 1565567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4696702) = 2359296 * k + 2348351 := by
    unfold C
    simp [show (4718592 * k + 4696702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2348351) = 7077888 * k + 7045054 := by
    unfold C
    simp [show (2359296 * k + 2348351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7045054) = 3538944 * k + 3522527 := by
    unfold C
    simp [show (7077888 * k + 7045054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3522527) = 10616832 * k + 10567582 := by
    unfold C
    simp [show (3538944 * k + 3522527) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10567582) = 5308416 * k + 5283791 := by
    unfold C
    simp [show (10616832 * k + 10567582) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5283791) = 15925248 * k + 15851374 := by
    unfold C
    simp [show (5308416 * k + 5283791) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15851374) = 7962624 * k + 7925687 := by
    unfold C
    simp [show (15925248 * k + 15851374) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7925687) = 23887872 * k + 23777062 := by
    unfold C
    simp [show (7962624 * k + 7925687) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23777062) = 11943936 * k + 11888531 := by
    unfold C
    simp [show (23887872 * k + 23777062) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11888531) = 35831808 * k + 35665594 := by
    unfold C
    simp [show (11943936 * k + 11888531) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35665594) = 17915904 * k + 17832797 := by
    unfold C
    simp [show (35831808 * k + 35665594) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17832797) = 53747712 * k + 53498392 := by
    unfold C
    simp [show (17915904 * k + 17832797) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 53498392) = 26873856 * k + 26749196 := by
    unfold C
    simp [show (53747712 * k + 53498392) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26749196) = 13436928 * k + 13374598 := by
    unfold C
    simp [show (26873856 * k + 26749196) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13374598) = 6718464 * k + 6687299 := by
    unfold C
    simp [show (13436928 * k + 13374598) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6687299) = 20155392 * k + 20061898 := by
    unfold C
    simp [show (6718464 * k + 6687299) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20061898) = 10077696 * k + 10030949 := by
    unfold C
    simp [show (20155392 * k + 20061898) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10030949) = 30233088 * k + 30092848 := by
    unfold C
    simp [show (10077696 * k + 10030949) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 30092848) = 15116544 * k + 15046424 := by
    unfold C
    simp [show (30233088 * k + 30092848) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 15046424) = 7558272 * k + 7523212 := by
    unfold C
    simp [show (15116544 * k + 15046424) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7523212) = 3779136 * k + 3761606 := by
    unfold C
    simp [show (7558272 * k + 7523212) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3761606) = 1889568 * k + 1880803 := by
    unfold C
    simp [show (3779136 * k + 3761606) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1880803) = 5668704 * k + 5642410 := by
    unfold C
    simp [show (1889568 * k + 1880803) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5642410) = 2834352 * k + 2821205 := by
    unfold C
    simp [show (5668704 * k + 5642410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2821205) = 8503056 * k + 8463616 := by
    unfold C
    simp [show (2834352 * k + 2821205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8463616) = 4251528 * k + 4231808 := by
    unfold C
    simp [show (8503056 * k + 8463616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4231808) = 2125764 * k + 2115904 := by
    unfold C
    simp [show (4251528 * k + 4231808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2115904) = 1062882 * k + 1057952 := by
    unfold C
    simp [show (2125764 * k + 2115904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1057952) = 531441 * k + 528976 := by
    unfold C
    simp [show (1062882 * k + 1057952) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1043711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1043711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1044127 : ∀ k : Nat,
    iterate (1048576 * k + 1044127) 32 = 531441 * k + 529187 ∧
      531441 * k + 529187 < 1048576 * k + 1044127 := by
  intro k
  have h1 : C (1048576 * k + 1044127) = 3145728 * k + 3132382 := by
    unfold C
    simp [show (1048576 * k + 1044127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3132382) = 1572864 * k + 1566191 := by
    unfold C
    simp [show (3145728 * k + 3132382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1566191) = 4718592 * k + 4698574 := by
    unfold C
    simp [show (1572864 * k + 1566191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4698574) = 2359296 * k + 2349287 := by
    unfold C
    simp [show (4718592 * k + 4698574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2349287) = 7077888 * k + 7047862 := by
    unfold C
    simp [show (2359296 * k + 2349287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7047862) = 3538944 * k + 3523931 := by
    unfold C
    simp [show (7077888 * k + 7047862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3523931) = 10616832 * k + 10571794 := by
    unfold C
    simp [show (3538944 * k + 3523931) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10571794) = 5308416 * k + 5285897 := by
    unfold C
    simp [show (10616832 * k + 10571794) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5285897) = 15925248 * k + 15857692 := by
    unfold C
    simp [show (5308416 * k + 5285897) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15857692) = 7962624 * k + 7928846 := by
    unfold C
    simp [show (15925248 * k + 15857692) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7928846) = 3981312 * k + 3964423 := by
    unfold C
    simp [show (7962624 * k + 7928846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3964423) = 11943936 * k + 11893270 := by
    unfold C
    simp [show (3981312 * k + 3964423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11893270) = 5971968 * k + 5946635 := by
    unfold C
    simp [show (11943936 * k + 11893270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5946635) = 17915904 * k + 17839906 := by
    unfold C
    simp [show (5971968 * k + 5946635) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17839906) = 8957952 * k + 8919953 := by
    unfold C
    simp [show (17915904 * k + 17839906) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8919953) = 26873856 * k + 26759860 := by
    unfold C
    simp [show (8957952 * k + 8919953) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26759860) = 13436928 * k + 13379930 := by
    unfold C
    simp [show (26873856 * k + 26759860) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13379930) = 6718464 * k + 6689965 := by
    unfold C
    simp [show (13436928 * k + 13379930) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6689965) = 20155392 * k + 20069896 := by
    unfold C
    simp [show (6718464 * k + 6689965) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20069896) = 10077696 * k + 10034948 := by
    unfold C
    simp [show (20155392 * k + 20069896) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10034948) = 5038848 * k + 5017474 := by
    unfold C
    simp [show (10077696 * k + 10034948) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5017474) = 2519424 * k + 2508737 := by
    unfold C
    simp [show (5038848 * k + 5017474) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2508737) = 7558272 * k + 7526212 := by
    unfold C
    simp [show (2519424 * k + 2508737) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7526212) = 3779136 * k + 3763106 := by
    unfold C
    simp [show (7558272 * k + 7526212) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3763106) = 1889568 * k + 1881553 := by
    unfold C
    simp [show (3779136 * k + 3763106) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1881553) = 5668704 * k + 5644660 := by
    unfold C
    simp [show (1889568 * k + 1881553) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5644660) = 2834352 * k + 2822330 := by
    unfold C
    simp [show (5668704 * k + 5644660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2822330) = 1417176 * k + 1411165 := by
    unfold C
    simp [show (2834352 * k + 2822330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1411165) = 4251528 * k + 4233496 := by
    unfold C
    simp [show (1417176 * k + 1411165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4233496) = 2125764 * k + 2116748 := by
    unfold C
    simp [show (4251528 * k + 4233496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2116748) = 1062882 * k + 1058374 := by
    unfold C
    simp [show (2125764 * k + 2116748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1058374) = 531441 * k + 529187 := by
    unfold C
    simp [show (1062882 * k + 1058374) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1044127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1044127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1045607 : ∀ k : Nat,
    iterate (1048576 * k + 1045607) 32 = 531441 * k + 529937 ∧
      531441 * k + 529937 < 1048576 * k + 1045607 := by
  intro k
  have h1 : C (1048576 * k + 1045607) = 3145728 * k + 3136822 := by
    unfold C
    simp [show (1048576 * k + 1045607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3136822) = 1572864 * k + 1568411 := by
    unfold C
    simp [show (3145728 * k + 3136822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1568411) = 4718592 * k + 4705234 := by
    unfold C
    simp [show (1572864 * k + 1568411) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4705234) = 2359296 * k + 2352617 := by
    unfold C
    simp [show (4718592 * k + 4705234) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2352617) = 7077888 * k + 7057852 := by
    unfold C
    simp [show (2359296 * k + 2352617) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7057852) = 3538944 * k + 3528926 := by
    unfold C
    simp [show (7077888 * k + 7057852) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3528926) = 1769472 * k + 1764463 := by
    unfold C
    simp [show (3538944 * k + 3528926) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1764463) = 5308416 * k + 5293390 := by
    unfold C
    simp [show (1769472 * k + 1764463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5293390) = 2654208 * k + 2646695 := by
    unfold C
    simp [show (5308416 * k + 5293390) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2646695) = 7962624 * k + 7940086 := by
    unfold C
    simp [show (2654208 * k + 2646695) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7940086) = 3981312 * k + 3970043 := by
    unfold C
    simp [show (7962624 * k + 7940086) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3970043) = 11943936 * k + 11910130 := by
    unfold C
    simp [show (3981312 * k + 3970043) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11910130) = 5971968 * k + 5955065 := by
    unfold C
    simp [show (11943936 * k + 11910130) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5955065) = 17915904 * k + 17865196 := by
    unfold C
    simp [show (5971968 * k + 5955065) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17865196) = 8957952 * k + 8932598 := by
    unfold C
    simp [show (17915904 * k + 17865196) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8932598) = 4478976 * k + 4466299 := by
    unfold C
    simp [show (8957952 * k + 8932598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4466299) = 13436928 * k + 13398898 := by
    unfold C
    simp [show (4478976 * k + 4466299) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13398898) = 6718464 * k + 6699449 := by
    unfold C
    simp [show (13436928 * k + 13398898) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6699449) = 20155392 * k + 20098348 := by
    unfold C
    simp [show (6718464 * k + 6699449) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20098348) = 10077696 * k + 10049174 := by
    unfold C
    simp [show (20155392 * k + 20098348) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10049174) = 5038848 * k + 5024587 := by
    unfold C
    simp [show (10077696 * k + 10049174) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5024587) = 15116544 * k + 15073762 := by
    unfold C
    simp [show (5038848 * k + 5024587) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15073762) = 7558272 * k + 7536881 := by
    unfold C
    simp [show (15116544 * k + 15073762) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7536881) = 22674816 * k + 22610644 := by
    unfold C
    simp [show (7558272 * k + 7536881) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22610644) = 11337408 * k + 11305322 := by
    unfold C
    simp [show (22674816 * k + 22610644) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11305322) = 5668704 * k + 5652661 := by
    unfold C
    simp [show (11337408 * k + 11305322) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5652661) = 17006112 * k + 16957984 := by
    unfold C
    simp [show (5668704 * k + 5652661) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16957984) = 8503056 * k + 8478992 := by
    unfold C
    simp [show (17006112 * k + 16957984) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8478992) = 4251528 * k + 4239496 := by
    unfold C
    simp [show (8503056 * k + 8478992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4239496) = 2125764 * k + 2119748 := by
    unfold C
    simp [show (4251528 * k + 4239496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2119748) = 1062882 * k + 1059874 := by
    unfold C
    simp [show (2125764 * k + 2119748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1059874) = 531441 * k + 529937 := by
    unfold C
    simp [show (1062882 * k + 1059874) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1045607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1045607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1045735 : ∀ k : Nat,
    iterate (1048576 * k + 1045735) 32 = 531441 * k + 530002 ∧
      531441 * k + 530002 < 1048576 * k + 1045735 := by
  intro k
  have h1 : C (1048576 * k + 1045735) = 3145728 * k + 3137206 := by
    unfold C
    simp [show (1048576 * k + 1045735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3137206) = 1572864 * k + 1568603 := by
    unfold C
    simp [show (3145728 * k + 3137206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1568603) = 4718592 * k + 4705810 := by
    unfold C
    simp [show (1572864 * k + 1568603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4705810) = 2359296 * k + 2352905 := by
    unfold C
    simp [show (4718592 * k + 4705810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2352905) = 7077888 * k + 7058716 := by
    unfold C
    simp [show (2359296 * k + 2352905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7058716) = 3538944 * k + 3529358 := by
    unfold C
    simp [show (7077888 * k + 7058716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3529358) = 1769472 * k + 1764679 := by
    unfold C
    simp [show (3538944 * k + 3529358) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1764679) = 5308416 * k + 5294038 := by
    unfold C
    simp [show (1769472 * k + 1764679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5294038) = 2654208 * k + 2647019 := by
    unfold C
    simp [show (5308416 * k + 5294038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2647019) = 7962624 * k + 7941058 := by
    unfold C
    simp [show (2654208 * k + 2647019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7941058) = 3981312 * k + 3970529 := by
    unfold C
    simp [show (7962624 * k + 7941058) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3970529) = 11943936 * k + 11911588 := by
    unfold C
    simp [show (3981312 * k + 3970529) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11911588) = 5971968 * k + 5955794 := by
    unfold C
    simp [show (11943936 * k + 11911588) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5955794) = 2985984 * k + 2977897 := by
    unfold C
    simp [show (5971968 * k + 5955794) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2977897) = 8957952 * k + 8933692 := by
    unfold C
    simp [show (2985984 * k + 2977897) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8933692) = 4478976 * k + 4466846 := by
    unfold C
    simp [show (8957952 * k + 8933692) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4466846) = 2239488 * k + 2233423 := by
    unfold C
    simp [show (4478976 * k + 4466846) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2233423) = 6718464 * k + 6700270 := by
    unfold C
    simp [show (2239488 * k + 2233423) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6700270) = 3359232 * k + 3350135 := by
    unfold C
    simp [show (6718464 * k + 6700270) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3350135) = 10077696 * k + 10050406 := by
    unfold C
    simp [show (3359232 * k + 3350135) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10050406) = 5038848 * k + 5025203 := by
    unfold C
    simp [show (10077696 * k + 10050406) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5025203) = 15116544 * k + 15075610 := by
    unfold C
    simp [show (5038848 * k + 5025203) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15075610) = 7558272 * k + 7537805 := by
    unfold C
    simp [show (15116544 * k + 15075610) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7537805) = 22674816 * k + 22613416 := by
    unfold C
    simp [show (7558272 * k + 7537805) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22613416) = 11337408 * k + 11306708 := by
    unfold C
    simp [show (22674816 * k + 22613416) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11306708) = 5668704 * k + 5653354 := by
    unfold C
    simp [show (11337408 * k + 11306708) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5653354) = 2834352 * k + 2826677 := by
    unfold C
    simp [show (5668704 * k + 5653354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2826677) = 8503056 * k + 8480032 := by
    unfold C
    simp [show (2834352 * k + 2826677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8480032) = 4251528 * k + 4240016 := by
    unfold C
    simp [show (8503056 * k + 8480032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4240016) = 2125764 * k + 2120008 := by
    unfold C
    simp [show (4251528 * k + 4240016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2120008) = 1062882 * k + 1060004 := by
    unfold C
    simp [show (2125764 * k + 2120008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1060004) = 531441 * k + 530002 := by
    unfold C
    simp [show (1062882 * k + 1060004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1045735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1045735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1045919 : ∀ k : Nat,
    iterate (1048576 * k + 1045919) 32 = 531441 * k + 530095 ∧
      531441 * k + 530095 < 1048576 * k + 1045919 := by
  intro k
  have h1 : C (1048576 * k + 1045919) = 3145728 * k + 3137758 := by
    unfold C
    simp [show (1048576 * k + 1045919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3137758) = 1572864 * k + 1568879 := by
    unfold C
    simp [show (3145728 * k + 3137758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1568879) = 4718592 * k + 4706638 := by
    unfold C
    simp [show (1572864 * k + 1568879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4706638) = 2359296 * k + 2353319 := by
    unfold C
    simp [show (4718592 * k + 4706638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2353319) = 7077888 * k + 7059958 := by
    unfold C
    simp [show (2359296 * k + 2353319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7059958) = 3538944 * k + 3529979 := by
    unfold C
    simp [show (7077888 * k + 7059958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3529979) = 10616832 * k + 10589938 := by
    unfold C
    simp [show (3538944 * k + 3529979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10589938) = 5308416 * k + 5294969 := by
    unfold C
    simp [show (10616832 * k + 10589938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5294969) = 15925248 * k + 15884908 := by
    unfold C
    simp [show (5308416 * k + 5294969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15884908) = 7962624 * k + 7942454 := by
    unfold C
    simp [show (15925248 * k + 15884908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7942454) = 3981312 * k + 3971227 := by
    unfold C
    simp [show (7962624 * k + 7942454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3971227) = 11943936 * k + 11913682 := by
    unfold C
    simp [show (3981312 * k + 3971227) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11913682) = 5971968 * k + 5956841 := by
    unfold C
    simp [show (11943936 * k + 11913682) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5956841) = 17915904 * k + 17870524 := by
    unfold C
    simp [show (5971968 * k + 5956841) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17870524) = 8957952 * k + 8935262 := by
    unfold C
    simp [show (17915904 * k + 17870524) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8935262) = 4478976 * k + 4467631 := by
    unfold C
    simp [show (8957952 * k + 8935262) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4467631) = 13436928 * k + 13402894 := by
    unfold C
    simp [show (4478976 * k + 4467631) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13402894) = 6718464 * k + 6701447 := by
    unfold C
    simp [show (13436928 * k + 13402894) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6701447) = 20155392 * k + 20104342 := by
    unfold C
    simp [show (6718464 * k + 6701447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20104342) = 10077696 * k + 10052171 := by
    unfold C
    simp [show (20155392 * k + 20104342) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10052171) = 30233088 * k + 30156514 := by
    unfold C
    simp [show (10077696 * k + 10052171) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 30156514) = 15116544 * k + 15078257 := by
    unfold C
    simp [show (30233088 * k + 30156514) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 15078257) = 45349632 * k + 45234772 := by
    unfold C
    simp [show (15116544 * k + 15078257) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 45234772) = 22674816 * k + 22617386 := by
    unfold C
    simp [show (45349632 * k + 45234772) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 22617386) = 11337408 * k + 11308693 := by
    unfold C
    simp [show (22674816 * k + 22617386) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11308693) = 34012224 * k + 33926080 := by
    unfold C
    simp [show (11337408 * k + 11308693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 33926080) = 17006112 * k + 16963040 := by
    unfold C
    simp [show (34012224 * k + 33926080) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16963040) = 8503056 * k + 8481520 := by
    unfold C
    simp [show (17006112 * k + 16963040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8481520) = 4251528 * k + 4240760 := by
    unfold C
    simp [show (8503056 * k + 8481520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4240760) = 2125764 * k + 2120380 := by
    unfold C
    simp [show (4251528 * k + 4240760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2120380) = 1062882 * k + 1060190 := by
    unfold C
    simp [show (2125764 * k + 2120380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1060190) = 531441 * k + 530095 := by
    unfold C
    simp [show (1062882 * k + 1060190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1045919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1045919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1046463 : ∀ k : Nat,
    iterate (1048576 * k + 1046463) 32 = 531441 * k + 530371 ∧
      531441 * k + 530371 < 1048576 * k + 1046463 := by
  intro k
  have h1 : C (1048576 * k + 1046463) = 3145728 * k + 3139390 := by
    unfold C
    simp [show (1048576 * k + 1046463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3139390) = 1572864 * k + 1569695 := by
    unfold C
    simp [show (3145728 * k + 3139390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1569695) = 4718592 * k + 4709086 := by
    unfold C
    simp [show (1572864 * k + 1569695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4709086) = 2359296 * k + 2354543 := by
    unfold C
    simp [show (4718592 * k + 4709086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2354543) = 7077888 * k + 7063630 := by
    unfold C
    simp [show (2359296 * k + 2354543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7063630) = 3538944 * k + 3531815 := by
    unfold C
    simp [show (7077888 * k + 7063630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3531815) = 10616832 * k + 10595446 := by
    unfold C
    simp [show (3538944 * k + 3531815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10595446) = 5308416 * k + 5297723 := by
    unfold C
    simp [show (10616832 * k + 10595446) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5297723) = 15925248 * k + 15893170 := by
    unfold C
    simp [show (5308416 * k + 5297723) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15893170) = 7962624 * k + 7946585 := by
    unfold C
    simp [show (15925248 * k + 15893170) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7946585) = 23887872 * k + 23839756 := by
    unfold C
    simp [show (7962624 * k + 7946585) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23839756) = 11943936 * k + 11919878 := by
    unfold C
    simp [show (23887872 * k + 23839756) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11919878) = 5971968 * k + 5959939 := by
    unfold C
    simp [show (11943936 * k + 11919878) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5959939) = 17915904 * k + 17879818 := by
    unfold C
    simp [show (5971968 * k + 5959939) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17879818) = 8957952 * k + 8939909 := by
    unfold C
    simp [show (17915904 * k + 17879818) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8939909) = 26873856 * k + 26819728 := by
    unfold C
    simp [show (8957952 * k + 8939909) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26819728) = 13436928 * k + 13409864 := by
    unfold C
    simp [show (26873856 * k + 26819728) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13409864) = 6718464 * k + 6704932 := by
    unfold C
    simp [show (13436928 * k + 13409864) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6704932) = 3359232 * k + 3352466 := by
    unfold C
    simp [show (6718464 * k + 6704932) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3352466) = 1679616 * k + 1676233 := by
    unfold C
    simp [show (3359232 * k + 3352466) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1676233) = 5038848 * k + 5028700 := by
    unfold C
    simp [show (1679616 * k + 1676233) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 5028700) = 2519424 * k + 2514350 := by
    unfold C
    simp [show (5038848 * k + 5028700) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2514350) = 1259712 * k + 1257175 := by
    unfold C
    simp [show (2519424 * k + 2514350) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1257175) = 3779136 * k + 3771526 := by
    unfold C
    simp [show (1259712 * k + 1257175) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3771526) = 1889568 * k + 1885763 := by
    unfold C
    simp [show (3779136 * k + 3771526) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1885763) = 5668704 * k + 5657290 := by
    unfold C
    simp [show (1889568 * k + 1885763) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5657290) = 2834352 * k + 2828645 := by
    unfold C
    simp [show (5668704 * k + 5657290) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2828645) = 8503056 * k + 8485936 := by
    unfold C
    simp [show (2834352 * k + 2828645) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8485936) = 4251528 * k + 4242968 := by
    unfold C
    simp [show (8503056 * k + 8485936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4242968) = 2125764 * k + 2121484 := by
    unfold C
    simp [show (4251528 * k + 4242968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2121484) = 1062882 * k + 1060742 := by
    unfold C
    simp [show (2125764 * k + 2121484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1060742) = 531441 * k + 530371 := by
    unfold C
    simp [show (1062882 * k + 1060742) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1046463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1046463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1046619 : ∀ k : Nat,
    iterate (1048576 * k + 1046619) 32 = 531441 * k + 530450 ∧
      531441 * k + 530450 < 1048576 * k + 1046619 := by
  intro k
  have h1 : C (1048576 * k + 1046619) = 3145728 * k + 3139858 := by
    unfold C
    simp [show (1048576 * k + 1046619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3139858) = 1572864 * k + 1569929 := by
    unfold C
    simp [show (3145728 * k + 3139858) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1569929) = 4718592 * k + 4709788 := by
    unfold C
    simp [show (1572864 * k + 1569929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4709788) = 2359296 * k + 2354894 := by
    unfold C
    simp [show (4718592 * k + 4709788) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2354894) = 1179648 * k + 1177447 := by
    unfold C
    simp [show (2359296 * k + 2354894) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1177447) = 3538944 * k + 3532342 := by
    unfold C
    simp [show (1179648 * k + 1177447) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3532342) = 1769472 * k + 1766171 := by
    unfold C
    simp [show (3538944 * k + 3532342) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1766171) = 5308416 * k + 5298514 := by
    unfold C
    simp [show (1769472 * k + 1766171) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5298514) = 2654208 * k + 2649257 := by
    unfold C
    simp [show (5308416 * k + 5298514) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2649257) = 7962624 * k + 7947772 := by
    unfold C
    simp [show (2654208 * k + 2649257) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7947772) = 3981312 * k + 3973886 := by
    unfold C
    simp [show (7962624 * k + 7947772) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3973886) = 1990656 * k + 1986943 := by
    unfold C
    simp [show (3981312 * k + 3973886) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1986943) = 5971968 * k + 5960830 := by
    unfold C
    simp [show (1990656 * k + 1986943) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5960830) = 2985984 * k + 2980415 := by
    unfold C
    simp [show (5971968 * k + 5960830) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2980415) = 8957952 * k + 8941246 := by
    unfold C
    simp [show (2985984 * k + 2980415) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8941246) = 4478976 * k + 4470623 := by
    unfold C
    simp [show (8957952 * k + 8941246) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4470623) = 13436928 * k + 13411870 := by
    unfold C
    simp [show (4478976 * k + 4470623) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13411870) = 6718464 * k + 6705935 := by
    unfold C
    simp [show (13436928 * k + 13411870) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6705935) = 20155392 * k + 20117806 := by
    unfold C
    simp [show (6718464 * k + 6705935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20117806) = 10077696 * k + 10058903 := by
    unfold C
    simp [show (20155392 * k + 20117806) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10058903) = 30233088 * k + 30176710 := by
    unfold C
    simp [show (10077696 * k + 10058903) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 30176710) = 15116544 * k + 15088355 := by
    unfold C
    simp [show (30233088 * k + 30176710) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 15088355) = 45349632 * k + 45265066 := by
    unfold C
    simp [show (15116544 * k + 15088355) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 45265066) = 22674816 * k + 22632533 := by
    unfold C
    simp [show (45349632 * k + 45265066) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 22632533) = 68024448 * k + 67897600 := by
    unfold C
    simp [show (22674816 * k + 22632533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 67897600) = 34012224 * k + 33948800 := by
    unfold C
    simp [show (68024448 * k + 67897600) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 33948800) = 17006112 * k + 16974400 := by
    unfold C
    simp [show (34012224 * k + 33948800) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16974400) = 8503056 * k + 8487200 := by
    unfold C
    simp [show (17006112 * k + 16974400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8487200) = 4251528 * k + 4243600 := by
    unfold C
    simp [show (8503056 * k + 8487200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4243600) = 2125764 * k + 2121800 := by
    unfold C
    simp [show (4251528 * k + 4243600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2121800) = 1062882 * k + 1060900 := by
    unfold C
    simp [show (2125764 * k + 2121800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1060900) = 531441 * k + 530450 := by
    unfold C
    simp [show (1062882 * k + 1060900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1046619) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1046619)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1046783 : ∀ k : Nat,
    iterate (1048576 * k + 1046783) 32 = 531441 * k + 530533 ∧
      531441 * k + 530533 < 1048576 * k + 1046783 := by
  intro k
  have h1 : C (1048576 * k + 1046783) = 3145728 * k + 3140350 := by
    unfold C
    simp [show (1048576 * k + 1046783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3140350) = 1572864 * k + 1570175 := by
    unfold C
    simp [show (3145728 * k + 3140350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1570175) = 4718592 * k + 4710526 := by
    unfold C
    simp [show (1572864 * k + 1570175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4710526) = 2359296 * k + 2355263 := by
    unfold C
    simp [show (4718592 * k + 4710526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2355263) = 7077888 * k + 7065790 := by
    unfold C
    simp [show (2359296 * k + 2355263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7065790) = 3538944 * k + 3532895 := by
    unfold C
    simp [show (7077888 * k + 7065790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3532895) = 10616832 * k + 10598686 := by
    unfold C
    simp [show (3538944 * k + 3532895) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10598686) = 5308416 * k + 5299343 := by
    unfold C
    simp [show (10616832 * k + 10598686) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5299343) = 15925248 * k + 15898030 := by
    unfold C
    simp [show (5308416 * k + 5299343) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15898030) = 7962624 * k + 7949015 := by
    unfold C
    simp [show (15925248 * k + 15898030) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7949015) = 23887872 * k + 23847046 := by
    unfold C
    simp [show (7962624 * k + 7949015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23847046) = 11943936 * k + 11923523 := by
    unfold C
    simp [show (23887872 * k + 23847046) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11923523) = 35831808 * k + 35770570 := by
    unfold C
    simp [show (11943936 * k + 11923523) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35770570) = 17915904 * k + 17885285 := by
    unfold C
    simp [show (35831808 * k + 35770570) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17885285) = 53747712 * k + 53655856 := by
    unfold C
    simp [show (17915904 * k + 17885285) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 53655856) = 26873856 * k + 26827928 := by
    unfold C
    simp [show (53747712 * k + 53655856) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 26827928) = 13436928 * k + 13413964 := by
    unfold C
    simp [show (26873856 * k + 26827928) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13413964) = 6718464 * k + 6706982 := by
    unfold C
    simp [show (13436928 * k + 13413964) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6706982) = 3359232 * k + 3353491 := by
    unfold C
    simp [show (6718464 * k + 6706982) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3353491) = 10077696 * k + 10060474 := by
    unfold C
    simp [show (3359232 * k + 3353491) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10060474) = 5038848 * k + 5030237 := by
    unfold C
    simp [show (10077696 * k + 10060474) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5030237) = 15116544 * k + 15090712 := by
    unfold C
    simp [show (5038848 * k + 5030237) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15090712) = 7558272 * k + 7545356 := by
    unfold C
    simp [show (15116544 * k + 15090712) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7545356) = 3779136 * k + 3772678 := by
    unfold C
    simp [show (7558272 * k + 7545356) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3772678) = 1889568 * k + 1886339 := by
    unfold C
    simp [show (3779136 * k + 3772678) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1886339) = 5668704 * k + 5659018 := by
    unfold C
    simp [show (1889568 * k + 1886339) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5659018) = 2834352 * k + 2829509 := by
    unfold C
    simp [show (5668704 * k + 5659018) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2829509) = 8503056 * k + 8488528 := by
    unfold C
    simp [show (2834352 * k + 2829509) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8488528) = 4251528 * k + 4244264 := by
    unfold C
    simp [show (8503056 * k + 8488528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4244264) = 2125764 * k + 2122132 := by
    unfold C
    simp [show (4251528 * k + 4244264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2122132) = 1062882 * k + 1061066 := by
    unfold C
    simp [show (2125764 * k + 2122132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1061066) = 531441 * k + 530533 := by
    unfold C
    simp [show (1062882 * k + 1061066) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1046783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1046783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1047359 : ∀ k : Nat,
    iterate (1048576 * k + 1047359) 32 = 531441 * k + 530825 ∧
      531441 * k + 530825 < 1048576 * k + 1047359 := by
  intro k
  have h1 : C (1048576 * k + 1047359) = 3145728 * k + 3142078 := by
    unfold C
    simp [show (1048576 * k + 1047359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3142078) = 1572864 * k + 1571039 := by
    unfold C
    simp [show (3145728 * k + 3142078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1571039) = 4718592 * k + 4713118 := by
    unfold C
    simp [show (1572864 * k + 1571039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4713118) = 2359296 * k + 2356559 := by
    unfold C
    simp [show (4718592 * k + 4713118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2356559) = 7077888 * k + 7069678 := by
    unfold C
    simp [show (2359296 * k + 2356559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7069678) = 3538944 * k + 3534839 := by
    unfold C
    simp [show (7077888 * k + 7069678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3534839) = 10616832 * k + 10604518 := by
    unfold C
    simp [show (3538944 * k + 3534839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10604518) = 5308416 * k + 5302259 := by
    unfold C
    simp [show (10616832 * k + 10604518) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5302259) = 15925248 * k + 15906778 := by
    unfold C
    simp [show (5308416 * k + 5302259) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15906778) = 7962624 * k + 7953389 := by
    unfold C
    simp [show (15925248 * k + 15906778) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7953389) = 23887872 * k + 23860168 := by
    unfold C
    simp [show (7962624 * k + 7953389) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23860168) = 11943936 * k + 11930084 := by
    unfold C
    simp [show (23887872 * k + 23860168) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11930084) = 5971968 * k + 5965042 := by
    unfold C
    simp [show (11943936 * k + 11930084) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5965042) = 2985984 * k + 2982521 := by
    unfold C
    simp [show (5971968 * k + 5965042) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2982521) = 8957952 * k + 8947564 := by
    unfold C
    simp [show (2985984 * k + 2982521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8947564) = 4478976 * k + 4473782 := by
    unfold C
    simp [show (8957952 * k + 8947564) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4473782) = 2239488 * k + 2236891 := by
    unfold C
    simp [show (4478976 * k + 4473782) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2236891) = 6718464 * k + 6710674 := by
    unfold C
    simp [show (2239488 * k + 2236891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6710674) = 3359232 * k + 3355337 := by
    unfold C
    simp [show (6718464 * k + 6710674) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3355337) = 10077696 * k + 10066012 := by
    unfold C
    simp [show (3359232 * k + 3355337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 10066012) = 5038848 * k + 5033006 := by
    unfold C
    simp [show (10077696 * k + 10066012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5033006) = 2519424 * k + 2516503 := by
    unfold C
    simp [show (5038848 * k + 5033006) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2516503) = 7558272 * k + 7549510 := by
    unfold C
    simp [show (2519424 * k + 2516503) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7549510) = 3779136 * k + 3774755 := by
    unfold C
    simp [show (7558272 * k + 7549510) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3774755) = 11337408 * k + 11324266 := by
    unfold C
    simp [show (3779136 * k + 3774755) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11324266) = 5668704 * k + 5662133 := by
    unfold C
    simp [show (11337408 * k + 11324266) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5662133) = 17006112 * k + 16986400 := by
    unfold C
    simp [show (5668704 * k + 5662133) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16986400) = 8503056 * k + 8493200 := by
    unfold C
    simp [show (17006112 * k + 16986400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8493200) = 4251528 * k + 4246600 := by
    unfold C
    simp [show (8503056 * k + 8493200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4246600) = 2125764 * k + 2123300 := by
    unfold C
    simp [show (4251528 * k + 4246600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2123300) = 1062882 * k + 1061650 := by
    unfold C
    simp [show (2125764 * k + 2123300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1061650) = 531441 * k + 530825 := by
    unfold C
    simp [show (1062882 * k + 1061650) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1047359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1047359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1047679 : ∀ k : Nat,
    iterate (1048576 * k + 1047679) 32 = 531441 * k + 530987 ∧
      531441 * k + 530987 < 1048576 * k + 1047679 := by
  intro k
  have h1 : C (1048576 * k + 1047679) = 3145728 * k + 3143038 := by
    unfold C
    simp [show (1048576 * k + 1047679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3143038) = 1572864 * k + 1571519 := by
    unfold C
    simp [show (3145728 * k + 3143038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1571519) = 4718592 * k + 4714558 := by
    unfold C
    simp [show (1572864 * k + 1571519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4714558) = 2359296 * k + 2357279 := by
    unfold C
    simp [show (4718592 * k + 4714558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2357279) = 7077888 * k + 7071838 := by
    unfold C
    simp [show (2359296 * k + 2357279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7071838) = 3538944 * k + 3535919 := by
    unfold C
    simp [show (7077888 * k + 7071838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3535919) = 10616832 * k + 10607758 := by
    unfold C
    simp [show (3538944 * k + 3535919) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10607758) = 5308416 * k + 5303879 := by
    unfold C
    simp [show (10616832 * k + 10607758) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5303879) = 15925248 * k + 15911638 := by
    unfold C
    simp [show (5308416 * k + 5303879) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15911638) = 7962624 * k + 7955819 := by
    unfold C
    simp [show (15925248 * k + 15911638) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7955819) = 23887872 * k + 23867458 := by
    unfold C
    simp [show (7962624 * k + 7955819) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 23867458) = 11943936 * k + 11933729 := by
    unfold C
    simp [show (23887872 * k + 23867458) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11933729) = 35831808 * k + 35801188 := by
    unfold C
    simp [show (11943936 * k + 11933729) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 35801188) = 17915904 * k + 17900594 := by
    unfold C
    simp [show (35831808 * k + 35801188) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 17900594) = 8957952 * k + 8950297 := by
    unfold C
    simp [show (17915904 * k + 17900594) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8950297) = 26873856 * k + 26850892 := by
    unfold C
    simp [show (8957952 * k + 8950297) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 26850892) = 13436928 * k + 13425446 := by
    unfold C
    simp [show (26873856 * k + 26850892) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 13425446) = 6718464 * k + 6712723 := by
    unfold C
    simp [show (13436928 * k + 13425446) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6712723) = 20155392 * k + 20138170 := by
    unfold C
    simp [show (6718464 * k + 6712723) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20138170) = 10077696 * k + 10069085 := by
    unfold C
    simp [show (20155392 * k + 20138170) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10069085) = 30233088 * k + 30207256 := by
    unfold C
    simp [show (10077696 * k + 10069085) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 30207256) = 15116544 * k + 15103628 := by
    unfold C
    simp [show (30233088 * k + 30207256) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 15103628) = 7558272 * k + 7551814 := by
    unfold C
    simp [show (15116544 * k + 15103628) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7551814) = 3779136 * k + 3775907 := by
    unfold C
    simp [show (7558272 * k + 7551814) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3775907) = 11337408 * k + 11327722 := by
    unfold C
    simp [show (3779136 * k + 3775907) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 11327722) = 5668704 * k + 5663861 := by
    unfold C
    simp [show (11337408 * k + 11327722) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5663861) = 17006112 * k + 16991584 := by
    unfold C
    simp [show (5668704 * k + 5663861) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16991584) = 8503056 * k + 8495792 := by
    unfold C
    simp [show (17006112 * k + 16991584) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8495792) = 4251528 * k + 4247896 := by
    unfold C
    simp [show (8503056 * k + 8495792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4247896) = 2125764 * k + 2123948 := by
    unfold C
    simp [show (4251528 * k + 4247896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2123948) = 1062882 * k + 1061974 := by
    unfold C
    simp [show (2125764 * k + 2123948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1061974) = 531441 * k + 530987 := by
    unfold C
    simp [show (1062882 * k + 1061974) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1047679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1047679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_1047967 : ∀ k : Nat,
    iterate (1048576 * k + 1047967) 32 = 531441 * k + 531133 ∧
      531441 * k + 531133 < 1048576 * k + 1047967 := by
  intro k
  have h1 : C (1048576 * k + 1047967) = 3145728 * k + 3143902 := by
    unfold C
    simp [show (1048576 * k + 1047967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 3143902) = 1572864 * k + 1571951 := by
    unfold C
    simp [show (3145728 * k + 3143902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1571951) = 4718592 * k + 4715854 := by
    unfold C
    simp [show (1572864 * k + 1571951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4715854) = 2359296 * k + 2357927 := by
    unfold C
    simp [show (4718592 * k + 4715854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2357927) = 7077888 * k + 7073782 := by
    unfold C
    simp [show (2359296 * k + 2357927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 7073782) = 3538944 * k + 3536891 := by
    unfold C
    simp [show (7077888 * k + 7073782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3536891) = 10616832 * k + 10610674 := by
    unfold C
    simp [show (3538944 * k + 3536891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10610674) = 5308416 * k + 5305337 := by
    unfold C
    simp [show (10616832 * k + 10610674) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5305337) = 15925248 * k + 15916012 := by
    unfold C
    simp [show (5308416 * k + 5305337) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15916012) = 7962624 * k + 7958006 := by
    unfold C
    simp [show (15925248 * k + 15916012) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7958006) = 3981312 * k + 3979003 := by
    unfold C
    simp [show (7962624 * k + 7958006) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3979003) = 11943936 * k + 11937010 := by
    unfold C
    simp [show (3981312 * k + 3979003) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11937010) = 5971968 * k + 5968505 := by
    unfold C
    simp [show (11943936 * k + 11937010) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5968505) = 17915904 * k + 17905516 := by
    unfold C
    simp [show (5971968 * k + 5968505) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 17905516) = 8957952 * k + 8952758 := by
    unfold C
    simp [show (17915904 * k + 17905516) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8952758) = 4478976 * k + 4476379 := by
    unfold C
    simp [show (8957952 * k + 8952758) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4476379) = 13436928 * k + 13429138 := by
    unfold C
    simp [show (4478976 * k + 4476379) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 13429138) = 6718464 * k + 6714569 := by
    unfold C
    simp [show (13436928 * k + 13429138) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6714569) = 20155392 * k + 20143708 := by
    unfold C
    simp [show (6718464 * k + 6714569) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 20143708) = 10077696 * k + 10071854 := by
    unfold C
    simp [show (20155392 * k + 20143708) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 10071854) = 5038848 * k + 5035927 := by
    unfold C
    simp [show (10077696 * k + 10071854) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 5035927) = 15116544 * k + 15107782 := by
    unfold C
    simp [show (5038848 * k + 5035927) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 15107782) = 7558272 * k + 7553891 := by
    unfold C
    simp [show (15116544 * k + 15107782) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7553891) = 22674816 * k + 22661674 := by
    unfold C
    simp [show (7558272 * k + 7553891) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 22661674) = 11337408 * k + 11330837 := by
    unfold C
    simp [show (22674816 * k + 22661674) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 11330837) = 34012224 * k + 33992512 := by
    unfold C
    simp [show (11337408 * k + 11330837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 33992512) = 17006112 * k + 16996256 := by
    unfold C
    simp [show (34012224 * k + 33992512) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16996256) = 8503056 * k + 8498128 := by
    unfold C
    simp [show (17006112 * k + 16996256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8498128) = 4251528 * k + 4249064 := by
    unfold C
    simp [show (8503056 * k + 8498128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4249064) = 2125764 * k + 2124532 := by
    unfold C
    simp [show (4251528 * k + 4249064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2124532) = 1062882 * k + 1062266 := by
    unfold C
    simp [show (2125764 * k + 2124532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1062266) = 531441 * k + 531133 := by
    unfold C
    simp [show (1062882 * k + 1062266) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 1047967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 1047967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard133
