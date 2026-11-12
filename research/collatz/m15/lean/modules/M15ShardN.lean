import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardN

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_19919 : ∀ k : Nat, iterate (32768 * k + 19919) 24 = 19683 * k + 11966 ∧ 19683 * k + 11966 < 32768 * k + 19919 := by
  intro k
  have h1 : C (32768 * k + 19919) = 98304 * k + 59758 := by
    unfold C
    simp [show (32768 * k + 19919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 59758) = 49152 * k + 29879 := by
    unfold C
    simp [show (98304 * k + 59758) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 29879) = 147456 * k + 89638 := by
    unfold C
    simp [show (49152 * k + 29879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 89638) = 73728 * k + 44819 := by
    unfold C
    simp [show (147456 * k + 89638) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 44819) = 221184 * k + 134458 := by
    unfold C
    simp [show (73728 * k + 44819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 134458) = 110592 * k + 67229 := by
    unfold C
    simp [show (221184 * k + 134458) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 67229) = 331776 * k + 201688 := by
    unfold C
    simp [show (110592 * k + 67229) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 201688) = 165888 * k + 100844 := by
    unfold C
    simp [show (331776 * k + 201688) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 100844) = 82944 * k + 50422 := by
    unfold C
    simp [show (165888 * k + 100844) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 50422) = 41472 * k + 25211 := by
    unfold C
    simp [show (82944 * k + 50422) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 25211) = 124416 * k + 75634 := by
    unfold C
    simp [show (41472 * k + 25211) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 75634) = 62208 * k + 37817 := by
    unfold C
    simp [show (124416 * k + 75634) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 37817) = 186624 * k + 113452 := by
    unfold C
    simp [show (62208 * k + 37817) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 113452) = 93312 * k + 56726 := by
    unfold C
    simp [show (186624 * k + 113452) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 56726) = 46656 * k + 28363 := by
    unfold C
    simp [show (93312 * k + 56726) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 28363) = 139968 * k + 85090 := by
    unfold C
    simp [show (46656 * k + 28363) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 85090) = 69984 * k + 42545 := by
    unfold C
    simp [show (139968 * k + 85090) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 42545) = 209952 * k + 127636 := by
    unfold C
    simp [show (69984 * k + 42545) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 127636) = 104976 * k + 63818 := by
    unfold C
    simp [show (209952 * k + 127636) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 63818) = 52488 * k + 31909 := by
    unfold C
    simp [show (104976 * k + 63818) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 31909) = 157464 * k + 95728 := by
    unfold C
    simp [show (52488 * k + 31909) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 95728) = 78732 * k + 47864 := by
    unfold C
    simp [show (157464 * k + 95728) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 47864) = 39366 * k + 23932 := by
    unfold C
    simp [show (78732 * k + 47864) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 23932) = 19683 * k + 11966 := by
    unfold C
    simp [show (39366 * k + 23932) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 19919) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 19919)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_20079 : ∀ k : Nat, iterate (32768 * k + 20079) 24 = 19683 * k + 12062 ∧ 19683 * k + 12062 < 32768 * k + 20079 := by
  intro k
  have h1 : C (32768 * k + 20079) = 98304 * k + 60238 := by
    unfold C
    simp [show (32768 * k + 20079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 60238) = 49152 * k + 30119 := by
    unfold C
    simp [show (98304 * k + 60238) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 30119) = 147456 * k + 90358 := by
    unfold C
    simp [show (49152 * k + 30119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 90358) = 73728 * k + 45179 := by
    unfold C
    simp [show (147456 * k + 90358) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 45179) = 221184 * k + 135538 := by
    unfold C
    simp [show (73728 * k + 45179) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 135538) = 110592 * k + 67769 := by
    unfold C
    simp [show (221184 * k + 135538) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 67769) = 331776 * k + 203308 := by
    unfold C
    simp [show (110592 * k + 67769) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 203308) = 165888 * k + 101654 := by
    unfold C
    simp [show (331776 * k + 203308) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 101654) = 82944 * k + 50827 := by
    unfold C
    simp [show (165888 * k + 101654) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 50827) = 248832 * k + 152482 := by
    unfold C
    simp [show (82944 * k + 50827) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 152482) = 124416 * k + 76241 := by
    unfold C
    simp [show (248832 * k + 152482) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 76241) = 373248 * k + 228724 := by
    unfold C
    simp [show (124416 * k + 76241) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 228724) = 186624 * k + 114362 := by
    unfold C
    simp [show (373248 * k + 228724) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 114362) = 93312 * k + 57181 := by
    unfold C
    simp [show (186624 * k + 114362) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 57181) = 279936 * k + 171544 := by
    unfold C
    simp [show (93312 * k + 57181) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 171544) = 139968 * k + 85772 := by
    unfold C
    simp [show (279936 * k + 171544) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 85772) = 69984 * k + 42886 := by
    unfold C
    simp [show (139968 * k + 85772) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 42886) = 34992 * k + 21443 := by
    unfold C
    simp [show (69984 * k + 42886) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 21443) = 104976 * k + 64330 := by
    unfold C
    simp [show (34992 * k + 21443) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 64330) = 52488 * k + 32165 := by
    unfold C
    simp [show (104976 * k + 64330) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 32165) = 157464 * k + 96496 := by
    unfold C
    simp [show (52488 * k + 32165) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 96496) = 78732 * k + 48248 := by
    unfold C
    simp [show (157464 * k + 96496) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 48248) = 39366 * k + 24124 := by
    unfold C
    simp [show (78732 * k + 48248) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 24124) = 19683 * k + 12062 := by
    unfold C
    simp [show (39366 * k + 24124) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 20079) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 20079)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_20199 : ∀ k : Nat, iterate (32768 * k + 20199) 24 = 19683 * k + 12134 ∧ 19683 * k + 12134 < 32768 * k + 20199 := by
  intro k
  have h1 : C (32768 * k + 20199) = 98304 * k + 60598 := by
    unfold C
    simp [show (32768 * k + 20199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 60598) = 49152 * k + 30299 := by
    unfold C
    simp [show (98304 * k + 60598) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 30299) = 147456 * k + 90898 := by
    unfold C
    simp [show (49152 * k + 30299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 90898) = 73728 * k + 45449 := by
    unfold C
    simp [show (147456 * k + 90898) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 45449) = 221184 * k + 136348 := by
    unfold C
    simp [show (73728 * k + 45449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 136348) = 110592 * k + 68174 := by
    unfold C
    simp [show (221184 * k + 136348) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 68174) = 55296 * k + 34087 := by
    unfold C
    simp [show (110592 * k + 68174) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 34087) = 165888 * k + 102262 := by
    unfold C
    simp [show (55296 * k + 34087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 102262) = 82944 * k + 51131 := by
    unfold C
    simp [show (165888 * k + 102262) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 51131) = 248832 * k + 153394 := by
    unfold C
    simp [show (82944 * k + 51131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 153394) = 124416 * k + 76697 := by
    unfold C
    simp [show (248832 * k + 153394) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 76697) = 373248 * k + 230092 := by
    unfold C
    simp [show (124416 * k + 76697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 230092) = 186624 * k + 115046 := by
    unfold C
    simp [show (373248 * k + 230092) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 115046) = 93312 * k + 57523 := by
    unfold C
    simp [show (186624 * k + 115046) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 57523) = 279936 * k + 172570 := by
    unfold C
    simp [show (93312 * k + 57523) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 172570) = 139968 * k + 86285 := by
    unfold C
    simp [show (279936 * k + 172570) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 86285) = 419904 * k + 258856 := by
    unfold C
    simp [show (139968 * k + 86285) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 258856) = 209952 * k + 129428 := by
    unfold C
    simp [show (419904 * k + 258856) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 129428) = 104976 * k + 64714 := by
    unfold C
    simp [show (209952 * k + 129428) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 64714) = 52488 * k + 32357 := by
    unfold C
    simp [show (104976 * k + 64714) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 32357) = 157464 * k + 97072 := by
    unfold C
    simp [show (52488 * k + 32357) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 97072) = 78732 * k + 48536 := by
    unfold C
    simp [show (157464 * k + 97072) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 48536) = 39366 * k + 24268 := by
    unfold C
    simp [show (78732 * k + 48536) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 24268) = 19683 * k + 12134 := by
    unfold C
    simp [show (39366 * k + 24268) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 20199) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 20199)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_20507 : ∀ k : Nat, iterate (32768 * k + 20507) 24 = 19683 * k + 12319 ∧ 19683 * k + 12319 < 32768 * k + 20507 := by
  intro k
  have h1 : C (32768 * k + 20507) = 98304 * k + 61522 := by
    unfold C
    simp [show (32768 * k + 20507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 61522) = 49152 * k + 30761 := by
    unfold C
    simp [show (98304 * k + 61522) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 30761) = 147456 * k + 92284 := by
    unfold C
    simp [show (49152 * k + 30761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 92284) = 73728 * k + 46142 := by
    unfold C
    simp [show (147456 * k + 92284) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 46142) = 36864 * k + 23071 := by
    unfold C
    simp [show (73728 * k + 46142) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 23071) = 110592 * k + 69214 := by
    unfold C
    simp [show (36864 * k + 23071) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 69214) = 55296 * k + 34607 := by
    unfold C
    simp [show (110592 * k + 69214) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 34607) = 165888 * k + 103822 := by
    unfold C
    simp [show (55296 * k + 34607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 103822) = 82944 * k + 51911 := by
    unfold C
    simp [show (165888 * k + 103822) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 51911) = 248832 * k + 155734 := by
    unfold C
    simp [show (82944 * k + 51911) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 155734) = 124416 * k + 77867 := by
    unfold C
    simp [show (248832 * k + 155734) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 77867) = 373248 * k + 233602 := by
    unfold C
    simp [show (124416 * k + 77867) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 233602) = 186624 * k + 116801 := by
    unfold C
    simp [show (373248 * k + 233602) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 116801) = 559872 * k + 350404 := by
    unfold C
    simp [show (186624 * k + 116801) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 350404) = 279936 * k + 175202 := by
    unfold C
    simp [show (559872 * k + 350404) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 175202) = 139968 * k + 87601 := by
    unfold C
    simp [show (279936 * k + 175202) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 87601) = 419904 * k + 262804 := by
    unfold C
    simp [show (139968 * k + 87601) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 262804) = 209952 * k + 131402 := by
    unfold C
    simp [show (419904 * k + 262804) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 131402) = 104976 * k + 65701 := by
    unfold C
    simp [show (209952 * k + 131402) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 65701) = 314928 * k + 197104 := by
    unfold C
    simp [show (104976 * k + 65701) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 197104) = 157464 * k + 98552 := by
    unfold C
    simp [show (314928 * k + 197104) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 98552) = 78732 * k + 49276 := by
    unfold C
    simp [show (157464 * k + 98552) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 49276) = 39366 * k + 24638 := by
    unfold C
    simp [show (78732 * k + 49276) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 24638) = 19683 * k + 12319 := by
    unfold C
    simp [show (39366 * k + 24638) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 20507) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 20507)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_20527 : ∀ k : Nat, iterate (32768 * k + 20527) 24 = 19683 * k + 12331 ∧ 19683 * k + 12331 < 32768 * k + 20527 := by
  intro k
  have h1 : C (32768 * k + 20527) = 98304 * k + 61582 := by
    unfold C
    simp [show (32768 * k + 20527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 61582) = 49152 * k + 30791 := by
    unfold C
    simp [show (98304 * k + 61582) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 30791) = 147456 * k + 92374 := by
    unfold C
    simp [show (49152 * k + 30791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 92374) = 73728 * k + 46187 := by
    unfold C
    simp [show (147456 * k + 92374) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 46187) = 221184 * k + 138562 := by
    unfold C
    simp [show (73728 * k + 46187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 138562) = 110592 * k + 69281 := by
    unfold C
    simp [show (221184 * k + 138562) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 69281) = 331776 * k + 207844 := by
    unfold C
    simp [show (110592 * k + 69281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 207844) = 165888 * k + 103922 := by
    unfold C
    simp [show (331776 * k + 207844) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 103922) = 82944 * k + 51961 := by
    unfold C
    simp [show (165888 * k + 103922) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 51961) = 248832 * k + 155884 := by
    unfold C
    simp [show (82944 * k + 51961) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 155884) = 124416 * k + 77942 := by
    unfold C
    simp [show (248832 * k + 155884) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 77942) = 62208 * k + 38971 := by
    unfold C
    simp [show (124416 * k + 77942) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 38971) = 186624 * k + 116914 := by
    unfold C
    simp [show (62208 * k + 38971) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 116914) = 93312 * k + 58457 := by
    unfold C
    simp [show (186624 * k + 116914) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 58457) = 279936 * k + 175372 := by
    unfold C
    simp [show (93312 * k + 58457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 175372) = 139968 * k + 87686 := by
    unfold C
    simp [show (279936 * k + 175372) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 87686) = 69984 * k + 43843 := by
    unfold C
    simp [show (139968 * k + 87686) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 43843) = 209952 * k + 131530 := by
    unfold C
    simp [show (69984 * k + 43843) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 131530) = 104976 * k + 65765 := by
    unfold C
    simp [show (209952 * k + 131530) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 65765) = 314928 * k + 197296 := by
    unfold C
    simp [show (104976 * k + 65765) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 197296) = 157464 * k + 98648 := by
    unfold C
    simp [show (314928 * k + 197296) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 98648) = 78732 * k + 49324 := by
    unfold C
    simp [show (157464 * k + 98648) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 49324) = 39366 * k + 24662 := by
    unfold C
    simp [show (78732 * k + 49324) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 24662) = 19683 * k + 12331 := by
    unfold C
    simp [show (39366 * k + 24662) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 20527) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 20527)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_20783 : ∀ k : Nat, iterate (32768 * k + 20783) 24 = 19683 * k + 12485 ∧ 19683 * k + 12485 < 32768 * k + 20783 := by
  intro k
  have h1 : C (32768 * k + 20783) = 98304 * k + 62350 := by
    unfold C
    simp [show (32768 * k + 20783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 62350) = 49152 * k + 31175 := by
    unfold C
    simp [show (98304 * k + 62350) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 31175) = 147456 * k + 93526 := by
    unfold C
    simp [show (49152 * k + 31175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 93526) = 73728 * k + 46763 := by
    unfold C
    simp [show (147456 * k + 93526) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 46763) = 221184 * k + 140290 := by
    unfold C
    simp [show (73728 * k + 46763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 140290) = 110592 * k + 70145 := by
    unfold C
    simp [show (221184 * k + 140290) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 70145) = 331776 * k + 210436 := by
    unfold C
    simp [show (110592 * k + 70145) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 210436) = 165888 * k + 105218 := by
    unfold C
    simp [show (331776 * k + 210436) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 105218) = 82944 * k + 52609 := by
    unfold C
    simp [show (165888 * k + 105218) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 52609) = 248832 * k + 157828 := by
    unfold C
    simp [show (82944 * k + 52609) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 157828) = 124416 * k + 78914 := by
    unfold C
    simp [show (248832 * k + 157828) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 78914) = 62208 * k + 39457 := by
    unfold C
    simp [show (124416 * k + 78914) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 39457) = 186624 * k + 118372 := by
    unfold C
    simp [show (62208 * k + 39457) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 118372) = 93312 * k + 59186 := by
    unfold C
    simp [show (186624 * k + 118372) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 59186) = 46656 * k + 29593 := by
    unfold C
    simp [show (93312 * k + 59186) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 29593) = 139968 * k + 88780 := by
    unfold C
    simp [show (46656 * k + 29593) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 88780) = 69984 * k + 44390 := by
    unfold C
    simp [show (139968 * k + 88780) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 44390) = 34992 * k + 22195 := by
    unfold C
    simp [show (69984 * k + 44390) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 22195) = 104976 * k + 66586 := by
    unfold C
    simp [show (34992 * k + 22195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 66586) = 52488 * k + 33293 := by
    unfold C
    simp [show (104976 * k + 66586) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 33293) = 157464 * k + 99880 := by
    unfold C
    simp [show (52488 * k + 33293) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 99880) = 78732 * k + 49940 := by
    unfold C
    simp [show (157464 * k + 99880) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 49940) = 39366 * k + 24970 := by
    unfold C
    simp [show (78732 * k + 49940) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 24970) = 19683 * k + 12485 := by
    unfold C
    simp [show (39366 * k + 24970) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 20783) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 20783)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_20927 : ∀ k : Nat, iterate (32768 * k + 20927) 24 = 19683 * k + 12571 ∧ 19683 * k + 12571 < 32768 * k + 20927 := by
  intro k
  have h1 : C (32768 * k + 20927) = 98304 * k + 62782 := by
    unfold C
    simp [show (32768 * k + 20927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 62782) = 49152 * k + 31391 := by
    unfold C
    simp [show (98304 * k + 62782) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 31391) = 147456 * k + 94174 := by
    unfold C
    simp [show (49152 * k + 31391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 94174) = 73728 * k + 47087 := by
    unfold C
    simp [show (147456 * k + 94174) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 47087) = 221184 * k + 141262 := by
    unfold C
    simp [show (73728 * k + 47087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 141262) = 110592 * k + 70631 := by
    unfold C
    simp [show (221184 * k + 141262) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 70631) = 331776 * k + 211894 := by
    unfold C
    simp [show (110592 * k + 70631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 211894) = 165888 * k + 105947 := by
    unfold C
    simp [show (331776 * k + 211894) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 105947) = 497664 * k + 317842 := by
    unfold C
    simp [show (165888 * k + 105947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 317842) = 248832 * k + 158921 := by
    unfold C
    simp [show (497664 * k + 317842) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 158921) = 746496 * k + 476764 := by
    unfold C
    simp [show (248832 * k + 158921) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 476764) = 373248 * k + 238382 := by
    unfold C
    simp [show (746496 * k + 476764) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 238382) = 186624 * k + 119191 := by
    unfold C
    simp [show (373248 * k + 238382) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 119191) = 559872 * k + 357574 := by
    unfold C
    simp [show (186624 * k + 119191) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 357574) = 279936 * k + 178787 := by
    unfold C
    simp [show (559872 * k + 357574) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 178787) = 839808 * k + 536362 := by
    unfold C
    simp [show (279936 * k + 178787) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 536362) = 419904 * k + 268181 := by
    unfold C
    simp [show (839808 * k + 536362) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 268181) = 1259712 * k + 804544 := by
    unfold C
    simp [show (419904 * k + 268181) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 804544) = 629856 * k + 402272 := by
    unfold C
    simp [show (1259712 * k + 804544) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 402272) = 314928 * k + 201136 := by
    unfold C
    simp [show (629856 * k + 402272) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 201136) = 157464 * k + 100568 := by
    unfold C
    simp [show (314928 * k + 201136) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 100568) = 78732 * k + 50284 := by
    unfold C
    simp [show (157464 * k + 100568) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 50284) = 39366 * k + 25142 := by
    unfold C
    simp [show (78732 * k + 50284) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 25142) = 19683 * k + 12571 := by
    unfold C
    simp [show (39366 * k + 25142) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 20927) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 20927)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_21023 : ∀ k : Nat, iterate (32768 * k + 21023) 24 = 19683 * k + 12629 ∧ 19683 * k + 12629 < 32768 * k + 21023 := by
  intro k
  have h1 : C (32768 * k + 21023) = 98304 * k + 63070 := by
    unfold C
    simp [show (32768 * k + 21023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 63070) = 49152 * k + 31535 := by
    unfold C
    simp [show (98304 * k + 63070) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 31535) = 147456 * k + 94606 := by
    unfold C
    simp [show (49152 * k + 31535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 94606) = 73728 * k + 47303 := by
    unfold C
    simp [show (147456 * k + 94606) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 47303) = 221184 * k + 141910 := by
    unfold C
    simp [show (73728 * k + 47303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 141910) = 110592 * k + 70955 := by
    unfold C
    simp [show (221184 * k + 141910) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 70955) = 331776 * k + 212866 := by
    unfold C
    simp [show (110592 * k + 70955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 212866) = 165888 * k + 106433 := by
    unfold C
    simp [show (331776 * k + 212866) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 106433) = 497664 * k + 319300 := by
    unfold C
    simp [show (165888 * k + 106433) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 319300) = 248832 * k + 159650 := by
    unfold C
    simp [show (497664 * k + 319300) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 159650) = 124416 * k + 79825 := by
    unfold C
    simp [show (248832 * k + 159650) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 79825) = 373248 * k + 239476 := by
    unfold C
    simp [show (124416 * k + 79825) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 239476) = 186624 * k + 119738 := by
    unfold C
    simp [show (373248 * k + 239476) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 119738) = 93312 * k + 59869 := by
    unfold C
    simp [show (186624 * k + 119738) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 59869) = 279936 * k + 179608 := by
    unfold C
    simp [show (93312 * k + 59869) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 179608) = 139968 * k + 89804 := by
    unfold C
    simp [show (279936 * k + 179608) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 89804) = 69984 * k + 44902 := by
    unfold C
    simp [show (139968 * k + 89804) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 44902) = 34992 * k + 22451 := by
    unfold C
    simp [show (69984 * k + 44902) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 22451) = 104976 * k + 67354 := by
    unfold C
    simp [show (34992 * k + 22451) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 67354) = 52488 * k + 33677 := by
    unfold C
    simp [show (104976 * k + 67354) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 33677) = 157464 * k + 101032 := by
    unfold C
    simp [show (52488 * k + 33677) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 101032) = 78732 * k + 50516 := by
    unfold C
    simp [show (157464 * k + 101032) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 50516) = 39366 * k + 25258 := by
    unfold C
    simp [show (78732 * k + 50516) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 25258) = 19683 * k + 12629 := by
    unfold C
    simp [show (39366 * k + 25258) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 21023) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 21023)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_19919
#print axioms descent_mod32768_20079
#print axioms descent_mod32768_20199
#print axioms descent_mod32768_20507
#print axioms descent_mod32768_20527
#print axioms descent_mod32768_20783
#print axioms descent_mod32768_20927
#print axioms descent_mod32768_21023

end CollatzM15ShardN
