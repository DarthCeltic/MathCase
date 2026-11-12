import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard090

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_695423 : ∀ k : Nat,
    iterate (1048576 * k + 695423) 32 = 531441 * k + 352456 ∧
      531441 * k + 352456 < 1048576 * k + 695423 := by
  intro k
  have h1 : C (1048576 * k + 695423) = 3145728 * k + 2086270 := by
    unfold C
    simp [show (1048576 * k + 695423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2086270) = 1572864 * k + 1043135 := by
    unfold C
    simp [show (3145728 * k + 2086270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1043135) = 4718592 * k + 3129406 := by
    unfold C
    simp [show (1572864 * k + 1043135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3129406) = 2359296 * k + 1564703 := by
    unfold C
    simp [show (4718592 * k + 3129406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1564703) = 7077888 * k + 4694110 := by
    unfold C
    simp [show (2359296 * k + 1564703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4694110) = 3538944 * k + 2347055 := by
    unfold C
    simp [show (7077888 * k + 4694110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2347055) = 10616832 * k + 7041166 := by
    unfold C
    simp [show (3538944 * k + 2347055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7041166) = 5308416 * k + 3520583 := by
    unfold C
    simp [show (10616832 * k + 7041166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3520583) = 15925248 * k + 10561750 := by
    unfold C
    simp [show (5308416 * k + 3520583) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10561750) = 7962624 * k + 5280875 := by
    unfold C
    simp [show (15925248 * k + 10561750) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5280875) = 23887872 * k + 15842626 := by
    unfold C
    simp [show (7962624 * k + 5280875) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15842626) = 11943936 * k + 7921313 := by
    unfold C
    simp [show (23887872 * k + 15842626) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7921313) = 35831808 * k + 23763940 := by
    unfold C
    simp [show (11943936 * k + 7921313) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23763940) = 17915904 * k + 11881970 := by
    unfold C
    simp [show (35831808 * k + 23763940) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11881970) = 8957952 * k + 5940985 := by
    unfold C
    simp [show (17915904 * k + 11881970) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5940985) = 26873856 * k + 17822956 := by
    unfold C
    simp [show (8957952 * k + 5940985) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17822956) = 13436928 * k + 8911478 := by
    unfold C
    simp [show (26873856 * k + 17822956) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8911478) = 6718464 * k + 4455739 := by
    unfold C
    simp [show (13436928 * k + 8911478) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4455739) = 20155392 * k + 13367218 := by
    unfold C
    simp [show (6718464 * k + 4455739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13367218) = 10077696 * k + 6683609 := by
    unfold C
    simp [show (20155392 * k + 13367218) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6683609) = 30233088 * k + 20050828 := by
    unfold C
    simp [show (10077696 * k + 6683609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20050828) = 15116544 * k + 10025414 := by
    unfold C
    simp [show (30233088 * k + 20050828) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10025414) = 7558272 * k + 5012707 := by
    unfold C
    simp [show (15116544 * k + 10025414) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5012707) = 22674816 * k + 15038122 := by
    unfold C
    simp [show (7558272 * k + 5012707) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15038122) = 11337408 * k + 7519061 := by
    unfold C
    simp [show (22674816 * k + 15038122) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7519061) = 34012224 * k + 22557184 := by
    unfold C
    simp [show (11337408 * k + 7519061) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22557184) = 17006112 * k + 11278592 := by
    unfold C
    simp [show (34012224 * k + 22557184) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11278592) = 8503056 * k + 5639296 := by
    unfold C
    simp [show (17006112 * k + 11278592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5639296) = 4251528 * k + 2819648 := by
    unfold C
    simp [show (8503056 * k + 5639296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2819648) = 2125764 * k + 1409824 := by
    unfold C
    simp [show (4251528 * k + 2819648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1409824) = 1062882 * k + 704912 := by
    unfold C
    simp [show (2125764 * k + 1409824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 704912) = 531441 * k + 352456 := by
    unfold C
    simp [show (1062882 * k + 704912) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 695423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 695423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_696431 : ∀ k : Nat,
    iterate (1048576 * k + 696431) 32 = 531441 * k + 352967 ∧
      531441 * k + 352967 < 1048576 * k + 696431 := by
  intro k
  have h1 : C (1048576 * k + 696431) = 3145728 * k + 2089294 := by
    unfold C
    simp [show (1048576 * k + 696431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2089294) = 1572864 * k + 1044647 := by
    unfold C
    simp [show (3145728 * k + 2089294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1044647) = 4718592 * k + 3133942 := by
    unfold C
    simp [show (1572864 * k + 1044647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3133942) = 2359296 * k + 1566971 := by
    unfold C
    simp [show (4718592 * k + 3133942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1566971) = 7077888 * k + 4700914 := by
    unfold C
    simp [show (2359296 * k + 1566971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4700914) = 3538944 * k + 2350457 := by
    unfold C
    simp [show (7077888 * k + 4700914) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2350457) = 10616832 * k + 7051372 := by
    unfold C
    simp [show (3538944 * k + 2350457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7051372) = 5308416 * k + 3525686 := by
    unfold C
    simp [show (10616832 * k + 7051372) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3525686) = 2654208 * k + 1762843 := by
    unfold C
    simp [show (5308416 * k + 3525686) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1762843) = 7962624 * k + 5288530 := by
    unfold C
    simp [show (2654208 * k + 1762843) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5288530) = 3981312 * k + 2644265 := by
    unfold C
    simp [show (7962624 * k + 5288530) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2644265) = 11943936 * k + 7932796 := by
    unfold C
    simp [show (3981312 * k + 2644265) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7932796) = 5971968 * k + 3966398 := by
    unfold C
    simp [show (11943936 * k + 7932796) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3966398) = 2985984 * k + 1983199 := by
    unfold C
    simp [show (5971968 * k + 3966398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1983199) = 8957952 * k + 5949598 := by
    unfold C
    simp [show (2985984 * k + 1983199) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5949598) = 4478976 * k + 2974799 := by
    unfold C
    simp [show (8957952 * k + 5949598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2974799) = 13436928 * k + 8924398 := by
    unfold C
    simp [show (4478976 * k + 2974799) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8924398) = 6718464 * k + 4462199 := by
    unfold C
    simp [show (13436928 * k + 8924398) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4462199) = 20155392 * k + 13386598 := by
    unfold C
    simp [show (6718464 * k + 4462199) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13386598) = 10077696 * k + 6693299 := by
    unfold C
    simp [show (20155392 * k + 13386598) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6693299) = 30233088 * k + 20079898 := by
    unfold C
    simp [show (10077696 * k + 6693299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20079898) = 15116544 * k + 10039949 := by
    unfold C
    simp [show (30233088 * k + 20079898) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10039949) = 45349632 * k + 30119848 := by
    unfold C
    simp [show (15116544 * k + 10039949) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 30119848) = 22674816 * k + 15059924 := by
    unfold C
    simp [show (45349632 * k + 30119848) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15059924) = 11337408 * k + 7529962 := by
    unfold C
    simp [show (22674816 * k + 15059924) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7529962) = 5668704 * k + 3764981 := by
    unfold C
    simp [show (11337408 * k + 7529962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3764981) = 17006112 * k + 11294944 := by
    unfold C
    simp [show (5668704 * k + 3764981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11294944) = 8503056 * k + 5647472 := by
    unfold C
    simp [show (17006112 * k + 11294944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5647472) = 4251528 * k + 2823736 := by
    unfold C
    simp [show (8503056 * k + 5647472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2823736) = 2125764 * k + 1411868 := by
    unfold C
    simp [show (4251528 * k + 2823736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1411868) = 1062882 * k + 705934 := by
    unfold C
    simp [show (2125764 * k + 1411868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 705934) = 531441 * k + 352967 := by
    unfold C
    simp [show (1062882 * k + 705934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 696431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 696431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_696679 : ∀ k : Nat,
    iterate (1048576 * k + 696679) 32 = 531441 * k + 353093 ∧
      531441 * k + 353093 < 1048576 * k + 696679 := by
  intro k
  have h1 : C (1048576 * k + 696679) = 3145728 * k + 2090038 := by
    unfold C
    simp [show (1048576 * k + 696679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2090038) = 1572864 * k + 1045019 := by
    unfold C
    simp [show (3145728 * k + 2090038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1045019) = 4718592 * k + 3135058 := by
    unfold C
    simp [show (1572864 * k + 1045019) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3135058) = 2359296 * k + 1567529 := by
    unfold C
    simp [show (4718592 * k + 3135058) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1567529) = 7077888 * k + 4702588 := by
    unfold C
    simp [show (2359296 * k + 1567529) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4702588) = 3538944 * k + 2351294 := by
    unfold C
    simp [show (7077888 * k + 4702588) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2351294) = 1769472 * k + 1175647 := by
    unfold C
    simp [show (3538944 * k + 2351294) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1175647) = 5308416 * k + 3526942 := by
    unfold C
    simp [show (1769472 * k + 1175647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3526942) = 2654208 * k + 1763471 := by
    unfold C
    simp [show (5308416 * k + 3526942) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1763471) = 7962624 * k + 5290414 := by
    unfold C
    simp [show (2654208 * k + 1763471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5290414) = 3981312 * k + 2645207 := by
    unfold C
    simp [show (7962624 * k + 5290414) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2645207) = 11943936 * k + 7935622 := by
    unfold C
    simp [show (3981312 * k + 2645207) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7935622) = 5971968 * k + 3967811 := by
    unfold C
    simp [show (11943936 * k + 7935622) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3967811) = 17915904 * k + 11903434 := by
    unfold C
    simp [show (5971968 * k + 3967811) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11903434) = 8957952 * k + 5951717 := by
    unfold C
    simp [show (17915904 * k + 11903434) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5951717) = 26873856 * k + 17855152 := by
    unfold C
    simp [show (8957952 * k + 5951717) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17855152) = 13436928 * k + 8927576 := by
    unfold C
    simp [show (26873856 * k + 17855152) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8927576) = 6718464 * k + 4463788 := by
    unfold C
    simp [show (13436928 * k + 8927576) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4463788) = 3359232 * k + 2231894 := by
    unfold C
    simp [show (6718464 * k + 4463788) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2231894) = 1679616 * k + 1115947 := by
    unfold C
    simp [show (3359232 * k + 2231894) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1115947) = 5038848 * k + 3347842 := by
    unfold C
    simp [show (1679616 * k + 1115947) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3347842) = 2519424 * k + 1673921 := by
    unfold C
    simp [show (5038848 * k + 3347842) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1673921) = 7558272 * k + 5021764 := by
    unfold C
    simp [show (2519424 * k + 1673921) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5021764) = 3779136 * k + 2510882 := by
    unfold C
    simp [show (7558272 * k + 5021764) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2510882) = 1889568 * k + 1255441 := by
    unfold C
    simp [show (3779136 * k + 2510882) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1255441) = 5668704 * k + 3766324 := by
    unfold C
    simp [show (1889568 * k + 1255441) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3766324) = 2834352 * k + 1883162 := by
    unfold C
    simp [show (5668704 * k + 3766324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1883162) = 1417176 * k + 941581 := by
    unfold C
    simp [show (2834352 * k + 1883162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 941581) = 4251528 * k + 2824744 := by
    unfold C
    simp [show (1417176 * k + 941581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2824744) = 2125764 * k + 1412372 := by
    unfold C
    simp [show (4251528 * k + 2824744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1412372) = 1062882 * k + 706186 := by
    unfold C
    simp [show (2125764 * k + 1412372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 706186) = 531441 * k + 353093 := by
    unfold C
    simp [show (1062882 * k + 706186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 696679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 696679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_696991 : ∀ k : Nat,
    iterate (1048576 * k + 696991) 32 = 531441 * k + 353251 ∧
      531441 * k + 353251 < 1048576 * k + 696991 := by
  intro k
  have h1 : C (1048576 * k + 696991) = 3145728 * k + 2090974 := by
    unfold C
    simp [show (1048576 * k + 696991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2090974) = 1572864 * k + 1045487 := by
    unfold C
    simp [show (3145728 * k + 2090974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1045487) = 4718592 * k + 3136462 := by
    unfold C
    simp [show (1572864 * k + 1045487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3136462) = 2359296 * k + 1568231 := by
    unfold C
    simp [show (4718592 * k + 3136462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1568231) = 7077888 * k + 4704694 := by
    unfold C
    simp [show (2359296 * k + 1568231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4704694) = 3538944 * k + 2352347 := by
    unfold C
    simp [show (7077888 * k + 4704694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2352347) = 10616832 * k + 7057042 := by
    unfold C
    simp [show (3538944 * k + 2352347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7057042) = 5308416 * k + 3528521 := by
    unfold C
    simp [show (10616832 * k + 7057042) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3528521) = 15925248 * k + 10585564 := by
    unfold C
    simp [show (5308416 * k + 3528521) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10585564) = 7962624 * k + 5292782 := by
    unfold C
    simp [show (15925248 * k + 10585564) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5292782) = 3981312 * k + 2646391 := by
    unfold C
    simp [show (7962624 * k + 5292782) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2646391) = 11943936 * k + 7939174 := by
    unfold C
    simp [show (3981312 * k + 2646391) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7939174) = 5971968 * k + 3969587 := by
    unfold C
    simp [show (11943936 * k + 7939174) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3969587) = 17915904 * k + 11908762 := by
    unfold C
    simp [show (5971968 * k + 3969587) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11908762) = 8957952 * k + 5954381 := by
    unfold C
    simp [show (17915904 * k + 11908762) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5954381) = 26873856 * k + 17863144 := by
    unfold C
    simp [show (8957952 * k + 5954381) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17863144) = 13436928 * k + 8931572 := by
    unfold C
    simp [show (26873856 * k + 17863144) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8931572) = 6718464 * k + 4465786 := by
    unfold C
    simp [show (13436928 * k + 8931572) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4465786) = 3359232 * k + 2232893 := by
    unfold C
    simp [show (6718464 * k + 4465786) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2232893) = 10077696 * k + 6698680 := by
    unfold C
    simp [show (3359232 * k + 2232893) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6698680) = 5038848 * k + 3349340 := by
    unfold C
    simp [show (10077696 * k + 6698680) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3349340) = 2519424 * k + 1674670 := by
    unfold C
    simp [show (5038848 * k + 3349340) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1674670) = 1259712 * k + 837335 := by
    unfold C
    simp [show (2519424 * k + 1674670) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 837335) = 3779136 * k + 2512006 := by
    unfold C
    simp [show (1259712 * k + 837335) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2512006) = 1889568 * k + 1256003 := by
    unfold C
    simp [show (3779136 * k + 2512006) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1256003) = 5668704 * k + 3768010 := by
    unfold C
    simp [show (1889568 * k + 1256003) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3768010) = 2834352 * k + 1884005 := by
    unfold C
    simp [show (5668704 * k + 3768010) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1884005) = 8503056 * k + 5652016 := by
    unfold C
    simp [show (2834352 * k + 1884005) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5652016) = 4251528 * k + 2826008 := by
    unfold C
    simp [show (8503056 * k + 5652016) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2826008) = 2125764 * k + 1413004 := by
    unfold C
    simp [show (4251528 * k + 2826008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1413004) = 1062882 * k + 706502 := by
    unfold C
    simp [show (2125764 * k + 1413004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 706502) = 531441 * k + 353251 := by
    unfold C
    simp [show (1062882 * k + 706502) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 696991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 696991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_697247 : ∀ k : Nat,
    iterate (1048576 * k + 697247) 32 = 531441 * k + 353381 ∧
      531441 * k + 353381 < 1048576 * k + 697247 := by
  intro k
  have h1 : C (1048576 * k + 697247) = 3145728 * k + 2091742 := by
    unfold C
    simp [show (1048576 * k + 697247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2091742) = 1572864 * k + 1045871 := by
    unfold C
    simp [show (3145728 * k + 2091742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1045871) = 4718592 * k + 3137614 := by
    unfold C
    simp [show (1572864 * k + 1045871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3137614) = 2359296 * k + 1568807 := by
    unfold C
    simp [show (4718592 * k + 3137614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1568807) = 7077888 * k + 4706422 := by
    unfold C
    simp [show (2359296 * k + 1568807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4706422) = 3538944 * k + 2353211 := by
    unfold C
    simp [show (7077888 * k + 4706422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2353211) = 10616832 * k + 7059634 := by
    unfold C
    simp [show (3538944 * k + 2353211) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7059634) = 5308416 * k + 3529817 := by
    unfold C
    simp [show (10616832 * k + 7059634) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3529817) = 15925248 * k + 10589452 := by
    unfold C
    simp [show (5308416 * k + 3529817) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10589452) = 7962624 * k + 5294726 := by
    unfold C
    simp [show (15925248 * k + 10589452) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5294726) = 3981312 * k + 2647363 := by
    unfold C
    simp [show (7962624 * k + 5294726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2647363) = 11943936 * k + 7942090 := by
    unfold C
    simp [show (3981312 * k + 2647363) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7942090) = 5971968 * k + 3971045 := by
    unfold C
    simp [show (11943936 * k + 7942090) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3971045) = 17915904 * k + 11913136 := by
    unfold C
    simp [show (5971968 * k + 3971045) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11913136) = 8957952 * k + 5956568 := by
    unfold C
    simp [show (17915904 * k + 11913136) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5956568) = 4478976 * k + 2978284 := by
    unfold C
    simp [show (8957952 * k + 5956568) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2978284) = 2239488 * k + 1489142 := by
    unfold C
    simp [show (4478976 * k + 2978284) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1489142) = 1119744 * k + 744571 := by
    unfold C
    simp [show (2239488 * k + 1489142) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 744571) = 3359232 * k + 2233714 := by
    unfold C
    simp [show (1119744 * k + 744571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2233714) = 1679616 * k + 1116857 := by
    unfold C
    simp [show (3359232 * k + 2233714) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1116857) = 5038848 * k + 3350572 := by
    unfold C
    simp [show (1679616 * k + 1116857) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3350572) = 2519424 * k + 1675286 := by
    unfold C
    simp [show (5038848 * k + 3350572) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1675286) = 1259712 * k + 837643 := by
    unfold C
    simp [show (2519424 * k + 1675286) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 837643) = 3779136 * k + 2512930 := by
    unfold C
    simp [show (1259712 * k + 837643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2512930) = 1889568 * k + 1256465 := by
    unfold C
    simp [show (3779136 * k + 2512930) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1256465) = 5668704 * k + 3769396 := by
    unfold C
    simp [show (1889568 * k + 1256465) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3769396) = 2834352 * k + 1884698 := by
    unfold C
    simp [show (5668704 * k + 3769396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1884698) = 1417176 * k + 942349 := by
    unfold C
    simp [show (2834352 * k + 1884698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 942349) = 4251528 * k + 2827048 := by
    unfold C
    simp [show (1417176 * k + 942349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2827048) = 2125764 * k + 1413524 := by
    unfold C
    simp [show (4251528 * k + 2827048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1413524) = 1062882 * k + 706762 := by
    unfold C
    simp [show (2125764 * k + 1413524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 706762) = 531441 * k + 353381 := by
    unfold C
    simp [show (1062882 * k + 706762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 697247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 697247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_697727 : ∀ k : Nat,
    iterate (1048576 * k + 697727) 32 = 531441 * k + 353624 ∧
      531441 * k + 353624 < 1048576 * k + 697727 := by
  intro k
  have h1 : C (1048576 * k + 697727) = 3145728 * k + 2093182 := by
    unfold C
    simp [show (1048576 * k + 697727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2093182) = 1572864 * k + 1046591 := by
    unfold C
    simp [show (3145728 * k + 2093182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1046591) = 4718592 * k + 3139774 := by
    unfold C
    simp [show (1572864 * k + 1046591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3139774) = 2359296 * k + 1569887 := by
    unfold C
    simp [show (4718592 * k + 3139774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1569887) = 7077888 * k + 4709662 := by
    unfold C
    simp [show (2359296 * k + 1569887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4709662) = 3538944 * k + 2354831 := by
    unfold C
    simp [show (7077888 * k + 4709662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2354831) = 10616832 * k + 7064494 := by
    unfold C
    simp [show (3538944 * k + 2354831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7064494) = 5308416 * k + 3532247 := by
    unfold C
    simp [show (10616832 * k + 7064494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3532247) = 15925248 * k + 10596742 := by
    unfold C
    simp [show (5308416 * k + 3532247) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10596742) = 7962624 * k + 5298371 := by
    unfold C
    simp [show (15925248 * k + 10596742) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5298371) = 23887872 * k + 15895114 := by
    unfold C
    simp [show (7962624 * k + 5298371) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15895114) = 11943936 * k + 7947557 := by
    unfold C
    simp [show (23887872 * k + 15895114) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7947557) = 35831808 * k + 23842672 := by
    unfold C
    simp [show (11943936 * k + 7947557) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23842672) = 17915904 * k + 11921336 := by
    unfold C
    simp [show (35831808 * k + 23842672) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11921336) = 8957952 * k + 5960668 := by
    unfold C
    simp [show (17915904 * k + 11921336) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5960668) = 4478976 * k + 2980334 := by
    unfold C
    simp [show (8957952 * k + 5960668) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2980334) = 2239488 * k + 1490167 := by
    unfold C
    simp [show (4478976 * k + 2980334) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1490167) = 6718464 * k + 4470502 := by
    unfold C
    simp [show (2239488 * k + 1490167) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4470502) = 3359232 * k + 2235251 := by
    unfold C
    simp [show (6718464 * k + 4470502) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2235251) = 10077696 * k + 6705754 := by
    unfold C
    simp [show (3359232 * k + 2235251) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6705754) = 5038848 * k + 3352877 := by
    unfold C
    simp [show (10077696 * k + 6705754) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3352877) = 15116544 * k + 10058632 := by
    unfold C
    simp [show (5038848 * k + 3352877) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10058632) = 7558272 * k + 5029316 := by
    unfold C
    simp [show (15116544 * k + 10058632) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5029316) = 3779136 * k + 2514658 := by
    unfold C
    simp [show (7558272 * k + 5029316) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2514658) = 1889568 * k + 1257329 := by
    unfold C
    simp [show (3779136 * k + 2514658) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1257329) = 5668704 * k + 3771988 := by
    unfold C
    simp [show (1889568 * k + 1257329) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3771988) = 2834352 * k + 1885994 := by
    unfold C
    simp [show (5668704 * k + 3771988) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1885994) = 1417176 * k + 942997 := by
    unfold C
    simp [show (2834352 * k + 1885994) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 942997) = 4251528 * k + 2828992 := by
    unfold C
    simp [show (1417176 * k + 942997) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2828992) = 2125764 * k + 1414496 := by
    unfold C
    simp [show (4251528 * k + 2828992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1414496) = 1062882 * k + 707248 := by
    unfold C
    simp [show (2125764 * k + 1414496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 707248) = 531441 * k + 353624 := by
    unfold C
    simp [show (1062882 * k + 707248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 697727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 697727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_698459 : ∀ k : Nat,
    iterate (1048576 * k + 698459) 32 = 531441 * k + 353995 ∧
      531441 * k + 353995 < 1048576 * k + 698459 := by
  intro k
  have h1 : C (1048576 * k + 698459) = 3145728 * k + 2095378 := by
    unfold C
    simp [show (1048576 * k + 698459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2095378) = 1572864 * k + 1047689 := by
    unfold C
    simp [show (3145728 * k + 2095378) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1047689) = 4718592 * k + 3143068 := by
    unfold C
    simp [show (1572864 * k + 1047689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3143068) = 2359296 * k + 1571534 := by
    unfold C
    simp [show (4718592 * k + 3143068) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1571534) = 1179648 * k + 785767 := by
    unfold C
    simp [show (2359296 * k + 1571534) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 785767) = 3538944 * k + 2357302 := by
    unfold C
    simp [show (1179648 * k + 785767) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2357302) = 1769472 * k + 1178651 := by
    unfold C
    simp [show (3538944 * k + 2357302) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1178651) = 5308416 * k + 3535954 := by
    unfold C
    simp [show (1769472 * k + 1178651) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3535954) = 2654208 * k + 1767977 := by
    unfold C
    simp [show (5308416 * k + 3535954) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1767977) = 7962624 * k + 5303932 := by
    unfold C
    simp [show (2654208 * k + 1767977) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5303932) = 3981312 * k + 2651966 := by
    unfold C
    simp [show (7962624 * k + 5303932) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2651966) = 1990656 * k + 1325983 := by
    unfold C
    simp [show (3981312 * k + 2651966) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1325983) = 5971968 * k + 3977950 := by
    unfold C
    simp [show (1990656 * k + 1325983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3977950) = 2985984 * k + 1988975 := by
    unfold C
    simp [show (5971968 * k + 3977950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1988975) = 8957952 * k + 5966926 := by
    unfold C
    simp [show (2985984 * k + 1988975) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5966926) = 4478976 * k + 2983463 := by
    unfold C
    simp [show (8957952 * k + 5966926) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2983463) = 13436928 * k + 8950390 := by
    unfold C
    simp [show (4478976 * k + 2983463) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8950390) = 6718464 * k + 4475195 := by
    unfold C
    simp [show (13436928 * k + 8950390) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4475195) = 20155392 * k + 13425586 := by
    unfold C
    simp [show (6718464 * k + 4475195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13425586) = 10077696 * k + 6712793 := by
    unfold C
    simp [show (20155392 * k + 13425586) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6712793) = 30233088 * k + 20138380 := by
    unfold C
    simp [show (10077696 * k + 6712793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20138380) = 15116544 * k + 10069190 := by
    unfold C
    simp [show (30233088 * k + 20138380) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10069190) = 7558272 * k + 5034595 := by
    unfold C
    simp [show (15116544 * k + 10069190) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5034595) = 22674816 * k + 15103786 := by
    unfold C
    simp [show (7558272 * k + 5034595) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15103786) = 11337408 * k + 7551893 := by
    unfold C
    simp [show (22674816 * k + 15103786) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7551893) = 34012224 * k + 22655680 := by
    unfold C
    simp [show (11337408 * k + 7551893) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22655680) = 17006112 * k + 11327840 := by
    unfold C
    simp [show (34012224 * k + 22655680) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11327840) = 8503056 * k + 5663920 := by
    unfold C
    simp [show (17006112 * k + 11327840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5663920) = 4251528 * k + 2831960 := by
    unfold C
    simp [show (8503056 * k + 5663920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2831960) = 2125764 * k + 1415980 := by
    unfold C
    simp [show (4251528 * k + 2831960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1415980) = 1062882 * k + 707990 := by
    unfold C
    simp [show (2125764 * k + 1415980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 707990) = 531441 * k + 353995 := by
    unfold C
    simp [show (1062882 * k + 707990) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 698459) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 698459)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_698479 : ∀ k : Nat,
    iterate (1048576 * k + 698479) 32 = 531441 * k + 354005 ∧
      531441 * k + 354005 < 1048576 * k + 698479 := by
  intro k
  have h1 : C (1048576 * k + 698479) = 3145728 * k + 2095438 := by
    unfold C
    simp [show (1048576 * k + 698479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2095438) = 1572864 * k + 1047719 := by
    unfold C
    simp [show (3145728 * k + 2095438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1047719) = 4718592 * k + 3143158 := by
    unfold C
    simp [show (1572864 * k + 1047719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3143158) = 2359296 * k + 1571579 := by
    unfold C
    simp [show (4718592 * k + 3143158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1571579) = 7077888 * k + 4714738 := by
    unfold C
    simp [show (2359296 * k + 1571579) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4714738) = 3538944 * k + 2357369 := by
    unfold C
    simp [show (7077888 * k + 4714738) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2357369) = 10616832 * k + 7072108 := by
    unfold C
    simp [show (3538944 * k + 2357369) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7072108) = 5308416 * k + 3536054 := by
    unfold C
    simp [show (10616832 * k + 7072108) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3536054) = 2654208 * k + 1768027 := by
    unfold C
    simp [show (5308416 * k + 3536054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1768027) = 7962624 * k + 5304082 := by
    unfold C
    simp [show (2654208 * k + 1768027) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5304082) = 3981312 * k + 2652041 := by
    unfold C
    simp [show (7962624 * k + 5304082) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2652041) = 11943936 * k + 7956124 := by
    unfold C
    simp [show (3981312 * k + 2652041) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7956124) = 5971968 * k + 3978062 := by
    unfold C
    simp [show (11943936 * k + 7956124) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3978062) = 2985984 * k + 1989031 := by
    unfold C
    simp [show (5971968 * k + 3978062) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1989031) = 8957952 * k + 5967094 := by
    unfold C
    simp [show (2985984 * k + 1989031) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5967094) = 4478976 * k + 2983547 := by
    unfold C
    simp [show (8957952 * k + 5967094) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2983547) = 13436928 * k + 8950642 := by
    unfold C
    simp [show (4478976 * k + 2983547) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8950642) = 6718464 * k + 4475321 := by
    unfold C
    simp [show (13436928 * k + 8950642) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4475321) = 20155392 * k + 13425964 := by
    unfold C
    simp [show (6718464 * k + 4475321) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13425964) = 10077696 * k + 6712982 := by
    unfold C
    simp [show (20155392 * k + 13425964) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6712982) = 5038848 * k + 3356491 := by
    unfold C
    simp [show (10077696 * k + 6712982) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3356491) = 15116544 * k + 10069474 := by
    unfold C
    simp [show (5038848 * k + 3356491) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10069474) = 7558272 * k + 5034737 := by
    unfold C
    simp [show (15116544 * k + 10069474) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5034737) = 22674816 * k + 15104212 := by
    unfold C
    simp [show (7558272 * k + 5034737) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15104212) = 11337408 * k + 7552106 := by
    unfold C
    simp [show (22674816 * k + 15104212) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7552106) = 5668704 * k + 3776053 := by
    unfold C
    simp [show (11337408 * k + 7552106) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3776053) = 17006112 * k + 11328160 := by
    unfold C
    simp [show (5668704 * k + 3776053) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11328160) = 8503056 * k + 5664080 := by
    unfold C
    simp [show (17006112 * k + 11328160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5664080) = 4251528 * k + 2832040 := by
    unfold C
    simp [show (8503056 * k + 5664080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2832040) = 2125764 * k + 1416020 := by
    unfold C
    simp [show (4251528 * k + 2832040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1416020) = 1062882 * k + 708010 := by
    unfold C
    simp [show (2125764 * k + 1416020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 708010) = 531441 * k + 354005 := by
    unfold C
    simp [show (1062882 * k + 708010) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 698479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 698479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_698495 : ∀ k : Nat,
    iterate (1048576 * k + 698495) 32 = 531441 * k + 354013 ∧
      531441 * k + 354013 < 1048576 * k + 698495 := by
  intro k
  have h1 : C (1048576 * k + 698495) = 3145728 * k + 2095486 := by
    unfold C
    simp [show (1048576 * k + 698495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2095486) = 1572864 * k + 1047743 := by
    unfold C
    simp [show (3145728 * k + 2095486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1047743) = 4718592 * k + 3143230 := by
    unfold C
    simp [show (1572864 * k + 1047743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3143230) = 2359296 * k + 1571615 := by
    unfold C
    simp [show (4718592 * k + 3143230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1571615) = 7077888 * k + 4714846 := by
    unfold C
    simp [show (2359296 * k + 1571615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4714846) = 3538944 * k + 2357423 := by
    unfold C
    simp [show (7077888 * k + 4714846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2357423) = 10616832 * k + 7072270 := by
    unfold C
    simp [show (3538944 * k + 2357423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7072270) = 5308416 * k + 3536135 := by
    unfold C
    simp [show (10616832 * k + 7072270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3536135) = 15925248 * k + 10608406 := by
    unfold C
    simp [show (5308416 * k + 3536135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10608406) = 7962624 * k + 5304203 := by
    unfold C
    simp [show (15925248 * k + 10608406) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5304203) = 23887872 * k + 15912610 := by
    unfold C
    simp [show (7962624 * k + 5304203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15912610) = 11943936 * k + 7956305 := by
    unfold C
    simp [show (23887872 * k + 15912610) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7956305) = 35831808 * k + 23868916 := by
    unfold C
    simp [show (11943936 * k + 7956305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23868916) = 17915904 * k + 11934458 := by
    unfold C
    simp [show (35831808 * k + 23868916) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11934458) = 8957952 * k + 5967229 := by
    unfold C
    simp [show (17915904 * k + 11934458) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5967229) = 26873856 * k + 17901688 := by
    unfold C
    simp [show (8957952 * k + 5967229) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17901688) = 13436928 * k + 8950844 := by
    unfold C
    simp [show (26873856 * k + 17901688) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8950844) = 6718464 * k + 4475422 := by
    unfold C
    simp [show (13436928 * k + 8950844) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4475422) = 3359232 * k + 2237711 := by
    unfold C
    simp [show (6718464 * k + 4475422) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2237711) = 10077696 * k + 6713134 := by
    unfold C
    simp [show (3359232 * k + 2237711) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6713134) = 5038848 * k + 3356567 := by
    unfold C
    simp [show (10077696 * k + 6713134) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3356567) = 15116544 * k + 10069702 := by
    unfold C
    simp [show (5038848 * k + 3356567) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10069702) = 7558272 * k + 5034851 := by
    unfold C
    simp [show (15116544 * k + 10069702) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5034851) = 22674816 * k + 15104554 := by
    unfold C
    simp [show (7558272 * k + 5034851) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15104554) = 11337408 * k + 7552277 := by
    unfold C
    simp [show (22674816 * k + 15104554) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7552277) = 34012224 * k + 22656832 := by
    unfold C
    simp [show (11337408 * k + 7552277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22656832) = 17006112 * k + 11328416 := by
    unfold C
    simp [show (34012224 * k + 22656832) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11328416) = 8503056 * k + 5664208 := by
    unfold C
    simp [show (17006112 * k + 11328416) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5664208) = 4251528 * k + 2832104 := by
    unfold C
    simp [show (8503056 * k + 5664208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2832104) = 2125764 * k + 1416052 := by
    unfold C
    simp [show (4251528 * k + 2832104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1416052) = 1062882 * k + 708026 := by
    unfold C
    simp [show (2125764 * k + 1416052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 708026) = 531441 * k + 354013 := by
    unfold C
    simp [show (1062882 * k + 708026) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 698495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 698495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_698855 : ∀ k : Nat,
    iterate (1048576 * k + 698855) 32 = 531441 * k + 354196 ∧
      531441 * k + 354196 < 1048576 * k + 698855 := by
  intro k
  have h1 : C (1048576 * k + 698855) = 3145728 * k + 2096566 := by
    unfold C
    simp [show (1048576 * k + 698855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2096566) = 1572864 * k + 1048283 := by
    unfold C
    simp [show (3145728 * k + 2096566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1048283) = 4718592 * k + 3144850 := by
    unfold C
    simp [show (1572864 * k + 1048283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3144850) = 2359296 * k + 1572425 := by
    unfold C
    simp [show (4718592 * k + 3144850) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1572425) = 7077888 * k + 4717276 := by
    unfold C
    simp [show (2359296 * k + 1572425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4717276) = 3538944 * k + 2358638 := by
    unfold C
    simp [show (7077888 * k + 4717276) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2358638) = 1769472 * k + 1179319 := by
    unfold C
    simp [show (3538944 * k + 2358638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1179319) = 5308416 * k + 3537958 := by
    unfold C
    simp [show (1769472 * k + 1179319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3537958) = 2654208 * k + 1768979 := by
    unfold C
    simp [show (5308416 * k + 3537958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1768979) = 7962624 * k + 5306938 := by
    unfold C
    simp [show (2654208 * k + 1768979) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5306938) = 3981312 * k + 2653469 := by
    unfold C
    simp [show (7962624 * k + 5306938) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2653469) = 11943936 * k + 7960408 := by
    unfold C
    simp [show (3981312 * k + 2653469) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7960408) = 5971968 * k + 3980204 := by
    unfold C
    simp [show (11943936 * k + 7960408) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3980204) = 2985984 * k + 1990102 := by
    unfold C
    simp [show (5971968 * k + 3980204) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1990102) = 1492992 * k + 995051 := by
    unfold C
    simp [show (2985984 * k + 1990102) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 995051) = 4478976 * k + 2985154 := by
    unfold C
    simp [show (1492992 * k + 995051) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2985154) = 2239488 * k + 1492577 := by
    unfold C
    simp [show (4478976 * k + 2985154) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1492577) = 6718464 * k + 4477732 := by
    unfold C
    simp [show (2239488 * k + 1492577) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4477732) = 3359232 * k + 2238866 := by
    unfold C
    simp [show (6718464 * k + 4477732) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2238866) = 1679616 * k + 1119433 := by
    unfold C
    simp [show (3359232 * k + 2238866) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1119433) = 5038848 * k + 3358300 := by
    unfold C
    simp [show (1679616 * k + 1119433) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3358300) = 2519424 * k + 1679150 := by
    unfold C
    simp [show (5038848 * k + 3358300) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1679150) = 1259712 * k + 839575 := by
    unfold C
    simp [show (2519424 * k + 1679150) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 839575) = 3779136 * k + 2518726 := by
    unfold C
    simp [show (1259712 * k + 839575) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2518726) = 1889568 * k + 1259363 := by
    unfold C
    simp [show (3779136 * k + 2518726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1259363) = 5668704 * k + 3778090 := by
    unfold C
    simp [show (1889568 * k + 1259363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3778090) = 2834352 * k + 1889045 := by
    unfold C
    simp [show (5668704 * k + 3778090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1889045) = 8503056 * k + 5667136 := by
    unfold C
    simp [show (2834352 * k + 1889045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5667136) = 4251528 * k + 2833568 := by
    unfold C
    simp [show (8503056 * k + 5667136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2833568) = 2125764 * k + 1416784 := by
    unfold C
    simp [show (4251528 * k + 2833568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1416784) = 1062882 * k + 708392 := by
    unfold C
    simp [show (2125764 * k + 1416784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 708392) = 531441 * k + 354196 := by
    unfold C
    simp [show (1062882 * k + 708392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 698855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 698855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_699391 : ∀ k : Nat,
    iterate (1048576 * k + 699391) 32 = 531441 * k + 354467 ∧
      531441 * k + 354467 < 1048576 * k + 699391 := by
  intro k
  have h1 : C (1048576 * k + 699391) = 3145728 * k + 2098174 := by
    unfold C
    simp [show (1048576 * k + 699391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2098174) = 1572864 * k + 1049087 := by
    unfold C
    simp [show (3145728 * k + 2098174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1049087) = 4718592 * k + 3147262 := by
    unfold C
    simp [show (1572864 * k + 1049087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3147262) = 2359296 * k + 1573631 := by
    unfold C
    simp [show (4718592 * k + 3147262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1573631) = 7077888 * k + 4720894 := by
    unfold C
    simp [show (2359296 * k + 1573631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4720894) = 3538944 * k + 2360447 := by
    unfold C
    simp [show (7077888 * k + 4720894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2360447) = 10616832 * k + 7081342 := by
    unfold C
    simp [show (3538944 * k + 2360447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7081342) = 5308416 * k + 3540671 := by
    unfold C
    simp [show (10616832 * k + 7081342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3540671) = 15925248 * k + 10622014 := by
    unfold C
    simp [show (5308416 * k + 3540671) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10622014) = 7962624 * k + 5311007 := by
    unfold C
    simp [show (15925248 * k + 10622014) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5311007) = 23887872 * k + 15933022 := by
    unfold C
    simp [show (7962624 * k + 5311007) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15933022) = 11943936 * k + 7966511 := by
    unfold C
    simp [show (23887872 * k + 15933022) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7966511) = 35831808 * k + 23899534 := by
    unfold C
    simp [show (11943936 * k + 7966511) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23899534) = 17915904 * k + 11949767 := by
    unfold C
    simp [show (35831808 * k + 23899534) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11949767) = 53747712 * k + 35849302 := by
    unfold C
    simp [show (17915904 * k + 11949767) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 35849302) = 26873856 * k + 17924651 := by
    unfold C
    simp [show (53747712 * k + 35849302) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 17924651) = 80621568 * k + 53773954 := by
    unfold C
    simp [show (26873856 * k + 17924651) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 53773954) = 40310784 * k + 26886977 := by
    unfold C
    simp [show (80621568 * k + 53773954) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 26886977) = 120932352 * k + 80660932 := by
    unfold C
    simp [show (40310784 * k + 26886977) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 80660932) = 60466176 * k + 40330466 := by
    unfold C
    simp [show (120932352 * k + 80660932) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 40330466) = 30233088 * k + 20165233 := by
    unfold C
    simp [show (60466176 * k + 40330466) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20165233) = 90699264 * k + 60495700 := by
    unfold C
    simp [show (30233088 * k + 20165233) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 60495700) = 45349632 * k + 30247850 := by
    unfold C
    simp [show (90699264 * k + 60495700) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 30247850) = 22674816 * k + 15123925 := by
    unfold C
    simp [show (45349632 * k + 30247850) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15123925) = 68024448 * k + 45371776 := by
    unfold C
    simp [show (22674816 * k + 15123925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 45371776) = 34012224 * k + 22685888 := by
    unfold C
    simp [show (68024448 * k + 45371776) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 22685888) = 17006112 * k + 11342944 := by
    unfold C
    simp [show (34012224 * k + 22685888) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11342944) = 8503056 * k + 5671472 := by
    unfold C
    simp [show (17006112 * k + 11342944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5671472) = 4251528 * k + 2835736 := by
    unfold C
    simp [show (8503056 * k + 5671472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2835736) = 2125764 * k + 1417868 := by
    unfold C
    simp [show (4251528 * k + 2835736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1417868) = 1062882 * k + 708934 := by
    unfold C
    simp [show (2125764 * k + 1417868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 708934) = 531441 * k + 354467 := by
    unfold C
    simp [show (1062882 * k + 708934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 699391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 699391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_701119 : ∀ k : Nat,
    iterate (1048576 * k + 701119) 32 = 531441 * k + 355343 ∧
      531441 * k + 355343 < 1048576 * k + 701119 := by
  intro k
  have h1 : C (1048576 * k + 701119) = 3145728 * k + 2103358 := by
    unfold C
    simp [show (1048576 * k + 701119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2103358) = 1572864 * k + 1051679 := by
    unfold C
    simp [show (3145728 * k + 2103358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1051679) = 4718592 * k + 3155038 := by
    unfold C
    simp [show (1572864 * k + 1051679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3155038) = 2359296 * k + 1577519 := by
    unfold C
    simp [show (4718592 * k + 3155038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1577519) = 7077888 * k + 4732558 := by
    unfold C
    simp [show (2359296 * k + 1577519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4732558) = 3538944 * k + 2366279 := by
    unfold C
    simp [show (7077888 * k + 4732558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2366279) = 10616832 * k + 7098838 := by
    unfold C
    simp [show (3538944 * k + 2366279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7098838) = 5308416 * k + 3549419 := by
    unfold C
    simp [show (10616832 * k + 7098838) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3549419) = 15925248 * k + 10648258 := by
    unfold C
    simp [show (5308416 * k + 3549419) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10648258) = 7962624 * k + 5324129 := by
    unfold C
    simp [show (15925248 * k + 10648258) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5324129) = 23887872 * k + 15972388 := by
    unfold C
    simp [show (7962624 * k + 5324129) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15972388) = 11943936 * k + 7986194 := by
    unfold C
    simp [show (23887872 * k + 15972388) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7986194) = 5971968 * k + 3993097 := by
    unfold C
    simp [show (11943936 * k + 7986194) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3993097) = 17915904 * k + 11979292 := by
    unfold C
    simp [show (5971968 * k + 3993097) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11979292) = 8957952 * k + 5989646 := by
    unfold C
    simp [show (17915904 * k + 11979292) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5989646) = 4478976 * k + 2994823 := by
    unfold C
    simp [show (8957952 * k + 5989646) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2994823) = 13436928 * k + 8984470 := by
    unfold C
    simp [show (4478976 * k + 2994823) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8984470) = 6718464 * k + 4492235 := by
    unfold C
    simp [show (13436928 * k + 8984470) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4492235) = 20155392 * k + 13476706 := by
    unfold C
    simp [show (6718464 * k + 4492235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13476706) = 10077696 * k + 6738353 := by
    unfold C
    simp [show (20155392 * k + 13476706) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6738353) = 30233088 * k + 20215060 := by
    unfold C
    simp [show (10077696 * k + 6738353) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20215060) = 15116544 * k + 10107530 := by
    unfold C
    simp [show (30233088 * k + 20215060) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10107530) = 7558272 * k + 5053765 := by
    unfold C
    simp [show (15116544 * k + 10107530) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5053765) = 22674816 * k + 15161296 := by
    unfold C
    simp [show (7558272 * k + 5053765) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15161296) = 11337408 * k + 7580648 := by
    unfold C
    simp [show (22674816 * k + 15161296) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7580648) = 5668704 * k + 3790324 := by
    unfold C
    simp [show (11337408 * k + 7580648) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3790324) = 2834352 * k + 1895162 := by
    unfold C
    simp [show (5668704 * k + 3790324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1895162) = 1417176 * k + 947581 := by
    unfold C
    simp [show (2834352 * k + 1895162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 947581) = 4251528 * k + 2842744 := by
    unfold C
    simp [show (1417176 * k + 947581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2842744) = 2125764 * k + 1421372 := by
    unfold C
    simp [show (4251528 * k + 2842744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1421372) = 1062882 * k + 710686 := by
    unfold C
    simp [show (2125764 * k + 1421372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 710686) = 531441 * k + 355343 := by
    unfold C
    simp [show (1062882 * k + 710686) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 701119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 701119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_701439 : ∀ k : Nat,
    iterate (1048576 * k + 701439) 32 = 531441 * k + 355505 ∧
      531441 * k + 355505 < 1048576 * k + 701439 := by
  intro k
  have h1 : C (1048576 * k + 701439) = 3145728 * k + 2104318 := by
    unfold C
    simp [show (1048576 * k + 701439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2104318) = 1572864 * k + 1052159 := by
    unfold C
    simp [show (3145728 * k + 2104318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1052159) = 4718592 * k + 3156478 := by
    unfold C
    simp [show (1572864 * k + 1052159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3156478) = 2359296 * k + 1578239 := by
    unfold C
    simp [show (4718592 * k + 3156478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1578239) = 7077888 * k + 4734718 := by
    unfold C
    simp [show (2359296 * k + 1578239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4734718) = 3538944 * k + 2367359 := by
    unfold C
    simp [show (7077888 * k + 4734718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2367359) = 10616832 * k + 7102078 := by
    unfold C
    simp [show (3538944 * k + 2367359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7102078) = 5308416 * k + 3551039 := by
    unfold C
    simp [show (10616832 * k + 7102078) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3551039) = 15925248 * k + 10653118 := by
    unfold C
    simp [show (5308416 * k + 3551039) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10653118) = 7962624 * k + 5326559 := by
    unfold C
    simp [show (15925248 * k + 10653118) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5326559) = 23887872 * k + 15979678 := by
    unfold C
    simp [show (7962624 * k + 5326559) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15979678) = 11943936 * k + 7989839 := by
    unfold C
    simp [show (23887872 * k + 15979678) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7989839) = 35831808 * k + 23969518 := by
    unfold C
    simp [show (11943936 * k + 7989839) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23969518) = 17915904 * k + 11984759 := by
    unfold C
    simp [show (35831808 * k + 23969518) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11984759) = 53747712 * k + 35954278 := by
    unfold C
    simp [show (17915904 * k + 11984759) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 35954278) = 26873856 * k + 17977139 := by
    unfold C
    simp [show (53747712 * k + 35954278) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 17977139) = 80621568 * k + 53931418 := by
    unfold C
    simp [show (26873856 * k + 17977139) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 53931418) = 40310784 * k + 26965709 := by
    unfold C
    simp [show (80621568 * k + 53931418) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 26965709) = 120932352 * k + 80897128 := by
    unfold C
    simp [show (40310784 * k + 26965709) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 80897128) = 60466176 * k + 40448564 := by
    unfold C
    simp [show (120932352 * k + 80897128) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 40448564) = 30233088 * k + 20224282 := by
    unfold C
    simp [show (60466176 * k + 40448564) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 20224282) = 15116544 * k + 10112141 := by
    unfold C
    simp [show (30233088 * k + 20224282) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10112141) = 45349632 * k + 30336424 := by
    unfold C
    simp [show (15116544 * k + 10112141) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 30336424) = 22674816 * k + 15168212 := by
    unfold C
    simp [show (45349632 * k + 30336424) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 15168212) = 11337408 * k + 7584106 := by
    unfold C
    simp [show (22674816 * k + 15168212) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7584106) = 5668704 * k + 3792053 := by
    unfold C
    simp [show (11337408 * k + 7584106) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3792053) = 17006112 * k + 11376160 := by
    unfold C
    simp [show (5668704 * k + 3792053) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11376160) = 8503056 * k + 5688080 := by
    unfold C
    simp [show (17006112 * k + 11376160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5688080) = 4251528 * k + 2844040 := by
    unfold C
    simp [show (8503056 * k + 5688080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2844040) = 2125764 * k + 1422020 := by
    unfold C
    simp [show (4251528 * k + 2844040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1422020) = 1062882 * k + 711010 := by
    unfold C
    simp [show (2125764 * k + 1422020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 711010) = 531441 * k + 355505 := by
    unfold C
    simp [show (1062882 * k + 711010) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 701439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 701439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_701531 : ∀ k : Nat,
    iterate (1048576 * k + 701531) 32 = 531441 * k + 355552 ∧
      531441 * k + 355552 < 1048576 * k + 701531 := by
  intro k
  have h1 : C (1048576 * k + 701531) = 3145728 * k + 2104594 := by
    unfold C
    simp [show (1048576 * k + 701531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2104594) = 1572864 * k + 1052297 := by
    unfold C
    simp [show (3145728 * k + 2104594) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1052297) = 4718592 * k + 3156892 := by
    unfold C
    simp [show (1572864 * k + 1052297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3156892) = 2359296 * k + 1578446 := by
    unfold C
    simp [show (4718592 * k + 3156892) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1578446) = 1179648 * k + 789223 := by
    unfold C
    simp [show (2359296 * k + 1578446) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 789223) = 3538944 * k + 2367670 := by
    unfold C
    simp [show (1179648 * k + 789223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2367670) = 1769472 * k + 1183835 := by
    unfold C
    simp [show (3538944 * k + 2367670) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1183835) = 5308416 * k + 3551506 := by
    unfold C
    simp [show (1769472 * k + 1183835) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3551506) = 2654208 * k + 1775753 := by
    unfold C
    simp [show (5308416 * k + 3551506) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1775753) = 7962624 * k + 5327260 := by
    unfold C
    simp [show (2654208 * k + 1775753) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5327260) = 3981312 * k + 2663630 := by
    unfold C
    simp [show (7962624 * k + 5327260) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2663630) = 1990656 * k + 1331815 := by
    unfold C
    simp [show (3981312 * k + 2663630) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1331815) = 5971968 * k + 3995446 := by
    unfold C
    simp [show (1990656 * k + 1331815) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3995446) = 2985984 * k + 1997723 := by
    unfold C
    simp [show (5971968 * k + 3995446) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1997723) = 8957952 * k + 5993170 := by
    unfold C
    simp [show (2985984 * k + 1997723) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5993170) = 4478976 * k + 2996585 := by
    unfold C
    simp [show (8957952 * k + 5993170) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2996585) = 13436928 * k + 8989756 := by
    unfold C
    simp [show (4478976 * k + 2996585) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8989756) = 6718464 * k + 4494878 := by
    unfold C
    simp [show (13436928 * k + 8989756) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4494878) = 3359232 * k + 2247439 := by
    unfold C
    simp [show (6718464 * k + 4494878) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2247439) = 10077696 * k + 6742318 := by
    unfold C
    simp [show (3359232 * k + 2247439) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6742318) = 5038848 * k + 3371159 := by
    unfold C
    simp [show (10077696 * k + 6742318) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3371159) = 15116544 * k + 10113478 := by
    unfold C
    simp [show (5038848 * k + 3371159) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10113478) = 7558272 * k + 5056739 := by
    unfold C
    simp [show (15116544 * k + 10113478) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5056739) = 22674816 * k + 15170218 := by
    unfold C
    simp [show (7558272 * k + 5056739) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 15170218) = 11337408 * k + 7585109 := by
    unfold C
    simp [show (22674816 * k + 15170218) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7585109) = 34012224 * k + 22755328 := by
    unfold C
    simp [show (11337408 * k + 7585109) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22755328) = 17006112 * k + 11377664 := by
    unfold C
    simp [show (34012224 * k + 22755328) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11377664) = 8503056 * k + 5688832 := by
    unfold C
    simp [show (17006112 * k + 11377664) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5688832) = 4251528 * k + 2844416 := by
    unfold C
    simp [show (8503056 * k + 5688832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2844416) = 2125764 * k + 1422208 := by
    unfold C
    simp [show (4251528 * k + 2844416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1422208) = 1062882 * k + 711104 := by
    unfold C
    simp [show (2125764 * k + 1422208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 711104) = 531441 * k + 355552 := by
    unfold C
    simp [show (1062882 * k + 711104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 701531) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 701531)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_701567 : ∀ k : Nat,
    iterate (1048576 * k + 701567) 32 = 531441 * k + 355570 ∧
      531441 * k + 355570 < 1048576 * k + 701567 := by
  intro k
  have h1 : C (1048576 * k + 701567) = 3145728 * k + 2104702 := by
    unfold C
    simp [show (1048576 * k + 701567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2104702) = 1572864 * k + 1052351 := by
    unfold C
    simp [show (3145728 * k + 2104702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1052351) = 4718592 * k + 3157054 := by
    unfold C
    simp [show (1572864 * k + 1052351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3157054) = 2359296 * k + 1578527 := by
    unfold C
    simp [show (4718592 * k + 3157054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1578527) = 7077888 * k + 4735582 := by
    unfold C
    simp [show (2359296 * k + 1578527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4735582) = 3538944 * k + 2367791 := by
    unfold C
    simp [show (7077888 * k + 4735582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2367791) = 10616832 * k + 7103374 := by
    unfold C
    simp [show (3538944 * k + 2367791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7103374) = 5308416 * k + 3551687 := by
    unfold C
    simp [show (10616832 * k + 7103374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3551687) = 15925248 * k + 10655062 := by
    unfold C
    simp [show (5308416 * k + 3551687) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10655062) = 7962624 * k + 5327531 := by
    unfold C
    simp [show (15925248 * k + 10655062) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5327531) = 23887872 * k + 15982594 := by
    unfold C
    simp [show (7962624 * k + 5327531) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15982594) = 11943936 * k + 7991297 := by
    unfold C
    simp [show (23887872 * k + 15982594) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7991297) = 35831808 * k + 23973892 := by
    unfold C
    simp [show (11943936 * k + 7991297) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23973892) = 17915904 * k + 11986946 := by
    unfold C
    simp [show (35831808 * k + 23973892) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11986946) = 8957952 * k + 5993473 := by
    unfold C
    simp [show (17915904 * k + 11986946) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5993473) = 26873856 * k + 17980420 := by
    unfold C
    simp [show (8957952 * k + 5993473) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17980420) = 13436928 * k + 8990210 := by
    unfold C
    simp [show (26873856 * k + 17980420) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8990210) = 6718464 * k + 4495105 := by
    unfold C
    simp [show (13436928 * k + 8990210) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4495105) = 20155392 * k + 13485316 := by
    unfold C
    simp [show (6718464 * k + 4495105) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13485316) = 10077696 * k + 6742658 := by
    unfold C
    simp [show (20155392 * k + 13485316) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6742658) = 5038848 * k + 3371329 := by
    unfold C
    simp [show (10077696 * k + 6742658) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3371329) = 15116544 * k + 10113988 := by
    unfold C
    simp [show (5038848 * k + 3371329) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10113988) = 7558272 * k + 5056994 := by
    unfold C
    simp [show (15116544 * k + 10113988) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5056994) = 3779136 * k + 2528497 := by
    unfold C
    simp [show (7558272 * k + 5056994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2528497) = 11337408 * k + 7585492 := by
    unfold C
    simp [show (3779136 * k + 2528497) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7585492) = 5668704 * k + 3792746 := by
    unfold C
    simp [show (11337408 * k + 7585492) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3792746) = 2834352 * k + 1896373 := by
    unfold C
    simp [show (5668704 * k + 3792746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1896373) = 8503056 * k + 5689120 := by
    unfold C
    simp [show (2834352 * k + 1896373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5689120) = 4251528 * k + 2844560 := by
    unfold C
    simp [show (8503056 * k + 5689120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2844560) = 2125764 * k + 1422280 := by
    unfold C
    simp [show (4251528 * k + 2844560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1422280) = 1062882 * k + 711140 := by
    unfold C
    simp [show (2125764 * k + 1422280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 711140) = 531441 * k + 355570 := by
    unfold C
    simp [show (1062882 * k + 711140) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 701567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 701567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_702575 : ∀ k : Nat,
    iterate (1048576 * k + 702575) 32 = 531441 * k + 356081 ∧
      531441 * k + 356081 < 1048576 * k + 702575 := by
  intro k
  have h1 : C (1048576 * k + 702575) = 3145728 * k + 2107726 := by
    unfold C
    simp [show (1048576 * k + 702575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2107726) = 1572864 * k + 1053863 := by
    unfold C
    simp [show (3145728 * k + 2107726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1053863) = 4718592 * k + 3161590 := by
    unfold C
    simp [show (1572864 * k + 1053863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3161590) = 2359296 * k + 1580795 := by
    unfold C
    simp [show (4718592 * k + 3161590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1580795) = 7077888 * k + 4742386 := by
    unfold C
    simp [show (2359296 * k + 1580795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4742386) = 3538944 * k + 2371193 := by
    unfold C
    simp [show (7077888 * k + 4742386) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2371193) = 10616832 * k + 7113580 := by
    unfold C
    simp [show (3538944 * k + 2371193) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7113580) = 5308416 * k + 3556790 := by
    unfold C
    simp [show (10616832 * k + 7113580) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3556790) = 2654208 * k + 1778395 := by
    unfold C
    simp [show (5308416 * k + 3556790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1778395) = 7962624 * k + 5335186 := by
    unfold C
    simp [show (2654208 * k + 1778395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5335186) = 3981312 * k + 2667593 := by
    unfold C
    simp [show (7962624 * k + 5335186) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2667593) = 11943936 * k + 8002780 := by
    unfold C
    simp [show (3981312 * k + 2667593) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8002780) = 5971968 * k + 4001390 := by
    unfold C
    simp [show (11943936 * k + 8002780) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4001390) = 2985984 * k + 2000695 := by
    unfold C
    simp [show (5971968 * k + 4001390) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2000695) = 8957952 * k + 6002086 := by
    unfold C
    simp [show (2985984 * k + 2000695) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6002086) = 4478976 * k + 3001043 := by
    unfold C
    simp [show (8957952 * k + 6002086) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3001043) = 13436928 * k + 9003130 := by
    unfold C
    simp [show (4478976 * k + 3001043) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9003130) = 6718464 * k + 4501565 := by
    unfold C
    simp [show (13436928 * k + 9003130) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4501565) = 20155392 * k + 13504696 := by
    unfold C
    simp [show (6718464 * k + 4501565) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13504696) = 10077696 * k + 6752348 := by
    unfold C
    simp [show (20155392 * k + 13504696) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6752348) = 5038848 * k + 3376174 := by
    unfold C
    simp [show (10077696 * k + 6752348) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3376174) = 2519424 * k + 1688087 := by
    unfold C
    simp [show (5038848 * k + 3376174) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1688087) = 7558272 * k + 5064262 := by
    unfold C
    simp [show (2519424 * k + 1688087) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5064262) = 3779136 * k + 2532131 := by
    unfold C
    simp [show (7558272 * k + 5064262) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2532131) = 11337408 * k + 7596394 := by
    unfold C
    simp [show (3779136 * k + 2532131) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7596394) = 5668704 * k + 3798197 := by
    unfold C
    simp [show (11337408 * k + 7596394) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3798197) = 17006112 * k + 11394592 := by
    unfold C
    simp [show (5668704 * k + 3798197) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11394592) = 8503056 * k + 5697296 := by
    unfold C
    simp [show (17006112 * k + 11394592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5697296) = 4251528 * k + 2848648 := by
    unfold C
    simp [show (8503056 * k + 5697296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2848648) = 2125764 * k + 1424324 := by
    unfold C
    simp [show (4251528 * k + 2848648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1424324) = 1062882 * k + 712162 := by
    unfold C
    simp [show (2125764 * k + 1424324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 712162) = 531441 * k + 356081 := by
    unfold C
    simp [show (1062882 * k + 712162) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 702575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 702575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_703143 : ∀ k : Nat,
    iterate (1048576 * k + 703143) 32 = 531441 * k + 356369 ∧
      531441 * k + 356369 < 1048576 * k + 703143 := by
  intro k
  have h1 : C (1048576 * k + 703143) = 3145728 * k + 2109430 := by
    unfold C
    simp [show (1048576 * k + 703143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2109430) = 1572864 * k + 1054715 := by
    unfold C
    simp [show (3145728 * k + 2109430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1054715) = 4718592 * k + 3164146 := by
    unfold C
    simp [show (1572864 * k + 1054715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3164146) = 2359296 * k + 1582073 := by
    unfold C
    simp [show (4718592 * k + 3164146) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1582073) = 7077888 * k + 4746220 := by
    unfold C
    simp [show (2359296 * k + 1582073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4746220) = 3538944 * k + 2373110 := by
    unfold C
    simp [show (7077888 * k + 4746220) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2373110) = 1769472 * k + 1186555 := by
    unfold C
    simp [show (3538944 * k + 2373110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1186555) = 5308416 * k + 3559666 := by
    unfold C
    simp [show (1769472 * k + 1186555) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3559666) = 2654208 * k + 1779833 := by
    unfold C
    simp [show (5308416 * k + 3559666) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1779833) = 7962624 * k + 5339500 := by
    unfold C
    simp [show (2654208 * k + 1779833) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5339500) = 3981312 * k + 2669750 := by
    unfold C
    simp [show (7962624 * k + 5339500) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2669750) = 1990656 * k + 1334875 := by
    unfold C
    simp [show (3981312 * k + 2669750) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1334875) = 5971968 * k + 4004626 := by
    unfold C
    simp [show (1990656 * k + 1334875) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4004626) = 2985984 * k + 2002313 := by
    unfold C
    simp [show (5971968 * k + 4004626) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2002313) = 8957952 * k + 6006940 := by
    unfold C
    simp [show (2985984 * k + 2002313) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6006940) = 4478976 * k + 3003470 := by
    unfold C
    simp [show (8957952 * k + 6006940) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3003470) = 2239488 * k + 1501735 := by
    unfold C
    simp [show (4478976 * k + 3003470) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1501735) = 6718464 * k + 4505206 := by
    unfold C
    simp [show (2239488 * k + 1501735) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4505206) = 3359232 * k + 2252603 := by
    unfold C
    simp [show (6718464 * k + 4505206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2252603) = 10077696 * k + 6757810 := by
    unfold C
    simp [show (3359232 * k + 2252603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6757810) = 5038848 * k + 3378905 := by
    unfold C
    simp [show (10077696 * k + 6757810) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3378905) = 15116544 * k + 10136716 := by
    unfold C
    simp [show (5038848 * k + 3378905) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10136716) = 7558272 * k + 5068358 := by
    unfold C
    simp [show (15116544 * k + 10136716) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5068358) = 3779136 * k + 2534179 := by
    unfold C
    simp [show (7558272 * k + 5068358) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2534179) = 11337408 * k + 7602538 := by
    unfold C
    simp [show (3779136 * k + 2534179) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7602538) = 5668704 * k + 3801269 := by
    unfold C
    simp [show (11337408 * k + 7602538) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3801269) = 17006112 * k + 11403808 := by
    unfold C
    simp [show (5668704 * k + 3801269) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 11403808) = 8503056 * k + 5701904 := by
    unfold C
    simp [show (17006112 * k + 11403808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5701904) = 4251528 * k + 2850952 := by
    unfold C
    simp [show (8503056 * k + 5701904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2850952) = 2125764 * k + 1425476 := by
    unfold C
    simp [show (4251528 * k + 2850952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1425476) = 1062882 * k + 712738 := by
    unfold C
    simp [show (2125764 * k + 1425476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 712738) = 531441 * k + 356369 := by
    unfold C
    simp [show (1062882 * k + 712738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 703143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 703143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_703295 : ∀ k : Nat,
    iterate (1048576 * k + 703295) 32 = 531441 * k + 356446 ∧
      531441 * k + 356446 < 1048576 * k + 703295 := by
  intro k
  have h1 : C (1048576 * k + 703295) = 3145728 * k + 2109886 := by
    unfold C
    simp [show (1048576 * k + 703295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2109886) = 1572864 * k + 1054943 := by
    unfold C
    simp [show (3145728 * k + 2109886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1054943) = 4718592 * k + 3164830 := by
    unfold C
    simp [show (1572864 * k + 1054943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3164830) = 2359296 * k + 1582415 := by
    unfold C
    simp [show (4718592 * k + 3164830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1582415) = 7077888 * k + 4747246 := by
    unfold C
    simp [show (2359296 * k + 1582415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4747246) = 3538944 * k + 2373623 := by
    unfold C
    simp [show (7077888 * k + 4747246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2373623) = 10616832 * k + 7120870 := by
    unfold C
    simp [show (3538944 * k + 2373623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7120870) = 5308416 * k + 3560435 := by
    unfold C
    simp [show (10616832 * k + 7120870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3560435) = 15925248 * k + 10681306 := by
    unfold C
    simp [show (5308416 * k + 3560435) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10681306) = 7962624 * k + 5340653 := by
    unfold C
    simp [show (15925248 * k + 10681306) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5340653) = 23887872 * k + 16021960 := by
    unfold C
    simp [show (7962624 * k + 5340653) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16021960) = 11943936 * k + 8010980 := by
    unfold C
    simp [show (23887872 * k + 16021960) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8010980) = 5971968 * k + 4005490 := by
    unfold C
    simp [show (11943936 * k + 8010980) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4005490) = 2985984 * k + 2002745 := by
    unfold C
    simp [show (5971968 * k + 4005490) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2002745) = 8957952 * k + 6008236 := by
    unfold C
    simp [show (2985984 * k + 2002745) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6008236) = 4478976 * k + 3004118 := by
    unfold C
    simp [show (8957952 * k + 6008236) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3004118) = 2239488 * k + 1502059 := by
    unfold C
    simp [show (4478976 * k + 3004118) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1502059) = 6718464 * k + 4506178 := by
    unfold C
    simp [show (2239488 * k + 1502059) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4506178) = 3359232 * k + 2253089 := by
    unfold C
    simp [show (6718464 * k + 4506178) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2253089) = 10077696 * k + 6759268 := by
    unfold C
    simp [show (3359232 * k + 2253089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6759268) = 5038848 * k + 3379634 := by
    unfold C
    simp [show (10077696 * k + 6759268) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3379634) = 2519424 * k + 1689817 := by
    unfold C
    simp [show (5038848 * k + 3379634) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1689817) = 7558272 * k + 5069452 := by
    unfold C
    simp [show (2519424 * k + 1689817) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5069452) = 3779136 * k + 2534726 := by
    unfold C
    simp [show (7558272 * k + 5069452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2534726) = 1889568 * k + 1267363 := by
    unfold C
    simp [show (3779136 * k + 2534726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1267363) = 5668704 * k + 3802090 := by
    unfold C
    simp [show (1889568 * k + 1267363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3802090) = 2834352 * k + 1901045 := by
    unfold C
    simp [show (5668704 * k + 3802090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1901045) = 8503056 * k + 5703136 := by
    unfold C
    simp [show (2834352 * k + 1901045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5703136) = 4251528 * k + 2851568 := by
    unfold C
    simp [show (8503056 * k + 5703136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2851568) = 2125764 * k + 1425784 := by
    unfold C
    simp [show (4251528 * k + 2851568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1425784) = 1062882 * k + 712892 := by
    unfold C
    simp [show (2125764 * k + 1425784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 712892) = 531441 * k + 356446 := by
    unfold C
    simp [show (1062882 * k + 712892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 703295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 703295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_703551 : ∀ k : Nat,
    iterate (1048576 * k + 703551) 32 = 531441 * k + 356576 ∧
      531441 * k + 356576 < 1048576 * k + 703551 := by
  intro k
  have h1 : C (1048576 * k + 703551) = 3145728 * k + 2110654 := by
    unfold C
    simp [show (1048576 * k + 703551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2110654) = 1572864 * k + 1055327 := by
    unfold C
    simp [show (3145728 * k + 2110654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1055327) = 4718592 * k + 3165982 := by
    unfold C
    simp [show (1572864 * k + 1055327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3165982) = 2359296 * k + 1582991 := by
    unfold C
    simp [show (4718592 * k + 3165982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1582991) = 7077888 * k + 4748974 := by
    unfold C
    simp [show (2359296 * k + 1582991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4748974) = 3538944 * k + 2374487 := by
    unfold C
    simp [show (7077888 * k + 4748974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2374487) = 10616832 * k + 7123462 := by
    unfold C
    simp [show (3538944 * k + 2374487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7123462) = 5308416 * k + 3561731 := by
    unfold C
    simp [show (10616832 * k + 7123462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3561731) = 15925248 * k + 10685194 := by
    unfold C
    simp [show (5308416 * k + 3561731) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10685194) = 7962624 * k + 5342597 := by
    unfold C
    simp [show (15925248 * k + 10685194) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5342597) = 23887872 * k + 16027792 := by
    unfold C
    simp [show (7962624 * k + 5342597) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16027792) = 11943936 * k + 8013896 := by
    unfold C
    simp [show (23887872 * k + 16027792) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8013896) = 5971968 * k + 4006948 := by
    unfold C
    simp [show (11943936 * k + 8013896) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4006948) = 2985984 * k + 2003474 := by
    unfold C
    simp [show (5971968 * k + 4006948) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2003474) = 1492992 * k + 1001737 := by
    unfold C
    simp [show (2985984 * k + 2003474) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1001737) = 4478976 * k + 3005212 := by
    unfold C
    simp [show (1492992 * k + 1001737) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3005212) = 2239488 * k + 1502606 := by
    unfold C
    simp [show (4478976 * k + 3005212) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1502606) = 1119744 * k + 751303 := by
    unfold C
    simp [show (2239488 * k + 1502606) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 751303) = 3359232 * k + 2253910 := by
    unfold C
    simp [show (1119744 * k + 751303) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2253910) = 1679616 * k + 1126955 := by
    unfold C
    simp [show (3359232 * k + 2253910) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1126955) = 5038848 * k + 3380866 := by
    unfold C
    simp [show (1679616 * k + 1126955) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3380866) = 2519424 * k + 1690433 := by
    unfold C
    simp [show (5038848 * k + 3380866) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1690433) = 7558272 * k + 5071300 := by
    unfold C
    simp [show (2519424 * k + 1690433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5071300) = 3779136 * k + 2535650 := by
    unfold C
    simp [show (7558272 * k + 5071300) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2535650) = 1889568 * k + 1267825 := by
    unfold C
    simp [show (3779136 * k + 2535650) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1267825) = 5668704 * k + 3803476 := by
    unfold C
    simp [show (1889568 * k + 1267825) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3803476) = 2834352 * k + 1901738 := by
    unfold C
    simp [show (5668704 * k + 3803476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1901738) = 1417176 * k + 950869 := by
    unfold C
    simp [show (2834352 * k + 1901738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 950869) = 4251528 * k + 2852608 := by
    unfold C
    simp [show (1417176 * k + 950869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2852608) = 2125764 * k + 1426304 := by
    unfold C
    simp [show (4251528 * k + 2852608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1426304) = 1062882 * k + 713152 := by
    unfold C
    simp [show (2125764 * k + 1426304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 713152) = 531441 * k + 356576 := by
    unfold C
    simp [show (1062882 * k + 713152) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 703551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 703551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_703615 : ∀ k : Nat,
    iterate (1048576 * k + 703615) 32 = 531441 * k + 356608 ∧
      531441 * k + 356608 < 1048576 * k + 703615 := by
  intro k
  have h1 : C (1048576 * k + 703615) = 3145728 * k + 2110846 := by
    unfold C
    simp [show (1048576 * k + 703615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2110846) = 1572864 * k + 1055423 := by
    unfold C
    simp [show (3145728 * k + 2110846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1055423) = 4718592 * k + 3166270 := by
    unfold C
    simp [show (1572864 * k + 1055423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3166270) = 2359296 * k + 1583135 := by
    unfold C
    simp [show (4718592 * k + 3166270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1583135) = 7077888 * k + 4749406 := by
    unfold C
    simp [show (2359296 * k + 1583135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4749406) = 3538944 * k + 2374703 := by
    unfold C
    simp [show (7077888 * k + 4749406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2374703) = 10616832 * k + 7124110 := by
    unfold C
    simp [show (3538944 * k + 2374703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7124110) = 5308416 * k + 3562055 := by
    unfold C
    simp [show (10616832 * k + 7124110) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3562055) = 15925248 * k + 10686166 := by
    unfold C
    simp [show (5308416 * k + 3562055) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10686166) = 7962624 * k + 5343083 := by
    unfold C
    simp [show (15925248 * k + 10686166) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5343083) = 23887872 * k + 16029250 := by
    unfold C
    simp [show (7962624 * k + 5343083) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16029250) = 11943936 * k + 8014625 := by
    unfold C
    simp [show (23887872 * k + 16029250) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8014625) = 35831808 * k + 24043876 := by
    unfold C
    simp [show (11943936 * k + 8014625) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 24043876) = 17915904 * k + 12021938 := by
    unfold C
    simp [show (35831808 * k + 24043876) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12021938) = 8957952 * k + 6010969 := by
    unfold C
    simp [show (17915904 * k + 12021938) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6010969) = 26873856 * k + 18032908 := by
    unfold C
    simp [show (8957952 * k + 6010969) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 18032908) = 13436928 * k + 9016454 := by
    unfold C
    simp [show (26873856 * k + 18032908) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9016454) = 6718464 * k + 4508227 := by
    unfold C
    simp [show (13436928 * k + 9016454) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4508227) = 20155392 * k + 13524682 := by
    unfold C
    simp [show (6718464 * k + 4508227) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13524682) = 10077696 * k + 6762341 := by
    unfold C
    simp [show (20155392 * k + 13524682) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6762341) = 30233088 * k + 20287024 := by
    unfold C
    simp [show (10077696 * k + 6762341) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 20287024) = 15116544 * k + 10143512 := by
    unfold C
    simp [show (30233088 * k + 20287024) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10143512) = 7558272 * k + 5071756 := by
    unfold C
    simp [show (15116544 * k + 10143512) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5071756) = 3779136 * k + 2535878 := by
    unfold C
    simp [show (7558272 * k + 5071756) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2535878) = 1889568 * k + 1267939 := by
    unfold C
    simp [show (3779136 * k + 2535878) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1267939) = 5668704 * k + 3803818 := by
    unfold C
    simp [show (1889568 * k + 1267939) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3803818) = 2834352 * k + 1901909 := by
    unfold C
    simp [show (5668704 * k + 3803818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1901909) = 8503056 * k + 5705728 := by
    unfold C
    simp [show (2834352 * k + 1901909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5705728) = 4251528 * k + 2852864 := by
    unfold C
    simp [show (8503056 * k + 5705728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2852864) = 2125764 * k + 1426432 := by
    unfold C
    simp [show (4251528 * k + 2852864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1426432) = 1062882 * k + 713216 := by
    unfold C
    simp [show (2125764 * k + 1426432) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 713216) = 531441 * k + 356608 := by
    unfold C
    simp [show (1062882 * k + 713216) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 703615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 703615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard090
