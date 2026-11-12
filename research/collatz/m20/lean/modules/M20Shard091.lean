import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard091

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_703871 : ∀ k : Nat,
    iterate (1048576 * k + 703871) 32 = 531441 * k + 356738 ∧
      531441 * k + 356738 < 1048576 * k + 703871 := by
  intro k
  have h1 : C (1048576 * k + 703871) = 3145728 * k + 2111614 := by
    unfold C
    simp [show (1048576 * k + 703871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2111614) = 1572864 * k + 1055807 := by
    unfold C
    simp [show (3145728 * k + 2111614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1055807) = 4718592 * k + 3167422 := by
    unfold C
    simp [show (1572864 * k + 1055807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3167422) = 2359296 * k + 1583711 := by
    unfold C
    simp [show (4718592 * k + 3167422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1583711) = 7077888 * k + 4751134 := by
    unfold C
    simp [show (2359296 * k + 1583711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4751134) = 3538944 * k + 2375567 := by
    unfold C
    simp [show (7077888 * k + 4751134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2375567) = 10616832 * k + 7126702 := by
    unfold C
    simp [show (3538944 * k + 2375567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7126702) = 5308416 * k + 3563351 := by
    unfold C
    simp [show (10616832 * k + 7126702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3563351) = 15925248 * k + 10690054 := by
    unfold C
    simp [show (5308416 * k + 3563351) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10690054) = 7962624 * k + 5345027 := by
    unfold C
    simp [show (15925248 * k + 10690054) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5345027) = 23887872 * k + 16035082 := by
    unfold C
    simp [show (7962624 * k + 5345027) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16035082) = 11943936 * k + 8017541 := by
    unfold C
    simp [show (23887872 * k + 16035082) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8017541) = 35831808 * k + 24052624 := by
    unfold C
    simp [show (11943936 * k + 8017541) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24052624) = 17915904 * k + 12026312 := by
    unfold C
    simp [show (35831808 * k + 24052624) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12026312) = 8957952 * k + 6013156 := by
    unfold C
    simp [show (17915904 * k + 12026312) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6013156) = 4478976 * k + 3006578 := by
    unfold C
    simp [show (8957952 * k + 6013156) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3006578) = 2239488 * k + 1503289 := by
    unfold C
    simp [show (4478976 * k + 3006578) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1503289) = 6718464 * k + 4509868 := by
    unfold C
    simp [show (2239488 * k + 1503289) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4509868) = 3359232 * k + 2254934 := by
    unfold C
    simp [show (6718464 * k + 4509868) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2254934) = 1679616 * k + 1127467 := by
    unfold C
    simp [show (3359232 * k + 2254934) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1127467) = 5038848 * k + 3382402 := by
    unfold C
    simp [show (1679616 * k + 1127467) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3382402) = 2519424 * k + 1691201 := by
    unfold C
    simp [show (5038848 * k + 3382402) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1691201) = 7558272 * k + 5073604 := by
    unfold C
    simp [show (2519424 * k + 1691201) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5073604) = 3779136 * k + 2536802 := by
    unfold C
    simp [show (7558272 * k + 5073604) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2536802) = 1889568 * k + 1268401 := by
    unfold C
    simp [show (3779136 * k + 2536802) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1268401) = 5668704 * k + 3805204 := by
    unfold C
    simp [show (1889568 * k + 1268401) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3805204) = 2834352 * k + 1902602 := by
    unfold C
    simp [show (5668704 * k + 3805204) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1902602) = 1417176 * k + 951301 := by
    unfold C
    simp [show (2834352 * k + 1902602) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 951301) = 4251528 * k + 2853904 := by
    unfold C
    simp [show (1417176 * k + 951301) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2853904) = 2125764 * k + 1426952 := by
    unfold C
    simp [show (4251528 * k + 2853904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1426952) = 1062882 * k + 713476 := by
    unfold C
    simp [show (2125764 * k + 1426952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 713476) = 531441 * k + 356738 := by
    unfold C
    simp [show (1062882 * k + 713476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 703871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 703871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_704031 : ∀ k : Nat,
    iterate (1048576 * k + 704031) 32 = 531441 * k + 356819 ∧
      531441 * k + 356819 < 1048576 * k + 704031 := by
  intro k
  have h1 : C (1048576 * k + 704031) = 3145728 * k + 2112094 := by
    unfold C
    simp [show (1048576 * k + 704031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2112094) = 1572864 * k + 1056047 := by
    unfold C
    simp [show (3145728 * k + 2112094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1056047) = 4718592 * k + 3168142 := by
    unfold C
    simp [show (1572864 * k + 1056047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3168142) = 2359296 * k + 1584071 := by
    unfold C
    simp [show (4718592 * k + 3168142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1584071) = 7077888 * k + 4752214 := by
    unfold C
    simp [show (2359296 * k + 1584071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4752214) = 3538944 * k + 2376107 := by
    unfold C
    simp [show (7077888 * k + 4752214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2376107) = 10616832 * k + 7128322 := by
    unfold C
    simp [show (3538944 * k + 2376107) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7128322) = 5308416 * k + 3564161 := by
    unfold C
    simp [show (10616832 * k + 7128322) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3564161) = 15925248 * k + 10692484 := by
    unfold C
    simp [show (5308416 * k + 3564161) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10692484) = 7962624 * k + 5346242 := by
    unfold C
    simp [show (15925248 * k + 10692484) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5346242) = 3981312 * k + 2673121 := by
    unfold C
    simp [show (7962624 * k + 5346242) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2673121) = 11943936 * k + 8019364 := by
    unfold C
    simp [show (3981312 * k + 2673121) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8019364) = 5971968 * k + 4009682 := by
    unfold C
    simp [show (11943936 * k + 8019364) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4009682) = 2985984 * k + 2004841 := by
    unfold C
    simp [show (5971968 * k + 4009682) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2004841) = 8957952 * k + 6014524 := by
    unfold C
    simp [show (2985984 * k + 2004841) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6014524) = 4478976 * k + 3007262 := by
    unfold C
    simp [show (8957952 * k + 6014524) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3007262) = 2239488 * k + 1503631 := by
    unfold C
    simp [show (4478976 * k + 3007262) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1503631) = 6718464 * k + 4510894 := by
    unfold C
    simp [show (2239488 * k + 1503631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4510894) = 3359232 * k + 2255447 := by
    unfold C
    simp [show (6718464 * k + 4510894) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2255447) = 10077696 * k + 6766342 := by
    unfold C
    simp [show (3359232 * k + 2255447) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6766342) = 5038848 * k + 3383171 := by
    unfold C
    simp [show (10077696 * k + 6766342) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3383171) = 15116544 * k + 10149514 := by
    unfold C
    simp [show (5038848 * k + 3383171) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10149514) = 7558272 * k + 5074757 := by
    unfold C
    simp [show (15116544 * k + 10149514) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5074757) = 22674816 * k + 15224272 := by
    unfold C
    simp [show (7558272 * k + 5074757) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15224272) = 11337408 * k + 7612136 := by
    unfold C
    simp [show (22674816 * k + 15224272) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7612136) = 5668704 * k + 3806068 := by
    unfold C
    simp [show (11337408 * k + 7612136) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3806068) = 2834352 * k + 1903034 := by
    unfold C
    simp [show (5668704 * k + 3806068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1903034) = 1417176 * k + 951517 := by
    unfold C
    simp [show (2834352 * k + 1903034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 951517) = 4251528 * k + 2854552 := by
    unfold C
    simp [show (1417176 * k + 951517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2854552) = 2125764 * k + 1427276 := by
    unfold C
    simp [show (4251528 * k + 2854552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1427276) = 1062882 * k + 713638 := by
    unfold C
    simp [show (2125764 * k + 1427276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 713638) = 531441 * k + 356819 := by
    unfold C
    simp [show (1062882 * k + 713638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 704031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 704031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_704191 : ∀ k : Nat,
    iterate (1048576 * k + 704191) 32 = 531441 * k + 356900 ∧
      531441 * k + 356900 < 1048576 * k + 704191 := by
  intro k
  have h1 : C (1048576 * k + 704191) = 3145728 * k + 2112574 := by
    unfold C
    simp [show (1048576 * k + 704191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2112574) = 1572864 * k + 1056287 := by
    unfold C
    simp [show (3145728 * k + 2112574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1056287) = 4718592 * k + 3168862 := by
    unfold C
    simp [show (1572864 * k + 1056287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3168862) = 2359296 * k + 1584431 := by
    unfold C
    simp [show (4718592 * k + 3168862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1584431) = 7077888 * k + 4753294 := by
    unfold C
    simp [show (2359296 * k + 1584431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4753294) = 3538944 * k + 2376647 := by
    unfold C
    simp [show (7077888 * k + 4753294) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2376647) = 10616832 * k + 7129942 := by
    unfold C
    simp [show (3538944 * k + 2376647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7129942) = 5308416 * k + 3564971 := by
    unfold C
    simp [show (10616832 * k + 7129942) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3564971) = 15925248 * k + 10694914 := by
    unfold C
    simp [show (5308416 * k + 3564971) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10694914) = 7962624 * k + 5347457 := by
    unfold C
    simp [show (15925248 * k + 10694914) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5347457) = 23887872 * k + 16042372 := by
    unfold C
    simp [show (7962624 * k + 5347457) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16042372) = 11943936 * k + 8021186 := by
    unfold C
    simp [show (23887872 * k + 16042372) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8021186) = 5971968 * k + 4010593 := by
    unfold C
    simp [show (11943936 * k + 8021186) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4010593) = 17915904 * k + 12031780 := by
    unfold C
    simp [show (5971968 * k + 4010593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12031780) = 8957952 * k + 6015890 := by
    unfold C
    simp [show (17915904 * k + 12031780) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6015890) = 4478976 * k + 3007945 := by
    unfold C
    simp [show (8957952 * k + 6015890) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3007945) = 13436928 * k + 9023836 := by
    unfold C
    simp [show (4478976 * k + 3007945) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9023836) = 6718464 * k + 4511918 := by
    unfold C
    simp [show (13436928 * k + 9023836) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4511918) = 3359232 * k + 2255959 := by
    unfold C
    simp [show (6718464 * k + 4511918) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2255959) = 10077696 * k + 6767878 := by
    unfold C
    simp [show (3359232 * k + 2255959) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6767878) = 5038848 * k + 3383939 := by
    unfold C
    simp [show (10077696 * k + 6767878) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3383939) = 15116544 * k + 10151818 := by
    unfold C
    simp [show (5038848 * k + 3383939) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10151818) = 7558272 * k + 5075909 := by
    unfold C
    simp [show (15116544 * k + 10151818) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5075909) = 22674816 * k + 15227728 := by
    unfold C
    simp [show (7558272 * k + 5075909) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15227728) = 11337408 * k + 7613864 := by
    unfold C
    simp [show (22674816 * k + 15227728) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7613864) = 5668704 * k + 3806932 := by
    unfold C
    simp [show (11337408 * k + 7613864) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3806932) = 2834352 * k + 1903466 := by
    unfold C
    simp [show (5668704 * k + 3806932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1903466) = 1417176 * k + 951733 := by
    unfold C
    simp [show (2834352 * k + 1903466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 951733) = 4251528 * k + 2855200 := by
    unfold C
    simp [show (1417176 * k + 951733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2855200) = 2125764 * k + 1427600 := by
    unfold C
    simp [show (4251528 * k + 2855200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1427600) = 1062882 * k + 713800 := by
    unfold C
    simp [show (2125764 * k + 1427600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 713800) = 531441 * k + 356900 := by
    unfold C
    simp [show (1062882 * k + 713800) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 704191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 704191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_704603 : ∀ k : Nat,
    iterate (1048576 * k + 704603) 32 = 531441 * k + 357109 ∧
      531441 * k + 357109 < 1048576 * k + 704603 := by
  intro k
  have h1 : C (1048576 * k + 704603) = 3145728 * k + 2113810 := by
    unfold C
    simp [show (1048576 * k + 704603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2113810) = 1572864 * k + 1056905 := by
    unfold C
    simp [show (3145728 * k + 2113810) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1056905) = 4718592 * k + 3170716 := by
    unfold C
    simp [show (1572864 * k + 1056905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3170716) = 2359296 * k + 1585358 := by
    unfold C
    simp [show (4718592 * k + 3170716) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1585358) = 1179648 * k + 792679 := by
    unfold C
    simp [show (2359296 * k + 1585358) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 792679) = 3538944 * k + 2378038 := by
    unfold C
    simp [show (1179648 * k + 792679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2378038) = 1769472 * k + 1189019 := by
    unfold C
    simp [show (3538944 * k + 2378038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1189019) = 5308416 * k + 3567058 := by
    unfold C
    simp [show (1769472 * k + 1189019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3567058) = 2654208 * k + 1783529 := by
    unfold C
    simp [show (5308416 * k + 3567058) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1783529) = 7962624 * k + 5350588 := by
    unfold C
    simp [show (2654208 * k + 1783529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5350588) = 3981312 * k + 2675294 := by
    unfold C
    simp [show (7962624 * k + 5350588) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2675294) = 1990656 * k + 1337647 := by
    unfold C
    simp [show (3981312 * k + 2675294) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1337647) = 5971968 * k + 4012942 := by
    unfold C
    simp [show (1990656 * k + 1337647) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4012942) = 2985984 * k + 2006471 := by
    unfold C
    simp [show (5971968 * k + 4012942) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2006471) = 8957952 * k + 6019414 := by
    unfold C
    simp [show (2985984 * k + 2006471) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6019414) = 4478976 * k + 3009707 := by
    unfold C
    simp [show (8957952 * k + 6019414) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3009707) = 13436928 * k + 9029122 := by
    unfold C
    simp [show (4478976 * k + 3009707) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9029122) = 6718464 * k + 4514561 := by
    unfold C
    simp [show (13436928 * k + 9029122) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4514561) = 20155392 * k + 13543684 := by
    unfold C
    simp [show (6718464 * k + 4514561) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13543684) = 10077696 * k + 6771842 := by
    unfold C
    simp [show (20155392 * k + 13543684) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6771842) = 5038848 * k + 3385921 := by
    unfold C
    simp [show (10077696 * k + 6771842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3385921) = 15116544 * k + 10157764 := by
    unfold C
    simp [show (5038848 * k + 3385921) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10157764) = 7558272 * k + 5078882 := by
    unfold C
    simp [show (15116544 * k + 10157764) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5078882) = 3779136 * k + 2539441 := by
    unfold C
    simp [show (7558272 * k + 5078882) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2539441) = 11337408 * k + 7618324 := by
    unfold C
    simp [show (3779136 * k + 2539441) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7618324) = 5668704 * k + 3809162 := by
    unfold C
    simp [show (11337408 * k + 7618324) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3809162) = 2834352 * k + 1904581 := by
    unfold C
    simp [show (5668704 * k + 3809162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1904581) = 8503056 * k + 5713744 := by
    unfold C
    simp [show (2834352 * k + 1904581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5713744) = 4251528 * k + 2856872 := by
    unfold C
    simp [show (8503056 * k + 5713744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2856872) = 2125764 * k + 1428436 := by
    unfold C
    simp [show (4251528 * k + 2856872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1428436) = 1062882 * k + 714218 := by
    unfold C
    simp [show (2125764 * k + 1428436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 714218) = 531441 * k + 357109 := by
    unfold C
    simp [show (1062882 * k + 714218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 704603) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 704603)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_705639 : ∀ k : Nat,
    iterate (1048576 * k + 705639) 32 = 531441 * k + 357634 ∧
      531441 * k + 357634 < 1048576 * k + 705639 := by
  intro k
  have h1 : C (1048576 * k + 705639) = 3145728 * k + 2116918 := by
    unfold C
    simp [show (1048576 * k + 705639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2116918) = 1572864 * k + 1058459 := by
    unfold C
    simp [show (3145728 * k + 2116918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1058459) = 4718592 * k + 3175378 := by
    unfold C
    simp [show (1572864 * k + 1058459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3175378) = 2359296 * k + 1587689 := by
    unfold C
    simp [show (4718592 * k + 3175378) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1587689) = 7077888 * k + 4763068 := by
    unfold C
    simp [show (2359296 * k + 1587689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4763068) = 3538944 * k + 2381534 := by
    unfold C
    simp [show (7077888 * k + 4763068) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2381534) = 1769472 * k + 1190767 := by
    unfold C
    simp [show (3538944 * k + 2381534) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1190767) = 5308416 * k + 3572302 := by
    unfold C
    simp [show (1769472 * k + 1190767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3572302) = 2654208 * k + 1786151 := by
    unfold C
    simp [show (5308416 * k + 3572302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1786151) = 7962624 * k + 5358454 := by
    unfold C
    simp [show (2654208 * k + 1786151) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5358454) = 3981312 * k + 2679227 := by
    unfold C
    simp [show (7962624 * k + 5358454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2679227) = 11943936 * k + 8037682 := by
    unfold C
    simp [show (3981312 * k + 2679227) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8037682) = 5971968 * k + 4018841 := by
    unfold C
    simp [show (11943936 * k + 8037682) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4018841) = 17915904 * k + 12056524 := by
    unfold C
    simp [show (5971968 * k + 4018841) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12056524) = 8957952 * k + 6028262 := by
    unfold C
    simp [show (17915904 * k + 12056524) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6028262) = 4478976 * k + 3014131 := by
    unfold C
    simp [show (8957952 * k + 6028262) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3014131) = 13436928 * k + 9042394 := by
    unfold C
    simp [show (4478976 * k + 3014131) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9042394) = 6718464 * k + 4521197 := by
    unfold C
    simp [show (13436928 * k + 9042394) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4521197) = 20155392 * k + 13563592 := by
    unfold C
    simp [show (6718464 * k + 4521197) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13563592) = 10077696 * k + 6781796 := by
    unfold C
    simp [show (20155392 * k + 13563592) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6781796) = 5038848 * k + 3390898 := by
    unfold C
    simp [show (10077696 * k + 6781796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3390898) = 2519424 * k + 1695449 := by
    unfold C
    simp [show (5038848 * k + 3390898) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1695449) = 7558272 * k + 5086348 := by
    unfold C
    simp [show (2519424 * k + 1695449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5086348) = 3779136 * k + 2543174 := by
    unfold C
    simp [show (7558272 * k + 5086348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2543174) = 1889568 * k + 1271587 := by
    unfold C
    simp [show (3779136 * k + 2543174) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1271587) = 5668704 * k + 3814762 := by
    unfold C
    simp [show (1889568 * k + 1271587) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3814762) = 2834352 * k + 1907381 := by
    unfold C
    simp [show (5668704 * k + 3814762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1907381) = 8503056 * k + 5722144 := by
    unfold C
    simp [show (2834352 * k + 1907381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5722144) = 4251528 * k + 2861072 := by
    unfold C
    simp [show (8503056 * k + 5722144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2861072) = 2125764 * k + 1430536 := by
    unfold C
    simp [show (4251528 * k + 2861072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1430536) = 1062882 * k + 715268 := by
    unfold C
    simp [show (2125764 * k + 1430536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 715268) = 531441 * k + 357634 := by
    unfold C
    simp [show (1062882 * k + 715268) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 705639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 705639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_705983 : ∀ k : Nat,
    iterate (1048576 * k + 705983) 32 = 531441 * k + 357808 ∧
      531441 * k + 357808 < 1048576 * k + 705983 := by
  intro k
  have h1 : C (1048576 * k + 705983) = 3145728 * k + 2117950 := by
    unfold C
    simp [show (1048576 * k + 705983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2117950) = 1572864 * k + 1058975 := by
    unfold C
    simp [show (3145728 * k + 2117950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1058975) = 4718592 * k + 3176926 := by
    unfold C
    simp [show (1572864 * k + 1058975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3176926) = 2359296 * k + 1588463 := by
    unfold C
    simp [show (4718592 * k + 3176926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1588463) = 7077888 * k + 4765390 := by
    unfold C
    simp [show (2359296 * k + 1588463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4765390) = 3538944 * k + 2382695 := by
    unfold C
    simp [show (7077888 * k + 4765390) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2382695) = 10616832 * k + 7148086 := by
    unfold C
    simp [show (3538944 * k + 2382695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7148086) = 5308416 * k + 3574043 := by
    unfold C
    simp [show (10616832 * k + 7148086) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3574043) = 15925248 * k + 10722130 := by
    unfold C
    simp [show (5308416 * k + 3574043) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10722130) = 7962624 * k + 5361065 := by
    unfold C
    simp [show (15925248 * k + 10722130) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5361065) = 23887872 * k + 16083196 := by
    unfold C
    simp [show (7962624 * k + 5361065) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16083196) = 11943936 * k + 8041598 := by
    unfold C
    simp [show (23887872 * k + 16083196) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8041598) = 5971968 * k + 4020799 := by
    unfold C
    simp [show (11943936 * k + 8041598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4020799) = 17915904 * k + 12062398 := by
    unfold C
    simp [show (5971968 * k + 4020799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12062398) = 8957952 * k + 6031199 := by
    unfold C
    simp [show (17915904 * k + 12062398) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6031199) = 26873856 * k + 18093598 := by
    unfold C
    simp [show (8957952 * k + 6031199) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18093598) = 13436928 * k + 9046799 := by
    unfold C
    simp [show (26873856 * k + 18093598) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9046799) = 40310784 * k + 27140398 := by
    unfold C
    simp [show (13436928 * k + 9046799) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27140398) = 20155392 * k + 13570199 := by
    unfold C
    simp [show (40310784 * k + 27140398) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13570199) = 60466176 * k + 40710598 := by
    unfold C
    simp [show (20155392 * k + 13570199) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 40710598) = 30233088 * k + 20355299 := by
    unfold C
    simp [show (60466176 * k + 40710598) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20355299) = 90699264 * k + 61065898 := by
    unfold C
    simp [show (30233088 * k + 20355299) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 61065898) = 45349632 * k + 30532949 := by
    unfold C
    simp [show (90699264 * k + 61065898) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 30532949) = 136048896 * k + 91598848 := by
    unfold C
    simp [show (45349632 * k + 30532949) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 91598848) = 68024448 * k + 45799424 := by
    unfold C
    simp [show (136048896 * k + 91598848) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 45799424) = 34012224 * k + 22899712 := by
    unfold C
    simp [show (68024448 * k + 45799424) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 22899712) = 17006112 * k + 11449856 := by
    unfold C
    simp [show (34012224 * k + 22899712) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11449856) = 8503056 * k + 5724928 := by
    unfold C
    simp [show (17006112 * k + 11449856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5724928) = 4251528 * k + 2862464 := by
    unfold C
    simp [show (8503056 * k + 5724928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2862464) = 2125764 * k + 1431232 := by
    unfold C
    simp [show (4251528 * k + 2862464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1431232) = 1062882 * k + 715616 := by
    unfold C
    simp [show (2125764 * k + 1431232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 715616) = 531441 * k + 357808 := by
    unfold C
    simp [show (1062882 * k + 715616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 705983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 705983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_706095 : ∀ k : Nat,
    iterate (1048576 * k + 706095) 32 = 531441 * k + 357865 ∧
      531441 * k + 357865 < 1048576 * k + 706095 := by
  intro k
  have h1 : C (1048576 * k + 706095) = 3145728 * k + 2118286 := by
    unfold C
    simp [show (1048576 * k + 706095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2118286) = 1572864 * k + 1059143 := by
    unfold C
    simp [show (3145728 * k + 2118286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1059143) = 4718592 * k + 3177430 := by
    unfold C
    simp [show (1572864 * k + 1059143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3177430) = 2359296 * k + 1588715 := by
    unfold C
    simp [show (4718592 * k + 3177430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1588715) = 7077888 * k + 4766146 := by
    unfold C
    simp [show (2359296 * k + 1588715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4766146) = 3538944 * k + 2383073 := by
    unfold C
    simp [show (7077888 * k + 4766146) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2383073) = 10616832 * k + 7149220 := by
    unfold C
    simp [show (3538944 * k + 2383073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7149220) = 5308416 * k + 3574610 := by
    unfold C
    simp [show (10616832 * k + 7149220) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3574610) = 2654208 * k + 1787305 := by
    unfold C
    simp [show (5308416 * k + 3574610) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1787305) = 7962624 * k + 5361916 := by
    unfold C
    simp [show (2654208 * k + 1787305) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5361916) = 3981312 * k + 2680958 := by
    unfold C
    simp [show (7962624 * k + 5361916) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2680958) = 1990656 * k + 1340479 := by
    unfold C
    simp [show (3981312 * k + 2680958) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1340479) = 5971968 * k + 4021438 := by
    unfold C
    simp [show (1990656 * k + 1340479) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4021438) = 2985984 * k + 2010719 := by
    unfold C
    simp [show (5971968 * k + 4021438) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2010719) = 8957952 * k + 6032158 := by
    unfold C
    simp [show (2985984 * k + 2010719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6032158) = 4478976 * k + 3016079 := by
    unfold C
    simp [show (8957952 * k + 6032158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3016079) = 13436928 * k + 9048238 := by
    unfold C
    simp [show (4478976 * k + 3016079) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9048238) = 6718464 * k + 4524119 := by
    unfold C
    simp [show (13436928 * k + 9048238) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4524119) = 20155392 * k + 13572358 := by
    unfold C
    simp [show (6718464 * k + 4524119) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13572358) = 10077696 * k + 6786179 := by
    unfold C
    simp [show (20155392 * k + 13572358) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6786179) = 30233088 * k + 20358538 := by
    unfold C
    simp [show (10077696 * k + 6786179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20358538) = 15116544 * k + 10179269 := by
    unfold C
    simp [show (30233088 * k + 20358538) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10179269) = 45349632 * k + 30537808 := by
    unfold C
    simp [show (15116544 * k + 10179269) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 30537808) = 22674816 * k + 15268904 := by
    unfold C
    simp [show (45349632 * k + 30537808) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15268904) = 11337408 * k + 7634452 := by
    unfold C
    simp [show (22674816 * k + 15268904) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7634452) = 5668704 * k + 3817226 := by
    unfold C
    simp [show (11337408 * k + 7634452) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3817226) = 2834352 * k + 1908613 := by
    unfold C
    simp [show (5668704 * k + 3817226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1908613) = 8503056 * k + 5725840 := by
    unfold C
    simp [show (2834352 * k + 1908613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5725840) = 4251528 * k + 2862920 := by
    unfold C
    simp [show (8503056 * k + 5725840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2862920) = 2125764 * k + 1431460 := by
    unfold C
    simp [show (4251528 * k + 2862920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1431460) = 1062882 * k + 715730 := by
    unfold C
    simp [show (2125764 * k + 1431460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 715730) = 531441 * k + 357865 := by
    unfold C
    simp [show (1062882 * k + 715730) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 706095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 706095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_706651 : ∀ k : Nat,
    iterate (1048576 * k + 706651) 32 = 531441 * k + 358147 ∧
      531441 * k + 358147 < 1048576 * k + 706651 := by
  intro k
  have h1 : C (1048576 * k + 706651) = 3145728 * k + 2119954 := by
    unfold C
    simp [show (1048576 * k + 706651) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2119954) = 1572864 * k + 1059977 := by
    unfold C
    simp [show (3145728 * k + 2119954) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1059977) = 4718592 * k + 3179932 := by
    unfold C
    simp [show (1572864 * k + 1059977) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3179932) = 2359296 * k + 1589966 := by
    unfold C
    simp [show (4718592 * k + 3179932) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1589966) = 1179648 * k + 794983 := by
    unfold C
    simp [show (2359296 * k + 1589966) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 794983) = 3538944 * k + 2384950 := by
    unfold C
    simp [show (1179648 * k + 794983) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2384950) = 1769472 * k + 1192475 := by
    unfold C
    simp [show (3538944 * k + 2384950) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1192475) = 5308416 * k + 3577426 := by
    unfold C
    simp [show (1769472 * k + 1192475) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3577426) = 2654208 * k + 1788713 := by
    unfold C
    simp [show (5308416 * k + 3577426) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1788713) = 7962624 * k + 5366140 := by
    unfold C
    simp [show (2654208 * k + 1788713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5366140) = 3981312 * k + 2683070 := by
    unfold C
    simp [show (7962624 * k + 5366140) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2683070) = 1990656 * k + 1341535 := by
    unfold C
    simp [show (3981312 * k + 2683070) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1341535) = 5971968 * k + 4024606 := by
    unfold C
    simp [show (1990656 * k + 1341535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4024606) = 2985984 * k + 2012303 := by
    unfold C
    simp [show (5971968 * k + 4024606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2012303) = 8957952 * k + 6036910 := by
    unfold C
    simp [show (2985984 * k + 2012303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6036910) = 4478976 * k + 3018455 := by
    unfold C
    simp [show (8957952 * k + 6036910) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3018455) = 13436928 * k + 9055366 := by
    unfold C
    simp [show (4478976 * k + 3018455) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9055366) = 6718464 * k + 4527683 := by
    unfold C
    simp [show (13436928 * k + 9055366) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4527683) = 20155392 * k + 13583050 := by
    unfold C
    simp [show (6718464 * k + 4527683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13583050) = 10077696 * k + 6791525 := by
    unfold C
    simp [show (20155392 * k + 13583050) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6791525) = 30233088 * k + 20374576 := by
    unfold C
    simp [show (10077696 * k + 6791525) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20374576) = 15116544 * k + 10187288 := by
    unfold C
    simp [show (30233088 * k + 20374576) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10187288) = 7558272 * k + 5093644 := by
    unfold C
    simp [show (15116544 * k + 10187288) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5093644) = 3779136 * k + 2546822 := by
    unfold C
    simp [show (7558272 * k + 5093644) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2546822) = 1889568 * k + 1273411 := by
    unfold C
    simp [show (3779136 * k + 2546822) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1273411) = 5668704 * k + 3820234 := by
    unfold C
    simp [show (1889568 * k + 1273411) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3820234) = 2834352 * k + 1910117 := by
    unfold C
    simp [show (5668704 * k + 3820234) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1910117) = 8503056 * k + 5730352 := by
    unfold C
    simp [show (2834352 * k + 1910117) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5730352) = 4251528 * k + 2865176 := by
    unfold C
    simp [show (8503056 * k + 5730352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2865176) = 2125764 * k + 1432588 := by
    unfold C
    simp [show (4251528 * k + 2865176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1432588) = 1062882 * k + 716294 := by
    unfold C
    simp [show (2125764 * k + 1432588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 716294) = 531441 * k + 358147 := by
    unfold C
    simp [show (1062882 * k + 716294) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 706651) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 706651)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_706671 : ∀ k : Nat,
    iterate (1048576 * k + 706671) 32 = 531441 * k + 358157 ∧
      531441 * k + 358157 < 1048576 * k + 706671 := by
  intro k
  have h1 : C (1048576 * k + 706671) = 3145728 * k + 2120014 := by
    unfold C
    simp [show (1048576 * k + 706671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2120014) = 1572864 * k + 1060007 := by
    unfold C
    simp [show (3145728 * k + 2120014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1060007) = 4718592 * k + 3180022 := by
    unfold C
    simp [show (1572864 * k + 1060007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3180022) = 2359296 * k + 1590011 := by
    unfold C
    simp [show (4718592 * k + 3180022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1590011) = 7077888 * k + 4770034 := by
    unfold C
    simp [show (2359296 * k + 1590011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4770034) = 3538944 * k + 2385017 := by
    unfold C
    simp [show (7077888 * k + 4770034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2385017) = 10616832 * k + 7155052 := by
    unfold C
    simp [show (3538944 * k + 2385017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7155052) = 5308416 * k + 3577526 := by
    unfold C
    simp [show (10616832 * k + 7155052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3577526) = 2654208 * k + 1788763 := by
    unfold C
    simp [show (5308416 * k + 3577526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1788763) = 7962624 * k + 5366290 := by
    unfold C
    simp [show (2654208 * k + 1788763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5366290) = 3981312 * k + 2683145 := by
    unfold C
    simp [show (7962624 * k + 5366290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2683145) = 11943936 * k + 8049436 := by
    unfold C
    simp [show (3981312 * k + 2683145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8049436) = 5971968 * k + 4024718 := by
    unfold C
    simp [show (11943936 * k + 8049436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4024718) = 2985984 * k + 2012359 := by
    unfold C
    simp [show (5971968 * k + 4024718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2012359) = 8957952 * k + 6037078 := by
    unfold C
    simp [show (2985984 * k + 2012359) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6037078) = 4478976 * k + 3018539 := by
    unfold C
    simp [show (8957952 * k + 6037078) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3018539) = 13436928 * k + 9055618 := by
    unfold C
    simp [show (4478976 * k + 3018539) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9055618) = 6718464 * k + 4527809 := by
    unfold C
    simp [show (13436928 * k + 9055618) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4527809) = 20155392 * k + 13583428 := by
    unfold C
    simp [show (6718464 * k + 4527809) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13583428) = 10077696 * k + 6791714 := by
    unfold C
    simp [show (20155392 * k + 13583428) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6791714) = 5038848 * k + 3395857 := by
    unfold C
    simp [show (10077696 * k + 6791714) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3395857) = 15116544 * k + 10187572 := by
    unfold C
    simp [show (5038848 * k + 3395857) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10187572) = 7558272 * k + 5093786 := by
    unfold C
    simp [show (15116544 * k + 10187572) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5093786) = 3779136 * k + 2546893 := by
    unfold C
    simp [show (7558272 * k + 5093786) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2546893) = 11337408 * k + 7640680 := by
    unfold C
    simp [show (3779136 * k + 2546893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7640680) = 5668704 * k + 3820340 := by
    unfold C
    simp [show (11337408 * k + 7640680) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3820340) = 2834352 * k + 1910170 := by
    unfold C
    simp [show (5668704 * k + 3820340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1910170) = 1417176 * k + 955085 := by
    unfold C
    simp [show (2834352 * k + 1910170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 955085) = 4251528 * k + 2865256 := by
    unfold C
    simp [show (1417176 * k + 955085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2865256) = 2125764 * k + 1432628 := by
    unfold C
    simp [show (4251528 * k + 2865256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1432628) = 1062882 * k + 716314 := by
    unfold C
    simp [show (2125764 * k + 1432628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 716314) = 531441 * k + 358157 := by
    unfold C
    simp [show (1062882 * k + 716314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 706671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 706671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_706687 : ∀ k : Nat,
    iterate (1048576 * k + 706687) 32 = 531441 * k + 358165 ∧
      531441 * k + 358165 < 1048576 * k + 706687 := by
  intro k
  have h1 : C (1048576 * k + 706687) = 3145728 * k + 2120062 := by
    unfold C
    simp [show (1048576 * k + 706687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2120062) = 1572864 * k + 1060031 := by
    unfold C
    simp [show (3145728 * k + 2120062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1060031) = 4718592 * k + 3180094 := by
    unfold C
    simp [show (1572864 * k + 1060031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3180094) = 2359296 * k + 1590047 := by
    unfold C
    simp [show (4718592 * k + 3180094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1590047) = 7077888 * k + 4770142 := by
    unfold C
    simp [show (2359296 * k + 1590047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4770142) = 3538944 * k + 2385071 := by
    unfold C
    simp [show (7077888 * k + 4770142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2385071) = 10616832 * k + 7155214 := by
    unfold C
    simp [show (3538944 * k + 2385071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7155214) = 5308416 * k + 3577607 := by
    unfold C
    simp [show (10616832 * k + 7155214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3577607) = 15925248 * k + 10732822 := by
    unfold C
    simp [show (5308416 * k + 3577607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10732822) = 7962624 * k + 5366411 := by
    unfold C
    simp [show (15925248 * k + 10732822) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5366411) = 23887872 * k + 16099234 := by
    unfold C
    simp [show (7962624 * k + 5366411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16099234) = 11943936 * k + 8049617 := by
    unfold C
    simp [show (23887872 * k + 16099234) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8049617) = 35831808 * k + 24148852 := by
    unfold C
    simp [show (11943936 * k + 8049617) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24148852) = 17915904 * k + 12074426 := by
    unfold C
    simp [show (35831808 * k + 24148852) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12074426) = 8957952 * k + 6037213 := by
    unfold C
    simp [show (17915904 * k + 12074426) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6037213) = 26873856 * k + 18111640 := by
    unfold C
    simp [show (8957952 * k + 6037213) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18111640) = 13436928 * k + 9055820 := by
    unfold C
    simp [show (26873856 * k + 18111640) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9055820) = 6718464 * k + 4527910 := by
    unfold C
    simp [show (13436928 * k + 9055820) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4527910) = 3359232 * k + 2263955 := by
    unfold C
    simp [show (6718464 * k + 4527910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2263955) = 10077696 * k + 6791866 := by
    unfold C
    simp [show (3359232 * k + 2263955) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6791866) = 5038848 * k + 3395933 := by
    unfold C
    simp [show (10077696 * k + 6791866) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3395933) = 15116544 * k + 10187800 := by
    unfold C
    simp [show (5038848 * k + 3395933) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10187800) = 7558272 * k + 5093900 := by
    unfold C
    simp [show (15116544 * k + 10187800) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5093900) = 3779136 * k + 2546950 := by
    unfold C
    simp [show (7558272 * k + 5093900) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2546950) = 1889568 * k + 1273475 := by
    unfold C
    simp [show (3779136 * k + 2546950) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1273475) = 5668704 * k + 3820426 := by
    unfold C
    simp [show (1889568 * k + 1273475) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3820426) = 2834352 * k + 1910213 := by
    unfold C
    simp [show (5668704 * k + 3820426) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1910213) = 8503056 * k + 5730640 := by
    unfold C
    simp [show (2834352 * k + 1910213) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5730640) = 4251528 * k + 2865320 := by
    unfold C
    simp [show (8503056 * k + 5730640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2865320) = 2125764 * k + 1432660 := by
    unfold C
    simp [show (4251528 * k + 2865320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1432660) = 1062882 * k + 716330 := by
    unfold C
    simp [show (2125764 * k + 1432660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 716330) = 531441 * k + 358165 := by
    unfold C
    simp [show (1062882 * k + 716330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 706687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 706687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_707227 : ∀ k : Nat,
    iterate (1048576 * k + 707227) 32 = 531441 * k + 358439 ∧
      531441 * k + 358439 < 1048576 * k + 707227 := by
  intro k
  have h1 : C (1048576 * k + 707227) = 3145728 * k + 2121682 := by
    unfold C
    simp [show (1048576 * k + 707227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2121682) = 1572864 * k + 1060841 := by
    unfold C
    simp [show (3145728 * k + 2121682) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1060841) = 4718592 * k + 3182524 := by
    unfold C
    simp [show (1572864 * k + 1060841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3182524) = 2359296 * k + 1591262 := by
    unfold C
    simp [show (4718592 * k + 3182524) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1591262) = 1179648 * k + 795631 := by
    unfold C
    simp [show (2359296 * k + 1591262) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 795631) = 3538944 * k + 2386894 := by
    unfold C
    simp [show (1179648 * k + 795631) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2386894) = 1769472 * k + 1193447 := by
    unfold C
    simp [show (3538944 * k + 2386894) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1193447) = 5308416 * k + 3580342 := by
    unfold C
    simp [show (1769472 * k + 1193447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3580342) = 2654208 * k + 1790171 := by
    unfold C
    simp [show (5308416 * k + 3580342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1790171) = 7962624 * k + 5370514 := by
    unfold C
    simp [show (2654208 * k + 1790171) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5370514) = 3981312 * k + 2685257 := by
    unfold C
    simp [show (7962624 * k + 5370514) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2685257) = 11943936 * k + 8055772 := by
    unfold C
    simp [show (3981312 * k + 2685257) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8055772) = 5971968 * k + 4027886 := by
    unfold C
    simp [show (11943936 * k + 8055772) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4027886) = 2985984 * k + 2013943 := by
    unfold C
    simp [show (5971968 * k + 4027886) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2013943) = 8957952 * k + 6041830 := by
    unfold C
    simp [show (2985984 * k + 2013943) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6041830) = 4478976 * k + 3020915 := by
    unfold C
    simp [show (8957952 * k + 6041830) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3020915) = 13436928 * k + 9062746 := by
    unfold C
    simp [show (4478976 * k + 3020915) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9062746) = 6718464 * k + 4531373 := by
    unfold C
    simp [show (13436928 * k + 9062746) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4531373) = 20155392 * k + 13594120 := by
    unfold C
    simp [show (6718464 * k + 4531373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13594120) = 10077696 * k + 6797060 := by
    unfold C
    simp [show (20155392 * k + 13594120) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6797060) = 5038848 * k + 3398530 := by
    unfold C
    simp [show (10077696 * k + 6797060) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3398530) = 2519424 * k + 1699265 := by
    unfold C
    simp [show (5038848 * k + 3398530) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1699265) = 7558272 * k + 5097796 := by
    unfold C
    simp [show (2519424 * k + 1699265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5097796) = 3779136 * k + 2548898 := by
    unfold C
    simp [show (7558272 * k + 5097796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2548898) = 1889568 * k + 1274449 := by
    unfold C
    simp [show (3779136 * k + 2548898) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1274449) = 5668704 * k + 3823348 := by
    unfold C
    simp [show (1889568 * k + 1274449) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3823348) = 2834352 * k + 1911674 := by
    unfold C
    simp [show (5668704 * k + 3823348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1911674) = 1417176 * k + 955837 := by
    unfold C
    simp [show (2834352 * k + 1911674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 955837) = 4251528 * k + 2867512 := by
    unfold C
    simp [show (1417176 * k + 955837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2867512) = 2125764 * k + 1433756 := by
    unfold C
    simp [show (4251528 * k + 2867512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1433756) = 1062882 * k + 716878 := by
    unfold C
    simp [show (2125764 * k + 1433756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 716878) = 531441 * k + 358439 := by
    unfold C
    simp [show (1062882 * k + 716878) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 707227) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 707227)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_707263 : ∀ k : Nat,
    iterate (1048576 * k + 707263) 32 = 531441 * k + 358457 ∧
      531441 * k + 358457 < 1048576 * k + 707263 := by
  intro k
  have h1 : C (1048576 * k + 707263) = 3145728 * k + 2121790 := by
    unfold C
    simp [show (1048576 * k + 707263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2121790) = 1572864 * k + 1060895 := by
    unfold C
    simp [show (3145728 * k + 2121790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1060895) = 4718592 * k + 3182686 := by
    unfold C
    simp [show (1572864 * k + 1060895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3182686) = 2359296 * k + 1591343 := by
    unfold C
    simp [show (4718592 * k + 3182686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1591343) = 7077888 * k + 4774030 := by
    unfold C
    simp [show (2359296 * k + 1591343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4774030) = 3538944 * k + 2387015 := by
    unfold C
    simp [show (7077888 * k + 4774030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2387015) = 10616832 * k + 7161046 := by
    unfold C
    simp [show (3538944 * k + 2387015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7161046) = 5308416 * k + 3580523 := by
    unfold C
    simp [show (10616832 * k + 7161046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3580523) = 15925248 * k + 10741570 := by
    unfold C
    simp [show (5308416 * k + 3580523) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10741570) = 7962624 * k + 5370785 := by
    unfold C
    simp [show (15925248 * k + 10741570) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5370785) = 23887872 * k + 16112356 := by
    unfold C
    simp [show (7962624 * k + 5370785) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16112356) = 11943936 * k + 8056178 := by
    unfold C
    simp [show (23887872 * k + 16112356) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8056178) = 5971968 * k + 4028089 := by
    unfold C
    simp [show (11943936 * k + 8056178) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4028089) = 17915904 * k + 12084268 := by
    unfold C
    simp [show (5971968 * k + 4028089) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12084268) = 8957952 * k + 6042134 := by
    unfold C
    simp [show (17915904 * k + 12084268) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6042134) = 4478976 * k + 3021067 := by
    unfold C
    simp [show (8957952 * k + 6042134) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3021067) = 13436928 * k + 9063202 := by
    unfold C
    simp [show (4478976 * k + 3021067) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9063202) = 6718464 * k + 4531601 := by
    unfold C
    simp [show (13436928 * k + 9063202) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4531601) = 20155392 * k + 13594804 := by
    unfold C
    simp [show (6718464 * k + 4531601) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13594804) = 10077696 * k + 6797402 := by
    unfold C
    simp [show (20155392 * k + 13594804) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6797402) = 5038848 * k + 3398701 := by
    unfold C
    simp [show (10077696 * k + 6797402) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3398701) = 15116544 * k + 10196104 := by
    unfold C
    simp [show (5038848 * k + 3398701) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10196104) = 7558272 * k + 5098052 := by
    unfold C
    simp [show (15116544 * k + 10196104) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5098052) = 3779136 * k + 2549026 := by
    unfold C
    simp [show (7558272 * k + 5098052) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2549026) = 1889568 * k + 1274513 := by
    unfold C
    simp [show (3779136 * k + 2549026) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1274513) = 5668704 * k + 3823540 := by
    unfold C
    simp [show (1889568 * k + 1274513) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3823540) = 2834352 * k + 1911770 := by
    unfold C
    simp [show (5668704 * k + 3823540) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1911770) = 1417176 * k + 955885 := by
    unfold C
    simp [show (2834352 * k + 1911770) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 955885) = 4251528 * k + 2867656 := by
    unfold C
    simp [show (1417176 * k + 955885) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2867656) = 2125764 * k + 1433828 := by
    unfold C
    simp [show (4251528 * k + 2867656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1433828) = 1062882 * k + 716914 := by
    unfold C
    simp [show (2125764 * k + 1433828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 716914) = 531441 * k + 358457 := by
    unfold C
    simp [show (1062882 * k + 716914) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 707263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 707263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_707583 : ∀ k : Nat,
    iterate (1048576 * k + 707583) 32 = 531441 * k + 358619 ∧
      531441 * k + 358619 < 1048576 * k + 707583 := by
  intro k
  have h1 : C (1048576 * k + 707583) = 3145728 * k + 2122750 := by
    unfold C
    simp [show (1048576 * k + 707583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2122750) = 1572864 * k + 1061375 := by
    unfold C
    simp [show (3145728 * k + 2122750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1061375) = 4718592 * k + 3184126 := by
    unfold C
    simp [show (1572864 * k + 1061375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3184126) = 2359296 * k + 1592063 := by
    unfold C
    simp [show (4718592 * k + 3184126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1592063) = 7077888 * k + 4776190 := by
    unfold C
    simp [show (2359296 * k + 1592063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4776190) = 3538944 * k + 2388095 := by
    unfold C
    simp [show (7077888 * k + 4776190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2388095) = 10616832 * k + 7164286 := by
    unfold C
    simp [show (3538944 * k + 2388095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7164286) = 5308416 * k + 3582143 := by
    unfold C
    simp [show (10616832 * k + 7164286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3582143) = 15925248 * k + 10746430 := by
    unfold C
    simp [show (5308416 * k + 3582143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10746430) = 7962624 * k + 5373215 := by
    unfold C
    simp [show (15925248 * k + 10746430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5373215) = 23887872 * k + 16119646 := by
    unfold C
    simp [show (7962624 * k + 5373215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16119646) = 11943936 * k + 8059823 := by
    unfold C
    simp [show (23887872 * k + 16119646) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8059823) = 35831808 * k + 24179470 := by
    unfold C
    simp [show (11943936 * k + 8059823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24179470) = 17915904 * k + 12089735 := by
    unfold C
    simp [show (35831808 * k + 24179470) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12089735) = 53747712 * k + 36269206 := by
    unfold C
    simp [show (17915904 * k + 12089735) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 36269206) = 26873856 * k + 18134603 := by
    unfold C
    simp [show (53747712 * k + 36269206) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 18134603) = 80621568 * k + 54403810 := by
    unfold C
    simp [show (26873856 * k + 18134603) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 54403810) = 40310784 * k + 27201905 := by
    unfold C
    simp [show (80621568 * k + 54403810) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 27201905) = 120932352 * k + 81605716 := by
    unfold C
    simp [show (40310784 * k + 27201905) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 81605716) = 60466176 * k + 40802858 := by
    unfold C
    simp [show (120932352 * k + 81605716) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 40802858) = 30233088 * k + 20401429 := by
    unfold C
    simp [show (60466176 * k + 40802858) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20401429) = 90699264 * k + 61204288 := by
    unfold C
    simp [show (30233088 * k + 20401429) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 61204288) = 45349632 * k + 30602144 := by
    unfold C
    simp [show (90699264 * k + 61204288) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 30602144) = 22674816 * k + 15301072 := by
    unfold C
    simp [show (45349632 * k + 30602144) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15301072) = 11337408 * k + 7650536 := by
    unfold C
    simp [show (22674816 * k + 15301072) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7650536) = 5668704 * k + 3825268 := by
    unfold C
    simp [show (11337408 * k + 7650536) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3825268) = 2834352 * k + 1912634 := by
    unfold C
    simp [show (5668704 * k + 3825268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1912634) = 1417176 * k + 956317 := by
    unfold C
    simp [show (2834352 * k + 1912634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 956317) = 4251528 * k + 2868952 := by
    unfold C
    simp [show (1417176 * k + 956317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2868952) = 2125764 * k + 1434476 := by
    unfold C
    simp [show (4251528 * k + 2868952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1434476) = 1062882 * k + 717238 := by
    unfold C
    simp [show (2125764 * k + 1434476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 717238) = 531441 * k + 358619 := by
    unfold C
    simp [show (1062882 * k + 717238) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 707583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 707583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_708031 : ∀ k : Nat,
    iterate (1048576 * k + 708031) 32 = 531441 * k + 358846 ∧
      531441 * k + 358846 < 1048576 * k + 708031 := by
  intro k
  have h1 : C (1048576 * k + 708031) = 3145728 * k + 2124094 := by
    unfold C
    simp [show (1048576 * k + 708031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2124094) = 1572864 * k + 1062047 := by
    unfold C
    simp [show (3145728 * k + 2124094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1062047) = 4718592 * k + 3186142 := by
    unfold C
    simp [show (1572864 * k + 1062047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3186142) = 2359296 * k + 1593071 := by
    unfold C
    simp [show (4718592 * k + 3186142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1593071) = 7077888 * k + 4779214 := by
    unfold C
    simp [show (2359296 * k + 1593071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4779214) = 3538944 * k + 2389607 := by
    unfold C
    simp [show (7077888 * k + 4779214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2389607) = 10616832 * k + 7168822 := by
    unfold C
    simp [show (3538944 * k + 2389607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7168822) = 5308416 * k + 3584411 := by
    unfold C
    simp [show (10616832 * k + 7168822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3584411) = 15925248 * k + 10753234 := by
    unfold C
    simp [show (5308416 * k + 3584411) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10753234) = 7962624 * k + 5376617 := by
    unfold C
    simp [show (15925248 * k + 10753234) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5376617) = 23887872 * k + 16129852 := by
    unfold C
    simp [show (7962624 * k + 5376617) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16129852) = 11943936 * k + 8064926 := by
    unfold C
    simp [show (23887872 * k + 16129852) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8064926) = 5971968 * k + 4032463 := by
    unfold C
    simp [show (11943936 * k + 8064926) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4032463) = 17915904 * k + 12097390 := by
    unfold C
    simp [show (5971968 * k + 4032463) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12097390) = 8957952 * k + 6048695 := by
    unfold C
    simp [show (17915904 * k + 12097390) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6048695) = 26873856 * k + 18146086 := by
    unfold C
    simp [show (8957952 * k + 6048695) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18146086) = 13436928 * k + 9073043 := by
    unfold C
    simp [show (26873856 * k + 18146086) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9073043) = 40310784 * k + 27219130 := by
    unfold C
    simp [show (13436928 * k + 9073043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 27219130) = 20155392 * k + 13609565 := by
    unfold C
    simp [show (40310784 * k + 27219130) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13609565) = 60466176 * k + 40828696 := by
    unfold C
    simp [show (20155392 * k + 13609565) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 40828696) = 30233088 * k + 20414348 := by
    unfold C
    simp [show (60466176 * k + 40828696) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20414348) = 15116544 * k + 10207174 := by
    unfold C
    simp [show (30233088 * k + 20414348) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10207174) = 7558272 * k + 5103587 := by
    unfold C
    simp [show (15116544 * k + 10207174) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5103587) = 22674816 * k + 15310762 := by
    unfold C
    simp [show (7558272 * k + 5103587) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15310762) = 11337408 * k + 7655381 := by
    unfold C
    simp [show (22674816 * k + 15310762) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7655381) = 34012224 * k + 22966144 := by
    unfold C
    simp [show (11337408 * k + 7655381) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22966144) = 17006112 * k + 11483072 := by
    unfold C
    simp [show (34012224 * k + 22966144) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11483072) = 8503056 * k + 5741536 := by
    unfold C
    simp [show (17006112 * k + 11483072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5741536) = 4251528 * k + 2870768 := by
    unfold C
    simp [show (8503056 * k + 5741536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2870768) = 2125764 * k + 1435384 := by
    unfold C
    simp [show (4251528 * k + 2870768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1435384) = 1062882 * k + 717692 := by
    unfold C
    simp [show (2125764 * k + 1435384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 717692) = 531441 * k + 358846 := by
    unfold C
    simp [show (1062882 * k + 717692) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 708031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 708031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_708127 : ∀ k : Nat,
    iterate (1048576 * k + 708127) 32 = 531441 * k + 358895 ∧
      531441 * k + 358895 < 1048576 * k + 708127 := by
  intro k
  have h1 : C (1048576 * k + 708127) = 3145728 * k + 2124382 := by
    unfold C
    simp [show (1048576 * k + 708127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2124382) = 1572864 * k + 1062191 := by
    unfold C
    simp [show (3145728 * k + 2124382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1062191) = 4718592 * k + 3186574 := by
    unfold C
    simp [show (1572864 * k + 1062191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3186574) = 2359296 * k + 1593287 := by
    unfold C
    simp [show (4718592 * k + 3186574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1593287) = 7077888 * k + 4779862 := by
    unfold C
    simp [show (2359296 * k + 1593287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4779862) = 3538944 * k + 2389931 := by
    unfold C
    simp [show (7077888 * k + 4779862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2389931) = 10616832 * k + 7169794 := by
    unfold C
    simp [show (3538944 * k + 2389931) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7169794) = 5308416 * k + 3584897 := by
    unfold C
    simp [show (10616832 * k + 7169794) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3584897) = 15925248 * k + 10754692 := by
    unfold C
    simp [show (5308416 * k + 3584897) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10754692) = 7962624 * k + 5377346 := by
    unfold C
    simp [show (15925248 * k + 10754692) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5377346) = 3981312 * k + 2688673 := by
    unfold C
    simp [show (7962624 * k + 5377346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2688673) = 11943936 * k + 8066020 := by
    unfold C
    simp [show (3981312 * k + 2688673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8066020) = 5971968 * k + 4033010 := by
    unfold C
    simp [show (11943936 * k + 8066020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4033010) = 2985984 * k + 2016505 := by
    unfold C
    simp [show (5971968 * k + 4033010) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2016505) = 8957952 * k + 6049516 := by
    unfold C
    simp [show (2985984 * k + 2016505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6049516) = 4478976 * k + 3024758 := by
    unfold C
    simp [show (8957952 * k + 6049516) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3024758) = 2239488 * k + 1512379 := by
    unfold C
    simp [show (4478976 * k + 3024758) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1512379) = 6718464 * k + 4537138 := by
    unfold C
    simp [show (2239488 * k + 1512379) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4537138) = 3359232 * k + 2268569 := by
    unfold C
    simp [show (6718464 * k + 4537138) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2268569) = 10077696 * k + 6805708 := by
    unfold C
    simp [show (3359232 * k + 2268569) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6805708) = 5038848 * k + 3402854 := by
    unfold C
    simp [show (10077696 * k + 6805708) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3402854) = 2519424 * k + 1701427 := by
    unfold C
    simp [show (5038848 * k + 3402854) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1701427) = 7558272 * k + 5104282 := by
    unfold C
    simp [show (2519424 * k + 1701427) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5104282) = 3779136 * k + 2552141 := by
    unfold C
    simp [show (7558272 * k + 5104282) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2552141) = 11337408 * k + 7656424 := by
    unfold C
    simp [show (3779136 * k + 2552141) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7656424) = 5668704 * k + 3828212 := by
    unfold C
    simp [show (11337408 * k + 7656424) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3828212) = 2834352 * k + 1914106 := by
    unfold C
    simp [show (5668704 * k + 3828212) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1914106) = 1417176 * k + 957053 := by
    unfold C
    simp [show (2834352 * k + 1914106) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 957053) = 4251528 * k + 2871160 := by
    unfold C
    simp [show (1417176 * k + 957053) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2871160) = 2125764 * k + 1435580 := by
    unfold C
    simp [show (4251528 * k + 2871160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1435580) = 1062882 * k + 717790 := by
    unfold C
    simp [show (2125764 * k + 1435580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 717790) = 531441 * k + 358895 := by
    unfold C
    simp [show (1062882 * k + 717790) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 708127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 708127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_708143 : ∀ k : Nat,
    iterate (1048576 * k + 708143) 32 = 531441 * k + 358903 ∧
      531441 * k + 358903 < 1048576 * k + 708143 := by
  intro k
  have h1 : C (1048576 * k + 708143) = 3145728 * k + 2124430 := by
    unfold C
    simp [show (1048576 * k + 708143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2124430) = 1572864 * k + 1062215 := by
    unfold C
    simp [show (3145728 * k + 2124430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1062215) = 4718592 * k + 3186646 := by
    unfold C
    simp [show (1572864 * k + 1062215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3186646) = 2359296 * k + 1593323 := by
    unfold C
    simp [show (4718592 * k + 3186646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1593323) = 7077888 * k + 4779970 := by
    unfold C
    simp [show (2359296 * k + 1593323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4779970) = 3538944 * k + 2389985 := by
    unfold C
    simp [show (7077888 * k + 4779970) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2389985) = 10616832 * k + 7169956 := by
    unfold C
    simp [show (3538944 * k + 2389985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7169956) = 5308416 * k + 3584978 := by
    unfold C
    simp [show (10616832 * k + 7169956) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3584978) = 2654208 * k + 1792489 := by
    unfold C
    simp [show (5308416 * k + 3584978) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1792489) = 7962624 * k + 5377468 := by
    unfold C
    simp [show (2654208 * k + 1792489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5377468) = 3981312 * k + 2688734 := by
    unfold C
    simp [show (7962624 * k + 5377468) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2688734) = 1990656 * k + 1344367 := by
    unfold C
    simp [show (3981312 * k + 2688734) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1344367) = 5971968 * k + 4033102 := by
    unfold C
    simp [show (1990656 * k + 1344367) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4033102) = 2985984 * k + 2016551 := by
    unfold C
    simp [show (5971968 * k + 4033102) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2016551) = 8957952 * k + 6049654 := by
    unfold C
    simp [show (2985984 * k + 2016551) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6049654) = 4478976 * k + 3024827 := by
    unfold C
    simp [show (8957952 * k + 6049654) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3024827) = 13436928 * k + 9074482 := by
    unfold C
    simp [show (4478976 * k + 3024827) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9074482) = 6718464 * k + 4537241 := by
    unfold C
    simp [show (13436928 * k + 9074482) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4537241) = 20155392 * k + 13611724 := by
    unfold C
    simp [show (6718464 * k + 4537241) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13611724) = 10077696 * k + 6805862 := by
    unfold C
    simp [show (20155392 * k + 13611724) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6805862) = 5038848 * k + 3402931 := by
    unfold C
    simp [show (10077696 * k + 6805862) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3402931) = 15116544 * k + 10208794 := by
    unfold C
    simp [show (5038848 * k + 3402931) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10208794) = 7558272 * k + 5104397 := by
    unfold C
    simp [show (15116544 * k + 10208794) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5104397) = 22674816 * k + 15313192 := by
    unfold C
    simp [show (7558272 * k + 5104397) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15313192) = 11337408 * k + 7656596 := by
    unfold C
    simp [show (22674816 * k + 15313192) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7656596) = 5668704 * k + 3828298 := by
    unfold C
    simp [show (11337408 * k + 7656596) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3828298) = 2834352 * k + 1914149 := by
    unfold C
    simp [show (5668704 * k + 3828298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1914149) = 8503056 * k + 5742448 := by
    unfold C
    simp [show (2834352 * k + 1914149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5742448) = 4251528 * k + 2871224 := by
    unfold C
    simp [show (8503056 * k + 5742448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2871224) = 2125764 * k + 1435612 := by
    unfold C
    simp [show (4251528 * k + 2871224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1435612) = 1062882 * k + 717806 := by
    unfold C
    simp [show (2125764 * k + 1435612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 717806) = 531441 * k + 358903 := by
    unfold C
    simp [show (1062882 * k + 717806) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 708143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 708143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_708287 : ∀ k : Nat,
    iterate (1048576 * k + 708287) 32 = 531441 * k + 358976 ∧
      531441 * k + 358976 < 1048576 * k + 708287 := by
  intro k
  have h1 : C (1048576 * k + 708287) = 3145728 * k + 2124862 := by
    unfold C
    simp [show (1048576 * k + 708287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2124862) = 1572864 * k + 1062431 := by
    unfold C
    simp [show (3145728 * k + 2124862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1062431) = 4718592 * k + 3187294 := by
    unfold C
    simp [show (1572864 * k + 1062431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3187294) = 2359296 * k + 1593647 := by
    unfold C
    simp [show (4718592 * k + 3187294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1593647) = 7077888 * k + 4780942 := by
    unfold C
    simp [show (2359296 * k + 1593647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4780942) = 3538944 * k + 2390471 := by
    unfold C
    simp [show (7077888 * k + 4780942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2390471) = 10616832 * k + 7171414 := by
    unfold C
    simp [show (3538944 * k + 2390471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7171414) = 5308416 * k + 3585707 := by
    unfold C
    simp [show (10616832 * k + 7171414) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3585707) = 15925248 * k + 10757122 := by
    unfold C
    simp [show (5308416 * k + 3585707) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10757122) = 7962624 * k + 5378561 := by
    unfold C
    simp [show (15925248 * k + 10757122) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5378561) = 23887872 * k + 16135684 := by
    unfold C
    simp [show (7962624 * k + 5378561) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16135684) = 11943936 * k + 8067842 := by
    unfold C
    simp [show (23887872 * k + 16135684) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8067842) = 5971968 * k + 4033921 := by
    unfold C
    simp [show (11943936 * k + 8067842) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4033921) = 17915904 * k + 12101764 := by
    unfold C
    simp [show (5971968 * k + 4033921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12101764) = 8957952 * k + 6050882 := by
    unfold C
    simp [show (17915904 * k + 12101764) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6050882) = 4478976 * k + 3025441 := by
    unfold C
    simp [show (8957952 * k + 6050882) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3025441) = 13436928 * k + 9076324 := by
    unfold C
    simp [show (4478976 * k + 3025441) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9076324) = 6718464 * k + 4538162 := by
    unfold C
    simp [show (13436928 * k + 9076324) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4538162) = 3359232 * k + 2269081 := by
    unfold C
    simp [show (6718464 * k + 4538162) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2269081) = 10077696 * k + 6807244 := by
    unfold C
    simp [show (3359232 * k + 2269081) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6807244) = 5038848 * k + 3403622 := by
    unfold C
    simp [show (10077696 * k + 6807244) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3403622) = 2519424 * k + 1701811 := by
    unfold C
    simp [show (5038848 * k + 3403622) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1701811) = 7558272 * k + 5105434 := by
    unfold C
    simp [show (2519424 * k + 1701811) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5105434) = 3779136 * k + 2552717 := by
    unfold C
    simp [show (7558272 * k + 5105434) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2552717) = 11337408 * k + 7658152 := by
    unfold C
    simp [show (3779136 * k + 2552717) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7658152) = 5668704 * k + 3829076 := by
    unfold C
    simp [show (11337408 * k + 7658152) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3829076) = 2834352 * k + 1914538 := by
    unfold C
    simp [show (5668704 * k + 3829076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1914538) = 1417176 * k + 957269 := by
    unfold C
    simp [show (2834352 * k + 1914538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 957269) = 4251528 * k + 2871808 := by
    unfold C
    simp [show (1417176 * k + 957269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2871808) = 2125764 * k + 1435904 := by
    unfold C
    simp [show (4251528 * k + 2871808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1435904) = 1062882 * k + 717952 := by
    unfold C
    simp [show (2125764 * k + 1435904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 717952) = 531441 * k + 358976 := by
    unfold C
    simp [show (1062882 * k + 717952) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 708287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 708287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_708719 : ∀ k : Nat,
    iterate (1048576 * k + 708719) 32 = 531441 * k + 359195 ∧
      531441 * k + 359195 < 1048576 * k + 708719 := by
  intro k
  have h1 : C (1048576 * k + 708719) = 3145728 * k + 2126158 := by
    unfold C
    simp [show (1048576 * k + 708719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2126158) = 1572864 * k + 1063079 := by
    unfold C
    simp [show (3145728 * k + 2126158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1063079) = 4718592 * k + 3189238 := by
    unfold C
    simp [show (1572864 * k + 1063079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3189238) = 2359296 * k + 1594619 := by
    unfold C
    simp [show (4718592 * k + 3189238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1594619) = 7077888 * k + 4783858 := by
    unfold C
    simp [show (2359296 * k + 1594619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4783858) = 3538944 * k + 2391929 := by
    unfold C
    simp [show (7077888 * k + 4783858) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2391929) = 10616832 * k + 7175788 := by
    unfold C
    simp [show (3538944 * k + 2391929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7175788) = 5308416 * k + 3587894 := by
    unfold C
    simp [show (10616832 * k + 7175788) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3587894) = 2654208 * k + 1793947 := by
    unfold C
    simp [show (5308416 * k + 3587894) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1793947) = 7962624 * k + 5381842 := by
    unfold C
    simp [show (2654208 * k + 1793947) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5381842) = 3981312 * k + 2690921 := by
    unfold C
    simp [show (7962624 * k + 5381842) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2690921) = 11943936 * k + 8072764 := by
    unfold C
    simp [show (3981312 * k + 2690921) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8072764) = 5971968 * k + 4036382 := by
    unfold C
    simp [show (11943936 * k + 8072764) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4036382) = 2985984 * k + 2018191 := by
    unfold C
    simp [show (5971968 * k + 4036382) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2018191) = 8957952 * k + 6054574 := by
    unfold C
    simp [show (2985984 * k + 2018191) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6054574) = 4478976 * k + 3027287 := by
    unfold C
    simp [show (8957952 * k + 6054574) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3027287) = 13436928 * k + 9081862 := by
    unfold C
    simp [show (4478976 * k + 3027287) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9081862) = 6718464 * k + 4540931 := by
    unfold C
    simp [show (13436928 * k + 9081862) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4540931) = 20155392 * k + 13622794 := by
    unfold C
    simp [show (6718464 * k + 4540931) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13622794) = 10077696 * k + 6811397 := by
    unfold C
    simp [show (20155392 * k + 13622794) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6811397) = 30233088 * k + 20434192 := by
    unfold C
    simp [show (10077696 * k + 6811397) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20434192) = 15116544 * k + 10217096 := by
    unfold C
    simp [show (30233088 * k + 20434192) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10217096) = 7558272 * k + 5108548 := by
    unfold C
    simp [show (15116544 * k + 10217096) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5108548) = 3779136 * k + 2554274 := by
    unfold C
    simp [show (7558272 * k + 5108548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2554274) = 1889568 * k + 1277137 := by
    unfold C
    simp [show (3779136 * k + 2554274) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1277137) = 5668704 * k + 3831412 := by
    unfold C
    simp [show (1889568 * k + 1277137) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3831412) = 2834352 * k + 1915706 := by
    unfold C
    simp [show (5668704 * k + 3831412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1915706) = 1417176 * k + 957853 := by
    unfold C
    simp [show (2834352 * k + 1915706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 957853) = 4251528 * k + 2873560 := by
    unfold C
    simp [show (1417176 * k + 957853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2873560) = 2125764 * k + 1436780 := by
    unfold C
    simp [show (4251528 * k + 2873560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1436780) = 1062882 * k + 718390 := by
    unfold C
    simp [show (2125764 * k + 1436780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 718390) = 531441 * k + 359195 := by
    unfold C
    simp [show (1062882 * k + 718390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 708719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 708719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_708859 : ∀ k : Nat,
    iterate (1048576 * k + 708859) 32 = 531441 * k + 359266 ∧
      531441 * k + 359266 < 1048576 * k + 708859 := by
  intro k
  have h1 : C (1048576 * k + 708859) = 3145728 * k + 2126578 := by
    unfold C
    simp [show (1048576 * k + 708859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2126578) = 1572864 * k + 1063289 := by
    unfold C
    simp [show (3145728 * k + 2126578) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1063289) = 4718592 * k + 3189868 := by
    unfold C
    simp [show (1572864 * k + 1063289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3189868) = 2359296 * k + 1594934 := by
    unfold C
    simp [show (4718592 * k + 3189868) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1594934) = 1179648 * k + 797467 := by
    unfold C
    simp [show (2359296 * k + 1594934) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 797467) = 3538944 * k + 2392402 := by
    unfold C
    simp [show (1179648 * k + 797467) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2392402) = 1769472 * k + 1196201 := by
    unfold C
    simp [show (3538944 * k + 2392402) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1196201) = 5308416 * k + 3588604 := by
    unfold C
    simp [show (1769472 * k + 1196201) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3588604) = 2654208 * k + 1794302 := by
    unfold C
    simp [show (5308416 * k + 3588604) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1794302) = 1327104 * k + 897151 := by
    unfold C
    simp [show (2654208 * k + 1794302) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 897151) = 3981312 * k + 2691454 := by
    unfold C
    simp [show (1327104 * k + 897151) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2691454) = 1990656 * k + 1345727 := by
    unfold C
    simp [show (3981312 * k + 2691454) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1345727) = 5971968 * k + 4037182 := by
    unfold C
    simp [show (1990656 * k + 1345727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4037182) = 2985984 * k + 2018591 := by
    unfold C
    simp [show (5971968 * k + 4037182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2018591) = 8957952 * k + 6055774 := by
    unfold C
    simp [show (2985984 * k + 2018591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6055774) = 4478976 * k + 3027887 := by
    unfold C
    simp [show (8957952 * k + 6055774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3027887) = 13436928 * k + 9083662 := by
    unfold C
    simp [show (4478976 * k + 3027887) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9083662) = 6718464 * k + 4541831 := by
    unfold C
    simp [show (13436928 * k + 9083662) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4541831) = 20155392 * k + 13625494 := by
    unfold C
    simp [show (6718464 * k + 4541831) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13625494) = 10077696 * k + 6812747 := by
    unfold C
    simp [show (20155392 * k + 13625494) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6812747) = 30233088 * k + 20438242 := by
    unfold C
    simp [show (10077696 * k + 6812747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20438242) = 15116544 * k + 10219121 := by
    unfold C
    simp [show (30233088 * k + 20438242) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10219121) = 45349632 * k + 30657364 := by
    unfold C
    simp [show (15116544 * k + 10219121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 30657364) = 22674816 * k + 15328682 := by
    unfold C
    simp [show (45349632 * k + 30657364) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15328682) = 11337408 * k + 7664341 := by
    unfold C
    simp [show (22674816 * k + 15328682) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7664341) = 34012224 * k + 22993024 := by
    unfold C
    simp [show (11337408 * k + 7664341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22993024) = 17006112 * k + 11496512 := by
    unfold C
    simp [show (34012224 * k + 22993024) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11496512) = 8503056 * k + 5748256 := by
    unfold C
    simp [show (17006112 * k + 11496512) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5748256) = 4251528 * k + 2874128 := by
    unfold C
    simp [show (8503056 * k + 5748256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2874128) = 2125764 * k + 1437064 := by
    unfold C
    simp [show (4251528 * k + 2874128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1437064) = 1062882 * k + 718532 := by
    unfold C
    simp [show (2125764 * k + 1437064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 718532) = 531441 * k + 359266 := by
    unfold C
    simp [show (1062882 * k + 718532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 708859) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 708859)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_709287 : ∀ k : Nat,
    iterate (1048576 * k + 709287) 32 = 531441 * k + 359483 ∧
      531441 * k + 359483 < 1048576 * k + 709287 := by
  intro k
  have h1 : C (1048576 * k + 709287) = 3145728 * k + 2127862 := by
    unfold C
    simp [show (1048576 * k + 709287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2127862) = 1572864 * k + 1063931 := by
    unfold C
    simp [show (3145728 * k + 2127862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1063931) = 4718592 * k + 3191794 := by
    unfold C
    simp [show (1572864 * k + 1063931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3191794) = 2359296 * k + 1595897 := by
    unfold C
    simp [show (4718592 * k + 3191794) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1595897) = 7077888 * k + 4787692 := by
    unfold C
    simp [show (2359296 * k + 1595897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4787692) = 3538944 * k + 2393846 := by
    unfold C
    simp [show (7077888 * k + 4787692) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2393846) = 1769472 * k + 1196923 := by
    unfold C
    simp [show (3538944 * k + 2393846) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1196923) = 5308416 * k + 3590770 := by
    unfold C
    simp [show (1769472 * k + 1196923) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3590770) = 2654208 * k + 1795385 := by
    unfold C
    simp [show (5308416 * k + 3590770) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1795385) = 7962624 * k + 5386156 := by
    unfold C
    simp [show (2654208 * k + 1795385) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5386156) = 3981312 * k + 2693078 := by
    unfold C
    simp [show (7962624 * k + 5386156) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2693078) = 1990656 * k + 1346539 := by
    unfold C
    simp [show (3981312 * k + 2693078) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1346539) = 5971968 * k + 4039618 := by
    unfold C
    simp [show (1990656 * k + 1346539) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4039618) = 2985984 * k + 2019809 := by
    unfold C
    simp [show (5971968 * k + 4039618) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2019809) = 8957952 * k + 6059428 := by
    unfold C
    simp [show (2985984 * k + 2019809) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6059428) = 4478976 * k + 3029714 := by
    unfold C
    simp [show (8957952 * k + 6059428) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3029714) = 2239488 * k + 1514857 := by
    unfold C
    simp [show (4478976 * k + 3029714) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1514857) = 6718464 * k + 4544572 := by
    unfold C
    simp [show (2239488 * k + 1514857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4544572) = 3359232 * k + 2272286 := by
    unfold C
    simp [show (6718464 * k + 4544572) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2272286) = 1679616 * k + 1136143 := by
    unfold C
    simp [show (3359232 * k + 2272286) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1136143) = 5038848 * k + 3408430 := by
    unfold C
    simp [show (1679616 * k + 1136143) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3408430) = 2519424 * k + 1704215 := by
    unfold C
    simp [show (5038848 * k + 3408430) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1704215) = 7558272 * k + 5112646 := by
    unfold C
    simp [show (2519424 * k + 1704215) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5112646) = 3779136 * k + 2556323 := by
    unfold C
    simp [show (7558272 * k + 5112646) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2556323) = 11337408 * k + 7668970 := by
    unfold C
    simp [show (3779136 * k + 2556323) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7668970) = 5668704 * k + 3834485 := by
    unfold C
    simp [show (11337408 * k + 7668970) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3834485) = 17006112 * k + 11503456 := by
    unfold C
    simp [show (5668704 * k + 3834485) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11503456) = 8503056 * k + 5751728 := by
    unfold C
    simp [show (17006112 * k + 11503456) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5751728) = 4251528 * k + 2875864 := by
    unfold C
    simp [show (8503056 * k + 5751728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2875864) = 2125764 * k + 1437932 := by
    unfold C
    simp [show (4251528 * k + 2875864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1437932) = 1062882 * k + 718966 := by
    unfold C
    simp [show (2125764 * k + 1437932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 718966) = 531441 * k + 359483 := by
    unfold C
    simp [show (1062882 * k + 718966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 709287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 709287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard091
