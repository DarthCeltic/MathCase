import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard063

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_493103 : ∀ k : Nat,
    iterate (1048576 * k + 493103) 32 = 531441 * k + 249916 ∧
      531441 * k + 249916 < 1048576 * k + 493103 := by
  intro k
  have h1 : C (1048576 * k + 493103) = 3145728 * k + 1479310 := by
    unfold C
    simp [show (1048576 * k + 493103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1479310) = 1572864 * k + 739655 := by
    unfold C
    simp [show (3145728 * k + 1479310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 739655) = 4718592 * k + 2218966 := by
    unfold C
    simp [show (1572864 * k + 739655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2218966) = 2359296 * k + 1109483 := by
    unfold C
    simp [show (4718592 * k + 2218966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1109483) = 7077888 * k + 3328450 := by
    unfold C
    simp [show (2359296 * k + 1109483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3328450) = 3538944 * k + 1664225 := by
    unfold C
    simp [show (7077888 * k + 3328450) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1664225) = 10616832 * k + 4992676 := by
    unfold C
    simp [show (3538944 * k + 1664225) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4992676) = 5308416 * k + 2496338 := by
    unfold C
    simp [show (10616832 * k + 4992676) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2496338) = 2654208 * k + 1248169 := by
    unfold C
    simp [show (5308416 * k + 2496338) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1248169) = 7962624 * k + 3744508 := by
    unfold C
    simp [show (2654208 * k + 1248169) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3744508) = 3981312 * k + 1872254 := by
    unfold C
    simp [show (7962624 * k + 3744508) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1872254) = 1990656 * k + 936127 := by
    unfold C
    simp [show (3981312 * k + 1872254) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 936127) = 5971968 * k + 2808382 := by
    unfold C
    simp [show (1990656 * k + 936127) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2808382) = 2985984 * k + 1404191 := by
    unfold C
    simp [show (5971968 * k + 2808382) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1404191) = 8957952 * k + 4212574 := by
    unfold C
    simp [show (2985984 * k + 1404191) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4212574) = 4478976 * k + 2106287 := by
    unfold C
    simp [show (8957952 * k + 4212574) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2106287) = 13436928 * k + 6318862 := by
    unfold C
    simp [show (4478976 * k + 2106287) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6318862) = 6718464 * k + 3159431 := by
    unfold C
    simp [show (13436928 * k + 6318862) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3159431) = 20155392 * k + 9478294 := by
    unfold C
    simp [show (6718464 * k + 3159431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9478294) = 10077696 * k + 4739147 := by
    unfold C
    simp [show (20155392 * k + 9478294) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4739147) = 30233088 * k + 14217442 := by
    unfold C
    simp [show (10077696 * k + 4739147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14217442) = 15116544 * k + 7108721 := by
    unfold C
    simp [show (30233088 * k + 14217442) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7108721) = 45349632 * k + 21326164 := by
    unfold C
    simp [show (15116544 * k + 7108721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 21326164) = 22674816 * k + 10663082 := by
    unfold C
    simp [show (45349632 * k + 21326164) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10663082) = 11337408 * k + 5331541 := by
    unfold C
    simp [show (22674816 * k + 10663082) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5331541) = 34012224 * k + 15994624 := by
    unfold C
    simp [show (11337408 * k + 5331541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 15994624) = 17006112 * k + 7997312 := by
    unfold C
    simp [show (34012224 * k + 15994624) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7997312) = 8503056 * k + 3998656 := by
    unfold C
    simp [show (17006112 * k + 7997312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3998656) = 4251528 * k + 1999328 := by
    unfold C
    simp [show (8503056 * k + 3998656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1999328) = 2125764 * k + 999664 := by
    unfold C
    simp [show (4251528 * k + 1999328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 999664) = 1062882 * k + 499832 := by
    unfold C
    simp [show (2125764 * k + 999664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 499832) = 531441 * k + 249916 := by
    unfold C
    simp [show (1062882 * k + 499832) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 493103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 493103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_493211 : ∀ k : Nat,
    iterate (1048576 * k + 493211) 32 = 531441 * k + 249971 ∧
      531441 * k + 249971 < 1048576 * k + 493211 := by
  intro k
  have h1 : C (1048576 * k + 493211) = 3145728 * k + 1479634 := by
    unfold C
    simp [show (1048576 * k + 493211) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1479634) = 1572864 * k + 739817 := by
    unfold C
    simp [show (3145728 * k + 1479634) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 739817) = 4718592 * k + 2219452 := by
    unfold C
    simp [show (1572864 * k + 739817) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2219452) = 2359296 * k + 1109726 := by
    unfold C
    simp [show (4718592 * k + 2219452) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1109726) = 1179648 * k + 554863 := by
    unfold C
    simp [show (2359296 * k + 1109726) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 554863) = 3538944 * k + 1664590 := by
    unfold C
    simp [show (1179648 * k + 554863) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1664590) = 1769472 * k + 832295 := by
    unfold C
    simp [show (3538944 * k + 1664590) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 832295) = 5308416 * k + 2496886 := by
    unfold C
    simp [show (1769472 * k + 832295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2496886) = 2654208 * k + 1248443 := by
    unfold C
    simp [show (5308416 * k + 2496886) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1248443) = 7962624 * k + 3745330 := by
    unfold C
    simp [show (2654208 * k + 1248443) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3745330) = 3981312 * k + 1872665 := by
    unfold C
    simp [show (7962624 * k + 3745330) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1872665) = 11943936 * k + 5617996 := by
    unfold C
    simp [show (3981312 * k + 1872665) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5617996) = 5971968 * k + 2808998 := by
    unfold C
    simp [show (11943936 * k + 5617996) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2808998) = 2985984 * k + 1404499 := by
    unfold C
    simp [show (5971968 * k + 2808998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1404499) = 8957952 * k + 4213498 := by
    unfold C
    simp [show (2985984 * k + 1404499) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4213498) = 4478976 * k + 2106749 := by
    unfold C
    simp [show (8957952 * k + 4213498) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2106749) = 13436928 * k + 6320248 := by
    unfold C
    simp [show (4478976 * k + 2106749) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6320248) = 6718464 * k + 3160124 := by
    unfold C
    simp [show (13436928 * k + 6320248) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3160124) = 3359232 * k + 1580062 := by
    unfold C
    simp [show (6718464 * k + 3160124) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1580062) = 1679616 * k + 790031 := by
    unfold C
    simp [show (3359232 * k + 1580062) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 790031) = 5038848 * k + 2370094 := by
    unfold C
    simp [show (1679616 * k + 790031) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2370094) = 2519424 * k + 1185047 := by
    unfold C
    simp [show (5038848 * k + 2370094) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1185047) = 7558272 * k + 3555142 := by
    unfold C
    simp [show (2519424 * k + 1185047) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3555142) = 3779136 * k + 1777571 := by
    unfold C
    simp [show (7558272 * k + 3555142) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1777571) = 11337408 * k + 5332714 := by
    unfold C
    simp [show (3779136 * k + 1777571) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5332714) = 5668704 * k + 2666357 := by
    unfold C
    simp [show (11337408 * k + 5332714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2666357) = 17006112 * k + 7999072 := by
    unfold C
    simp [show (5668704 * k + 2666357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7999072) = 8503056 * k + 3999536 := by
    unfold C
    simp [show (17006112 * k + 7999072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3999536) = 4251528 * k + 1999768 := by
    unfold C
    simp [show (8503056 * k + 3999536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1999768) = 2125764 * k + 999884 := by
    unfold C
    simp [show (4251528 * k + 1999768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 999884) = 1062882 * k + 499942 := by
    unfold C
    simp [show (2125764 * k + 999884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 499942) = 531441 * k + 249971 := by
    unfold C
    simp [show (1062882 * k + 499942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 493211) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 493211)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_493659 : ∀ k : Nat,
    iterate (1048576 * k + 493659) 32 = 531441 * k + 250198 ∧
      531441 * k + 250198 < 1048576 * k + 493659 := by
  intro k
  have h1 : C (1048576 * k + 493659) = 3145728 * k + 1480978 := by
    unfold C
    simp [show (1048576 * k + 493659) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1480978) = 1572864 * k + 740489 := by
    unfold C
    simp [show (3145728 * k + 1480978) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 740489) = 4718592 * k + 2221468 := by
    unfold C
    simp [show (1572864 * k + 740489) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2221468) = 2359296 * k + 1110734 := by
    unfold C
    simp [show (4718592 * k + 2221468) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1110734) = 1179648 * k + 555367 := by
    unfold C
    simp [show (2359296 * k + 1110734) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 555367) = 3538944 * k + 1666102 := by
    unfold C
    simp [show (1179648 * k + 555367) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1666102) = 1769472 * k + 833051 := by
    unfold C
    simp [show (3538944 * k + 1666102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 833051) = 5308416 * k + 2499154 := by
    unfold C
    simp [show (1769472 * k + 833051) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2499154) = 2654208 * k + 1249577 := by
    unfold C
    simp [show (5308416 * k + 2499154) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1249577) = 7962624 * k + 3748732 := by
    unfold C
    simp [show (2654208 * k + 1249577) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3748732) = 3981312 * k + 1874366 := by
    unfold C
    simp [show (7962624 * k + 3748732) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1874366) = 1990656 * k + 937183 := by
    unfold C
    simp [show (3981312 * k + 1874366) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 937183) = 5971968 * k + 2811550 := by
    unfold C
    simp [show (1990656 * k + 937183) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2811550) = 2985984 * k + 1405775 := by
    unfold C
    simp [show (5971968 * k + 2811550) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1405775) = 8957952 * k + 4217326 := by
    unfold C
    simp [show (2985984 * k + 1405775) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4217326) = 4478976 * k + 2108663 := by
    unfold C
    simp [show (8957952 * k + 4217326) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2108663) = 13436928 * k + 6325990 := by
    unfold C
    simp [show (4478976 * k + 2108663) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6325990) = 6718464 * k + 3162995 := by
    unfold C
    simp [show (13436928 * k + 6325990) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3162995) = 20155392 * k + 9488986 := by
    unfold C
    simp [show (6718464 * k + 3162995) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9488986) = 10077696 * k + 4744493 := by
    unfold C
    simp [show (20155392 * k + 9488986) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4744493) = 30233088 * k + 14233480 := by
    unfold C
    simp [show (10077696 * k + 4744493) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14233480) = 15116544 * k + 7116740 := by
    unfold C
    simp [show (30233088 * k + 14233480) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7116740) = 7558272 * k + 3558370 := by
    unfold C
    simp [show (15116544 * k + 7116740) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3558370) = 3779136 * k + 1779185 := by
    unfold C
    simp [show (7558272 * k + 3558370) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1779185) = 11337408 * k + 5337556 := by
    unfold C
    simp [show (3779136 * k + 1779185) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5337556) = 5668704 * k + 2668778 := by
    unfold C
    simp [show (11337408 * k + 5337556) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2668778) = 2834352 * k + 1334389 := by
    unfold C
    simp [show (5668704 * k + 2668778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1334389) = 8503056 * k + 4003168 := by
    unfold C
    simp [show (2834352 * k + 1334389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4003168) = 4251528 * k + 2001584 := by
    unfold C
    simp [show (8503056 * k + 4003168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2001584) = 2125764 * k + 1000792 := by
    unfold C
    simp [show (4251528 * k + 2001584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1000792) = 1062882 * k + 500396 := by
    unfold C
    simp [show (2125764 * k + 1000792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 500396) = 531441 * k + 250198 := by
    unfold C
    simp [show (1062882 * k + 500396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 493659) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 493659)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_493695 : ∀ k : Nat,
    iterate (1048576 * k + 493695) 32 = 531441 * k + 250216 ∧
      531441 * k + 250216 < 1048576 * k + 493695 := by
  intro k
  have h1 : C (1048576 * k + 493695) = 3145728 * k + 1481086 := by
    unfold C
    simp [show (1048576 * k + 493695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1481086) = 1572864 * k + 740543 := by
    unfold C
    simp [show (3145728 * k + 1481086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 740543) = 4718592 * k + 2221630 := by
    unfold C
    simp [show (1572864 * k + 740543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2221630) = 2359296 * k + 1110815 := by
    unfold C
    simp [show (4718592 * k + 2221630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1110815) = 7077888 * k + 3332446 := by
    unfold C
    simp [show (2359296 * k + 1110815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3332446) = 3538944 * k + 1666223 := by
    unfold C
    simp [show (7077888 * k + 3332446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1666223) = 10616832 * k + 4998670 := by
    unfold C
    simp [show (3538944 * k + 1666223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4998670) = 5308416 * k + 2499335 := by
    unfold C
    simp [show (10616832 * k + 4998670) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2499335) = 15925248 * k + 7498006 := by
    unfold C
    simp [show (5308416 * k + 2499335) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7498006) = 7962624 * k + 3749003 := by
    unfold C
    simp [show (15925248 * k + 7498006) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3749003) = 23887872 * k + 11247010 := by
    unfold C
    simp [show (7962624 * k + 3749003) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11247010) = 11943936 * k + 5623505 := by
    unfold C
    simp [show (23887872 * k + 11247010) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5623505) = 35831808 * k + 16870516 := by
    unfold C
    simp [show (11943936 * k + 5623505) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16870516) = 17915904 * k + 8435258 := by
    unfold C
    simp [show (35831808 * k + 16870516) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8435258) = 8957952 * k + 4217629 := by
    unfold C
    simp [show (17915904 * k + 8435258) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4217629) = 26873856 * k + 12652888 := by
    unfold C
    simp [show (8957952 * k + 4217629) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12652888) = 13436928 * k + 6326444 := by
    unfold C
    simp [show (26873856 * k + 12652888) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6326444) = 6718464 * k + 3163222 := by
    unfold C
    simp [show (13436928 * k + 6326444) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3163222) = 3359232 * k + 1581611 := by
    unfold C
    simp [show (6718464 * k + 3163222) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1581611) = 10077696 * k + 4744834 := by
    unfold C
    simp [show (3359232 * k + 1581611) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4744834) = 5038848 * k + 2372417 := by
    unfold C
    simp [show (10077696 * k + 4744834) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2372417) = 15116544 * k + 7117252 := by
    unfold C
    simp [show (5038848 * k + 2372417) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7117252) = 7558272 * k + 3558626 := by
    unfold C
    simp [show (15116544 * k + 7117252) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3558626) = 3779136 * k + 1779313 := by
    unfold C
    simp [show (7558272 * k + 3558626) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1779313) = 11337408 * k + 5337940 := by
    unfold C
    simp [show (3779136 * k + 1779313) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5337940) = 5668704 * k + 2668970 := by
    unfold C
    simp [show (11337408 * k + 5337940) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2668970) = 2834352 * k + 1334485 := by
    unfold C
    simp [show (5668704 * k + 2668970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1334485) = 8503056 * k + 4003456 := by
    unfold C
    simp [show (2834352 * k + 1334485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4003456) = 4251528 * k + 2001728 := by
    unfold C
    simp [show (8503056 * k + 4003456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2001728) = 2125764 * k + 1000864 := by
    unfold C
    simp [show (4251528 * k + 2001728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1000864) = 1062882 * k + 500432 := by
    unfold C
    simp [show (2125764 * k + 1000864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 500432) = 531441 * k + 250216 := by
    unfold C
    simp [show (1062882 * k + 500432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 493695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 493695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_494235 : ∀ k : Nat,
    iterate (1048576 * k + 494235) 32 = 531441 * k + 250490 ∧
      531441 * k + 250490 < 1048576 * k + 494235 := by
  intro k
  have h1 : C (1048576 * k + 494235) = 3145728 * k + 1482706 := by
    unfold C
    simp [show (1048576 * k + 494235) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1482706) = 1572864 * k + 741353 := by
    unfold C
    simp [show (3145728 * k + 1482706) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 741353) = 4718592 * k + 2224060 := by
    unfold C
    simp [show (1572864 * k + 741353) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2224060) = 2359296 * k + 1112030 := by
    unfold C
    simp [show (4718592 * k + 2224060) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1112030) = 1179648 * k + 556015 := by
    unfold C
    simp [show (2359296 * k + 1112030) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 556015) = 3538944 * k + 1668046 := by
    unfold C
    simp [show (1179648 * k + 556015) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1668046) = 1769472 * k + 834023 := by
    unfold C
    simp [show (3538944 * k + 1668046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 834023) = 5308416 * k + 2502070 := by
    unfold C
    simp [show (1769472 * k + 834023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2502070) = 2654208 * k + 1251035 := by
    unfold C
    simp [show (5308416 * k + 2502070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1251035) = 7962624 * k + 3753106 := by
    unfold C
    simp [show (2654208 * k + 1251035) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3753106) = 3981312 * k + 1876553 := by
    unfold C
    simp [show (7962624 * k + 3753106) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1876553) = 11943936 * k + 5629660 := by
    unfold C
    simp [show (3981312 * k + 1876553) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5629660) = 5971968 * k + 2814830 := by
    unfold C
    simp [show (11943936 * k + 5629660) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2814830) = 2985984 * k + 1407415 := by
    unfold C
    simp [show (5971968 * k + 2814830) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1407415) = 8957952 * k + 4222246 := by
    unfold C
    simp [show (2985984 * k + 1407415) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4222246) = 4478976 * k + 2111123 := by
    unfold C
    simp [show (8957952 * k + 4222246) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2111123) = 13436928 * k + 6333370 := by
    unfold C
    simp [show (4478976 * k + 2111123) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6333370) = 6718464 * k + 3166685 := by
    unfold C
    simp [show (13436928 * k + 6333370) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3166685) = 20155392 * k + 9500056 := by
    unfold C
    simp [show (6718464 * k + 3166685) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9500056) = 10077696 * k + 4750028 := by
    unfold C
    simp [show (20155392 * k + 9500056) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4750028) = 5038848 * k + 2375014 := by
    unfold C
    simp [show (10077696 * k + 4750028) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2375014) = 2519424 * k + 1187507 := by
    unfold C
    simp [show (5038848 * k + 2375014) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1187507) = 7558272 * k + 3562522 := by
    unfold C
    simp [show (2519424 * k + 1187507) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3562522) = 3779136 * k + 1781261 := by
    unfold C
    simp [show (7558272 * k + 3562522) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1781261) = 11337408 * k + 5343784 := by
    unfold C
    simp [show (3779136 * k + 1781261) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5343784) = 5668704 * k + 2671892 := by
    unfold C
    simp [show (11337408 * k + 5343784) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2671892) = 2834352 * k + 1335946 := by
    unfold C
    simp [show (5668704 * k + 2671892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1335946) = 1417176 * k + 667973 := by
    unfold C
    simp [show (2834352 * k + 1335946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 667973) = 4251528 * k + 2003920 := by
    unfold C
    simp [show (1417176 * k + 667973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2003920) = 2125764 * k + 1001960 := by
    unfold C
    simp [show (4251528 * k + 2003920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1001960) = 1062882 * k + 500980 := by
    unfold C
    simp [show (2125764 * k + 1001960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 500980) = 531441 * k + 250490 := by
    unfold C
    simp [show (1062882 * k + 500980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 494235) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 494235)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_494271 : ∀ k : Nat,
    iterate (1048576 * k + 494271) 32 = 531441 * k + 250508 ∧
      531441 * k + 250508 < 1048576 * k + 494271 := by
  intro k
  have h1 : C (1048576 * k + 494271) = 3145728 * k + 1482814 := by
    unfold C
    simp [show (1048576 * k + 494271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1482814) = 1572864 * k + 741407 := by
    unfold C
    simp [show (3145728 * k + 1482814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 741407) = 4718592 * k + 2224222 := by
    unfold C
    simp [show (1572864 * k + 741407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2224222) = 2359296 * k + 1112111 := by
    unfold C
    simp [show (4718592 * k + 2224222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1112111) = 7077888 * k + 3336334 := by
    unfold C
    simp [show (2359296 * k + 1112111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3336334) = 3538944 * k + 1668167 := by
    unfold C
    simp [show (7077888 * k + 3336334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1668167) = 10616832 * k + 5004502 := by
    unfold C
    simp [show (3538944 * k + 1668167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5004502) = 5308416 * k + 2502251 := by
    unfold C
    simp [show (10616832 * k + 5004502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2502251) = 15925248 * k + 7506754 := by
    unfold C
    simp [show (5308416 * k + 2502251) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7506754) = 7962624 * k + 3753377 := by
    unfold C
    simp [show (15925248 * k + 7506754) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3753377) = 23887872 * k + 11260132 := by
    unfold C
    simp [show (7962624 * k + 3753377) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11260132) = 11943936 * k + 5630066 := by
    unfold C
    simp [show (23887872 * k + 11260132) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5630066) = 5971968 * k + 2815033 := by
    unfold C
    simp [show (11943936 * k + 5630066) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2815033) = 17915904 * k + 8445100 := by
    unfold C
    simp [show (5971968 * k + 2815033) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8445100) = 8957952 * k + 4222550 := by
    unfold C
    simp [show (17915904 * k + 8445100) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4222550) = 4478976 * k + 2111275 := by
    unfold C
    simp [show (8957952 * k + 4222550) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2111275) = 13436928 * k + 6333826 := by
    unfold C
    simp [show (4478976 * k + 2111275) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6333826) = 6718464 * k + 3166913 := by
    unfold C
    simp [show (13436928 * k + 6333826) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3166913) = 20155392 * k + 9500740 := by
    unfold C
    simp [show (6718464 * k + 3166913) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9500740) = 10077696 * k + 4750370 := by
    unfold C
    simp [show (20155392 * k + 9500740) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4750370) = 5038848 * k + 2375185 := by
    unfold C
    simp [show (10077696 * k + 4750370) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2375185) = 15116544 * k + 7125556 := by
    unfold C
    simp [show (5038848 * k + 2375185) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7125556) = 7558272 * k + 3562778 := by
    unfold C
    simp [show (15116544 * k + 7125556) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3562778) = 3779136 * k + 1781389 := by
    unfold C
    simp [show (7558272 * k + 3562778) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1781389) = 11337408 * k + 5344168 := by
    unfold C
    simp [show (3779136 * k + 1781389) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5344168) = 5668704 * k + 2672084 := by
    unfold C
    simp [show (11337408 * k + 5344168) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2672084) = 2834352 * k + 1336042 := by
    unfold C
    simp [show (5668704 * k + 2672084) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1336042) = 1417176 * k + 668021 := by
    unfold C
    simp [show (2834352 * k + 1336042) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 668021) = 4251528 * k + 2004064 := by
    unfold C
    simp [show (1417176 * k + 668021) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2004064) = 2125764 * k + 1002032 := by
    unfold C
    simp [show (4251528 * k + 2004064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1002032) = 1062882 * k + 501016 := by
    unfold C
    simp [show (2125764 * k + 1002032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 501016) = 531441 * k + 250508 := by
    unfold C
    simp [show (1062882 * k + 501016) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 494271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 494271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_494703 : ∀ k : Nat,
    iterate (1048576 * k + 494703) 32 = 531441 * k + 250727 ∧
      531441 * k + 250727 < 1048576 * k + 494703 := by
  intro k
  have h1 : C (1048576 * k + 494703) = 3145728 * k + 1484110 := by
    unfold C
    simp [show (1048576 * k + 494703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1484110) = 1572864 * k + 742055 := by
    unfold C
    simp [show (3145728 * k + 1484110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 742055) = 4718592 * k + 2226166 := by
    unfold C
    simp [show (1572864 * k + 742055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2226166) = 2359296 * k + 1113083 := by
    unfold C
    simp [show (4718592 * k + 2226166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1113083) = 7077888 * k + 3339250 := by
    unfold C
    simp [show (2359296 * k + 1113083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3339250) = 3538944 * k + 1669625 := by
    unfold C
    simp [show (7077888 * k + 3339250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1669625) = 10616832 * k + 5008876 := by
    unfold C
    simp [show (3538944 * k + 1669625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5008876) = 5308416 * k + 2504438 := by
    unfold C
    simp [show (10616832 * k + 5008876) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2504438) = 2654208 * k + 1252219 := by
    unfold C
    simp [show (5308416 * k + 2504438) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1252219) = 7962624 * k + 3756658 := by
    unfold C
    simp [show (2654208 * k + 1252219) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3756658) = 3981312 * k + 1878329 := by
    unfold C
    simp [show (7962624 * k + 3756658) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1878329) = 11943936 * k + 5634988 := by
    unfold C
    simp [show (3981312 * k + 1878329) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5634988) = 5971968 * k + 2817494 := by
    unfold C
    simp [show (11943936 * k + 5634988) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2817494) = 2985984 * k + 1408747 := by
    unfold C
    simp [show (5971968 * k + 2817494) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1408747) = 8957952 * k + 4226242 := by
    unfold C
    simp [show (2985984 * k + 1408747) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4226242) = 4478976 * k + 2113121 := by
    unfold C
    simp [show (8957952 * k + 4226242) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2113121) = 13436928 * k + 6339364 := by
    unfold C
    simp [show (4478976 * k + 2113121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6339364) = 6718464 * k + 3169682 := by
    unfold C
    simp [show (13436928 * k + 6339364) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3169682) = 3359232 * k + 1584841 := by
    unfold C
    simp [show (6718464 * k + 3169682) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1584841) = 10077696 * k + 4754524 := by
    unfold C
    simp [show (3359232 * k + 1584841) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4754524) = 5038848 * k + 2377262 := by
    unfold C
    simp [show (10077696 * k + 4754524) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2377262) = 2519424 * k + 1188631 := by
    unfold C
    simp [show (5038848 * k + 2377262) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1188631) = 7558272 * k + 3565894 := by
    unfold C
    simp [show (2519424 * k + 1188631) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3565894) = 3779136 * k + 1782947 := by
    unfold C
    simp [show (7558272 * k + 3565894) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1782947) = 11337408 * k + 5348842 := by
    unfold C
    simp [show (3779136 * k + 1782947) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5348842) = 5668704 * k + 2674421 := by
    unfold C
    simp [show (11337408 * k + 5348842) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2674421) = 17006112 * k + 8023264 := by
    unfold C
    simp [show (5668704 * k + 2674421) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8023264) = 8503056 * k + 4011632 := by
    unfold C
    simp [show (17006112 * k + 8023264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4011632) = 4251528 * k + 2005816 := by
    unfold C
    simp [show (8503056 * k + 4011632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2005816) = 2125764 * k + 1002908 := by
    unfold C
    simp [show (4251528 * k + 2005816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1002908) = 1062882 * k + 501454 := by
    unfold C
    simp [show (2125764 * k + 1002908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 501454) = 531441 * k + 250727 := by
    unfold C
    simp [show (1062882 * k + 501454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 494703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 494703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_495151 : ∀ k : Nat,
    iterate (1048576 * k + 495151) 32 = 531441 * k + 250954 ∧
      531441 * k + 250954 < 1048576 * k + 495151 := by
  intro k
  have h1 : C (1048576 * k + 495151) = 3145728 * k + 1485454 := by
    unfold C
    simp [show (1048576 * k + 495151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1485454) = 1572864 * k + 742727 := by
    unfold C
    simp [show (3145728 * k + 1485454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 742727) = 4718592 * k + 2228182 := by
    unfold C
    simp [show (1572864 * k + 742727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2228182) = 2359296 * k + 1114091 := by
    unfold C
    simp [show (4718592 * k + 2228182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1114091) = 7077888 * k + 3342274 := by
    unfold C
    simp [show (2359296 * k + 1114091) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3342274) = 3538944 * k + 1671137 := by
    unfold C
    simp [show (7077888 * k + 3342274) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1671137) = 10616832 * k + 5013412 := by
    unfold C
    simp [show (3538944 * k + 1671137) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5013412) = 5308416 * k + 2506706 := by
    unfold C
    simp [show (10616832 * k + 5013412) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2506706) = 2654208 * k + 1253353 := by
    unfold C
    simp [show (5308416 * k + 2506706) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1253353) = 7962624 * k + 3760060 := by
    unfold C
    simp [show (2654208 * k + 1253353) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3760060) = 3981312 * k + 1880030 := by
    unfold C
    simp [show (7962624 * k + 3760060) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1880030) = 1990656 * k + 940015 := by
    unfold C
    simp [show (3981312 * k + 1880030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 940015) = 5971968 * k + 2820046 := by
    unfold C
    simp [show (1990656 * k + 940015) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2820046) = 2985984 * k + 1410023 := by
    unfold C
    simp [show (5971968 * k + 2820046) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1410023) = 8957952 * k + 4230070 := by
    unfold C
    simp [show (2985984 * k + 1410023) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4230070) = 4478976 * k + 2115035 := by
    unfold C
    simp [show (8957952 * k + 4230070) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2115035) = 13436928 * k + 6345106 := by
    unfold C
    simp [show (4478976 * k + 2115035) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6345106) = 6718464 * k + 3172553 := by
    unfold C
    simp [show (13436928 * k + 6345106) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3172553) = 20155392 * k + 9517660 := by
    unfold C
    simp [show (6718464 * k + 3172553) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9517660) = 10077696 * k + 4758830 := by
    unfold C
    simp [show (20155392 * k + 9517660) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4758830) = 5038848 * k + 2379415 := by
    unfold C
    simp [show (10077696 * k + 4758830) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2379415) = 15116544 * k + 7138246 := by
    unfold C
    simp [show (5038848 * k + 2379415) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7138246) = 7558272 * k + 3569123 := by
    unfold C
    simp [show (15116544 * k + 7138246) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3569123) = 22674816 * k + 10707370 := by
    unfold C
    simp [show (7558272 * k + 3569123) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10707370) = 11337408 * k + 5353685 := by
    unfold C
    simp [show (22674816 * k + 10707370) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5353685) = 34012224 * k + 16061056 := by
    unfold C
    simp [show (11337408 * k + 5353685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16061056) = 17006112 * k + 8030528 := by
    unfold C
    simp [show (34012224 * k + 16061056) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8030528) = 8503056 * k + 4015264 := by
    unfold C
    simp [show (17006112 * k + 8030528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4015264) = 4251528 * k + 2007632 := by
    unfold C
    simp [show (8503056 * k + 4015264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2007632) = 2125764 * k + 1003816 := by
    unfold C
    simp [show (4251528 * k + 2007632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1003816) = 1062882 * k + 501908 := by
    unfold C
    simp [show (2125764 * k + 1003816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 501908) = 531441 * k + 250954 := by
    unfold C
    simp [show (1062882 * k + 501908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 495151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 495151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_495727 : ∀ k : Nat,
    iterate (1048576 * k + 495727) 32 = 531441 * k + 251246 ∧
      531441 * k + 251246 < 1048576 * k + 495727 := by
  intro k
  have h1 : C (1048576 * k + 495727) = 3145728 * k + 1487182 := by
    unfold C
    simp [show (1048576 * k + 495727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1487182) = 1572864 * k + 743591 := by
    unfold C
    simp [show (3145728 * k + 1487182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 743591) = 4718592 * k + 2230774 := by
    unfold C
    simp [show (1572864 * k + 743591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2230774) = 2359296 * k + 1115387 := by
    unfold C
    simp [show (4718592 * k + 2230774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1115387) = 7077888 * k + 3346162 := by
    unfold C
    simp [show (2359296 * k + 1115387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3346162) = 3538944 * k + 1673081 := by
    unfold C
    simp [show (7077888 * k + 3346162) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1673081) = 10616832 * k + 5019244 := by
    unfold C
    simp [show (3538944 * k + 1673081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5019244) = 5308416 * k + 2509622 := by
    unfold C
    simp [show (10616832 * k + 5019244) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2509622) = 2654208 * k + 1254811 := by
    unfold C
    simp [show (5308416 * k + 2509622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1254811) = 7962624 * k + 3764434 := by
    unfold C
    simp [show (2654208 * k + 1254811) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3764434) = 3981312 * k + 1882217 := by
    unfold C
    simp [show (7962624 * k + 3764434) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1882217) = 11943936 * k + 5646652 := by
    unfold C
    simp [show (3981312 * k + 1882217) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5646652) = 5971968 * k + 2823326 := by
    unfold C
    simp [show (11943936 * k + 5646652) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2823326) = 2985984 * k + 1411663 := by
    unfold C
    simp [show (5971968 * k + 2823326) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1411663) = 8957952 * k + 4234990 := by
    unfold C
    simp [show (2985984 * k + 1411663) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4234990) = 4478976 * k + 2117495 := by
    unfold C
    simp [show (8957952 * k + 4234990) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2117495) = 13436928 * k + 6352486 := by
    unfold C
    simp [show (4478976 * k + 2117495) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6352486) = 6718464 * k + 3176243 := by
    unfold C
    simp [show (13436928 * k + 6352486) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3176243) = 20155392 * k + 9528730 := by
    unfold C
    simp [show (6718464 * k + 3176243) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9528730) = 10077696 * k + 4764365 := by
    unfold C
    simp [show (20155392 * k + 9528730) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4764365) = 30233088 * k + 14293096 := by
    unfold C
    simp [show (10077696 * k + 4764365) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14293096) = 15116544 * k + 7146548 := by
    unfold C
    simp [show (30233088 * k + 14293096) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7146548) = 7558272 * k + 3573274 := by
    unfold C
    simp [show (15116544 * k + 7146548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3573274) = 3779136 * k + 1786637 := by
    unfold C
    simp [show (7558272 * k + 3573274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1786637) = 11337408 * k + 5359912 := by
    unfold C
    simp [show (3779136 * k + 1786637) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5359912) = 5668704 * k + 2679956 := by
    unfold C
    simp [show (11337408 * k + 5359912) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2679956) = 2834352 * k + 1339978 := by
    unfold C
    simp [show (5668704 * k + 2679956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1339978) = 1417176 * k + 669989 := by
    unfold C
    simp [show (2834352 * k + 1339978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 669989) = 4251528 * k + 2009968 := by
    unfold C
    simp [show (1417176 * k + 669989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2009968) = 2125764 * k + 1004984 := by
    unfold C
    simp [show (4251528 * k + 2009968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1004984) = 1062882 * k + 502492 := by
    unfold C
    simp [show (2125764 * k + 1004984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 502492) = 531441 * k + 251246 := by
    unfold C
    simp [show (1062882 * k + 502492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 495727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 495727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_495839 : ∀ k : Nat,
    iterate (1048576 * k + 495839) 32 = 531441 * k + 251303 ∧
      531441 * k + 251303 < 1048576 * k + 495839 := by
  intro k
  have h1 : C (1048576 * k + 495839) = 3145728 * k + 1487518 := by
    unfold C
    simp [show (1048576 * k + 495839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1487518) = 1572864 * k + 743759 := by
    unfold C
    simp [show (3145728 * k + 1487518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 743759) = 4718592 * k + 2231278 := by
    unfold C
    simp [show (1572864 * k + 743759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2231278) = 2359296 * k + 1115639 := by
    unfold C
    simp [show (4718592 * k + 2231278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1115639) = 7077888 * k + 3346918 := by
    unfold C
    simp [show (2359296 * k + 1115639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3346918) = 3538944 * k + 1673459 := by
    unfold C
    simp [show (7077888 * k + 3346918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1673459) = 10616832 * k + 5020378 := by
    unfold C
    simp [show (3538944 * k + 1673459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5020378) = 5308416 * k + 2510189 := by
    unfold C
    simp [show (10616832 * k + 5020378) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2510189) = 15925248 * k + 7530568 := by
    unfold C
    simp [show (5308416 * k + 2510189) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7530568) = 7962624 * k + 3765284 := by
    unfold C
    simp [show (15925248 * k + 7530568) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3765284) = 3981312 * k + 1882642 := by
    unfold C
    simp [show (7962624 * k + 3765284) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1882642) = 1990656 * k + 941321 := by
    unfold C
    simp [show (3981312 * k + 1882642) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 941321) = 5971968 * k + 2823964 := by
    unfold C
    simp [show (1990656 * k + 941321) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2823964) = 2985984 * k + 1411982 := by
    unfold C
    simp [show (5971968 * k + 2823964) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1411982) = 1492992 * k + 705991 := by
    unfold C
    simp [show (2985984 * k + 1411982) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 705991) = 4478976 * k + 2117974 := by
    unfold C
    simp [show (1492992 * k + 705991) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2117974) = 2239488 * k + 1058987 := by
    unfold C
    simp [show (4478976 * k + 2117974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1058987) = 6718464 * k + 3176962 := by
    unfold C
    simp [show (2239488 * k + 1058987) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3176962) = 3359232 * k + 1588481 := by
    unfold C
    simp [show (6718464 * k + 3176962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1588481) = 10077696 * k + 4765444 := by
    unfold C
    simp [show (3359232 * k + 1588481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4765444) = 5038848 * k + 2382722 := by
    unfold C
    simp [show (10077696 * k + 4765444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2382722) = 2519424 * k + 1191361 := by
    unfold C
    simp [show (5038848 * k + 2382722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1191361) = 7558272 * k + 3574084 := by
    unfold C
    simp [show (2519424 * k + 1191361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3574084) = 3779136 * k + 1787042 := by
    unfold C
    simp [show (7558272 * k + 3574084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1787042) = 1889568 * k + 893521 := by
    unfold C
    simp [show (3779136 * k + 1787042) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 893521) = 5668704 * k + 2680564 := by
    unfold C
    simp [show (1889568 * k + 893521) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2680564) = 2834352 * k + 1340282 := by
    unfold C
    simp [show (5668704 * k + 2680564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1340282) = 1417176 * k + 670141 := by
    unfold C
    simp [show (2834352 * k + 1340282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 670141) = 4251528 * k + 2010424 := by
    unfold C
    simp [show (1417176 * k + 670141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2010424) = 2125764 * k + 1005212 := by
    unfold C
    simp [show (4251528 * k + 2010424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1005212) = 1062882 * k + 502606 := by
    unfold C
    simp [show (2125764 * k + 1005212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 502606) = 531441 * k + 251303 := by
    unfold C
    simp [show (1062882 * k + 502606) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 495839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 495839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_496319 : ∀ k : Nat,
    iterate (1048576 * k + 496319) 32 = 531441 * k + 251546 ∧
      531441 * k + 251546 < 1048576 * k + 496319 := by
  intro k
  have h1 : C (1048576 * k + 496319) = 3145728 * k + 1488958 := by
    unfold C
    simp [show (1048576 * k + 496319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1488958) = 1572864 * k + 744479 := by
    unfold C
    simp [show (3145728 * k + 1488958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 744479) = 4718592 * k + 2233438 := by
    unfold C
    simp [show (1572864 * k + 744479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2233438) = 2359296 * k + 1116719 := by
    unfold C
    simp [show (4718592 * k + 2233438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1116719) = 7077888 * k + 3350158 := by
    unfold C
    simp [show (2359296 * k + 1116719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3350158) = 3538944 * k + 1675079 := by
    unfold C
    simp [show (7077888 * k + 3350158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1675079) = 10616832 * k + 5025238 := by
    unfold C
    simp [show (3538944 * k + 1675079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5025238) = 5308416 * k + 2512619 := by
    unfold C
    simp [show (10616832 * k + 5025238) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2512619) = 15925248 * k + 7537858 := by
    unfold C
    simp [show (5308416 * k + 2512619) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7537858) = 7962624 * k + 3768929 := by
    unfold C
    simp [show (15925248 * k + 7537858) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3768929) = 23887872 * k + 11306788 := by
    unfold C
    simp [show (7962624 * k + 3768929) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11306788) = 11943936 * k + 5653394 := by
    unfold C
    simp [show (23887872 * k + 11306788) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5653394) = 5971968 * k + 2826697 := by
    unfold C
    simp [show (11943936 * k + 5653394) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2826697) = 17915904 * k + 8480092 := by
    unfold C
    simp [show (5971968 * k + 2826697) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8480092) = 8957952 * k + 4240046 := by
    unfold C
    simp [show (17915904 * k + 8480092) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4240046) = 4478976 * k + 2120023 := by
    unfold C
    simp [show (8957952 * k + 4240046) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2120023) = 13436928 * k + 6360070 := by
    unfold C
    simp [show (4478976 * k + 2120023) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6360070) = 6718464 * k + 3180035 := by
    unfold C
    simp [show (13436928 * k + 6360070) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3180035) = 20155392 * k + 9540106 := by
    unfold C
    simp [show (6718464 * k + 3180035) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9540106) = 10077696 * k + 4770053 := by
    unfold C
    simp [show (20155392 * k + 9540106) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4770053) = 30233088 * k + 14310160 := by
    unfold C
    simp [show (10077696 * k + 4770053) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14310160) = 15116544 * k + 7155080 := by
    unfold C
    simp [show (30233088 * k + 14310160) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7155080) = 7558272 * k + 3577540 := by
    unfold C
    simp [show (15116544 * k + 7155080) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3577540) = 3779136 * k + 1788770 := by
    unfold C
    simp [show (7558272 * k + 3577540) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1788770) = 1889568 * k + 894385 := by
    unfold C
    simp [show (3779136 * k + 1788770) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 894385) = 5668704 * k + 2683156 := by
    unfold C
    simp [show (1889568 * k + 894385) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2683156) = 2834352 * k + 1341578 := by
    unfold C
    simp [show (5668704 * k + 2683156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1341578) = 1417176 * k + 670789 := by
    unfold C
    simp [show (2834352 * k + 1341578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 670789) = 4251528 * k + 2012368 := by
    unfold C
    simp [show (1417176 * k + 670789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2012368) = 2125764 * k + 1006184 := by
    unfold C
    simp [show (4251528 * k + 2012368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1006184) = 1062882 * k + 503092 := by
    unfold C
    simp [show (2125764 * k + 1006184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 503092) = 531441 * k + 251546 := by
    unfold C
    simp [show (1062882 * k + 503092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 496319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 496319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_496731 : ∀ k : Nat,
    iterate (1048576 * k + 496731) 32 = 531441 * k + 251755 ∧
      531441 * k + 251755 < 1048576 * k + 496731 := by
  intro k
  have h1 : C (1048576 * k + 496731) = 3145728 * k + 1490194 := by
    unfold C
    simp [show (1048576 * k + 496731) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1490194) = 1572864 * k + 745097 := by
    unfold C
    simp [show (3145728 * k + 1490194) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 745097) = 4718592 * k + 2235292 := by
    unfold C
    simp [show (1572864 * k + 745097) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2235292) = 2359296 * k + 1117646 := by
    unfold C
    simp [show (4718592 * k + 2235292) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1117646) = 1179648 * k + 558823 := by
    unfold C
    simp [show (2359296 * k + 1117646) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 558823) = 3538944 * k + 1676470 := by
    unfold C
    simp [show (1179648 * k + 558823) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1676470) = 1769472 * k + 838235 := by
    unfold C
    simp [show (3538944 * k + 1676470) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 838235) = 5308416 * k + 2514706 := by
    unfold C
    simp [show (1769472 * k + 838235) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2514706) = 2654208 * k + 1257353 := by
    unfold C
    simp [show (5308416 * k + 2514706) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1257353) = 7962624 * k + 3772060 := by
    unfold C
    simp [show (2654208 * k + 1257353) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3772060) = 3981312 * k + 1886030 := by
    unfold C
    simp [show (7962624 * k + 3772060) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1886030) = 1990656 * k + 943015 := by
    unfold C
    simp [show (3981312 * k + 1886030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 943015) = 5971968 * k + 2829046 := by
    unfold C
    simp [show (1990656 * k + 943015) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2829046) = 2985984 * k + 1414523 := by
    unfold C
    simp [show (5971968 * k + 2829046) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1414523) = 8957952 * k + 4243570 := by
    unfold C
    simp [show (2985984 * k + 1414523) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4243570) = 4478976 * k + 2121785 := by
    unfold C
    simp [show (8957952 * k + 4243570) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2121785) = 13436928 * k + 6365356 := by
    unfold C
    simp [show (4478976 * k + 2121785) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6365356) = 6718464 * k + 3182678 := by
    unfold C
    simp [show (13436928 * k + 6365356) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3182678) = 3359232 * k + 1591339 := by
    unfold C
    simp [show (6718464 * k + 3182678) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1591339) = 10077696 * k + 4774018 := by
    unfold C
    simp [show (3359232 * k + 1591339) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4774018) = 5038848 * k + 2387009 := by
    unfold C
    simp [show (10077696 * k + 4774018) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2387009) = 15116544 * k + 7161028 := by
    unfold C
    simp [show (5038848 * k + 2387009) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7161028) = 7558272 * k + 3580514 := by
    unfold C
    simp [show (15116544 * k + 7161028) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3580514) = 3779136 * k + 1790257 := by
    unfold C
    simp [show (7558272 * k + 3580514) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1790257) = 11337408 * k + 5370772 := by
    unfold C
    simp [show (3779136 * k + 1790257) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5370772) = 5668704 * k + 2685386 := by
    unfold C
    simp [show (11337408 * k + 5370772) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2685386) = 2834352 * k + 1342693 := by
    unfold C
    simp [show (5668704 * k + 2685386) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1342693) = 8503056 * k + 4028080 := by
    unfold C
    simp [show (2834352 * k + 1342693) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4028080) = 4251528 * k + 2014040 := by
    unfold C
    simp [show (8503056 * k + 4028080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2014040) = 2125764 * k + 1007020 := by
    unfold C
    simp [show (4251528 * k + 2014040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1007020) = 1062882 * k + 503510 := by
    unfold C
    simp [show (2125764 * k + 1007020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 503510) = 531441 * k + 251755 := by
    unfold C
    simp [show (1062882 * k + 503510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 496731) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 496731)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_497087 : ∀ k : Nat,
    iterate (1048576 * k + 497087) 32 = 531441 * k + 251935 ∧
      531441 * k + 251935 < 1048576 * k + 497087 := by
  intro k
  have h1 : C (1048576 * k + 497087) = 3145728 * k + 1491262 := by
    unfold C
    simp [show (1048576 * k + 497087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1491262) = 1572864 * k + 745631 := by
    unfold C
    simp [show (3145728 * k + 1491262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 745631) = 4718592 * k + 2236894 := by
    unfold C
    simp [show (1572864 * k + 745631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2236894) = 2359296 * k + 1118447 := by
    unfold C
    simp [show (4718592 * k + 2236894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1118447) = 7077888 * k + 3355342 := by
    unfold C
    simp [show (2359296 * k + 1118447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3355342) = 3538944 * k + 1677671 := by
    unfold C
    simp [show (7077888 * k + 3355342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1677671) = 10616832 * k + 5033014 := by
    unfold C
    simp [show (3538944 * k + 1677671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5033014) = 5308416 * k + 2516507 := by
    unfold C
    simp [show (10616832 * k + 5033014) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2516507) = 15925248 * k + 7549522 := by
    unfold C
    simp [show (5308416 * k + 2516507) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7549522) = 7962624 * k + 3774761 := by
    unfold C
    simp [show (15925248 * k + 7549522) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3774761) = 23887872 * k + 11324284 := by
    unfold C
    simp [show (7962624 * k + 3774761) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11324284) = 11943936 * k + 5662142 := by
    unfold C
    simp [show (23887872 * k + 11324284) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5662142) = 5971968 * k + 2831071 := by
    unfold C
    simp [show (11943936 * k + 5662142) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2831071) = 17915904 * k + 8493214 := by
    unfold C
    simp [show (5971968 * k + 2831071) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8493214) = 8957952 * k + 4246607 := by
    unfold C
    simp [show (17915904 * k + 8493214) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4246607) = 26873856 * k + 12739822 := by
    unfold C
    simp [show (8957952 * k + 4246607) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12739822) = 13436928 * k + 6369911 := by
    unfold C
    simp [show (26873856 * k + 12739822) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6369911) = 40310784 * k + 19109734 := by
    unfold C
    simp [show (13436928 * k + 6369911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19109734) = 20155392 * k + 9554867 := by
    unfold C
    simp [show (40310784 * k + 19109734) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9554867) = 60466176 * k + 28664602 := by
    unfold C
    simp [show (20155392 * k + 9554867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 28664602) = 30233088 * k + 14332301 := by
    unfold C
    simp [show (60466176 * k + 28664602) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14332301) = 90699264 * k + 42996904 := by
    unfold C
    simp [show (30233088 * k + 14332301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 42996904) = 45349632 * k + 21498452 := by
    unfold C
    simp [show (90699264 * k + 42996904) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 21498452) = 22674816 * k + 10749226 := by
    unfold C
    simp [show (45349632 * k + 21498452) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10749226) = 11337408 * k + 5374613 := by
    unfold C
    simp [show (22674816 * k + 10749226) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5374613) = 34012224 * k + 16123840 := by
    unfold C
    simp [show (11337408 * k + 5374613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16123840) = 17006112 * k + 8061920 := by
    unfold C
    simp [show (34012224 * k + 16123840) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8061920) = 8503056 * k + 4030960 := by
    unfold C
    simp [show (17006112 * k + 8061920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4030960) = 4251528 * k + 2015480 := by
    unfold C
    simp [show (8503056 * k + 4030960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2015480) = 2125764 * k + 1007740 := by
    unfold C
    simp [show (4251528 * k + 2015480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1007740) = 1062882 * k + 503870 := by
    unfold C
    simp [show (2125764 * k + 1007740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 503870) = 531441 * k + 251935 := by
    unfold C
    simp [show (1062882 * k + 503870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 497087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 497087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_497199 : ∀ k : Nat,
    iterate (1048576 * k + 497199) 32 = 531441 * k + 251992 ∧
      531441 * k + 251992 < 1048576 * k + 497199 := by
  intro k
  have h1 : C (1048576 * k + 497199) = 3145728 * k + 1491598 := by
    unfold C
    simp [show (1048576 * k + 497199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1491598) = 1572864 * k + 745799 := by
    unfold C
    simp [show (3145728 * k + 1491598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 745799) = 4718592 * k + 2237398 := by
    unfold C
    simp [show (1572864 * k + 745799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2237398) = 2359296 * k + 1118699 := by
    unfold C
    simp [show (4718592 * k + 2237398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1118699) = 7077888 * k + 3356098 := by
    unfold C
    simp [show (2359296 * k + 1118699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3356098) = 3538944 * k + 1678049 := by
    unfold C
    simp [show (7077888 * k + 3356098) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1678049) = 10616832 * k + 5034148 := by
    unfold C
    simp [show (3538944 * k + 1678049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5034148) = 5308416 * k + 2517074 := by
    unfold C
    simp [show (10616832 * k + 5034148) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2517074) = 2654208 * k + 1258537 := by
    unfold C
    simp [show (5308416 * k + 2517074) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1258537) = 7962624 * k + 3775612 := by
    unfold C
    simp [show (2654208 * k + 1258537) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3775612) = 3981312 * k + 1887806 := by
    unfold C
    simp [show (7962624 * k + 3775612) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1887806) = 1990656 * k + 943903 := by
    unfold C
    simp [show (3981312 * k + 1887806) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 943903) = 5971968 * k + 2831710 := by
    unfold C
    simp [show (1990656 * k + 943903) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2831710) = 2985984 * k + 1415855 := by
    unfold C
    simp [show (5971968 * k + 2831710) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1415855) = 8957952 * k + 4247566 := by
    unfold C
    simp [show (2985984 * k + 1415855) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4247566) = 4478976 * k + 2123783 := by
    unfold C
    simp [show (8957952 * k + 4247566) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2123783) = 13436928 * k + 6371350 := by
    unfold C
    simp [show (4478976 * k + 2123783) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6371350) = 6718464 * k + 3185675 := by
    unfold C
    simp [show (13436928 * k + 6371350) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3185675) = 20155392 * k + 9557026 := by
    unfold C
    simp [show (6718464 * k + 3185675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9557026) = 10077696 * k + 4778513 := by
    unfold C
    simp [show (20155392 * k + 9557026) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4778513) = 30233088 * k + 14335540 := by
    unfold C
    simp [show (10077696 * k + 4778513) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14335540) = 15116544 * k + 7167770 := by
    unfold C
    simp [show (30233088 * k + 14335540) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7167770) = 7558272 * k + 3583885 := by
    unfold C
    simp [show (15116544 * k + 7167770) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3583885) = 22674816 * k + 10751656 := by
    unfold C
    simp [show (7558272 * k + 3583885) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10751656) = 11337408 * k + 5375828 := by
    unfold C
    simp [show (22674816 * k + 10751656) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5375828) = 5668704 * k + 2687914 := by
    unfold C
    simp [show (11337408 * k + 5375828) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2687914) = 2834352 * k + 1343957 := by
    unfold C
    simp [show (5668704 * k + 2687914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1343957) = 8503056 * k + 4031872 := by
    unfold C
    simp [show (2834352 * k + 1343957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4031872) = 4251528 * k + 2015936 := by
    unfold C
    simp [show (8503056 * k + 4031872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2015936) = 2125764 * k + 1007968 := by
    unfold C
    simp [show (4251528 * k + 2015936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1007968) = 1062882 * k + 503984 := by
    unfold C
    simp [show (2125764 * k + 1007968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 503984) = 531441 * k + 251992 := by
    unfold C
    simp [show (1062882 * k + 503984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 497199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 497199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_497663 : ∀ k : Nat,
    iterate (1048576 * k + 497663) 32 = 531441 * k + 252227 ∧
      531441 * k + 252227 < 1048576 * k + 497663 := by
  intro k
  have h1 : C (1048576 * k + 497663) = 3145728 * k + 1492990 := by
    unfold C
    simp [show (1048576 * k + 497663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1492990) = 1572864 * k + 746495 := by
    unfold C
    simp [show (3145728 * k + 1492990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 746495) = 4718592 * k + 2239486 := by
    unfold C
    simp [show (1572864 * k + 746495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2239486) = 2359296 * k + 1119743 := by
    unfold C
    simp [show (4718592 * k + 2239486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1119743) = 7077888 * k + 3359230 := by
    unfold C
    simp [show (2359296 * k + 1119743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3359230) = 3538944 * k + 1679615 := by
    unfold C
    simp [show (7077888 * k + 3359230) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1679615) = 10616832 * k + 5038846 := by
    unfold C
    simp [show (3538944 * k + 1679615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5038846) = 5308416 * k + 2519423 := by
    unfold C
    simp [show (10616832 * k + 5038846) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2519423) = 15925248 * k + 7558270 := by
    unfold C
    simp [show (5308416 * k + 2519423) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7558270) = 7962624 * k + 3779135 := by
    unfold C
    simp [show (15925248 * k + 7558270) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3779135) = 23887872 * k + 11337406 := by
    unfold C
    simp [show (7962624 * k + 3779135) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11337406) = 11943936 * k + 5668703 := by
    unfold C
    simp [show (23887872 * k + 11337406) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5668703) = 35831808 * k + 17006110 := by
    unfold C
    simp [show (11943936 * k + 5668703) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17006110) = 17915904 * k + 8503055 := by
    unfold C
    simp [show (35831808 * k + 17006110) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8503055) = 53747712 * k + 25509166 := by
    unfold C
    simp [show (17915904 * k + 8503055) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 25509166) = 26873856 * k + 12754583 := by
    unfold C
    simp [show (53747712 * k + 25509166) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 12754583) = 80621568 * k + 38263750 := by
    unfold C
    simp [show (26873856 * k + 12754583) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 38263750) = 40310784 * k + 19131875 := by
    unfold C
    simp [show (80621568 * k + 38263750) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 19131875) = 120932352 * k + 57395626 := by
    unfold C
    simp [show (40310784 * k + 19131875) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 57395626) = 60466176 * k + 28697813 := by
    unfold C
    simp [show (120932352 * k + 57395626) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 28697813) = 181398528 * k + 86093440 := by
    unfold C
    simp [show (60466176 * k + 28697813) % 2 ≠ 0 by omega]
    omega
  have h22 : C (181398528 * k + 86093440) = 90699264 * k + 43046720 := by
    unfold C
    simp [show (181398528 * k + 86093440) % 2 = 0 by omega]
    omega
  have h23 : C (90699264 * k + 43046720) = 45349632 * k + 21523360 := by
    unfold C
    simp [show (90699264 * k + 43046720) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 21523360) = 22674816 * k + 10761680 := by
    unfold C
    simp [show (45349632 * k + 21523360) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10761680) = 11337408 * k + 5380840 := by
    unfold C
    simp [show (22674816 * k + 10761680) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5380840) = 5668704 * k + 2690420 := by
    unfold C
    simp [show (11337408 * k + 5380840) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2690420) = 2834352 * k + 1345210 := by
    unfold C
    simp [show (5668704 * k + 2690420) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1345210) = 1417176 * k + 672605 := by
    unfold C
    simp [show (2834352 * k + 1345210) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 672605) = 4251528 * k + 2017816 := by
    unfold C
    simp [show (1417176 * k + 672605) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2017816) = 2125764 * k + 1008908 := by
    unfold C
    simp [show (4251528 * k + 2017816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1008908) = 1062882 * k + 504454 := by
    unfold C
    simp [show (2125764 * k + 1008908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 504454) = 531441 * k + 252227 := by
    unfold C
    simp [show (1062882 * k + 504454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 497663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 497663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_497767 : ∀ k : Nat,
    iterate (1048576 * k + 497767) 32 = 531441 * k + 252280 ∧
      531441 * k + 252280 < 1048576 * k + 497767 := by
  intro k
  have h1 : C (1048576 * k + 497767) = 3145728 * k + 1493302 := by
    unfold C
    simp [show (1048576 * k + 497767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1493302) = 1572864 * k + 746651 := by
    unfold C
    simp [show (3145728 * k + 1493302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 746651) = 4718592 * k + 2239954 := by
    unfold C
    simp [show (1572864 * k + 746651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2239954) = 2359296 * k + 1119977 := by
    unfold C
    simp [show (4718592 * k + 2239954) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1119977) = 7077888 * k + 3359932 := by
    unfold C
    simp [show (2359296 * k + 1119977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3359932) = 3538944 * k + 1679966 := by
    unfold C
    simp [show (7077888 * k + 3359932) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1679966) = 1769472 * k + 839983 := by
    unfold C
    simp [show (3538944 * k + 1679966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 839983) = 5308416 * k + 2519950 := by
    unfold C
    simp [show (1769472 * k + 839983) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2519950) = 2654208 * k + 1259975 := by
    unfold C
    simp [show (5308416 * k + 2519950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1259975) = 7962624 * k + 3779926 := by
    unfold C
    simp [show (2654208 * k + 1259975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3779926) = 3981312 * k + 1889963 := by
    unfold C
    simp [show (7962624 * k + 3779926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1889963) = 11943936 * k + 5669890 := by
    unfold C
    simp [show (3981312 * k + 1889963) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5669890) = 5971968 * k + 2834945 := by
    unfold C
    simp [show (11943936 * k + 5669890) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2834945) = 17915904 * k + 8504836 := by
    unfold C
    simp [show (5971968 * k + 2834945) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8504836) = 8957952 * k + 4252418 := by
    unfold C
    simp [show (17915904 * k + 8504836) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4252418) = 4478976 * k + 2126209 := by
    unfold C
    simp [show (8957952 * k + 4252418) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2126209) = 13436928 * k + 6378628 := by
    unfold C
    simp [show (4478976 * k + 2126209) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6378628) = 6718464 * k + 3189314 := by
    unfold C
    simp [show (13436928 * k + 6378628) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3189314) = 3359232 * k + 1594657 := by
    unfold C
    simp [show (6718464 * k + 3189314) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1594657) = 10077696 * k + 4783972 := by
    unfold C
    simp [show (3359232 * k + 1594657) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4783972) = 5038848 * k + 2391986 := by
    unfold C
    simp [show (10077696 * k + 4783972) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2391986) = 2519424 * k + 1195993 := by
    unfold C
    simp [show (5038848 * k + 2391986) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1195993) = 7558272 * k + 3587980 := by
    unfold C
    simp [show (2519424 * k + 1195993) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3587980) = 3779136 * k + 1793990 := by
    unfold C
    simp [show (7558272 * k + 3587980) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1793990) = 1889568 * k + 896995 := by
    unfold C
    simp [show (3779136 * k + 1793990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 896995) = 5668704 * k + 2690986 := by
    unfold C
    simp [show (1889568 * k + 896995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2690986) = 2834352 * k + 1345493 := by
    unfold C
    simp [show (5668704 * k + 2690986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1345493) = 8503056 * k + 4036480 := by
    unfold C
    simp [show (2834352 * k + 1345493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4036480) = 4251528 * k + 2018240 := by
    unfold C
    simp [show (8503056 * k + 4036480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2018240) = 2125764 * k + 1009120 := by
    unfold C
    simp [show (4251528 * k + 2018240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1009120) = 1062882 * k + 504560 := by
    unfold C
    simp [show (2125764 * k + 1009120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 504560) = 531441 * k + 252280 := by
    unfold C
    simp [show (1062882 * k + 504560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 497767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 497767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_498111 : ∀ k : Nat,
    iterate (1048576 * k + 498111) 32 = 531441 * k + 252454 ∧
      531441 * k + 252454 < 1048576 * k + 498111 := by
  intro k
  have h1 : C (1048576 * k + 498111) = 3145728 * k + 1494334 := by
    unfold C
    simp [show (1048576 * k + 498111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1494334) = 1572864 * k + 747167 := by
    unfold C
    simp [show (3145728 * k + 1494334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 747167) = 4718592 * k + 2241502 := by
    unfold C
    simp [show (1572864 * k + 747167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2241502) = 2359296 * k + 1120751 := by
    unfold C
    simp [show (4718592 * k + 2241502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1120751) = 7077888 * k + 3362254 := by
    unfold C
    simp [show (2359296 * k + 1120751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3362254) = 3538944 * k + 1681127 := by
    unfold C
    simp [show (7077888 * k + 3362254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1681127) = 10616832 * k + 5043382 := by
    unfold C
    simp [show (3538944 * k + 1681127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5043382) = 5308416 * k + 2521691 := by
    unfold C
    simp [show (10616832 * k + 5043382) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2521691) = 15925248 * k + 7565074 := by
    unfold C
    simp [show (5308416 * k + 2521691) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7565074) = 7962624 * k + 3782537 := by
    unfold C
    simp [show (15925248 * k + 7565074) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3782537) = 23887872 * k + 11347612 := by
    unfold C
    simp [show (7962624 * k + 3782537) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11347612) = 11943936 * k + 5673806 := by
    unfold C
    simp [show (23887872 * k + 11347612) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5673806) = 5971968 * k + 2836903 := by
    unfold C
    simp [show (11943936 * k + 5673806) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2836903) = 17915904 * k + 8510710 := by
    unfold C
    simp [show (5971968 * k + 2836903) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8510710) = 8957952 * k + 4255355 := by
    unfold C
    simp [show (17915904 * k + 8510710) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4255355) = 26873856 * k + 12766066 := by
    unfold C
    simp [show (8957952 * k + 4255355) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12766066) = 13436928 * k + 6383033 := by
    unfold C
    simp [show (26873856 * k + 12766066) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6383033) = 40310784 * k + 19149100 := by
    unfold C
    simp [show (13436928 * k + 6383033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19149100) = 20155392 * k + 9574550 := by
    unfold C
    simp [show (40310784 * k + 19149100) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9574550) = 10077696 * k + 4787275 := by
    unfold C
    simp [show (20155392 * k + 9574550) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4787275) = 30233088 * k + 14361826 := by
    unfold C
    simp [show (10077696 * k + 4787275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14361826) = 15116544 * k + 7180913 := by
    unfold C
    simp [show (30233088 * k + 14361826) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7180913) = 45349632 * k + 21542740 := by
    unfold C
    simp [show (15116544 * k + 7180913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 21542740) = 22674816 * k + 10771370 := by
    unfold C
    simp [show (45349632 * k + 21542740) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10771370) = 11337408 * k + 5385685 := by
    unfold C
    simp [show (22674816 * k + 10771370) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5385685) = 34012224 * k + 16157056 := by
    unfold C
    simp [show (11337408 * k + 5385685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16157056) = 17006112 * k + 8078528 := by
    unfold C
    simp [show (34012224 * k + 16157056) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8078528) = 8503056 * k + 4039264 := by
    unfold C
    simp [show (17006112 * k + 8078528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4039264) = 4251528 * k + 2019632 := by
    unfold C
    simp [show (8503056 * k + 4039264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2019632) = 2125764 * k + 1009816 := by
    unfold C
    simp [show (4251528 * k + 2019632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1009816) = 1062882 * k + 504908 := by
    unfold C
    simp [show (2125764 * k + 1009816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 504908) = 531441 * k + 252454 := by
    unfold C
    simp [show (1062882 * k + 504908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 498111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 498111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_498343 : ∀ k : Nat,
    iterate (1048576 * k + 498343) 32 = 531441 * k + 252572 ∧
      531441 * k + 252572 < 1048576 * k + 498343 := by
  intro k
  have h1 : C (1048576 * k + 498343) = 3145728 * k + 1495030 := by
    unfold C
    simp [show (1048576 * k + 498343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1495030) = 1572864 * k + 747515 := by
    unfold C
    simp [show (3145728 * k + 1495030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 747515) = 4718592 * k + 2242546 := by
    unfold C
    simp [show (1572864 * k + 747515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2242546) = 2359296 * k + 1121273 := by
    unfold C
    simp [show (4718592 * k + 2242546) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1121273) = 7077888 * k + 3363820 := by
    unfold C
    simp [show (2359296 * k + 1121273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3363820) = 3538944 * k + 1681910 := by
    unfold C
    simp [show (7077888 * k + 3363820) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1681910) = 1769472 * k + 840955 := by
    unfold C
    simp [show (3538944 * k + 1681910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 840955) = 5308416 * k + 2522866 := by
    unfold C
    simp [show (1769472 * k + 840955) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2522866) = 2654208 * k + 1261433 := by
    unfold C
    simp [show (5308416 * k + 2522866) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1261433) = 7962624 * k + 3784300 := by
    unfold C
    simp [show (2654208 * k + 1261433) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3784300) = 3981312 * k + 1892150 := by
    unfold C
    simp [show (7962624 * k + 3784300) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1892150) = 1990656 * k + 946075 := by
    unfold C
    simp [show (3981312 * k + 1892150) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 946075) = 5971968 * k + 2838226 := by
    unfold C
    simp [show (1990656 * k + 946075) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2838226) = 2985984 * k + 1419113 := by
    unfold C
    simp [show (5971968 * k + 2838226) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1419113) = 8957952 * k + 4257340 := by
    unfold C
    simp [show (2985984 * k + 1419113) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4257340) = 4478976 * k + 2128670 := by
    unfold C
    simp [show (8957952 * k + 4257340) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2128670) = 2239488 * k + 1064335 := by
    unfold C
    simp [show (4478976 * k + 2128670) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1064335) = 6718464 * k + 3193006 := by
    unfold C
    simp [show (2239488 * k + 1064335) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3193006) = 3359232 * k + 1596503 := by
    unfold C
    simp [show (6718464 * k + 3193006) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1596503) = 10077696 * k + 4789510 := by
    unfold C
    simp [show (3359232 * k + 1596503) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4789510) = 5038848 * k + 2394755 := by
    unfold C
    simp [show (10077696 * k + 4789510) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2394755) = 15116544 * k + 7184266 := by
    unfold C
    simp [show (5038848 * k + 2394755) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7184266) = 7558272 * k + 3592133 := by
    unfold C
    simp [show (15116544 * k + 7184266) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3592133) = 22674816 * k + 10776400 := by
    unfold C
    simp [show (7558272 * k + 3592133) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10776400) = 11337408 * k + 5388200 := by
    unfold C
    simp [show (22674816 * k + 10776400) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5388200) = 5668704 * k + 2694100 := by
    unfold C
    simp [show (11337408 * k + 5388200) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2694100) = 2834352 * k + 1347050 := by
    unfold C
    simp [show (5668704 * k + 2694100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1347050) = 1417176 * k + 673525 := by
    unfold C
    simp [show (2834352 * k + 1347050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 673525) = 4251528 * k + 2020576 := by
    unfold C
    simp [show (1417176 * k + 673525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2020576) = 2125764 * k + 1010288 := by
    unfold C
    simp [show (4251528 * k + 2020576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1010288) = 1062882 * k + 505144 := by
    unfold C
    simp [show (2125764 * k + 1010288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 505144) = 531441 * k + 252572 := by
    unfold C
    simp [show (1062882 * k + 505144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 498343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 498343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_498495 : ∀ k : Nat,
    iterate (1048576 * k + 498495) 32 = 531441 * k + 252649 ∧
      531441 * k + 252649 < 1048576 * k + 498495 := by
  intro k
  have h1 : C (1048576 * k + 498495) = 3145728 * k + 1495486 := by
    unfold C
    simp [show (1048576 * k + 498495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1495486) = 1572864 * k + 747743 := by
    unfold C
    simp [show (3145728 * k + 1495486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 747743) = 4718592 * k + 2243230 := by
    unfold C
    simp [show (1572864 * k + 747743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2243230) = 2359296 * k + 1121615 := by
    unfold C
    simp [show (4718592 * k + 2243230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1121615) = 7077888 * k + 3364846 := by
    unfold C
    simp [show (2359296 * k + 1121615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3364846) = 3538944 * k + 1682423 := by
    unfold C
    simp [show (7077888 * k + 3364846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1682423) = 10616832 * k + 5047270 := by
    unfold C
    simp [show (3538944 * k + 1682423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5047270) = 5308416 * k + 2523635 := by
    unfold C
    simp [show (10616832 * k + 5047270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2523635) = 15925248 * k + 7570906 := by
    unfold C
    simp [show (5308416 * k + 2523635) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7570906) = 7962624 * k + 3785453 := by
    unfold C
    simp [show (15925248 * k + 7570906) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3785453) = 23887872 * k + 11356360 := by
    unfold C
    simp [show (7962624 * k + 3785453) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11356360) = 11943936 * k + 5678180 := by
    unfold C
    simp [show (23887872 * k + 11356360) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5678180) = 5971968 * k + 2839090 := by
    unfold C
    simp [show (11943936 * k + 5678180) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2839090) = 2985984 * k + 1419545 := by
    unfold C
    simp [show (5971968 * k + 2839090) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1419545) = 8957952 * k + 4258636 := by
    unfold C
    simp [show (2985984 * k + 1419545) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4258636) = 4478976 * k + 2129318 := by
    unfold C
    simp [show (8957952 * k + 4258636) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2129318) = 2239488 * k + 1064659 := by
    unfold C
    simp [show (4478976 * k + 2129318) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1064659) = 6718464 * k + 3193978 := by
    unfold C
    simp [show (2239488 * k + 1064659) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3193978) = 3359232 * k + 1596989 := by
    unfold C
    simp [show (6718464 * k + 3193978) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1596989) = 10077696 * k + 4790968 := by
    unfold C
    simp [show (3359232 * k + 1596989) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4790968) = 5038848 * k + 2395484 := by
    unfold C
    simp [show (10077696 * k + 4790968) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2395484) = 2519424 * k + 1197742 := by
    unfold C
    simp [show (5038848 * k + 2395484) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1197742) = 1259712 * k + 598871 := by
    unfold C
    simp [show (2519424 * k + 1197742) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 598871) = 3779136 * k + 1796614 := by
    unfold C
    simp [show (1259712 * k + 598871) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1796614) = 1889568 * k + 898307 := by
    unfold C
    simp [show (3779136 * k + 1796614) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 898307) = 5668704 * k + 2694922 := by
    unfold C
    simp [show (1889568 * k + 898307) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2694922) = 2834352 * k + 1347461 := by
    unfold C
    simp [show (5668704 * k + 2694922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1347461) = 8503056 * k + 4042384 := by
    unfold C
    simp [show (2834352 * k + 1347461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4042384) = 4251528 * k + 2021192 := by
    unfold C
    simp [show (8503056 * k + 4042384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2021192) = 2125764 * k + 1010596 := by
    unfold C
    simp [show (4251528 * k + 2021192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1010596) = 1062882 * k + 505298 := by
    unfold C
    simp [show (2125764 * k + 1010596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 505298) = 531441 * k + 252649 := by
    unfold C
    simp [show (1062882 * k + 505298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 498495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 498495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_498751 : ∀ k : Nat,
    iterate (1048576 * k + 498751) 32 = 531441 * k + 252779 ∧
      531441 * k + 252779 < 1048576 * k + 498751 := by
  intro k
  have h1 : C (1048576 * k + 498751) = 3145728 * k + 1496254 := by
    unfold C
    simp [show (1048576 * k + 498751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1496254) = 1572864 * k + 748127 := by
    unfold C
    simp [show (3145728 * k + 1496254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 748127) = 4718592 * k + 2244382 := by
    unfold C
    simp [show (1572864 * k + 748127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2244382) = 2359296 * k + 1122191 := by
    unfold C
    simp [show (4718592 * k + 2244382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1122191) = 7077888 * k + 3366574 := by
    unfold C
    simp [show (2359296 * k + 1122191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3366574) = 3538944 * k + 1683287 := by
    unfold C
    simp [show (7077888 * k + 3366574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1683287) = 10616832 * k + 5049862 := by
    unfold C
    simp [show (3538944 * k + 1683287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5049862) = 5308416 * k + 2524931 := by
    unfold C
    simp [show (10616832 * k + 5049862) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2524931) = 15925248 * k + 7574794 := by
    unfold C
    simp [show (5308416 * k + 2524931) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7574794) = 7962624 * k + 3787397 := by
    unfold C
    simp [show (15925248 * k + 7574794) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3787397) = 23887872 * k + 11362192 := by
    unfold C
    simp [show (7962624 * k + 3787397) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11362192) = 11943936 * k + 5681096 := by
    unfold C
    simp [show (23887872 * k + 11362192) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5681096) = 5971968 * k + 2840548 := by
    unfold C
    simp [show (11943936 * k + 5681096) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2840548) = 2985984 * k + 1420274 := by
    unfold C
    simp [show (5971968 * k + 2840548) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1420274) = 1492992 * k + 710137 := by
    unfold C
    simp [show (2985984 * k + 1420274) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 710137) = 4478976 * k + 2130412 := by
    unfold C
    simp [show (1492992 * k + 710137) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2130412) = 2239488 * k + 1065206 := by
    unfold C
    simp [show (4478976 * k + 2130412) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1065206) = 1119744 * k + 532603 := by
    unfold C
    simp [show (2239488 * k + 1065206) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 532603) = 3359232 * k + 1597810 := by
    unfold C
    simp [show (1119744 * k + 532603) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1597810) = 1679616 * k + 798905 := by
    unfold C
    simp [show (3359232 * k + 1597810) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 798905) = 5038848 * k + 2396716 := by
    unfold C
    simp [show (1679616 * k + 798905) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2396716) = 2519424 * k + 1198358 := by
    unfold C
    simp [show (5038848 * k + 2396716) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1198358) = 1259712 * k + 599179 := by
    unfold C
    simp [show (2519424 * k + 1198358) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 599179) = 3779136 * k + 1797538 := by
    unfold C
    simp [show (1259712 * k + 599179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1797538) = 1889568 * k + 898769 := by
    unfold C
    simp [show (3779136 * k + 1797538) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 898769) = 5668704 * k + 2696308 := by
    unfold C
    simp [show (1889568 * k + 898769) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2696308) = 2834352 * k + 1348154 := by
    unfold C
    simp [show (5668704 * k + 2696308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1348154) = 1417176 * k + 674077 := by
    unfold C
    simp [show (2834352 * k + 1348154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 674077) = 4251528 * k + 2022232 := by
    unfold C
    simp [show (1417176 * k + 674077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2022232) = 2125764 * k + 1011116 := by
    unfold C
    simp [show (4251528 * k + 2022232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1011116) = 1062882 * k + 505558 := by
    unfold C
    simp [show (2125764 * k + 1011116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 505558) = 531441 * k + 252779 := by
    unfold C
    simp [show (1062882 * k + 505558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 498751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 498751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard063
