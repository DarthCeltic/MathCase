import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard076

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_589807 : ∀ k : Nat,
    iterate (1048576 * k + 589807) 32 = 531441 * k + 298928 ∧
      531441 * k + 298928 < 1048576 * k + 589807 := by
  intro k
  have h1 : C (1048576 * k + 589807) = 3145728 * k + 1769422 := by
    unfold C
    simp [show (1048576 * k + 589807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1769422) = 1572864 * k + 884711 := by
    unfold C
    simp [show (3145728 * k + 1769422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 884711) = 4718592 * k + 2654134 := by
    unfold C
    simp [show (1572864 * k + 884711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2654134) = 2359296 * k + 1327067 := by
    unfold C
    simp [show (4718592 * k + 2654134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1327067) = 7077888 * k + 3981202 := by
    unfold C
    simp [show (2359296 * k + 1327067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3981202) = 3538944 * k + 1990601 := by
    unfold C
    simp [show (7077888 * k + 3981202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1990601) = 10616832 * k + 5971804 := by
    unfold C
    simp [show (3538944 * k + 1990601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5971804) = 5308416 * k + 2985902 := by
    unfold C
    simp [show (10616832 * k + 5971804) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2985902) = 2654208 * k + 1492951 := by
    unfold C
    simp [show (5308416 * k + 2985902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1492951) = 7962624 * k + 4478854 := by
    unfold C
    simp [show (2654208 * k + 1492951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4478854) = 3981312 * k + 2239427 := by
    unfold C
    simp [show (7962624 * k + 4478854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2239427) = 11943936 * k + 6718282 := by
    unfold C
    simp [show (3981312 * k + 2239427) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6718282) = 5971968 * k + 3359141 := by
    unfold C
    simp [show (11943936 * k + 6718282) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3359141) = 17915904 * k + 10077424 := by
    unfold C
    simp [show (5971968 * k + 3359141) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10077424) = 8957952 * k + 5038712 := by
    unfold C
    simp [show (17915904 * k + 10077424) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5038712) = 4478976 * k + 2519356 := by
    unfold C
    simp [show (8957952 * k + 5038712) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2519356) = 2239488 * k + 1259678 := by
    unfold C
    simp [show (4478976 * k + 2519356) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1259678) = 1119744 * k + 629839 := by
    unfold C
    simp [show (2239488 * k + 1259678) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 629839) = 3359232 * k + 1889518 := by
    unfold C
    simp [show (1119744 * k + 629839) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1889518) = 1679616 * k + 944759 := by
    unfold C
    simp [show (3359232 * k + 1889518) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 944759) = 5038848 * k + 2834278 := by
    unfold C
    simp [show (1679616 * k + 944759) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2834278) = 2519424 * k + 1417139 := by
    unfold C
    simp [show (5038848 * k + 2834278) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1417139) = 7558272 * k + 4251418 := by
    unfold C
    simp [show (2519424 * k + 1417139) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4251418) = 3779136 * k + 2125709 := by
    unfold C
    simp [show (7558272 * k + 4251418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2125709) = 11337408 * k + 6377128 := by
    unfold C
    simp [show (3779136 * k + 2125709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6377128) = 5668704 * k + 3188564 := by
    unfold C
    simp [show (11337408 * k + 6377128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3188564) = 2834352 * k + 1594282 := by
    unfold C
    simp [show (5668704 * k + 3188564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1594282) = 1417176 * k + 797141 := by
    unfold C
    simp [show (2834352 * k + 1594282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 797141) = 4251528 * k + 2391424 := by
    unfold C
    simp [show (1417176 * k + 797141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2391424) = 2125764 * k + 1195712 := by
    unfold C
    simp [show (4251528 * k + 2391424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1195712) = 1062882 * k + 597856 := by
    unfold C
    simp [show (2125764 * k + 1195712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 597856) = 531441 * k + 298928 := by
    unfold C
    simp [show (1062882 * k + 597856) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 589807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 589807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_589855 : ∀ k : Nat,
    iterate (1048576 * k + 589855) 32 = 531441 * k + 298952 ∧
      531441 * k + 298952 < 1048576 * k + 589855 := by
  intro k
  have h1 : C (1048576 * k + 589855) = 3145728 * k + 1769566 := by
    unfold C
    simp [show (1048576 * k + 589855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1769566) = 1572864 * k + 884783 := by
    unfold C
    simp [show (3145728 * k + 1769566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 884783) = 4718592 * k + 2654350 := by
    unfold C
    simp [show (1572864 * k + 884783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2654350) = 2359296 * k + 1327175 := by
    unfold C
    simp [show (4718592 * k + 2654350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1327175) = 7077888 * k + 3981526 := by
    unfold C
    simp [show (2359296 * k + 1327175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3981526) = 3538944 * k + 1990763 := by
    unfold C
    simp [show (7077888 * k + 3981526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1990763) = 10616832 * k + 5972290 := by
    unfold C
    simp [show (3538944 * k + 1990763) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5972290) = 5308416 * k + 2986145 := by
    unfold C
    simp [show (10616832 * k + 5972290) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2986145) = 15925248 * k + 8958436 := by
    unfold C
    simp [show (5308416 * k + 2986145) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8958436) = 7962624 * k + 4479218 := by
    unfold C
    simp [show (15925248 * k + 8958436) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4479218) = 3981312 * k + 2239609 := by
    unfold C
    simp [show (7962624 * k + 4479218) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2239609) = 11943936 * k + 6718828 := by
    unfold C
    simp [show (3981312 * k + 2239609) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6718828) = 5971968 * k + 3359414 := by
    unfold C
    simp [show (11943936 * k + 6718828) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3359414) = 2985984 * k + 1679707 := by
    unfold C
    simp [show (5971968 * k + 3359414) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1679707) = 8957952 * k + 5039122 := by
    unfold C
    simp [show (2985984 * k + 1679707) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5039122) = 4478976 * k + 2519561 := by
    unfold C
    simp [show (8957952 * k + 5039122) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2519561) = 13436928 * k + 7558684 := by
    unfold C
    simp [show (4478976 * k + 2519561) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7558684) = 6718464 * k + 3779342 := by
    unfold C
    simp [show (13436928 * k + 7558684) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3779342) = 3359232 * k + 1889671 := by
    unfold C
    simp [show (6718464 * k + 3779342) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1889671) = 10077696 * k + 5669014 := by
    unfold C
    simp [show (3359232 * k + 1889671) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5669014) = 5038848 * k + 2834507 := by
    unfold C
    simp [show (10077696 * k + 5669014) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2834507) = 15116544 * k + 8503522 := by
    unfold C
    simp [show (5038848 * k + 2834507) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8503522) = 7558272 * k + 4251761 := by
    unfold C
    simp [show (15116544 * k + 8503522) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4251761) = 22674816 * k + 12755284 := by
    unfold C
    simp [show (7558272 * k + 4251761) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12755284) = 11337408 * k + 6377642 := by
    unfold C
    simp [show (22674816 * k + 12755284) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6377642) = 5668704 * k + 3188821 := by
    unfold C
    simp [show (11337408 * k + 6377642) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3188821) = 17006112 * k + 9566464 := by
    unfold C
    simp [show (5668704 * k + 3188821) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9566464) = 8503056 * k + 4783232 := by
    unfold C
    simp [show (17006112 * k + 9566464) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4783232) = 4251528 * k + 2391616 := by
    unfold C
    simp [show (8503056 * k + 4783232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2391616) = 2125764 * k + 1195808 := by
    unfold C
    simp [show (4251528 * k + 2391616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1195808) = 1062882 * k + 597904 := by
    unfold C
    simp [show (2125764 * k + 1195808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 597904) = 531441 * k + 298952 := by
    unfold C
    simp [show (1062882 * k + 597904) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 589855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 589855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_589991 : ∀ k : Nat,
    iterate (1048576 * k + 589991) 32 = 531441 * k + 299021 ∧
      531441 * k + 299021 < 1048576 * k + 589991 := by
  intro k
  have h1 : C (1048576 * k + 589991) = 3145728 * k + 1769974 := by
    unfold C
    simp [show (1048576 * k + 589991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1769974) = 1572864 * k + 884987 := by
    unfold C
    simp [show (3145728 * k + 1769974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 884987) = 4718592 * k + 2654962 := by
    unfold C
    simp [show (1572864 * k + 884987) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2654962) = 2359296 * k + 1327481 := by
    unfold C
    simp [show (4718592 * k + 2654962) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1327481) = 7077888 * k + 3982444 := by
    unfold C
    simp [show (2359296 * k + 1327481) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3982444) = 3538944 * k + 1991222 := by
    unfold C
    simp [show (7077888 * k + 3982444) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1991222) = 1769472 * k + 995611 := by
    unfold C
    simp [show (3538944 * k + 1991222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 995611) = 5308416 * k + 2986834 := by
    unfold C
    simp [show (1769472 * k + 995611) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2986834) = 2654208 * k + 1493417 := by
    unfold C
    simp [show (5308416 * k + 2986834) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1493417) = 7962624 * k + 4480252 := by
    unfold C
    simp [show (2654208 * k + 1493417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4480252) = 3981312 * k + 2240126 := by
    unfold C
    simp [show (7962624 * k + 4480252) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2240126) = 1990656 * k + 1120063 := by
    unfold C
    simp [show (3981312 * k + 2240126) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1120063) = 5971968 * k + 3360190 := by
    unfold C
    simp [show (1990656 * k + 1120063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3360190) = 2985984 * k + 1680095 := by
    unfold C
    simp [show (5971968 * k + 3360190) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1680095) = 8957952 * k + 5040286 := by
    unfold C
    simp [show (2985984 * k + 1680095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5040286) = 4478976 * k + 2520143 := by
    unfold C
    simp [show (8957952 * k + 5040286) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2520143) = 13436928 * k + 7560430 := by
    unfold C
    simp [show (4478976 * k + 2520143) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7560430) = 6718464 * k + 3780215 := by
    unfold C
    simp [show (13436928 * k + 7560430) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3780215) = 20155392 * k + 11340646 := by
    unfold C
    simp [show (6718464 * k + 3780215) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11340646) = 10077696 * k + 5670323 := by
    unfold C
    simp [show (20155392 * k + 11340646) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5670323) = 30233088 * k + 17010970 := by
    unfold C
    simp [show (10077696 * k + 5670323) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17010970) = 15116544 * k + 8505485 := by
    unfold C
    simp [show (30233088 * k + 17010970) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8505485) = 45349632 * k + 25516456 := by
    unfold C
    simp [show (15116544 * k + 8505485) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 25516456) = 22674816 * k + 12758228 := by
    unfold C
    simp [show (45349632 * k + 25516456) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12758228) = 11337408 * k + 6379114 := by
    unfold C
    simp [show (22674816 * k + 12758228) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6379114) = 5668704 * k + 3189557 := by
    unfold C
    simp [show (11337408 * k + 6379114) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3189557) = 17006112 * k + 9568672 := by
    unfold C
    simp [show (5668704 * k + 3189557) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9568672) = 8503056 * k + 4784336 := by
    unfold C
    simp [show (17006112 * k + 9568672) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4784336) = 4251528 * k + 2392168 := by
    unfold C
    simp [show (8503056 * k + 4784336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2392168) = 2125764 * k + 1196084 := by
    unfold C
    simp [show (4251528 * k + 2392168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1196084) = 1062882 * k + 598042 := by
    unfold C
    simp [show (2125764 * k + 1196084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 598042) = 531441 * k + 299021 := by
    unfold C
    simp [show (1062882 * k + 598042) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 589991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 589991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_590143 : ∀ k : Nat,
    iterate (1048576 * k + 590143) 32 = 531441 * k + 299098 ∧
      531441 * k + 299098 < 1048576 * k + 590143 := by
  intro k
  have h1 : C (1048576 * k + 590143) = 3145728 * k + 1770430 := by
    unfold C
    simp [show (1048576 * k + 590143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1770430) = 1572864 * k + 885215 := by
    unfold C
    simp [show (3145728 * k + 1770430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 885215) = 4718592 * k + 2655646 := by
    unfold C
    simp [show (1572864 * k + 885215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2655646) = 2359296 * k + 1327823 := by
    unfold C
    simp [show (4718592 * k + 2655646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1327823) = 7077888 * k + 3983470 := by
    unfold C
    simp [show (2359296 * k + 1327823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3983470) = 3538944 * k + 1991735 := by
    unfold C
    simp [show (7077888 * k + 3983470) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1991735) = 10616832 * k + 5975206 := by
    unfold C
    simp [show (3538944 * k + 1991735) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5975206) = 5308416 * k + 2987603 := by
    unfold C
    simp [show (10616832 * k + 5975206) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2987603) = 15925248 * k + 8962810 := by
    unfold C
    simp [show (5308416 * k + 2987603) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8962810) = 7962624 * k + 4481405 := by
    unfold C
    simp [show (15925248 * k + 8962810) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4481405) = 23887872 * k + 13444216 := by
    unfold C
    simp [show (7962624 * k + 4481405) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13444216) = 11943936 * k + 6722108 := by
    unfold C
    simp [show (23887872 * k + 13444216) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6722108) = 5971968 * k + 3361054 := by
    unfold C
    simp [show (11943936 * k + 6722108) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3361054) = 2985984 * k + 1680527 := by
    unfold C
    simp [show (5971968 * k + 3361054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1680527) = 8957952 * k + 5041582 := by
    unfold C
    simp [show (2985984 * k + 1680527) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5041582) = 4478976 * k + 2520791 := by
    unfold C
    simp [show (8957952 * k + 5041582) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2520791) = 13436928 * k + 7562374 := by
    unfold C
    simp [show (4478976 * k + 2520791) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7562374) = 6718464 * k + 3781187 := by
    unfold C
    simp [show (13436928 * k + 7562374) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3781187) = 20155392 * k + 11343562 := by
    unfold C
    simp [show (6718464 * k + 3781187) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11343562) = 10077696 * k + 5671781 := by
    unfold C
    simp [show (20155392 * k + 11343562) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5671781) = 30233088 * k + 17015344 := by
    unfold C
    simp [show (10077696 * k + 5671781) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17015344) = 15116544 * k + 8507672 := by
    unfold C
    simp [show (30233088 * k + 17015344) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8507672) = 7558272 * k + 4253836 := by
    unfold C
    simp [show (15116544 * k + 8507672) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4253836) = 3779136 * k + 2126918 := by
    unfold C
    simp [show (7558272 * k + 4253836) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2126918) = 1889568 * k + 1063459 := by
    unfold C
    simp [show (3779136 * k + 2126918) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1063459) = 5668704 * k + 3190378 := by
    unfold C
    simp [show (1889568 * k + 1063459) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3190378) = 2834352 * k + 1595189 := by
    unfold C
    simp [show (5668704 * k + 3190378) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1595189) = 8503056 * k + 4785568 := by
    unfold C
    simp [show (2834352 * k + 1595189) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4785568) = 4251528 * k + 2392784 := by
    unfold C
    simp [show (8503056 * k + 4785568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2392784) = 2125764 * k + 1196392 := by
    unfold C
    simp [show (4251528 * k + 2392784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1196392) = 1062882 * k + 598196 := by
    unfold C
    simp [show (2125764 * k + 1196392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 598196) = 531441 * k + 299098 := by
    unfold C
    simp [show (1062882 * k + 598196) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 590143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 590143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_590719 : ∀ k : Nat,
    iterate (1048576 * k + 590719) 32 = 531441 * k + 299390 ∧
      531441 * k + 299390 < 1048576 * k + 590719 := by
  intro k
  have h1 : C (1048576 * k + 590719) = 3145728 * k + 1772158 := by
    unfold C
    simp [show (1048576 * k + 590719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1772158) = 1572864 * k + 886079 := by
    unfold C
    simp [show (3145728 * k + 1772158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 886079) = 4718592 * k + 2658238 := by
    unfold C
    simp [show (1572864 * k + 886079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2658238) = 2359296 * k + 1329119 := by
    unfold C
    simp [show (4718592 * k + 2658238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1329119) = 7077888 * k + 3987358 := by
    unfold C
    simp [show (2359296 * k + 1329119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3987358) = 3538944 * k + 1993679 := by
    unfold C
    simp [show (7077888 * k + 3987358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1993679) = 10616832 * k + 5981038 := by
    unfold C
    simp [show (3538944 * k + 1993679) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5981038) = 5308416 * k + 2990519 := by
    unfold C
    simp [show (10616832 * k + 5981038) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2990519) = 15925248 * k + 8971558 := by
    unfold C
    simp [show (5308416 * k + 2990519) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8971558) = 7962624 * k + 4485779 := by
    unfold C
    simp [show (15925248 * k + 8971558) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4485779) = 23887872 * k + 13457338 := by
    unfold C
    simp [show (7962624 * k + 4485779) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13457338) = 11943936 * k + 6728669 := by
    unfold C
    simp [show (23887872 * k + 13457338) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6728669) = 35831808 * k + 20186008 := by
    unfold C
    simp [show (11943936 * k + 6728669) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20186008) = 17915904 * k + 10093004 := by
    unfold C
    simp [show (35831808 * k + 20186008) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10093004) = 8957952 * k + 5046502 := by
    unfold C
    simp [show (17915904 * k + 10093004) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5046502) = 4478976 * k + 2523251 := by
    unfold C
    simp [show (8957952 * k + 5046502) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2523251) = 13436928 * k + 7569754 := by
    unfold C
    simp [show (4478976 * k + 2523251) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7569754) = 6718464 * k + 3784877 := by
    unfold C
    simp [show (13436928 * k + 7569754) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3784877) = 20155392 * k + 11354632 := by
    unfold C
    simp [show (6718464 * k + 3784877) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11354632) = 10077696 * k + 5677316 := by
    unfold C
    simp [show (20155392 * k + 11354632) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5677316) = 5038848 * k + 2838658 := by
    unfold C
    simp [show (10077696 * k + 5677316) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2838658) = 2519424 * k + 1419329 := by
    unfold C
    simp [show (5038848 * k + 2838658) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1419329) = 7558272 * k + 4257988 := by
    unfold C
    simp [show (2519424 * k + 1419329) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4257988) = 3779136 * k + 2128994 := by
    unfold C
    simp [show (7558272 * k + 4257988) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2128994) = 1889568 * k + 1064497 := by
    unfold C
    simp [show (3779136 * k + 2128994) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1064497) = 5668704 * k + 3193492 := by
    unfold C
    simp [show (1889568 * k + 1064497) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3193492) = 2834352 * k + 1596746 := by
    unfold C
    simp [show (5668704 * k + 3193492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1596746) = 1417176 * k + 798373 := by
    unfold C
    simp [show (2834352 * k + 1596746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 798373) = 4251528 * k + 2395120 := by
    unfold C
    simp [show (1417176 * k + 798373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2395120) = 2125764 * k + 1197560 := by
    unfold C
    simp [show (4251528 * k + 2395120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1197560) = 1062882 * k + 598780 := by
    unfold C
    simp [show (2125764 * k + 1197560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 598780) = 531441 * k + 299390 := by
    unfold C
    simp [show (1062882 * k + 598780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 590719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 590719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_591487 : ∀ k : Nat,
    iterate (1048576 * k + 591487) 32 = 531441 * k + 299779 ∧
      531441 * k + 299779 < 1048576 * k + 591487 := by
  intro k
  have h1 : C (1048576 * k + 591487) = 3145728 * k + 1774462 := by
    unfold C
    simp [show (1048576 * k + 591487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1774462) = 1572864 * k + 887231 := by
    unfold C
    simp [show (3145728 * k + 1774462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 887231) = 4718592 * k + 2661694 := by
    unfold C
    simp [show (1572864 * k + 887231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2661694) = 2359296 * k + 1330847 := by
    unfold C
    simp [show (4718592 * k + 2661694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1330847) = 7077888 * k + 3992542 := by
    unfold C
    simp [show (2359296 * k + 1330847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3992542) = 3538944 * k + 1996271 := by
    unfold C
    simp [show (7077888 * k + 3992542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1996271) = 10616832 * k + 5988814 := by
    unfold C
    simp [show (3538944 * k + 1996271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5988814) = 5308416 * k + 2994407 := by
    unfold C
    simp [show (10616832 * k + 5988814) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2994407) = 15925248 * k + 8983222 := by
    unfold C
    simp [show (5308416 * k + 2994407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8983222) = 7962624 * k + 4491611 := by
    unfold C
    simp [show (15925248 * k + 8983222) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4491611) = 23887872 * k + 13474834 := by
    unfold C
    simp [show (7962624 * k + 4491611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13474834) = 11943936 * k + 6737417 := by
    unfold C
    simp [show (23887872 * k + 13474834) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6737417) = 35831808 * k + 20212252 := by
    unfold C
    simp [show (11943936 * k + 6737417) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20212252) = 17915904 * k + 10106126 := by
    unfold C
    simp [show (35831808 * k + 20212252) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10106126) = 8957952 * k + 5053063 := by
    unfold C
    simp [show (17915904 * k + 10106126) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5053063) = 26873856 * k + 15159190 := by
    unfold C
    simp [show (8957952 * k + 5053063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15159190) = 13436928 * k + 7579595 := by
    unfold C
    simp [show (26873856 * k + 15159190) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7579595) = 40310784 * k + 22738786 := by
    unfold C
    simp [show (13436928 * k + 7579595) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22738786) = 20155392 * k + 11369393 := by
    unfold C
    simp [show (40310784 * k + 22738786) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11369393) = 60466176 * k + 34108180 := by
    unfold C
    simp [show (20155392 * k + 11369393) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 34108180) = 30233088 * k + 17054090 := by
    unfold C
    simp [show (60466176 * k + 34108180) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17054090) = 15116544 * k + 8527045 := by
    unfold C
    simp [show (30233088 * k + 17054090) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8527045) = 45349632 * k + 25581136 := by
    unfold C
    simp [show (15116544 * k + 8527045) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 25581136) = 22674816 * k + 12790568 := by
    unfold C
    simp [show (45349632 * k + 25581136) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12790568) = 11337408 * k + 6395284 := by
    unfold C
    simp [show (22674816 * k + 12790568) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6395284) = 5668704 * k + 3197642 := by
    unfold C
    simp [show (11337408 * k + 6395284) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3197642) = 2834352 * k + 1598821 := by
    unfold C
    simp [show (5668704 * k + 3197642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1598821) = 8503056 * k + 4796464 := by
    unfold C
    simp [show (2834352 * k + 1598821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4796464) = 4251528 * k + 2398232 := by
    unfold C
    simp [show (8503056 * k + 4796464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2398232) = 2125764 * k + 1199116 := by
    unfold C
    simp [show (4251528 * k + 2398232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1199116) = 1062882 * k + 599558 := by
    unfold C
    simp [show (2125764 * k + 1199116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 599558) = 531441 * k + 299779 := by
    unfold C
    simp [show (1062882 * k + 599558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 591487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 591487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_591687 : ∀ k : Nat,
    iterate (1048576 * k + 591687) 32 = 531441 * k + 299881 ∧
      531441 * k + 299881 < 1048576 * k + 591687 := by
  intro k
  have h1 : C (1048576 * k + 591687) = 3145728 * k + 1775062 := by
    unfold C
    simp [show (1048576 * k + 591687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1775062) = 1572864 * k + 887531 := by
    unfold C
    simp [show (3145728 * k + 1775062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 887531) = 4718592 * k + 2662594 := by
    unfold C
    simp [show (1572864 * k + 887531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2662594) = 2359296 * k + 1331297 := by
    unfold C
    simp [show (4718592 * k + 2662594) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1331297) = 7077888 * k + 3993892 := by
    unfold C
    simp [show (2359296 * k + 1331297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3993892) = 3538944 * k + 1996946 := by
    unfold C
    simp [show (7077888 * k + 3993892) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1996946) = 1769472 * k + 998473 := by
    unfold C
    simp [show (3538944 * k + 1996946) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 998473) = 5308416 * k + 2995420 := by
    unfold C
    simp [show (1769472 * k + 998473) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2995420) = 2654208 * k + 1497710 := by
    unfold C
    simp [show (5308416 * k + 2995420) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1497710) = 1327104 * k + 748855 := by
    unfold C
    simp [show (2654208 * k + 1497710) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 748855) = 3981312 * k + 2246566 := by
    unfold C
    simp [show (1327104 * k + 748855) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2246566) = 1990656 * k + 1123283 := by
    unfold C
    simp [show (3981312 * k + 2246566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1123283) = 5971968 * k + 3369850 := by
    unfold C
    simp [show (1990656 * k + 1123283) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3369850) = 2985984 * k + 1684925 := by
    unfold C
    simp [show (5971968 * k + 3369850) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1684925) = 8957952 * k + 5054776 := by
    unfold C
    simp [show (2985984 * k + 1684925) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5054776) = 4478976 * k + 2527388 := by
    unfold C
    simp [show (8957952 * k + 5054776) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2527388) = 2239488 * k + 1263694 := by
    unfold C
    simp [show (4478976 * k + 2527388) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1263694) = 1119744 * k + 631847 := by
    unfold C
    simp [show (2239488 * k + 1263694) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 631847) = 3359232 * k + 1895542 := by
    unfold C
    simp [show (1119744 * k + 631847) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1895542) = 1679616 * k + 947771 := by
    unfold C
    simp [show (3359232 * k + 1895542) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 947771) = 5038848 * k + 2843314 := by
    unfold C
    simp [show (1679616 * k + 947771) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2843314) = 2519424 * k + 1421657 := by
    unfold C
    simp [show (5038848 * k + 2843314) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1421657) = 7558272 * k + 4264972 := by
    unfold C
    simp [show (2519424 * k + 1421657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4264972) = 3779136 * k + 2132486 := by
    unfold C
    simp [show (7558272 * k + 4264972) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2132486) = 1889568 * k + 1066243 := by
    unfold C
    simp [show (3779136 * k + 2132486) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1066243) = 5668704 * k + 3198730 := by
    unfold C
    simp [show (1889568 * k + 1066243) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3198730) = 2834352 * k + 1599365 := by
    unfold C
    simp [show (5668704 * k + 3198730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1599365) = 8503056 * k + 4798096 := by
    unfold C
    simp [show (2834352 * k + 1599365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4798096) = 4251528 * k + 2399048 := by
    unfold C
    simp [show (8503056 * k + 4798096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2399048) = 2125764 * k + 1199524 := by
    unfold C
    simp [show (4251528 * k + 2399048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1199524) = 1062882 * k + 599762 := by
    unfold C
    simp [show (2125764 * k + 1199524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 599762) = 531441 * k + 299881 := by
    unfold C
    simp [show (1062882 * k + 599762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 591687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 591687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_592039 : ∀ k : Nat,
    iterate (1048576 * k + 592039) 32 = 531441 * k + 300059 ∧
      531441 * k + 300059 < 1048576 * k + 592039 := by
  intro k
  have h1 : C (1048576 * k + 592039) = 3145728 * k + 1776118 := by
    unfold C
    simp [show (1048576 * k + 592039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1776118) = 1572864 * k + 888059 := by
    unfold C
    simp [show (3145728 * k + 1776118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 888059) = 4718592 * k + 2664178 := by
    unfold C
    simp [show (1572864 * k + 888059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2664178) = 2359296 * k + 1332089 := by
    unfold C
    simp [show (4718592 * k + 2664178) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1332089) = 7077888 * k + 3996268 := by
    unfold C
    simp [show (2359296 * k + 1332089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3996268) = 3538944 * k + 1998134 := by
    unfold C
    simp [show (7077888 * k + 3996268) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1998134) = 1769472 * k + 999067 := by
    unfold C
    simp [show (3538944 * k + 1998134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 999067) = 5308416 * k + 2997202 := by
    unfold C
    simp [show (1769472 * k + 999067) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2997202) = 2654208 * k + 1498601 := by
    unfold C
    simp [show (5308416 * k + 2997202) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1498601) = 7962624 * k + 4495804 := by
    unfold C
    simp [show (2654208 * k + 1498601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4495804) = 3981312 * k + 2247902 := by
    unfold C
    simp [show (7962624 * k + 4495804) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2247902) = 1990656 * k + 1123951 := by
    unfold C
    simp [show (3981312 * k + 2247902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1123951) = 5971968 * k + 3371854 := by
    unfold C
    simp [show (1990656 * k + 1123951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3371854) = 2985984 * k + 1685927 := by
    unfold C
    simp [show (5971968 * k + 3371854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1685927) = 8957952 * k + 5057782 := by
    unfold C
    simp [show (2985984 * k + 1685927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5057782) = 4478976 * k + 2528891 := by
    unfold C
    simp [show (8957952 * k + 5057782) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2528891) = 13436928 * k + 7586674 := by
    unfold C
    simp [show (4478976 * k + 2528891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7586674) = 6718464 * k + 3793337 := by
    unfold C
    simp [show (13436928 * k + 7586674) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3793337) = 20155392 * k + 11380012 := by
    unfold C
    simp [show (6718464 * k + 3793337) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11380012) = 10077696 * k + 5690006 := by
    unfold C
    simp [show (20155392 * k + 11380012) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5690006) = 5038848 * k + 2845003 := by
    unfold C
    simp [show (10077696 * k + 5690006) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2845003) = 15116544 * k + 8535010 := by
    unfold C
    simp [show (5038848 * k + 2845003) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8535010) = 7558272 * k + 4267505 := by
    unfold C
    simp [show (15116544 * k + 8535010) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4267505) = 22674816 * k + 12802516 := by
    unfold C
    simp [show (7558272 * k + 4267505) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12802516) = 11337408 * k + 6401258 := by
    unfold C
    simp [show (22674816 * k + 12802516) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6401258) = 5668704 * k + 3200629 := by
    unfold C
    simp [show (11337408 * k + 6401258) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3200629) = 17006112 * k + 9601888 := by
    unfold C
    simp [show (5668704 * k + 3200629) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9601888) = 8503056 * k + 4800944 := by
    unfold C
    simp [show (17006112 * k + 9601888) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4800944) = 4251528 * k + 2400472 := by
    unfold C
    simp [show (8503056 * k + 4800944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2400472) = 2125764 * k + 1200236 := by
    unfold C
    simp [show (4251528 * k + 2400472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1200236) = 1062882 * k + 600118 := by
    unfold C
    simp [show (2125764 * k + 1200236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 600118) = 531441 * k + 300059 := by
    unfold C
    simp [show (1062882 * k + 600118) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 592039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 592039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_592351 : ∀ k : Nat,
    iterate (1048576 * k + 592351) 32 = 531441 * k + 300217 ∧
      531441 * k + 300217 < 1048576 * k + 592351 := by
  intro k
  have h1 : C (1048576 * k + 592351) = 3145728 * k + 1777054 := by
    unfold C
    simp [show (1048576 * k + 592351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1777054) = 1572864 * k + 888527 := by
    unfold C
    simp [show (3145728 * k + 1777054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 888527) = 4718592 * k + 2665582 := by
    unfold C
    simp [show (1572864 * k + 888527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2665582) = 2359296 * k + 1332791 := by
    unfold C
    simp [show (4718592 * k + 2665582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1332791) = 7077888 * k + 3998374 := by
    unfold C
    simp [show (2359296 * k + 1332791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3998374) = 3538944 * k + 1999187 := by
    unfold C
    simp [show (7077888 * k + 3998374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1999187) = 10616832 * k + 5997562 := by
    unfold C
    simp [show (3538944 * k + 1999187) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5997562) = 5308416 * k + 2998781 := by
    unfold C
    simp [show (10616832 * k + 5997562) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2998781) = 15925248 * k + 8996344 := by
    unfold C
    simp [show (5308416 * k + 2998781) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8996344) = 7962624 * k + 4498172 := by
    unfold C
    simp [show (15925248 * k + 8996344) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4498172) = 3981312 * k + 2249086 := by
    unfold C
    simp [show (7962624 * k + 4498172) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2249086) = 1990656 * k + 1124543 := by
    unfold C
    simp [show (3981312 * k + 2249086) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1124543) = 5971968 * k + 3373630 := by
    unfold C
    simp [show (1990656 * k + 1124543) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3373630) = 2985984 * k + 1686815 := by
    unfold C
    simp [show (5971968 * k + 3373630) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1686815) = 8957952 * k + 5060446 := by
    unfold C
    simp [show (2985984 * k + 1686815) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5060446) = 4478976 * k + 2530223 := by
    unfold C
    simp [show (8957952 * k + 5060446) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2530223) = 13436928 * k + 7590670 := by
    unfold C
    simp [show (4478976 * k + 2530223) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7590670) = 6718464 * k + 3795335 := by
    unfold C
    simp [show (13436928 * k + 7590670) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3795335) = 20155392 * k + 11386006 := by
    unfold C
    simp [show (6718464 * k + 3795335) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11386006) = 10077696 * k + 5693003 := by
    unfold C
    simp [show (20155392 * k + 11386006) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5693003) = 30233088 * k + 17079010 := by
    unfold C
    simp [show (10077696 * k + 5693003) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17079010) = 15116544 * k + 8539505 := by
    unfold C
    simp [show (30233088 * k + 17079010) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8539505) = 45349632 * k + 25618516 := by
    unfold C
    simp [show (15116544 * k + 8539505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 25618516) = 22674816 * k + 12809258 := by
    unfold C
    simp [show (45349632 * k + 25618516) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12809258) = 11337408 * k + 6404629 := by
    unfold C
    simp [show (22674816 * k + 12809258) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6404629) = 34012224 * k + 19213888 := by
    unfold C
    simp [show (11337408 * k + 6404629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 19213888) = 17006112 * k + 9606944 := by
    unfold C
    simp [show (34012224 * k + 19213888) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9606944) = 8503056 * k + 4803472 := by
    unfold C
    simp [show (17006112 * k + 9606944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4803472) = 4251528 * k + 2401736 := by
    unfold C
    simp [show (8503056 * k + 4803472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2401736) = 2125764 * k + 1200868 := by
    unfold C
    simp [show (4251528 * k + 2401736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1200868) = 1062882 * k + 600434 := by
    unfold C
    simp [show (2125764 * k + 1200868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 600434) = 531441 * k + 300217 := by
    unfold C
    simp [show (1062882 * k + 600434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 592351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 592351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_593051 : ∀ k : Nat,
    iterate (1048576 * k + 593051) 32 = 531441 * k + 300572 ∧
      531441 * k + 300572 < 1048576 * k + 593051 := by
  intro k
  have h1 : C (1048576 * k + 593051) = 3145728 * k + 1779154 := by
    unfold C
    simp [show (1048576 * k + 593051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1779154) = 1572864 * k + 889577 := by
    unfold C
    simp [show (3145728 * k + 1779154) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 889577) = 4718592 * k + 2668732 := by
    unfold C
    simp [show (1572864 * k + 889577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2668732) = 2359296 * k + 1334366 := by
    unfold C
    simp [show (4718592 * k + 2668732) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1334366) = 1179648 * k + 667183 := by
    unfold C
    simp [show (2359296 * k + 1334366) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 667183) = 3538944 * k + 2001550 := by
    unfold C
    simp [show (1179648 * k + 667183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2001550) = 1769472 * k + 1000775 := by
    unfold C
    simp [show (3538944 * k + 2001550) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1000775) = 5308416 * k + 3002326 := by
    unfold C
    simp [show (1769472 * k + 1000775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3002326) = 2654208 * k + 1501163 := by
    unfold C
    simp [show (5308416 * k + 3002326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1501163) = 7962624 * k + 4503490 := by
    unfold C
    simp [show (2654208 * k + 1501163) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4503490) = 3981312 * k + 2251745 := by
    unfold C
    simp [show (7962624 * k + 4503490) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2251745) = 11943936 * k + 6755236 := by
    unfold C
    simp [show (3981312 * k + 2251745) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6755236) = 5971968 * k + 3377618 := by
    unfold C
    simp [show (11943936 * k + 6755236) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3377618) = 2985984 * k + 1688809 := by
    unfold C
    simp [show (5971968 * k + 3377618) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1688809) = 8957952 * k + 5066428 := by
    unfold C
    simp [show (2985984 * k + 1688809) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5066428) = 4478976 * k + 2533214 := by
    unfold C
    simp [show (8957952 * k + 5066428) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2533214) = 2239488 * k + 1266607 := by
    unfold C
    simp [show (4478976 * k + 2533214) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1266607) = 6718464 * k + 3799822 := by
    unfold C
    simp [show (2239488 * k + 1266607) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3799822) = 3359232 * k + 1899911 := by
    unfold C
    simp [show (6718464 * k + 3799822) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1899911) = 10077696 * k + 5699734 := by
    unfold C
    simp [show (3359232 * k + 1899911) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5699734) = 5038848 * k + 2849867 := by
    unfold C
    simp [show (10077696 * k + 5699734) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2849867) = 15116544 * k + 8549602 := by
    unfold C
    simp [show (5038848 * k + 2849867) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8549602) = 7558272 * k + 4274801 := by
    unfold C
    simp [show (15116544 * k + 8549602) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4274801) = 22674816 * k + 12824404 := by
    unfold C
    simp [show (7558272 * k + 4274801) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12824404) = 11337408 * k + 6412202 := by
    unfold C
    simp [show (22674816 * k + 12824404) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6412202) = 5668704 * k + 3206101 := by
    unfold C
    simp [show (11337408 * k + 6412202) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3206101) = 17006112 * k + 9618304 := by
    unfold C
    simp [show (5668704 * k + 3206101) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9618304) = 8503056 * k + 4809152 := by
    unfold C
    simp [show (17006112 * k + 9618304) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4809152) = 4251528 * k + 2404576 := by
    unfold C
    simp [show (8503056 * k + 4809152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2404576) = 2125764 * k + 1202288 := by
    unfold C
    simp [show (4251528 * k + 2404576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1202288) = 1062882 * k + 601144 := by
    unfold C
    simp [show (2125764 * k + 1202288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 601144) = 531441 * k + 300572 := by
    unfold C
    simp [show (1062882 * k + 601144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 593051) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 593051)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_593215 : ∀ k : Nat,
    iterate (1048576 * k + 593215) 32 = 531441 * k + 300655 ∧
      531441 * k + 300655 < 1048576 * k + 593215 := by
  intro k
  have h1 : C (1048576 * k + 593215) = 3145728 * k + 1779646 := by
    unfold C
    simp [show (1048576 * k + 593215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1779646) = 1572864 * k + 889823 := by
    unfold C
    simp [show (3145728 * k + 1779646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 889823) = 4718592 * k + 2669470 := by
    unfold C
    simp [show (1572864 * k + 889823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2669470) = 2359296 * k + 1334735 := by
    unfold C
    simp [show (4718592 * k + 2669470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1334735) = 7077888 * k + 4004206 := by
    unfold C
    simp [show (2359296 * k + 1334735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4004206) = 3538944 * k + 2002103 := by
    unfold C
    simp [show (7077888 * k + 4004206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2002103) = 10616832 * k + 6006310 := by
    unfold C
    simp [show (3538944 * k + 2002103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6006310) = 5308416 * k + 3003155 := by
    unfold C
    simp [show (10616832 * k + 6006310) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3003155) = 15925248 * k + 9009466 := by
    unfold C
    simp [show (5308416 * k + 3003155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9009466) = 7962624 * k + 4504733 := by
    unfold C
    simp [show (15925248 * k + 9009466) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4504733) = 23887872 * k + 13514200 := by
    unfold C
    simp [show (7962624 * k + 4504733) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13514200) = 11943936 * k + 6757100 := by
    unfold C
    simp [show (23887872 * k + 13514200) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6757100) = 5971968 * k + 3378550 := by
    unfold C
    simp [show (11943936 * k + 6757100) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3378550) = 2985984 * k + 1689275 := by
    unfold C
    simp [show (5971968 * k + 3378550) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1689275) = 8957952 * k + 5067826 := by
    unfold C
    simp [show (2985984 * k + 1689275) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5067826) = 4478976 * k + 2533913 := by
    unfold C
    simp [show (8957952 * k + 5067826) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2533913) = 13436928 * k + 7601740 := by
    unfold C
    simp [show (4478976 * k + 2533913) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7601740) = 6718464 * k + 3800870 := by
    unfold C
    simp [show (13436928 * k + 7601740) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3800870) = 3359232 * k + 1900435 := by
    unfold C
    simp [show (6718464 * k + 3800870) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1900435) = 10077696 * k + 5701306 := by
    unfold C
    simp [show (3359232 * k + 1900435) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5701306) = 5038848 * k + 2850653 := by
    unfold C
    simp [show (10077696 * k + 5701306) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2850653) = 15116544 * k + 8551960 := by
    unfold C
    simp [show (5038848 * k + 2850653) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8551960) = 7558272 * k + 4275980 := by
    unfold C
    simp [show (15116544 * k + 8551960) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4275980) = 3779136 * k + 2137990 := by
    unfold C
    simp [show (7558272 * k + 4275980) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2137990) = 1889568 * k + 1068995 := by
    unfold C
    simp [show (3779136 * k + 2137990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1068995) = 5668704 * k + 3206986 := by
    unfold C
    simp [show (1889568 * k + 1068995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3206986) = 2834352 * k + 1603493 := by
    unfold C
    simp [show (5668704 * k + 3206986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1603493) = 8503056 * k + 4810480 := by
    unfold C
    simp [show (2834352 * k + 1603493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4810480) = 4251528 * k + 2405240 := by
    unfold C
    simp [show (8503056 * k + 4810480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2405240) = 2125764 * k + 1202620 := by
    unfold C
    simp [show (4251528 * k + 2405240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1202620) = 1062882 * k + 601310 := by
    unfold C
    simp [show (2125764 * k + 1202620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 601310) = 531441 * k + 300655 := by
    unfold C
    simp [show (1062882 * k + 601310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 593215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 593215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_593755 : ∀ k : Nat,
    iterate (1048576 * k + 593755) 32 = 531441 * k + 300929 ∧
      531441 * k + 300929 < 1048576 * k + 593755 := by
  intro k
  have h1 : C (1048576 * k + 593755) = 3145728 * k + 1781266 := by
    unfold C
    simp [show (1048576 * k + 593755) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1781266) = 1572864 * k + 890633 := by
    unfold C
    simp [show (3145728 * k + 1781266) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 890633) = 4718592 * k + 2671900 := by
    unfold C
    simp [show (1572864 * k + 890633) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2671900) = 2359296 * k + 1335950 := by
    unfold C
    simp [show (4718592 * k + 2671900) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1335950) = 1179648 * k + 667975 := by
    unfold C
    simp [show (2359296 * k + 1335950) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 667975) = 3538944 * k + 2003926 := by
    unfold C
    simp [show (1179648 * k + 667975) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2003926) = 1769472 * k + 1001963 := by
    unfold C
    simp [show (3538944 * k + 2003926) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1001963) = 5308416 * k + 3005890 := by
    unfold C
    simp [show (1769472 * k + 1001963) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3005890) = 2654208 * k + 1502945 := by
    unfold C
    simp [show (5308416 * k + 3005890) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1502945) = 7962624 * k + 4508836 := by
    unfold C
    simp [show (2654208 * k + 1502945) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4508836) = 3981312 * k + 2254418 := by
    unfold C
    simp [show (7962624 * k + 4508836) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2254418) = 1990656 * k + 1127209 := by
    unfold C
    simp [show (3981312 * k + 2254418) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1127209) = 5971968 * k + 3381628 := by
    unfold C
    simp [show (1990656 * k + 1127209) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3381628) = 2985984 * k + 1690814 := by
    unfold C
    simp [show (5971968 * k + 3381628) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1690814) = 1492992 * k + 845407 := by
    unfold C
    simp [show (2985984 * k + 1690814) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 845407) = 4478976 * k + 2536222 := by
    unfold C
    simp [show (1492992 * k + 845407) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2536222) = 2239488 * k + 1268111 := by
    unfold C
    simp [show (4478976 * k + 2536222) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1268111) = 6718464 * k + 3804334 := by
    unfold C
    simp [show (2239488 * k + 1268111) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3804334) = 3359232 * k + 1902167 := by
    unfold C
    simp [show (6718464 * k + 3804334) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1902167) = 10077696 * k + 5706502 := by
    unfold C
    simp [show (3359232 * k + 1902167) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5706502) = 5038848 * k + 2853251 := by
    unfold C
    simp [show (10077696 * k + 5706502) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2853251) = 15116544 * k + 8559754 := by
    unfold C
    simp [show (5038848 * k + 2853251) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8559754) = 7558272 * k + 4279877 := by
    unfold C
    simp [show (15116544 * k + 8559754) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4279877) = 22674816 * k + 12839632 := by
    unfold C
    simp [show (7558272 * k + 4279877) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12839632) = 11337408 * k + 6419816 := by
    unfold C
    simp [show (22674816 * k + 12839632) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6419816) = 5668704 * k + 3209908 := by
    unfold C
    simp [show (11337408 * k + 6419816) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3209908) = 2834352 * k + 1604954 := by
    unfold C
    simp [show (5668704 * k + 3209908) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1604954) = 1417176 * k + 802477 := by
    unfold C
    simp [show (2834352 * k + 1604954) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 802477) = 4251528 * k + 2407432 := by
    unfold C
    simp [show (1417176 * k + 802477) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2407432) = 2125764 * k + 1203716 := by
    unfold C
    simp [show (4251528 * k + 2407432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1203716) = 1062882 * k + 601858 := by
    unfold C
    simp [show (2125764 * k + 1203716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 601858) = 531441 * k + 300929 := by
    unfold C
    simp [show (1062882 * k + 601858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 593755) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 593755)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_593951 : ∀ k : Nat,
    iterate (1048576 * k + 593951) 32 = 531441 * k + 301028 ∧
      531441 * k + 301028 < 1048576 * k + 593951 := by
  intro k
  have h1 : C (1048576 * k + 593951) = 3145728 * k + 1781854 := by
    unfold C
    simp [show (1048576 * k + 593951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1781854) = 1572864 * k + 890927 := by
    unfold C
    simp [show (3145728 * k + 1781854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 890927) = 4718592 * k + 2672782 := by
    unfold C
    simp [show (1572864 * k + 890927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2672782) = 2359296 * k + 1336391 := by
    unfold C
    simp [show (4718592 * k + 2672782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1336391) = 7077888 * k + 4009174 := by
    unfold C
    simp [show (2359296 * k + 1336391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4009174) = 3538944 * k + 2004587 := by
    unfold C
    simp [show (7077888 * k + 4009174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2004587) = 10616832 * k + 6013762 := by
    unfold C
    simp [show (3538944 * k + 2004587) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6013762) = 5308416 * k + 3006881 := by
    unfold C
    simp [show (10616832 * k + 6013762) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3006881) = 15925248 * k + 9020644 := by
    unfold C
    simp [show (5308416 * k + 3006881) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9020644) = 7962624 * k + 4510322 := by
    unfold C
    simp [show (15925248 * k + 9020644) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4510322) = 3981312 * k + 2255161 := by
    unfold C
    simp [show (7962624 * k + 4510322) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2255161) = 11943936 * k + 6765484 := by
    unfold C
    simp [show (3981312 * k + 2255161) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6765484) = 5971968 * k + 3382742 := by
    unfold C
    simp [show (11943936 * k + 6765484) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3382742) = 2985984 * k + 1691371 := by
    unfold C
    simp [show (5971968 * k + 3382742) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1691371) = 8957952 * k + 5074114 := by
    unfold C
    simp [show (2985984 * k + 1691371) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5074114) = 4478976 * k + 2537057 := by
    unfold C
    simp [show (8957952 * k + 5074114) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2537057) = 13436928 * k + 7611172 := by
    unfold C
    simp [show (4478976 * k + 2537057) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7611172) = 6718464 * k + 3805586 := by
    unfold C
    simp [show (13436928 * k + 7611172) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3805586) = 3359232 * k + 1902793 := by
    unfold C
    simp [show (6718464 * k + 3805586) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1902793) = 10077696 * k + 5708380 := by
    unfold C
    simp [show (3359232 * k + 1902793) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5708380) = 5038848 * k + 2854190 := by
    unfold C
    simp [show (10077696 * k + 5708380) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2854190) = 2519424 * k + 1427095 := by
    unfold C
    simp [show (5038848 * k + 2854190) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1427095) = 7558272 * k + 4281286 := by
    unfold C
    simp [show (2519424 * k + 1427095) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4281286) = 3779136 * k + 2140643 := by
    unfold C
    simp [show (7558272 * k + 4281286) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2140643) = 11337408 * k + 6421930 := by
    unfold C
    simp [show (3779136 * k + 2140643) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6421930) = 5668704 * k + 3210965 := by
    unfold C
    simp [show (11337408 * k + 6421930) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3210965) = 17006112 * k + 9632896 := by
    unfold C
    simp [show (5668704 * k + 3210965) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9632896) = 8503056 * k + 4816448 := by
    unfold C
    simp [show (17006112 * k + 9632896) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4816448) = 4251528 * k + 2408224 := by
    unfold C
    simp [show (8503056 * k + 4816448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2408224) = 2125764 * k + 1204112 := by
    unfold C
    simp [show (4251528 * k + 2408224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1204112) = 1062882 * k + 602056 := by
    unfold C
    simp [show (2125764 * k + 1204112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 602056) = 531441 * k + 301028 := by
    unfold C
    simp [show (1062882 * k + 602056) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 593951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 593951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_594399 : ∀ k : Nat,
    iterate (1048576 * k + 594399) 32 = 531441 * k + 301255 ∧
      531441 * k + 301255 < 1048576 * k + 594399 := by
  intro k
  have h1 : C (1048576 * k + 594399) = 3145728 * k + 1783198 := by
    unfold C
    simp [show (1048576 * k + 594399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1783198) = 1572864 * k + 891599 := by
    unfold C
    simp [show (3145728 * k + 1783198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 891599) = 4718592 * k + 2674798 := by
    unfold C
    simp [show (1572864 * k + 891599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2674798) = 2359296 * k + 1337399 := by
    unfold C
    simp [show (4718592 * k + 2674798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1337399) = 7077888 * k + 4012198 := by
    unfold C
    simp [show (2359296 * k + 1337399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4012198) = 3538944 * k + 2006099 := by
    unfold C
    simp [show (7077888 * k + 4012198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2006099) = 10616832 * k + 6018298 := by
    unfold C
    simp [show (3538944 * k + 2006099) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6018298) = 5308416 * k + 3009149 := by
    unfold C
    simp [show (10616832 * k + 6018298) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3009149) = 15925248 * k + 9027448 := by
    unfold C
    simp [show (5308416 * k + 3009149) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9027448) = 7962624 * k + 4513724 := by
    unfold C
    simp [show (15925248 * k + 9027448) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4513724) = 3981312 * k + 2256862 := by
    unfold C
    simp [show (7962624 * k + 4513724) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2256862) = 1990656 * k + 1128431 := by
    unfold C
    simp [show (3981312 * k + 2256862) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1128431) = 5971968 * k + 3385294 := by
    unfold C
    simp [show (1990656 * k + 1128431) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3385294) = 2985984 * k + 1692647 := by
    unfold C
    simp [show (5971968 * k + 3385294) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1692647) = 8957952 * k + 5077942 := by
    unfold C
    simp [show (2985984 * k + 1692647) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5077942) = 4478976 * k + 2538971 := by
    unfold C
    simp [show (8957952 * k + 5077942) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2538971) = 13436928 * k + 7616914 := by
    unfold C
    simp [show (4478976 * k + 2538971) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7616914) = 6718464 * k + 3808457 := by
    unfold C
    simp [show (13436928 * k + 7616914) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3808457) = 20155392 * k + 11425372 := by
    unfold C
    simp [show (6718464 * k + 3808457) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11425372) = 10077696 * k + 5712686 := by
    unfold C
    simp [show (20155392 * k + 11425372) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5712686) = 5038848 * k + 2856343 := by
    unfold C
    simp [show (10077696 * k + 5712686) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2856343) = 15116544 * k + 8569030 := by
    unfold C
    simp [show (5038848 * k + 2856343) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8569030) = 7558272 * k + 4284515 := by
    unfold C
    simp [show (15116544 * k + 8569030) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4284515) = 22674816 * k + 12853546 := by
    unfold C
    simp [show (7558272 * k + 4284515) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12853546) = 11337408 * k + 6426773 := by
    unfold C
    simp [show (22674816 * k + 12853546) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6426773) = 34012224 * k + 19280320 := by
    unfold C
    simp [show (11337408 * k + 6426773) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 19280320) = 17006112 * k + 9640160 := by
    unfold C
    simp [show (34012224 * k + 19280320) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9640160) = 8503056 * k + 4820080 := by
    unfold C
    simp [show (17006112 * k + 9640160) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4820080) = 4251528 * k + 2410040 := by
    unfold C
    simp [show (8503056 * k + 4820080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2410040) = 2125764 * k + 1205020 := by
    unfold C
    simp [show (4251528 * k + 2410040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1205020) = 1062882 * k + 602510 := by
    unfold C
    simp [show (2125764 * k + 1205020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 602510) = 531441 * k + 301255 := by
    unfold C
    simp [show (1062882 * k + 602510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 594399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 594399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_594559 : ∀ k : Nat,
    iterate (1048576 * k + 594559) 32 = 531441 * k + 301336 ∧
      531441 * k + 301336 < 1048576 * k + 594559 := by
  intro k
  have h1 : C (1048576 * k + 594559) = 3145728 * k + 1783678 := by
    unfold C
    simp [show (1048576 * k + 594559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1783678) = 1572864 * k + 891839 := by
    unfold C
    simp [show (3145728 * k + 1783678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 891839) = 4718592 * k + 2675518 := by
    unfold C
    simp [show (1572864 * k + 891839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2675518) = 2359296 * k + 1337759 := by
    unfold C
    simp [show (4718592 * k + 2675518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1337759) = 7077888 * k + 4013278 := by
    unfold C
    simp [show (2359296 * k + 1337759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4013278) = 3538944 * k + 2006639 := by
    unfold C
    simp [show (7077888 * k + 4013278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2006639) = 10616832 * k + 6019918 := by
    unfold C
    simp [show (3538944 * k + 2006639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6019918) = 5308416 * k + 3009959 := by
    unfold C
    simp [show (10616832 * k + 6019918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3009959) = 15925248 * k + 9029878 := by
    unfold C
    simp [show (5308416 * k + 3009959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9029878) = 7962624 * k + 4514939 := by
    unfold C
    simp [show (15925248 * k + 9029878) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4514939) = 23887872 * k + 13544818 := by
    unfold C
    simp [show (7962624 * k + 4514939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13544818) = 11943936 * k + 6772409 := by
    unfold C
    simp [show (23887872 * k + 13544818) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6772409) = 35831808 * k + 20317228 := by
    unfold C
    simp [show (11943936 * k + 6772409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20317228) = 17915904 * k + 10158614 := by
    unfold C
    simp [show (35831808 * k + 20317228) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10158614) = 8957952 * k + 5079307 := by
    unfold C
    simp [show (17915904 * k + 10158614) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5079307) = 26873856 * k + 15237922 := by
    unfold C
    simp [show (8957952 * k + 5079307) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15237922) = 13436928 * k + 7618961 := by
    unfold C
    simp [show (26873856 * k + 15237922) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7618961) = 40310784 * k + 22856884 := by
    unfold C
    simp [show (13436928 * k + 7618961) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 22856884) = 20155392 * k + 11428442 := by
    unfold C
    simp [show (40310784 * k + 22856884) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11428442) = 10077696 * k + 5714221 := by
    unfold C
    simp [show (20155392 * k + 11428442) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5714221) = 30233088 * k + 17142664 := by
    unfold C
    simp [show (10077696 * k + 5714221) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17142664) = 15116544 * k + 8571332 := by
    unfold C
    simp [show (30233088 * k + 17142664) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8571332) = 7558272 * k + 4285666 := by
    unfold C
    simp [show (15116544 * k + 8571332) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4285666) = 3779136 * k + 2142833 := by
    unfold C
    simp [show (7558272 * k + 4285666) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2142833) = 11337408 * k + 6428500 := by
    unfold C
    simp [show (3779136 * k + 2142833) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6428500) = 5668704 * k + 3214250 := by
    unfold C
    simp [show (11337408 * k + 6428500) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3214250) = 2834352 * k + 1607125 := by
    unfold C
    simp [show (5668704 * k + 3214250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1607125) = 8503056 * k + 4821376 := by
    unfold C
    simp [show (2834352 * k + 1607125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4821376) = 4251528 * k + 2410688 := by
    unfold C
    simp [show (8503056 * k + 4821376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2410688) = 2125764 * k + 1205344 := by
    unfold C
    simp [show (4251528 * k + 2410688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1205344) = 1062882 * k + 602672 := by
    unfold C
    simp [show (2125764 * k + 1205344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 602672) = 531441 * k + 301336 := by
    unfold C
    simp [show (1062882 * k + 602672) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 594559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 594559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_594975 : ∀ k : Nat,
    iterate (1048576 * k + 594975) 32 = 531441 * k + 301547 ∧
      531441 * k + 301547 < 1048576 * k + 594975 := by
  intro k
  have h1 : C (1048576 * k + 594975) = 3145728 * k + 1784926 := by
    unfold C
    simp [show (1048576 * k + 594975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1784926) = 1572864 * k + 892463 := by
    unfold C
    simp [show (3145728 * k + 1784926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 892463) = 4718592 * k + 2677390 := by
    unfold C
    simp [show (1572864 * k + 892463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2677390) = 2359296 * k + 1338695 := by
    unfold C
    simp [show (4718592 * k + 2677390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1338695) = 7077888 * k + 4016086 := by
    unfold C
    simp [show (2359296 * k + 1338695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4016086) = 3538944 * k + 2008043 := by
    unfold C
    simp [show (7077888 * k + 4016086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2008043) = 10616832 * k + 6024130 := by
    unfold C
    simp [show (3538944 * k + 2008043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6024130) = 5308416 * k + 3012065 := by
    unfold C
    simp [show (10616832 * k + 6024130) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3012065) = 15925248 * k + 9036196 := by
    unfold C
    simp [show (5308416 * k + 3012065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9036196) = 7962624 * k + 4518098 := by
    unfold C
    simp [show (15925248 * k + 9036196) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4518098) = 3981312 * k + 2259049 := by
    unfold C
    simp [show (7962624 * k + 4518098) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2259049) = 11943936 * k + 6777148 := by
    unfold C
    simp [show (3981312 * k + 2259049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6777148) = 5971968 * k + 3388574 := by
    unfold C
    simp [show (11943936 * k + 6777148) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3388574) = 2985984 * k + 1694287 := by
    unfold C
    simp [show (5971968 * k + 3388574) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1694287) = 8957952 * k + 5082862 := by
    unfold C
    simp [show (2985984 * k + 1694287) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5082862) = 4478976 * k + 2541431 := by
    unfold C
    simp [show (8957952 * k + 5082862) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2541431) = 13436928 * k + 7624294 := by
    unfold C
    simp [show (4478976 * k + 2541431) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7624294) = 6718464 * k + 3812147 := by
    unfold C
    simp [show (13436928 * k + 7624294) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3812147) = 20155392 * k + 11436442 := by
    unfold C
    simp [show (6718464 * k + 3812147) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11436442) = 10077696 * k + 5718221 := by
    unfold C
    simp [show (20155392 * k + 11436442) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5718221) = 30233088 * k + 17154664 := by
    unfold C
    simp [show (10077696 * k + 5718221) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17154664) = 15116544 * k + 8577332 := by
    unfold C
    simp [show (30233088 * k + 17154664) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8577332) = 7558272 * k + 4288666 := by
    unfold C
    simp [show (15116544 * k + 8577332) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4288666) = 3779136 * k + 2144333 := by
    unfold C
    simp [show (7558272 * k + 4288666) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2144333) = 11337408 * k + 6433000 := by
    unfold C
    simp [show (3779136 * k + 2144333) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6433000) = 5668704 * k + 3216500 := by
    unfold C
    simp [show (11337408 * k + 6433000) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3216500) = 2834352 * k + 1608250 := by
    unfold C
    simp [show (5668704 * k + 3216500) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1608250) = 1417176 * k + 804125 := by
    unfold C
    simp [show (2834352 * k + 1608250) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 804125) = 4251528 * k + 2412376 := by
    unfold C
    simp [show (1417176 * k + 804125) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2412376) = 2125764 * k + 1206188 := by
    unfold C
    simp [show (4251528 * k + 2412376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1206188) = 1062882 * k + 603094 := by
    unfold C
    simp [show (2125764 * k + 1206188) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 603094) = 531441 * k + 301547 := by
    unfold C
    simp [show (1062882 * k + 603094) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 594975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 594975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_596135 : ∀ k : Nat,
    iterate (1048576 * k + 596135) 32 = 531441 * k + 302135 ∧
      531441 * k + 302135 < 1048576 * k + 596135 := by
  intro k
  have h1 : C (1048576 * k + 596135) = 3145728 * k + 1788406 := by
    unfold C
    simp [show (1048576 * k + 596135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1788406) = 1572864 * k + 894203 := by
    unfold C
    simp [show (3145728 * k + 1788406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 894203) = 4718592 * k + 2682610 := by
    unfold C
    simp [show (1572864 * k + 894203) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2682610) = 2359296 * k + 1341305 := by
    unfold C
    simp [show (4718592 * k + 2682610) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1341305) = 7077888 * k + 4023916 := by
    unfold C
    simp [show (2359296 * k + 1341305) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4023916) = 3538944 * k + 2011958 := by
    unfold C
    simp [show (7077888 * k + 4023916) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2011958) = 1769472 * k + 1005979 := by
    unfold C
    simp [show (3538944 * k + 2011958) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1005979) = 5308416 * k + 3017938 := by
    unfold C
    simp [show (1769472 * k + 1005979) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3017938) = 2654208 * k + 1508969 := by
    unfold C
    simp [show (5308416 * k + 3017938) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1508969) = 7962624 * k + 4526908 := by
    unfold C
    simp [show (2654208 * k + 1508969) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4526908) = 3981312 * k + 2263454 := by
    unfold C
    simp [show (7962624 * k + 4526908) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2263454) = 1990656 * k + 1131727 := by
    unfold C
    simp [show (3981312 * k + 2263454) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1131727) = 5971968 * k + 3395182 := by
    unfold C
    simp [show (1990656 * k + 1131727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3395182) = 2985984 * k + 1697591 := by
    unfold C
    simp [show (5971968 * k + 3395182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1697591) = 8957952 * k + 5092774 := by
    unfold C
    simp [show (2985984 * k + 1697591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5092774) = 4478976 * k + 2546387 := by
    unfold C
    simp [show (8957952 * k + 5092774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2546387) = 13436928 * k + 7639162 := by
    unfold C
    simp [show (4478976 * k + 2546387) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7639162) = 6718464 * k + 3819581 := by
    unfold C
    simp [show (13436928 * k + 7639162) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3819581) = 20155392 * k + 11458744 := by
    unfold C
    simp [show (6718464 * k + 3819581) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11458744) = 10077696 * k + 5729372 := by
    unfold C
    simp [show (20155392 * k + 11458744) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5729372) = 5038848 * k + 2864686 := by
    unfold C
    simp [show (10077696 * k + 5729372) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2864686) = 2519424 * k + 1432343 := by
    unfold C
    simp [show (5038848 * k + 2864686) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1432343) = 7558272 * k + 4297030 := by
    unfold C
    simp [show (2519424 * k + 1432343) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4297030) = 3779136 * k + 2148515 := by
    unfold C
    simp [show (7558272 * k + 4297030) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2148515) = 11337408 * k + 6445546 := by
    unfold C
    simp [show (3779136 * k + 2148515) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6445546) = 5668704 * k + 3222773 := by
    unfold C
    simp [show (11337408 * k + 6445546) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3222773) = 17006112 * k + 9668320 := by
    unfold C
    simp [show (5668704 * k + 3222773) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9668320) = 8503056 * k + 4834160 := by
    unfold C
    simp [show (17006112 * k + 9668320) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4834160) = 4251528 * k + 2417080 := by
    unfold C
    simp [show (8503056 * k + 4834160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2417080) = 2125764 * k + 1208540 := by
    unfold C
    simp [show (4251528 * k + 2417080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1208540) = 1062882 * k + 604270 := by
    unfold C
    simp [show (2125764 * k + 1208540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 604270) = 531441 * k + 302135 := by
    unfold C
    simp [show (1062882 * k + 604270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 596135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 596135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_596251 : ∀ k : Nat,
    iterate (1048576 * k + 596251) 32 = 531441 * k + 302194 ∧
      531441 * k + 302194 < 1048576 * k + 596251 := by
  intro k
  have h1 : C (1048576 * k + 596251) = 3145728 * k + 1788754 := by
    unfold C
    simp [show (1048576 * k + 596251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1788754) = 1572864 * k + 894377 := by
    unfold C
    simp [show (3145728 * k + 1788754) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 894377) = 4718592 * k + 2683132 := by
    unfold C
    simp [show (1572864 * k + 894377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2683132) = 2359296 * k + 1341566 := by
    unfold C
    simp [show (4718592 * k + 2683132) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1341566) = 1179648 * k + 670783 := by
    unfold C
    simp [show (2359296 * k + 1341566) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 670783) = 3538944 * k + 2012350 := by
    unfold C
    simp [show (1179648 * k + 670783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2012350) = 1769472 * k + 1006175 := by
    unfold C
    simp [show (3538944 * k + 2012350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1006175) = 5308416 * k + 3018526 := by
    unfold C
    simp [show (1769472 * k + 1006175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3018526) = 2654208 * k + 1509263 := by
    unfold C
    simp [show (5308416 * k + 3018526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1509263) = 7962624 * k + 4527790 := by
    unfold C
    simp [show (2654208 * k + 1509263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4527790) = 3981312 * k + 2263895 := by
    unfold C
    simp [show (7962624 * k + 4527790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2263895) = 11943936 * k + 6791686 := by
    unfold C
    simp [show (3981312 * k + 2263895) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6791686) = 5971968 * k + 3395843 := by
    unfold C
    simp [show (11943936 * k + 6791686) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3395843) = 17915904 * k + 10187530 := by
    unfold C
    simp [show (5971968 * k + 3395843) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10187530) = 8957952 * k + 5093765 := by
    unfold C
    simp [show (17915904 * k + 10187530) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5093765) = 26873856 * k + 15281296 := by
    unfold C
    simp [show (8957952 * k + 5093765) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15281296) = 13436928 * k + 7640648 := by
    unfold C
    simp [show (26873856 * k + 15281296) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7640648) = 6718464 * k + 3820324 := by
    unfold C
    simp [show (13436928 * k + 7640648) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3820324) = 3359232 * k + 1910162 := by
    unfold C
    simp [show (6718464 * k + 3820324) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1910162) = 1679616 * k + 955081 := by
    unfold C
    simp [show (3359232 * k + 1910162) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 955081) = 5038848 * k + 2865244 := by
    unfold C
    simp [show (1679616 * k + 955081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2865244) = 2519424 * k + 1432622 := by
    unfold C
    simp [show (5038848 * k + 2865244) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1432622) = 1259712 * k + 716311 := by
    unfold C
    simp [show (2519424 * k + 1432622) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 716311) = 3779136 * k + 2148934 := by
    unfold C
    simp [show (1259712 * k + 716311) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2148934) = 1889568 * k + 1074467 := by
    unfold C
    simp [show (3779136 * k + 2148934) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1074467) = 5668704 * k + 3223402 := by
    unfold C
    simp [show (1889568 * k + 1074467) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3223402) = 2834352 * k + 1611701 := by
    unfold C
    simp [show (5668704 * k + 3223402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1611701) = 8503056 * k + 4835104 := by
    unfold C
    simp [show (2834352 * k + 1611701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4835104) = 4251528 * k + 2417552 := by
    unfold C
    simp [show (8503056 * k + 4835104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2417552) = 2125764 * k + 1208776 := by
    unfold C
    simp [show (4251528 * k + 2417552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1208776) = 1062882 * k + 604388 := by
    unfold C
    simp [show (2125764 * k + 1208776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 604388) = 531441 * k + 302194 := by
    unfold C
    simp [show (1062882 * k + 604388) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 596251) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 596251)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_596447 : ∀ k : Nat,
    iterate (1048576 * k + 596447) 32 = 531441 * k + 302293 ∧
      531441 * k + 302293 < 1048576 * k + 596447 := by
  intro k
  have h1 : C (1048576 * k + 596447) = 3145728 * k + 1789342 := by
    unfold C
    simp [show (1048576 * k + 596447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1789342) = 1572864 * k + 894671 := by
    unfold C
    simp [show (3145728 * k + 1789342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 894671) = 4718592 * k + 2684014 := by
    unfold C
    simp [show (1572864 * k + 894671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2684014) = 2359296 * k + 1342007 := by
    unfold C
    simp [show (4718592 * k + 2684014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1342007) = 7077888 * k + 4026022 := by
    unfold C
    simp [show (2359296 * k + 1342007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4026022) = 3538944 * k + 2013011 := by
    unfold C
    simp [show (7077888 * k + 4026022) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2013011) = 10616832 * k + 6039034 := by
    unfold C
    simp [show (3538944 * k + 2013011) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6039034) = 5308416 * k + 3019517 := by
    unfold C
    simp [show (10616832 * k + 6039034) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3019517) = 15925248 * k + 9058552 := by
    unfold C
    simp [show (5308416 * k + 3019517) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9058552) = 7962624 * k + 4529276 := by
    unfold C
    simp [show (15925248 * k + 9058552) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4529276) = 3981312 * k + 2264638 := by
    unfold C
    simp [show (7962624 * k + 4529276) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2264638) = 1990656 * k + 1132319 := by
    unfold C
    simp [show (3981312 * k + 2264638) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1132319) = 5971968 * k + 3396958 := by
    unfold C
    simp [show (1990656 * k + 1132319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3396958) = 2985984 * k + 1698479 := by
    unfold C
    simp [show (5971968 * k + 3396958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1698479) = 8957952 * k + 5095438 := by
    unfold C
    simp [show (2985984 * k + 1698479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5095438) = 4478976 * k + 2547719 := by
    unfold C
    simp [show (8957952 * k + 5095438) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2547719) = 13436928 * k + 7643158 := by
    unfold C
    simp [show (4478976 * k + 2547719) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7643158) = 6718464 * k + 3821579 := by
    unfold C
    simp [show (13436928 * k + 7643158) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3821579) = 20155392 * k + 11464738 := by
    unfold C
    simp [show (6718464 * k + 3821579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11464738) = 10077696 * k + 5732369 := by
    unfold C
    simp [show (20155392 * k + 11464738) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5732369) = 30233088 * k + 17197108 := by
    unfold C
    simp [show (10077696 * k + 5732369) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17197108) = 15116544 * k + 8598554 := by
    unfold C
    simp [show (30233088 * k + 17197108) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8598554) = 7558272 * k + 4299277 := by
    unfold C
    simp [show (15116544 * k + 8598554) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4299277) = 22674816 * k + 12897832 := by
    unfold C
    simp [show (7558272 * k + 4299277) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12897832) = 11337408 * k + 6448916 := by
    unfold C
    simp [show (22674816 * k + 12897832) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6448916) = 5668704 * k + 3224458 := by
    unfold C
    simp [show (11337408 * k + 6448916) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3224458) = 2834352 * k + 1612229 := by
    unfold C
    simp [show (5668704 * k + 3224458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1612229) = 8503056 * k + 4836688 := by
    unfold C
    simp [show (2834352 * k + 1612229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4836688) = 4251528 * k + 2418344 := by
    unfold C
    simp [show (8503056 * k + 4836688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2418344) = 2125764 * k + 1209172 := by
    unfold C
    simp [show (4251528 * k + 2418344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1209172) = 1062882 * k + 604586 := by
    unfold C
    simp [show (2125764 * k + 1209172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 604586) = 531441 * k + 302293 := by
    unfold C
    simp [show (1062882 * k + 604586) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 596447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 596447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_596479 : ∀ k : Nat,
    iterate (1048576 * k + 596479) 32 = 531441 * k + 302309 ∧
      531441 * k + 302309 < 1048576 * k + 596479 := by
  intro k
  have h1 : C (1048576 * k + 596479) = 3145728 * k + 1789438 := by
    unfold C
    simp [show (1048576 * k + 596479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1789438) = 1572864 * k + 894719 := by
    unfold C
    simp [show (3145728 * k + 1789438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 894719) = 4718592 * k + 2684158 := by
    unfold C
    simp [show (1572864 * k + 894719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2684158) = 2359296 * k + 1342079 := by
    unfold C
    simp [show (4718592 * k + 2684158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1342079) = 7077888 * k + 4026238 := by
    unfold C
    simp [show (2359296 * k + 1342079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4026238) = 3538944 * k + 2013119 := by
    unfold C
    simp [show (7077888 * k + 4026238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2013119) = 10616832 * k + 6039358 := by
    unfold C
    simp [show (3538944 * k + 2013119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6039358) = 5308416 * k + 3019679 := by
    unfold C
    simp [show (10616832 * k + 6039358) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3019679) = 15925248 * k + 9059038 := by
    unfold C
    simp [show (5308416 * k + 3019679) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9059038) = 7962624 * k + 4529519 := by
    unfold C
    simp [show (15925248 * k + 9059038) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4529519) = 23887872 * k + 13588558 := by
    unfold C
    simp [show (7962624 * k + 4529519) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13588558) = 11943936 * k + 6794279 := by
    unfold C
    simp [show (23887872 * k + 13588558) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6794279) = 35831808 * k + 20382838 := by
    unfold C
    simp [show (11943936 * k + 6794279) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20382838) = 17915904 * k + 10191419 := by
    unfold C
    simp [show (35831808 * k + 20382838) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10191419) = 53747712 * k + 30574258 := by
    unfold C
    simp [show (17915904 * k + 10191419) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 30574258) = 26873856 * k + 15287129 := by
    unfold C
    simp [show (53747712 * k + 30574258) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 15287129) = 80621568 * k + 45861388 := by
    unfold C
    simp [show (26873856 * k + 15287129) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 45861388) = 40310784 * k + 22930694 := by
    unfold C
    simp [show (80621568 * k + 45861388) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 22930694) = 20155392 * k + 11465347 := by
    unfold C
    simp [show (40310784 * k + 22930694) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11465347) = 60466176 * k + 34396042 := by
    unfold C
    simp [show (20155392 * k + 11465347) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 34396042) = 30233088 * k + 17198021 := by
    unfold C
    simp [show (60466176 * k + 34396042) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 17198021) = 90699264 * k + 51594064 := by
    unfold C
    simp [show (30233088 * k + 17198021) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 51594064) = 45349632 * k + 25797032 := by
    unfold C
    simp [show (90699264 * k + 51594064) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 25797032) = 22674816 * k + 12898516 := by
    unfold C
    simp [show (45349632 * k + 25797032) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12898516) = 11337408 * k + 6449258 := by
    unfold C
    simp [show (22674816 * k + 12898516) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6449258) = 5668704 * k + 3224629 := by
    unfold C
    simp [show (11337408 * k + 6449258) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3224629) = 17006112 * k + 9673888 := by
    unfold C
    simp [show (5668704 * k + 3224629) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9673888) = 8503056 * k + 4836944 := by
    unfold C
    simp [show (17006112 * k + 9673888) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4836944) = 4251528 * k + 2418472 := by
    unfold C
    simp [show (8503056 * k + 4836944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2418472) = 2125764 * k + 1209236 := by
    unfold C
    simp [show (4251528 * k + 2418472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1209236) = 1062882 * k + 604618 := by
    unfold C
    simp [show (2125764 * k + 1209236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 604618) = 531441 * k + 302309 := by
    unfold C
    simp [show (1062882 * k + 604618) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 596479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 596479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard076
