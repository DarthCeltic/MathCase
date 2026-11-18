import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard020

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_142567 : ∀ k : Nat,
    iterate (1048576 * k + 142567) 32 = 531441 * k + 72257 ∧
      531441 * k + 72257 < 1048576 * k + 142567 := by
  intro k
  have h1 : C (1048576 * k + 142567) = 3145728 * k + 427702 := by
    unfold C
    simp [show (1048576 * k + 142567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 427702) = 1572864 * k + 213851 := by
    unfold C
    simp [show (3145728 * k + 427702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 213851) = 4718592 * k + 641554 := by
    unfold C
    simp [show (1572864 * k + 213851) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 641554) = 2359296 * k + 320777 := by
    unfold C
    simp [show (4718592 * k + 641554) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 320777) = 7077888 * k + 962332 := by
    unfold C
    simp [show (2359296 * k + 320777) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 962332) = 3538944 * k + 481166 := by
    unfold C
    simp [show (7077888 * k + 962332) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 481166) = 1769472 * k + 240583 := by
    unfold C
    simp [show (3538944 * k + 481166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 240583) = 5308416 * k + 721750 := by
    unfold C
    simp [show (1769472 * k + 240583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 721750) = 2654208 * k + 360875 := by
    unfold C
    simp [show (5308416 * k + 721750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 360875) = 7962624 * k + 1082626 := by
    unfold C
    simp [show (2654208 * k + 360875) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1082626) = 3981312 * k + 541313 := by
    unfold C
    simp [show (7962624 * k + 1082626) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 541313) = 11943936 * k + 1623940 := by
    unfold C
    simp [show (3981312 * k + 541313) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1623940) = 5971968 * k + 811970 := by
    unfold C
    simp [show (11943936 * k + 1623940) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 811970) = 2985984 * k + 405985 := by
    unfold C
    simp [show (5971968 * k + 811970) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 405985) = 8957952 * k + 1217956 := by
    unfold C
    simp [show (2985984 * k + 405985) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1217956) = 4478976 * k + 608978 := by
    unfold C
    simp [show (8957952 * k + 1217956) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 608978) = 2239488 * k + 304489 := by
    unfold C
    simp [show (4478976 * k + 608978) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 304489) = 6718464 * k + 913468 := by
    unfold C
    simp [show (2239488 * k + 304489) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 913468) = 3359232 * k + 456734 := by
    unfold C
    simp [show (6718464 * k + 913468) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 456734) = 1679616 * k + 228367 := by
    unfold C
    simp [show (3359232 * k + 456734) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 228367) = 5038848 * k + 685102 := by
    unfold C
    simp [show (1679616 * k + 228367) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 685102) = 2519424 * k + 342551 := by
    unfold C
    simp [show (5038848 * k + 685102) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 342551) = 7558272 * k + 1027654 := by
    unfold C
    simp [show (2519424 * k + 342551) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1027654) = 3779136 * k + 513827 := by
    unfold C
    simp [show (7558272 * k + 1027654) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 513827) = 11337408 * k + 1541482 := by
    unfold C
    simp [show (3779136 * k + 513827) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1541482) = 5668704 * k + 770741 := by
    unfold C
    simp [show (11337408 * k + 1541482) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 770741) = 17006112 * k + 2312224 := by
    unfold C
    simp [show (5668704 * k + 770741) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2312224) = 8503056 * k + 1156112 := by
    unfold C
    simp [show (17006112 * k + 2312224) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1156112) = 4251528 * k + 578056 := by
    unfold C
    simp [show (8503056 * k + 1156112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 578056) = 2125764 * k + 289028 := by
    unfold C
    simp [show (4251528 * k + 578056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 289028) = 1062882 * k + 144514 := by
    unfold C
    simp [show (2125764 * k + 289028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 144514) = 531441 * k + 72257 := by
    unfold C
    simp [show (1062882 * k + 144514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 142567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 142567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_143003 : ∀ k : Nat,
    iterate (1048576 * k + 143003) 32 = 531441 * k + 72478 ∧
      531441 * k + 72478 < 1048576 * k + 143003 := by
  intro k
  have h1 : C (1048576 * k + 143003) = 3145728 * k + 429010 := by
    unfold C
    simp [show (1048576 * k + 143003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 429010) = 1572864 * k + 214505 := by
    unfold C
    simp [show (3145728 * k + 429010) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 214505) = 4718592 * k + 643516 := by
    unfold C
    simp [show (1572864 * k + 214505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 643516) = 2359296 * k + 321758 := by
    unfold C
    simp [show (4718592 * k + 643516) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 321758) = 1179648 * k + 160879 := by
    unfold C
    simp [show (2359296 * k + 321758) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 160879) = 3538944 * k + 482638 := by
    unfold C
    simp [show (1179648 * k + 160879) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 482638) = 1769472 * k + 241319 := by
    unfold C
    simp [show (3538944 * k + 482638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 241319) = 5308416 * k + 723958 := by
    unfold C
    simp [show (1769472 * k + 241319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 723958) = 2654208 * k + 361979 := by
    unfold C
    simp [show (5308416 * k + 723958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 361979) = 7962624 * k + 1085938 := by
    unfold C
    simp [show (2654208 * k + 361979) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1085938) = 3981312 * k + 542969 := by
    unfold C
    simp [show (7962624 * k + 1085938) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 542969) = 11943936 * k + 1628908 := by
    unfold C
    simp [show (3981312 * k + 542969) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1628908) = 5971968 * k + 814454 := by
    unfold C
    simp [show (11943936 * k + 1628908) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 814454) = 2985984 * k + 407227 := by
    unfold C
    simp [show (5971968 * k + 814454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 407227) = 8957952 * k + 1221682 := by
    unfold C
    simp [show (2985984 * k + 407227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1221682) = 4478976 * k + 610841 := by
    unfold C
    simp [show (8957952 * k + 1221682) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 610841) = 13436928 * k + 1832524 := by
    unfold C
    simp [show (4478976 * k + 610841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1832524) = 6718464 * k + 916262 := by
    unfold C
    simp [show (13436928 * k + 1832524) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 916262) = 3359232 * k + 458131 := by
    unfold C
    simp [show (6718464 * k + 916262) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 458131) = 10077696 * k + 1374394 := by
    unfold C
    simp [show (3359232 * k + 458131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1374394) = 5038848 * k + 687197 := by
    unfold C
    simp [show (10077696 * k + 1374394) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 687197) = 15116544 * k + 2061592 := by
    unfold C
    simp [show (5038848 * k + 687197) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2061592) = 7558272 * k + 1030796 := by
    unfold C
    simp [show (15116544 * k + 2061592) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1030796) = 3779136 * k + 515398 := by
    unfold C
    simp [show (7558272 * k + 1030796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 515398) = 1889568 * k + 257699 := by
    unfold C
    simp [show (3779136 * k + 515398) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 257699) = 5668704 * k + 773098 := by
    unfold C
    simp [show (1889568 * k + 257699) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 773098) = 2834352 * k + 386549 := by
    unfold C
    simp [show (5668704 * k + 773098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 386549) = 8503056 * k + 1159648 := by
    unfold C
    simp [show (2834352 * k + 386549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1159648) = 4251528 * k + 579824 := by
    unfold C
    simp [show (8503056 * k + 1159648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 579824) = 2125764 * k + 289912 := by
    unfold C
    simp [show (4251528 * k + 579824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 289912) = 1062882 * k + 144956 := by
    unfold C
    simp [show (2125764 * k + 289912) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 144956) = 531441 * k + 72478 := by
    unfold C
    simp [show (1062882 * k + 144956) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 143003) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 143003)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_143271 : ∀ k : Nat,
    iterate (1048576 * k + 143271) 32 = 531441 * k + 72614 ∧
      531441 * k + 72614 < 1048576 * k + 143271 := by
  intro k
  have h1 : C (1048576 * k + 143271) = 3145728 * k + 429814 := by
    unfold C
    simp [show (1048576 * k + 143271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 429814) = 1572864 * k + 214907 := by
    unfold C
    simp [show (3145728 * k + 429814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 214907) = 4718592 * k + 644722 := by
    unfold C
    simp [show (1572864 * k + 214907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 644722) = 2359296 * k + 322361 := by
    unfold C
    simp [show (4718592 * k + 644722) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 322361) = 7077888 * k + 967084 := by
    unfold C
    simp [show (2359296 * k + 322361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 967084) = 3538944 * k + 483542 := by
    unfold C
    simp [show (7077888 * k + 967084) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 483542) = 1769472 * k + 241771 := by
    unfold C
    simp [show (3538944 * k + 483542) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 241771) = 5308416 * k + 725314 := by
    unfold C
    simp [show (1769472 * k + 241771) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 725314) = 2654208 * k + 362657 := by
    unfold C
    simp [show (5308416 * k + 725314) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 362657) = 7962624 * k + 1087972 := by
    unfold C
    simp [show (2654208 * k + 362657) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1087972) = 3981312 * k + 543986 := by
    unfold C
    simp [show (7962624 * k + 1087972) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 543986) = 1990656 * k + 271993 := by
    unfold C
    simp [show (3981312 * k + 543986) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 271993) = 5971968 * k + 815980 := by
    unfold C
    simp [show (1990656 * k + 271993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 815980) = 2985984 * k + 407990 := by
    unfold C
    simp [show (5971968 * k + 815980) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 407990) = 1492992 * k + 203995 := by
    unfold C
    simp [show (2985984 * k + 407990) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 203995) = 4478976 * k + 611986 := by
    unfold C
    simp [show (1492992 * k + 203995) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 611986) = 2239488 * k + 305993 := by
    unfold C
    simp [show (4478976 * k + 611986) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 305993) = 6718464 * k + 917980 := by
    unfold C
    simp [show (2239488 * k + 305993) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 917980) = 3359232 * k + 458990 := by
    unfold C
    simp [show (6718464 * k + 917980) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 458990) = 1679616 * k + 229495 := by
    unfold C
    simp [show (3359232 * k + 458990) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 229495) = 5038848 * k + 688486 := by
    unfold C
    simp [show (1679616 * k + 229495) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 688486) = 2519424 * k + 344243 := by
    unfold C
    simp [show (5038848 * k + 688486) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 344243) = 7558272 * k + 1032730 := by
    unfold C
    simp [show (2519424 * k + 344243) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1032730) = 3779136 * k + 516365 := by
    unfold C
    simp [show (7558272 * k + 1032730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 516365) = 11337408 * k + 1549096 := by
    unfold C
    simp [show (3779136 * k + 516365) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1549096) = 5668704 * k + 774548 := by
    unfold C
    simp [show (11337408 * k + 1549096) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 774548) = 2834352 * k + 387274 := by
    unfold C
    simp [show (5668704 * k + 774548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 387274) = 1417176 * k + 193637 := by
    unfold C
    simp [show (2834352 * k + 387274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 193637) = 4251528 * k + 580912 := by
    unfold C
    simp [show (1417176 * k + 193637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 580912) = 2125764 * k + 290456 := by
    unfold C
    simp [show (4251528 * k + 580912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 290456) = 1062882 * k + 145228 := by
    unfold C
    simp [show (2125764 * k + 290456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 145228) = 531441 * k + 72614 := by
    unfold C
    simp [show (1062882 * k + 145228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 143271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 143271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_143775 : ∀ k : Nat,
    iterate (1048576 * k + 143775) 32 = 531441 * k + 72869 ∧
      531441 * k + 72869 < 1048576 * k + 143775 := by
  intro k
  have h1 : C (1048576 * k + 143775) = 3145728 * k + 431326 := by
    unfold C
    simp [show (1048576 * k + 143775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 431326) = 1572864 * k + 215663 := by
    unfold C
    simp [show (3145728 * k + 431326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 215663) = 4718592 * k + 646990 := by
    unfold C
    simp [show (1572864 * k + 215663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 646990) = 2359296 * k + 323495 := by
    unfold C
    simp [show (4718592 * k + 646990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 323495) = 7077888 * k + 970486 := by
    unfold C
    simp [show (2359296 * k + 323495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 970486) = 3538944 * k + 485243 := by
    unfold C
    simp [show (7077888 * k + 970486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 485243) = 10616832 * k + 1455730 := by
    unfold C
    simp [show (3538944 * k + 485243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1455730) = 5308416 * k + 727865 := by
    unfold C
    simp [show (10616832 * k + 1455730) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 727865) = 15925248 * k + 2183596 := by
    unfold C
    simp [show (5308416 * k + 727865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2183596) = 7962624 * k + 1091798 := by
    unfold C
    simp [show (15925248 * k + 2183596) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1091798) = 3981312 * k + 545899 := by
    unfold C
    simp [show (7962624 * k + 1091798) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 545899) = 11943936 * k + 1637698 := by
    unfold C
    simp [show (3981312 * k + 545899) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1637698) = 5971968 * k + 818849 := by
    unfold C
    simp [show (11943936 * k + 1637698) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 818849) = 17915904 * k + 2456548 := by
    unfold C
    simp [show (5971968 * k + 818849) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2456548) = 8957952 * k + 1228274 := by
    unfold C
    simp [show (17915904 * k + 2456548) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1228274) = 4478976 * k + 614137 := by
    unfold C
    simp [show (8957952 * k + 1228274) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 614137) = 13436928 * k + 1842412 := by
    unfold C
    simp [show (4478976 * k + 614137) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1842412) = 6718464 * k + 921206 := by
    unfold C
    simp [show (13436928 * k + 1842412) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 921206) = 3359232 * k + 460603 := by
    unfold C
    simp [show (6718464 * k + 921206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 460603) = 10077696 * k + 1381810 := by
    unfold C
    simp [show (3359232 * k + 460603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1381810) = 5038848 * k + 690905 := by
    unfold C
    simp [show (10077696 * k + 1381810) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 690905) = 15116544 * k + 2072716 := by
    unfold C
    simp [show (5038848 * k + 690905) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2072716) = 7558272 * k + 1036358 := by
    unfold C
    simp [show (15116544 * k + 2072716) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1036358) = 3779136 * k + 518179 := by
    unfold C
    simp [show (7558272 * k + 1036358) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 518179) = 11337408 * k + 1554538 := by
    unfold C
    simp [show (3779136 * k + 518179) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1554538) = 5668704 * k + 777269 := by
    unfold C
    simp [show (11337408 * k + 1554538) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 777269) = 17006112 * k + 2331808 := by
    unfold C
    simp [show (5668704 * k + 777269) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2331808) = 8503056 * k + 1165904 := by
    unfold C
    simp [show (17006112 * k + 2331808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1165904) = 4251528 * k + 582952 := by
    unfold C
    simp [show (8503056 * k + 1165904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 582952) = 2125764 * k + 291476 := by
    unfold C
    simp [show (4251528 * k + 582952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 291476) = 1062882 * k + 145738 := by
    unfold C
    simp [show (2125764 * k + 291476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 145738) = 531441 * k + 72869 := by
    unfold C
    simp [show (1062882 * k + 145738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 143775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 143775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_144383 : ∀ k : Nat,
    iterate (1048576 * k + 144383) 32 = 531441 * k + 73177 ∧
      531441 * k + 73177 < 1048576 * k + 144383 := by
  intro k
  have h1 : C (1048576 * k + 144383) = 3145728 * k + 433150 := by
    unfold C
    simp [show (1048576 * k + 144383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 433150) = 1572864 * k + 216575 := by
    unfold C
    simp [show (3145728 * k + 433150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 216575) = 4718592 * k + 649726 := by
    unfold C
    simp [show (1572864 * k + 216575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 649726) = 2359296 * k + 324863 := by
    unfold C
    simp [show (4718592 * k + 649726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 324863) = 7077888 * k + 974590 := by
    unfold C
    simp [show (2359296 * k + 324863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 974590) = 3538944 * k + 487295 := by
    unfold C
    simp [show (7077888 * k + 974590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 487295) = 10616832 * k + 1461886 := by
    unfold C
    simp [show (3538944 * k + 487295) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1461886) = 5308416 * k + 730943 := by
    unfold C
    simp [show (10616832 * k + 1461886) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 730943) = 15925248 * k + 2192830 := by
    unfold C
    simp [show (5308416 * k + 730943) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2192830) = 7962624 * k + 1096415 := by
    unfold C
    simp [show (15925248 * k + 2192830) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1096415) = 23887872 * k + 3289246 := by
    unfold C
    simp [show (7962624 * k + 1096415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3289246) = 11943936 * k + 1644623 := by
    unfold C
    simp [show (23887872 * k + 3289246) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1644623) = 35831808 * k + 4933870 := by
    unfold C
    simp [show (11943936 * k + 1644623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4933870) = 17915904 * k + 2466935 := by
    unfold C
    simp [show (35831808 * k + 4933870) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2466935) = 53747712 * k + 7400806 := by
    unfold C
    simp [show (17915904 * k + 2466935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 7400806) = 26873856 * k + 3700403 := by
    unfold C
    simp [show (53747712 * k + 7400806) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 3700403) = 80621568 * k + 11101210 := by
    unfold C
    simp [show (26873856 * k + 3700403) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 11101210) = 40310784 * k + 5550605 := by
    unfold C
    simp [show (80621568 * k + 11101210) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 5550605) = 120932352 * k + 16651816 := by
    unfold C
    simp [show (40310784 * k + 5550605) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 16651816) = 60466176 * k + 8325908 := by
    unfold C
    simp [show (120932352 * k + 16651816) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 8325908) = 30233088 * k + 4162954 := by
    unfold C
    simp [show (60466176 * k + 8325908) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4162954) = 15116544 * k + 2081477 := by
    unfold C
    simp [show (30233088 * k + 4162954) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2081477) = 45349632 * k + 6244432 := by
    unfold C
    simp [show (15116544 * k + 2081477) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6244432) = 22674816 * k + 3122216 := by
    unfold C
    simp [show (45349632 * k + 6244432) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3122216) = 11337408 * k + 1561108 := by
    unfold C
    simp [show (22674816 * k + 3122216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1561108) = 5668704 * k + 780554 := by
    unfold C
    simp [show (11337408 * k + 1561108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 780554) = 2834352 * k + 390277 := by
    unfold C
    simp [show (5668704 * k + 780554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 390277) = 8503056 * k + 1170832 := by
    unfold C
    simp [show (2834352 * k + 390277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1170832) = 4251528 * k + 585416 := by
    unfold C
    simp [show (8503056 * k + 1170832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 585416) = 2125764 * k + 292708 := by
    unfold C
    simp [show (4251528 * k + 585416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 292708) = 1062882 * k + 146354 := by
    unfold C
    simp [show (2125764 * k + 292708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 146354) = 531441 * k + 73177 := by
    unfold C
    simp [show (1062882 * k + 146354) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 144383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 144383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_144431 : ∀ k : Nat,
    iterate (1048576 * k + 144431) 32 = 531441 * k + 73202 ∧
      531441 * k + 73202 < 1048576 * k + 144431 := by
  intro k
  have h1 : C (1048576 * k + 144431) = 3145728 * k + 433294 := by
    unfold C
    simp [show (1048576 * k + 144431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 433294) = 1572864 * k + 216647 := by
    unfold C
    simp [show (3145728 * k + 433294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 216647) = 4718592 * k + 649942 := by
    unfold C
    simp [show (1572864 * k + 216647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 649942) = 2359296 * k + 324971 := by
    unfold C
    simp [show (4718592 * k + 649942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 324971) = 7077888 * k + 974914 := by
    unfold C
    simp [show (2359296 * k + 324971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 974914) = 3538944 * k + 487457 := by
    unfold C
    simp [show (7077888 * k + 974914) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 487457) = 10616832 * k + 1462372 := by
    unfold C
    simp [show (3538944 * k + 487457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1462372) = 5308416 * k + 731186 := by
    unfold C
    simp [show (10616832 * k + 1462372) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 731186) = 2654208 * k + 365593 := by
    unfold C
    simp [show (5308416 * k + 731186) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 365593) = 7962624 * k + 1096780 := by
    unfold C
    simp [show (2654208 * k + 365593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1096780) = 3981312 * k + 548390 := by
    unfold C
    simp [show (7962624 * k + 1096780) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 548390) = 1990656 * k + 274195 := by
    unfold C
    simp [show (3981312 * k + 548390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 274195) = 5971968 * k + 822586 := by
    unfold C
    simp [show (1990656 * k + 274195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 822586) = 2985984 * k + 411293 := by
    unfold C
    simp [show (5971968 * k + 822586) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 411293) = 8957952 * k + 1233880 := by
    unfold C
    simp [show (2985984 * k + 411293) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1233880) = 4478976 * k + 616940 := by
    unfold C
    simp [show (8957952 * k + 1233880) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 616940) = 2239488 * k + 308470 := by
    unfold C
    simp [show (4478976 * k + 616940) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 308470) = 1119744 * k + 154235 := by
    unfold C
    simp [show (2239488 * k + 308470) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 154235) = 3359232 * k + 462706 := by
    unfold C
    simp [show (1119744 * k + 154235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 462706) = 1679616 * k + 231353 := by
    unfold C
    simp [show (3359232 * k + 462706) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 231353) = 5038848 * k + 694060 := by
    unfold C
    simp [show (1679616 * k + 231353) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 694060) = 2519424 * k + 347030 := by
    unfold C
    simp [show (5038848 * k + 694060) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 347030) = 1259712 * k + 173515 := by
    unfold C
    simp [show (2519424 * k + 347030) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 173515) = 3779136 * k + 520546 := by
    unfold C
    simp [show (1259712 * k + 173515) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 520546) = 1889568 * k + 260273 := by
    unfold C
    simp [show (3779136 * k + 520546) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 260273) = 5668704 * k + 780820 := by
    unfold C
    simp [show (1889568 * k + 260273) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 780820) = 2834352 * k + 390410 := by
    unfold C
    simp [show (5668704 * k + 780820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 390410) = 1417176 * k + 195205 := by
    unfold C
    simp [show (2834352 * k + 390410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 195205) = 4251528 * k + 585616 := by
    unfold C
    simp [show (1417176 * k + 195205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 585616) = 2125764 * k + 292808 := by
    unfold C
    simp [show (4251528 * k + 585616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 292808) = 1062882 * k + 146404 := by
    unfold C
    simp [show (2125764 * k + 292808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 146404) = 531441 * k + 73202 := by
    unfold C
    simp [show (1062882 * k + 146404) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 144431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 144431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_144799 : ∀ k : Nat,
    iterate (1048576 * k + 144799) 32 = 531441 * k + 73388 ∧
      531441 * k + 73388 < 1048576 * k + 144799 := by
  intro k
  have h1 : C (1048576 * k + 144799) = 3145728 * k + 434398 := by
    unfold C
    simp [show (1048576 * k + 144799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 434398) = 1572864 * k + 217199 := by
    unfold C
    simp [show (3145728 * k + 434398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 217199) = 4718592 * k + 651598 := by
    unfold C
    simp [show (1572864 * k + 217199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 651598) = 2359296 * k + 325799 := by
    unfold C
    simp [show (4718592 * k + 651598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 325799) = 7077888 * k + 977398 := by
    unfold C
    simp [show (2359296 * k + 325799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 977398) = 3538944 * k + 488699 := by
    unfold C
    simp [show (7077888 * k + 977398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 488699) = 10616832 * k + 1466098 := by
    unfold C
    simp [show (3538944 * k + 488699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1466098) = 5308416 * k + 733049 := by
    unfold C
    simp [show (10616832 * k + 1466098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 733049) = 15925248 * k + 2199148 := by
    unfold C
    simp [show (5308416 * k + 733049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2199148) = 7962624 * k + 1099574 := by
    unfold C
    simp [show (15925248 * k + 2199148) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1099574) = 3981312 * k + 549787 := by
    unfold C
    simp [show (7962624 * k + 1099574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 549787) = 11943936 * k + 1649362 := by
    unfold C
    simp [show (3981312 * k + 549787) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1649362) = 5971968 * k + 824681 := by
    unfold C
    simp [show (11943936 * k + 1649362) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 824681) = 17915904 * k + 2474044 := by
    unfold C
    simp [show (5971968 * k + 824681) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2474044) = 8957952 * k + 1237022 := by
    unfold C
    simp [show (17915904 * k + 2474044) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1237022) = 4478976 * k + 618511 := by
    unfold C
    simp [show (8957952 * k + 1237022) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 618511) = 13436928 * k + 1855534 := by
    unfold C
    simp [show (4478976 * k + 618511) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1855534) = 6718464 * k + 927767 := by
    unfold C
    simp [show (13436928 * k + 1855534) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 927767) = 20155392 * k + 2783302 := by
    unfold C
    simp [show (6718464 * k + 927767) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2783302) = 10077696 * k + 1391651 := by
    unfold C
    simp [show (20155392 * k + 2783302) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1391651) = 30233088 * k + 4174954 := by
    unfold C
    simp [show (10077696 * k + 1391651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4174954) = 15116544 * k + 2087477 := by
    unfold C
    simp [show (30233088 * k + 4174954) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2087477) = 45349632 * k + 6262432 := by
    unfold C
    simp [show (15116544 * k + 2087477) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6262432) = 22674816 * k + 3131216 := by
    unfold C
    simp [show (45349632 * k + 6262432) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3131216) = 11337408 * k + 1565608 := by
    unfold C
    simp [show (22674816 * k + 3131216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1565608) = 5668704 * k + 782804 := by
    unfold C
    simp [show (11337408 * k + 1565608) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 782804) = 2834352 * k + 391402 := by
    unfold C
    simp [show (5668704 * k + 782804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 391402) = 1417176 * k + 195701 := by
    unfold C
    simp [show (2834352 * k + 391402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 195701) = 4251528 * k + 587104 := by
    unfold C
    simp [show (1417176 * k + 195701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 587104) = 2125764 * k + 293552 := by
    unfold C
    simp [show (4251528 * k + 587104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 293552) = 1062882 * k + 146776 := by
    unfold C
    simp [show (2125764 * k + 293552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 146776) = 531441 * k + 73388 := by
    unfold C
    simp [show (1062882 * k + 146776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 144799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 144799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_145519 : ∀ k : Nat,
    iterate (1048576 * k + 145519) 32 = 531441 * k + 73753 ∧
      531441 * k + 73753 < 1048576 * k + 145519 := by
  intro k
  have h1 : C (1048576 * k + 145519) = 3145728 * k + 436558 := by
    unfold C
    simp [show (1048576 * k + 145519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 436558) = 1572864 * k + 218279 := by
    unfold C
    simp [show (3145728 * k + 436558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 218279) = 4718592 * k + 654838 := by
    unfold C
    simp [show (1572864 * k + 218279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 654838) = 2359296 * k + 327419 := by
    unfold C
    simp [show (4718592 * k + 654838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 327419) = 7077888 * k + 982258 := by
    unfold C
    simp [show (2359296 * k + 327419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 982258) = 3538944 * k + 491129 := by
    unfold C
    simp [show (7077888 * k + 982258) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 491129) = 10616832 * k + 1473388 := by
    unfold C
    simp [show (3538944 * k + 491129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1473388) = 5308416 * k + 736694 := by
    unfold C
    simp [show (10616832 * k + 1473388) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 736694) = 2654208 * k + 368347 := by
    unfold C
    simp [show (5308416 * k + 736694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 368347) = 7962624 * k + 1105042 := by
    unfold C
    simp [show (2654208 * k + 368347) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1105042) = 3981312 * k + 552521 := by
    unfold C
    simp [show (7962624 * k + 1105042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 552521) = 11943936 * k + 1657564 := by
    unfold C
    simp [show (3981312 * k + 552521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1657564) = 5971968 * k + 828782 := by
    unfold C
    simp [show (11943936 * k + 1657564) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 828782) = 2985984 * k + 414391 := by
    unfold C
    simp [show (5971968 * k + 828782) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 414391) = 8957952 * k + 1243174 := by
    unfold C
    simp [show (2985984 * k + 414391) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1243174) = 4478976 * k + 621587 := by
    unfold C
    simp [show (8957952 * k + 1243174) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 621587) = 13436928 * k + 1864762 := by
    unfold C
    simp [show (4478976 * k + 621587) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1864762) = 6718464 * k + 932381 := by
    unfold C
    simp [show (13436928 * k + 1864762) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 932381) = 20155392 * k + 2797144 := by
    unfold C
    simp [show (6718464 * k + 932381) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2797144) = 10077696 * k + 1398572 := by
    unfold C
    simp [show (20155392 * k + 2797144) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1398572) = 5038848 * k + 699286 := by
    unfold C
    simp [show (10077696 * k + 1398572) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 699286) = 2519424 * k + 349643 := by
    unfold C
    simp [show (5038848 * k + 699286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 349643) = 7558272 * k + 1048930 := by
    unfold C
    simp [show (2519424 * k + 349643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1048930) = 3779136 * k + 524465 := by
    unfold C
    simp [show (7558272 * k + 1048930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 524465) = 11337408 * k + 1573396 := by
    unfold C
    simp [show (3779136 * k + 524465) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1573396) = 5668704 * k + 786698 := by
    unfold C
    simp [show (11337408 * k + 1573396) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 786698) = 2834352 * k + 393349 := by
    unfold C
    simp [show (5668704 * k + 786698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 393349) = 8503056 * k + 1180048 := by
    unfold C
    simp [show (2834352 * k + 393349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1180048) = 4251528 * k + 590024 := by
    unfold C
    simp [show (8503056 * k + 1180048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 590024) = 2125764 * k + 295012 := by
    unfold C
    simp [show (4251528 * k + 590024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 295012) = 1062882 * k + 147506 := by
    unfold C
    simp [show (2125764 * k + 295012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 147506) = 531441 * k + 73753 := by
    unfold C
    simp [show (1062882 * k + 147506) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 145519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 145519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_145631 : ∀ k : Nat,
    iterate (1048576 * k + 145631) 32 = 531441 * k + 73810 ∧
      531441 * k + 73810 < 1048576 * k + 145631 := by
  intro k
  have h1 : C (1048576 * k + 145631) = 3145728 * k + 436894 := by
    unfold C
    simp [show (1048576 * k + 145631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 436894) = 1572864 * k + 218447 := by
    unfold C
    simp [show (3145728 * k + 436894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 218447) = 4718592 * k + 655342 := by
    unfold C
    simp [show (1572864 * k + 218447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 655342) = 2359296 * k + 327671 := by
    unfold C
    simp [show (4718592 * k + 655342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 327671) = 7077888 * k + 983014 := by
    unfold C
    simp [show (2359296 * k + 327671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 983014) = 3538944 * k + 491507 := by
    unfold C
    simp [show (7077888 * k + 983014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 491507) = 10616832 * k + 1474522 := by
    unfold C
    simp [show (3538944 * k + 491507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1474522) = 5308416 * k + 737261 := by
    unfold C
    simp [show (10616832 * k + 1474522) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 737261) = 15925248 * k + 2211784 := by
    unfold C
    simp [show (5308416 * k + 737261) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2211784) = 7962624 * k + 1105892 := by
    unfold C
    simp [show (15925248 * k + 2211784) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1105892) = 3981312 * k + 552946 := by
    unfold C
    simp [show (7962624 * k + 1105892) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 552946) = 1990656 * k + 276473 := by
    unfold C
    simp [show (3981312 * k + 552946) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 276473) = 5971968 * k + 829420 := by
    unfold C
    simp [show (1990656 * k + 276473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 829420) = 2985984 * k + 414710 := by
    unfold C
    simp [show (5971968 * k + 829420) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 414710) = 1492992 * k + 207355 := by
    unfold C
    simp [show (2985984 * k + 414710) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 207355) = 4478976 * k + 622066 := by
    unfold C
    simp [show (1492992 * k + 207355) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 622066) = 2239488 * k + 311033 := by
    unfold C
    simp [show (4478976 * k + 622066) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 311033) = 6718464 * k + 933100 := by
    unfold C
    simp [show (2239488 * k + 311033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 933100) = 3359232 * k + 466550 := by
    unfold C
    simp [show (6718464 * k + 933100) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 466550) = 1679616 * k + 233275 := by
    unfold C
    simp [show (3359232 * k + 466550) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 233275) = 5038848 * k + 699826 := by
    unfold C
    simp [show (1679616 * k + 233275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 699826) = 2519424 * k + 349913 := by
    unfold C
    simp [show (5038848 * k + 699826) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 349913) = 7558272 * k + 1049740 := by
    unfold C
    simp [show (2519424 * k + 349913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1049740) = 3779136 * k + 524870 := by
    unfold C
    simp [show (7558272 * k + 1049740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 524870) = 1889568 * k + 262435 := by
    unfold C
    simp [show (3779136 * k + 524870) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 262435) = 5668704 * k + 787306 := by
    unfold C
    simp [show (1889568 * k + 262435) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 787306) = 2834352 * k + 393653 := by
    unfold C
    simp [show (5668704 * k + 787306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 393653) = 8503056 * k + 1180960 := by
    unfold C
    simp [show (2834352 * k + 393653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1180960) = 4251528 * k + 590480 := by
    unfold C
    simp [show (8503056 * k + 1180960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 590480) = 2125764 * k + 295240 := by
    unfold C
    simp [show (4251528 * k + 590480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 295240) = 1062882 * k + 147620 := by
    unfold C
    simp [show (2125764 * k + 295240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 147620) = 531441 * k + 73810 := by
    unfold C
    simp [show (1062882 * k + 147620) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 145631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 145631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_145791 : ∀ k : Nat,
    iterate (1048576 * k + 145791) 32 = 531441 * k + 73891 ∧
      531441 * k + 73891 < 1048576 * k + 145791 := by
  intro k
  have h1 : C (1048576 * k + 145791) = 3145728 * k + 437374 := by
    unfold C
    simp [show (1048576 * k + 145791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 437374) = 1572864 * k + 218687 := by
    unfold C
    simp [show (3145728 * k + 437374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 218687) = 4718592 * k + 656062 := by
    unfold C
    simp [show (1572864 * k + 218687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 656062) = 2359296 * k + 328031 := by
    unfold C
    simp [show (4718592 * k + 656062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 328031) = 7077888 * k + 984094 := by
    unfold C
    simp [show (2359296 * k + 328031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 984094) = 3538944 * k + 492047 := by
    unfold C
    simp [show (7077888 * k + 984094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 492047) = 10616832 * k + 1476142 := by
    unfold C
    simp [show (3538944 * k + 492047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1476142) = 5308416 * k + 738071 := by
    unfold C
    simp [show (10616832 * k + 1476142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 738071) = 15925248 * k + 2214214 := by
    unfold C
    simp [show (5308416 * k + 738071) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2214214) = 7962624 * k + 1107107 := by
    unfold C
    simp [show (15925248 * k + 2214214) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1107107) = 23887872 * k + 3321322 := by
    unfold C
    simp [show (7962624 * k + 1107107) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3321322) = 11943936 * k + 1660661 := by
    unfold C
    simp [show (23887872 * k + 3321322) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1660661) = 35831808 * k + 4981984 := by
    unfold C
    simp [show (11943936 * k + 1660661) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 4981984) = 17915904 * k + 2490992 := by
    unfold C
    simp [show (35831808 * k + 4981984) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2490992) = 8957952 * k + 1245496 := by
    unfold C
    simp [show (17915904 * k + 2490992) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1245496) = 4478976 * k + 622748 := by
    unfold C
    simp [show (8957952 * k + 1245496) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 622748) = 2239488 * k + 311374 := by
    unfold C
    simp [show (4478976 * k + 622748) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 311374) = 1119744 * k + 155687 := by
    unfold C
    simp [show (2239488 * k + 311374) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 155687) = 3359232 * k + 467062 := by
    unfold C
    simp [show (1119744 * k + 155687) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 467062) = 1679616 * k + 233531 := by
    unfold C
    simp [show (3359232 * k + 467062) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 233531) = 5038848 * k + 700594 := by
    unfold C
    simp [show (1679616 * k + 233531) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 700594) = 2519424 * k + 350297 := by
    unfold C
    simp [show (5038848 * k + 700594) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 350297) = 7558272 * k + 1050892 := by
    unfold C
    simp [show (2519424 * k + 350297) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1050892) = 3779136 * k + 525446 := by
    unfold C
    simp [show (7558272 * k + 1050892) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 525446) = 1889568 * k + 262723 := by
    unfold C
    simp [show (3779136 * k + 525446) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 262723) = 5668704 * k + 788170 := by
    unfold C
    simp [show (1889568 * k + 262723) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 788170) = 2834352 * k + 394085 := by
    unfold C
    simp [show (5668704 * k + 788170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 394085) = 8503056 * k + 1182256 := by
    unfold C
    simp [show (2834352 * k + 394085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1182256) = 4251528 * k + 591128 := by
    unfold C
    simp [show (8503056 * k + 1182256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 591128) = 2125764 * k + 295564 := by
    unfold C
    simp [show (4251528 * k + 591128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 295564) = 1062882 * k + 147782 := by
    unfold C
    simp [show (2125764 * k + 295564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 147782) = 531441 * k + 73891 := by
    unfold C
    simp [show (1062882 * k + 147782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 145791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 145791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_146087 : ∀ k : Nat,
    iterate (1048576 * k + 146087) 32 = 531441 * k + 74041 ∧
      531441 * k + 74041 < 1048576 * k + 146087 := by
  intro k
  have h1 : C (1048576 * k + 146087) = 3145728 * k + 438262 := by
    unfold C
    simp [show (1048576 * k + 146087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 438262) = 1572864 * k + 219131 := by
    unfold C
    simp [show (3145728 * k + 438262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 219131) = 4718592 * k + 657394 := by
    unfold C
    simp [show (1572864 * k + 219131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 657394) = 2359296 * k + 328697 := by
    unfold C
    simp [show (4718592 * k + 657394) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 328697) = 7077888 * k + 986092 := by
    unfold C
    simp [show (2359296 * k + 328697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 986092) = 3538944 * k + 493046 := by
    unfold C
    simp [show (7077888 * k + 986092) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 493046) = 1769472 * k + 246523 := by
    unfold C
    simp [show (3538944 * k + 493046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 246523) = 5308416 * k + 739570 := by
    unfold C
    simp [show (1769472 * k + 246523) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 739570) = 2654208 * k + 369785 := by
    unfold C
    simp [show (5308416 * k + 739570) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 369785) = 7962624 * k + 1109356 := by
    unfold C
    simp [show (2654208 * k + 369785) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1109356) = 3981312 * k + 554678 := by
    unfold C
    simp [show (7962624 * k + 1109356) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 554678) = 1990656 * k + 277339 := by
    unfold C
    simp [show (3981312 * k + 554678) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 277339) = 5971968 * k + 832018 := by
    unfold C
    simp [show (1990656 * k + 277339) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 832018) = 2985984 * k + 416009 := by
    unfold C
    simp [show (5971968 * k + 832018) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 416009) = 8957952 * k + 1248028 := by
    unfold C
    simp [show (2985984 * k + 416009) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1248028) = 4478976 * k + 624014 := by
    unfold C
    simp [show (8957952 * k + 1248028) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 624014) = 2239488 * k + 312007 := by
    unfold C
    simp [show (4478976 * k + 624014) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 312007) = 6718464 * k + 936022 := by
    unfold C
    simp [show (2239488 * k + 312007) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 936022) = 3359232 * k + 468011 := by
    unfold C
    simp [show (6718464 * k + 936022) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 468011) = 10077696 * k + 1404034 := by
    unfold C
    simp [show (3359232 * k + 468011) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1404034) = 5038848 * k + 702017 := by
    unfold C
    simp [show (10077696 * k + 1404034) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 702017) = 15116544 * k + 2106052 := by
    unfold C
    simp [show (5038848 * k + 702017) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2106052) = 7558272 * k + 1053026 := by
    unfold C
    simp [show (15116544 * k + 2106052) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1053026) = 3779136 * k + 526513 := by
    unfold C
    simp [show (7558272 * k + 1053026) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 526513) = 11337408 * k + 1579540 := by
    unfold C
    simp [show (3779136 * k + 526513) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1579540) = 5668704 * k + 789770 := by
    unfold C
    simp [show (11337408 * k + 1579540) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 789770) = 2834352 * k + 394885 := by
    unfold C
    simp [show (5668704 * k + 789770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 394885) = 8503056 * k + 1184656 := by
    unfold C
    simp [show (2834352 * k + 394885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1184656) = 4251528 * k + 592328 := by
    unfold C
    simp [show (8503056 * k + 1184656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 592328) = 2125764 * k + 296164 := by
    unfold C
    simp [show (4251528 * k + 592328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 296164) = 1062882 * k + 148082 := by
    unfold C
    simp [show (2125764 * k + 296164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 148082) = 531441 * k + 74041 := by
    unfold C
    simp [show (1062882 * k + 148082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 146087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 146087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_146111 : ∀ k : Nat,
    iterate (1048576 * k + 146111) 32 = 531441 * k + 74053 ∧
      531441 * k + 74053 < 1048576 * k + 146111 := by
  intro k
  have h1 : C (1048576 * k + 146111) = 3145728 * k + 438334 := by
    unfold C
    simp [show (1048576 * k + 146111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 438334) = 1572864 * k + 219167 := by
    unfold C
    simp [show (3145728 * k + 438334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 219167) = 4718592 * k + 657502 := by
    unfold C
    simp [show (1572864 * k + 219167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 657502) = 2359296 * k + 328751 := by
    unfold C
    simp [show (4718592 * k + 657502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 328751) = 7077888 * k + 986254 := by
    unfold C
    simp [show (2359296 * k + 328751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 986254) = 3538944 * k + 493127 := by
    unfold C
    simp [show (7077888 * k + 986254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 493127) = 10616832 * k + 1479382 := by
    unfold C
    simp [show (3538944 * k + 493127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1479382) = 5308416 * k + 739691 := by
    unfold C
    simp [show (10616832 * k + 1479382) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 739691) = 15925248 * k + 2219074 := by
    unfold C
    simp [show (5308416 * k + 739691) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2219074) = 7962624 * k + 1109537 := by
    unfold C
    simp [show (15925248 * k + 2219074) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1109537) = 23887872 * k + 3328612 := by
    unfold C
    simp [show (7962624 * k + 1109537) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3328612) = 11943936 * k + 1664306 := by
    unfold C
    simp [show (23887872 * k + 3328612) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1664306) = 5971968 * k + 832153 := by
    unfold C
    simp [show (11943936 * k + 1664306) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 832153) = 17915904 * k + 2496460 := by
    unfold C
    simp [show (5971968 * k + 832153) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2496460) = 8957952 * k + 1248230 := by
    unfold C
    simp [show (17915904 * k + 2496460) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1248230) = 4478976 * k + 624115 := by
    unfold C
    simp [show (8957952 * k + 1248230) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 624115) = 13436928 * k + 1872346 := by
    unfold C
    simp [show (4478976 * k + 624115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1872346) = 6718464 * k + 936173 := by
    unfold C
    simp [show (13436928 * k + 1872346) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 936173) = 20155392 * k + 2808520 := by
    unfold C
    simp [show (6718464 * k + 936173) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2808520) = 10077696 * k + 1404260 := by
    unfold C
    simp [show (20155392 * k + 2808520) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1404260) = 5038848 * k + 702130 := by
    unfold C
    simp [show (10077696 * k + 1404260) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 702130) = 2519424 * k + 351065 := by
    unfold C
    simp [show (5038848 * k + 702130) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 351065) = 7558272 * k + 1053196 := by
    unfold C
    simp [show (2519424 * k + 351065) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1053196) = 3779136 * k + 526598 := by
    unfold C
    simp [show (7558272 * k + 1053196) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 526598) = 1889568 * k + 263299 := by
    unfold C
    simp [show (3779136 * k + 526598) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 263299) = 5668704 * k + 789898 := by
    unfold C
    simp [show (1889568 * k + 263299) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 789898) = 2834352 * k + 394949 := by
    unfold C
    simp [show (5668704 * k + 789898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 394949) = 8503056 * k + 1184848 := by
    unfold C
    simp [show (2834352 * k + 394949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1184848) = 4251528 * k + 592424 := by
    unfold C
    simp [show (8503056 * k + 1184848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 592424) = 2125764 * k + 296212 := by
    unfold C
    simp [show (4251528 * k + 592424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 296212) = 1062882 * k + 148106 := by
    unfold C
    simp [show (2125764 * k + 296212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 148106) = 531441 * k + 74053 := by
    unfold C
    simp [show (1062882 * k + 148106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 146111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 146111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_146847 : ∀ k : Nat,
    iterate (1048576 * k + 146847) 32 = 531441 * k + 74426 ∧
      531441 * k + 74426 < 1048576 * k + 146847 := by
  intro k
  have h1 : C (1048576 * k + 146847) = 3145728 * k + 440542 := by
    unfold C
    simp [show (1048576 * k + 146847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 440542) = 1572864 * k + 220271 := by
    unfold C
    simp [show (3145728 * k + 440542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 220271) = 4718592 * k + 660814 := by
    unfold C
    simp [show (1572864 * k + 220271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 660814) = 2359296 * k + 330407 := by
    unfold C
    simp [show (4718592 * k + 660814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 330407) = 7077888 * k + 991222 := by
    unfold C
    simp [show (2359296 * k + 330407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 991222) = 3538944 * k + 495611 := by
    unfold C
    simp [show (7077888 * k + 991222) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 495611) = 10616832 * k + 1486834 := by
    unfold C
    simp [show (3538944 * k + 495611) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1486834) = 5308416 * k + 743417 := by
    unfold C
    simp [show (10616832 * k + 1486834) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 743417) = 15925248 * k + 2230252 := by
    unfold C
    simp [show (5308416 * k + 743417) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2230252) = 7962624 * k + 1115126 := by
    unfold C
    simp [show (15925248 * k + 2230252) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1115126) = 3981312 * k + 557563 := by
    unfold C
    simp [show (7962624 * k + 1115126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 557563) = 11943936 * k + 1672690 := by
    unfold C
    simp [show (3981312 * k + 557563) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1672690) = 5971968 * k + 836345 := by
    unfold C
    simp [show (11943936 * k + 1672690) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 836345) = 17915904 * k + 2509036 := by
    unfold C
    simp [show (5971968 * k + 836345) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2509036) = 8957952 * k + 1254518 := by
    unfold C
    simp [show (17915904 * k + 2509036) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1254518) = 4478976 * k + 627259 := by
    unfold C
    simp [show (8957952 * k + 1254518) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 627259) = 13436928 * k + 1881778 := by
    unfold C
    simp [show (4478976 * k + 627259) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1881778) = 6718464 * k + 940889 := by
    unfold C
    simp [show (13436928 * k + 1881778) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 940889) = 20155392 * k + 2822668 := by
    unfold C
    simp [show (6718464 * k + 940889) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2822668) = 10077696 * k + 1411334 := by
    unfold C
    simp [show (20155392 * k + 2822668) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1411334) = 5038848 * k + 705667 := by
    unfold C
    simp [show (10077696 * k + 1411334) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 705667) = 15116544 * k + 2117002 := by
    unfold C
    simp [show (5038848 * k + 705667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2117002) = 7558272 * k + 1058501 := by
    unfold C
    simp [show (15116544 * k + 2117002) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1058501) = 22674816 * k + 3175504 := by
    unfold C
    simp [show (7558272 * k + 1058501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3175504) = 11337408 * k + 1587752 := by
    unfold C
    simp [show (22674816 * k + 3175504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1587752) = 5668704 * k + 793876 := by
    unfold C
    simp [show (11337408 * k + 1587752) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 793876) = 2834352 * k + 396938 := by
    unfold C
    simp [show (5668704 * k + 793876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 396938) = 1417176 * k + 198469 := by
    unfold C
    simp [show (2834352 * k + 396938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 198469) = 4251528 * k + 595408 := by
    unfold C
    simp [show (1417176 * k + 198469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 595408) = 2125764 * k + 297704 := by
    unfold C
    simp [show (4251528 * k + 595408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 297704) = 1062882 * k + 148852 := by
    unfold C
    simp [show (2125764 * k + 297704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 148852) = 531441 * k + 74426 := by
    unfold C
    simp [show (1062882 * k + 148852) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 146847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 146847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_146971 : ∀ k : Nat,
    iterate (1048576 * k + 146971) 32 = 531441 * k + 74489 ∧
      531441 * k + 74489 < 1048576 * k + 146971 := by
  intro k
  have h1 : C (1048576 * k + 146971) = 3145728 * k + 440914 := by
    unfold C
    simp [show (1048576 * k + 146971) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 440914) = 1572864 * k + 220457 := by
    unfold C
    simp [show (3145728 * k + 440914) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 220457) = 4718592 * k + 661372 := by
    unfold C
    simp [show (1572864 * k + 220457) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 661372) = 2359296 * k + 330686 := by
    unfold C
    simp [show (4718592 * k + 661372) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 330686) = 1179648 * k + 165343 := by
    unfold C
    simp [show (2359296 * k + 330686) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 165343) = 3538944 * k + 496030 := by
    unfold C
    simp [show (1179648 * k + 165343) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 496030) = 1769472 * k + 248015 := by
    unfold C
    simp [show (3538944 * k + 496030) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 248015) = 5308416 * k + 744046 := by
    unfold C
    simp [show (1769472 * k + 248015) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 744046) = 2654208 * k + 372023 := by
    unfold C
    simp [show (5308416 * k + 744046) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 372023) = 7962624 * k + 1116070 := by
    unfold C
    simp [show (2654208 * k + 372023) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1116070) = 3981312 * k + 558035 := by
    unfold C
    simp [show (7962624 * k + 1116070) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 558035) = 11943936 * k + 1674106 := by
    unfold C
    simp [show (3981312 * k + 558035) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1674106) = 5971968 * k + 837053 := by
    unfold C
    simp [show (11943936 * k + 1674106) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 837053) = 17915904 * k + 2511160 := by
    unfold C
    simp [show (5971968 * k + 837053) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2511160) = 8957952 * k + 1255580 := by
    unfold C
    simp [show (17915904 * k + 2511160) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1255580) = 4478976 * k + 627790 := by
    unfold C
    simp [show (8957952 * k + 1255580) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 627790) = 2239488 * k + 313895 := by
    unfold C
    simp [show (4478976 * k + 627790) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 313895) = 6718464 * k + 941686 := by
    unfold C
    simp [show (2239488 * k + 313895) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 941686) = 3359232 * k + 470843 := by
    unfold C
    simp [show (6718464 * k + 941686) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 470843) = 10077696 * k + 1412530 := by
    unfold C
    simp [show (3359232 * k + 470843) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1412530) = 5038848 * k + 706265 := by
    unfold C
    simp [show (10077696 * k + 1412530) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 706265) = 15116544 * k + 2118796 := by
    unfold C
    simp [show (5038848 * k + 706265) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2118796) = 7558272 * k + 1059398 := by
    unfold C
    simp [show (15116544 * k + 2118796) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1059398) = 3779136 * k + 529699 := by
    unfold C
    simp [show (7558272 * k + 1059398) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 529699) = 11337408 * k + 1589098 := by
    unfold C
    simp [show (3779136 * k + 529699) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1589098) = 5668704 * k + 794549 := by
    unfold C
    simp [show (11337408 * k + 1589098) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 794549) = 17006112 * k + 2383648 := by
    unfold C
    simp [show (5668704 * k + 794549) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2383648) = 8503056 * k + 1191824 := by
    unfold C
    simp [show (17006112 * k + 2383648) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1191824) = 4251528 * k + 595912 := by
    unfold C
    simp [show (8503056 * k + 1191824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 595912) = 2125764 * k + 297956 := by
    unfold C
    simp [show (4251528 * k + 595912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 297956) = 1062882 * k + 148978 := by
    unfold C
    simp [show (2125764 * k + 297956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 148978) = 531441 * k + 74489 := by
    unfold C
    simp [show (1062882 * k + 148978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 146971) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 146971)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_147303 : ∀ k : Nat,
    iterate (1048576 * k + 147303) 32 = 531441 * k + 74657 ∧
      531441 * k + 74657 < 1048576 * k + 147303 := by
  intro k
  have h1 : C (1048576 * k + 147303) = 3145728 * k + 441910 := by
    unfold C
    simp [show (1048576 * k + 147303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 441910) = 1572864 * k + 220955 := by
    unfold C
    simp [show (3145728 * k + 441910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 220955) = 4718592 * k + 662866 := by
    unfold C
    simp [show (1572864 * k + 220955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 662866) = 2359296 * k + 331433 := by
    unfold C
    simp [show (4718592 * k + 662866) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 331433) = 7077888 * k + 994300 := by
    unfold C
    simp [show (2359296 * k + 331433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 994300) = 3538944 * k + 497150 := by
    unfold C
    simp [show (7077888 * k + 994300) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 497150) = 1769472 * k + 248575 := by
    unfold C
    simp [show (3538944 * k + 497150) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 248575) = 5308416 * k + 745726 := by
    unfold C
    simp [show (1769472 * k + 248575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 745726) = 2654208 * k + 372863 := by
    unfold C
    simp [show (5308416 * k + 745726) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 372863) = 7962624 * k + 1118590 := by
    unfold C
    simp [show (2654208 * k + 372863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1118590) = 3981312 * k + 559295 := by
    unfold C
    simp [show (7962624 * k + 1118590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 559295) = 11943936 * k + 1677886 := by
    unfold C
    simp [show (3981312 * k + 559295) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1677886) = 5971968 * k + 838943 := by
    unfold C
    simp [show (11943936 * k + 1677886) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 838943) = 17915904 * k + 2516830 := by
    unfold C
    simp [show (5971968 * k + 838943) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2516830) = 8957952 * k + 1258415 := by
    unfold C
    simp [show (17915904 * k + 2516830) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1258415) = 26873856 * k + 3775246 := by
    unfold C
    simp [show (8957952 * k + 1258415) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3775246) = 13436928 * k + 1887623 := by
    unfold C
    simp [show (26873856 * k + 3775246) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1887623) = 40310784 * k + 5662870 := by
    unfold C
    simp [show (13436928 * k + 1887623) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5662870) = 20155392 * k + 2831435 := by
    unfold C
    simp [show (40310784 * k + 5662870) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2831435) = 60466176 * k + 8494306 := by
    unfold C
    simp [show (20155392 * k + 2831435) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 8494306) = 30233088 * k + 4247153 := by
    unfold C
    simp [show (60466176 * k + 8494306) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4247153) = 90699264 * k + 12741460 := by
    unfold C
    simp [show (30233088 * k + 4247153) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 12741460) = 45349632 * k + 6370730 := by
    unfold C
    simp [show (90699264 * k + 12741460) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 6370730) = 22674816 * k + 3185365 := by
    unfold C
    simp [show (45349632 * k + 6370730) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3185365) = 68024448 * k + 9556096 := by
    unfold C
    simp [show (22674816 * k + 3185365) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 9556096) = 34012224 * k + 4778048 := by
    unfold C
    simp [show (68024448 * k + 9556096) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 4778048) = 17006112 * k + 2389024 := by
    unfold C
    simp [show (34012224 * k + 4778048) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2389024) = 8503056 * k + 1194512 := by
    unfold C
    simp [show (17006112 * k + 2389024) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1194512) = 4251528 * k + 597256 := by
    unfold C
    simp [show (8503056 * k + 1194512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 597256) = 2125764 * k + 298628 := by
    unfold C
    simp [show (4251528 * k + 597256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 298628) = 1062882 * k + 149314 := by
    unfold C
    simp [show (2125764 * k + 298628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 149314) = 531441 * k + 74657 := by
    unfold C
    simp [show (1062882 * k + 149314) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 147303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 147303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_148327 : ∀ k : Nat,
    iterate (1048576 * k + 148327) 32 = 531441 * k + 75176 ∧
      531441 * k + 75176 < 1048576 * k + 148327 := by
  intro k
  have h1 : C (1048576 * k + 148327) = 3145728 * k + 444982 := by
    unfold C
    simp [show (1048576 * k + 148327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 444982) = 1572864 * k + 222491 := by
    unfold C
    simp [show (3145728 * k + 444982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 222491) = 4718592 * k + 667474 := by
    unfold C
    simp [show (1572864 * k + 222491) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 667474) = 2359296 * k + 333737 := by
    unfold C
    simp [show (4718592 * k + 667474) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 333737) = 7077888 * k + 1001212 := by
    unfold C
    simp [show (2359296 * k + 333737) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1001212) = 3538944 * k + 500606 := by
    unfold C
    simp [show (7077888 * k + 1001212) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 500606) = 1769472 * k + 250303 := by
    unfold C
    simp [show (3538944 * k + 500606) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 250303) = 5308416 * k + 750910 := by
    unfold C
    simp [show (1769472 * k + 250303) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 750910) = 2654208 * k + 375455 := by
    unfold C
    simp [show (5308416 * k + 750910) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 375455) = 7962624 * k + 1126366 := by
    unfold C
    simp [show (2654208 * k + 375455) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1126366) = 3981312 * k + 563183 := by
    unfold C
    simp [show (7962624 * k + 1126366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 563183) = 11943936 * k + 1689550 := by
    unfold C
    simp [show (3981312 * k + 563183) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1689550) = 5971968 * k + 844775 := by
    unfold C
    simp [show (11943936 * k + 1689550) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 844775) = 17915904 * k + 2534326 := by
    unfold C
    simp [show (5971968 * k + 844775) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2534326) = 8957952 * k + 1267163 := by
    unfold C
    simp [show (17915904 * k + 2534326) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1267163) = 26873856 * k + 3801490 := by
    unfold C
    simp [show (8957952 * k + 1267163) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3801490) = 13436928 * k + 1900745 := by
    unfold C
    simp [show (26873856 * k + 3801490) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1900745) = 40310784 * k + 5702236 := by
    unfold C
    simp [show (13436928 * k + 1900745) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5702236) = 20155392 * k + 2851118 := by
    unfold C
    simp [show (40310784 * k + 5702236) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2851118) = 10077696 * k + 1425559 := by
    unfold C
    simp [show (20155392 * k + 2851118) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1425559) = 30233088 * k + 4276678 := by
    unfold C
    simp [show (10077696 * k + 1425559) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4276678) = 15116544 * k + 2138339 := by
    unfold C
    simp [show (30233088 * k + 4276678) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2138339) = 45349632 * k + 6415018 := by
    unfold C
    simp [show (15116544 * k + 2138339) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6415018) = 22674816 * k + 3207509 := by
    unfold C
    simp [show (45349632 * k + 6415018) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3207509) = 68024448 * k + 9622528 := by
    unfold C
    simp [show (22674816 * k + 3207509) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 9622528) = 34012224 * k + 4811264 := by
    unfold C
    simp [show (68024448 * k + 9622528) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 4811264) = 17006112 * k + 2405632 := by
    unfold C
    simp [show (34012224 * k + 4811264) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2405632) = 8503056 * k + 1202816 := by
    unfold C
    simp [show (17006112 * k + 2405632) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1202816) = 4251528 * k + 601408 := by
    unfold C
    simp [show (8503056 * k + 1202816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 601408) = 2125764 * k + 300704 := by
    unfold C
    simp [show (4251528 * k + 601408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 300704) = 1062882 * k + 150352 := by
    unfold C
    simp [show (2125764 * k + 300704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 150352) = 531441 * k + 75176 := by
    unfold C
    simp [show (1062882 * k + 150352) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 148327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 148327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_148711 : ∀ k : Nat,
    iterate (1048576 * k + 148711) 32 = 531441 * k + 75371 ∧
      531441 * k + 75371 < 1048576 * k + 148711 := by
  intro k
  have h1 : C (1048576 * k + 148711) = 3145728 * k + 446134 := by
    unfold C
    simp [show (1048576 * k + 148711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 446134) = 1572864 * k + 223067 := by
    unfold C
    simp [show (3145728 * k + 446134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 223067) = 4718592 * k + 669202 := by
    unfold C
    simp [show (1572864 * k + 223067) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 669202) = 2359296 * k + 334601 := by
    unfold C
    simp [show (4718592 * k + 669202) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 334601) = 7077888 * k + 1003804 := by
    unfold C
    simp [show (2359296 * k + 334601) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1003804) = 3538944 * k + 501902 := by
    unfold C
    simp [show (7077888 * k + 1003804) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 501902) = 1769472 * k + 250951 := by
    unfold C
    simp [show (3538944 * k + 501902) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 250951) = 5308416 * k + 752854 := by
    unfold C
    simp [show (1769472 * k + 250951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 752854) = 2654208 * k + 376427 := by
    unfold C
    simp [show (5308416 * k + 752854) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 376427) = 7962624 * k + 1129282 := by
    unfold C
    simp [show (2654208 * k + 376427) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1129282) = 3981312 * k + 564641 := by
    unfold C
    simp [show (7962624 * k + 1129282) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 564641) = 11943936 * k + 1693924 := by
    unfold C
    simp [show (3981312 * k + 564641) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1693924) = 5971968 * k + 846962 := by
    unfold C
    simp [show (11943936 * k + 1693924) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 846962) = 2985984 * k + 423481 := by
    unfold C
    simp [show (5971968 * k + 846962) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 423481) = 8957952 * k + 1270444 := by
    unfold C
    simp [show (2985984 * k + 423481) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1270444) = 4478976 * k + 635222 := by
    unfold C
    simp [show (8957952 * k + 1270444) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 635222) = 2239488 * k + 317611 := by
    unfold C
    simp [show (4478976 * k + 635222) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 317611) = 6718464 * k + 952834 := by
    unfold C
    simp [show (2239488 * k + 317611) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 952834) = 3359232 * k + 476417 := by
    unfold C
    simp [show (6718464 * k + 952834) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 476417) = 10077696 * k + 1429252 := by
    unfold C
    simp [show (3359232 * k + 476417) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1429252) = 5038848 * k + 714626 := by
    unfold C
    simp [show (10077696 * k + 1429252) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 714626) = 2519424 * k + 357313 := by
    unfold C
    simp [show (5038848 * k + 714626) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 357313) = 7558272 * k + 1071940 := by
    unfold C
    simp [show (2519424 * k + 357313) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1071940) = 3779136 * k + 535970 := by
    unfold C
    simp [show (7558272 * k + 1071940) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 535970) = 1889568 * k + 267985 := by
    unfold C
    simp [show (3779136 * k + 535970) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 267985) = 5668704 * k + 803956 := by
    unfold C
    simp [show (1889568 * k + 267985) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 803956) = 2834352 * k + 401978 := by
    unfold C
    simp [show (5668704 * k + 803956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 401978) = 1417176 * k + 200989 := by
    unfold C
    simp [show (2834352 * k + 401978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 200989) = 4251528 * k + 602968 := by
    unfold C
    simp [show (1417176 * k + 200989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 602968) = 2125764 * k + 301484 := by
    unfold C
    simp [show (4251528 * k + 602968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 301484) = 1062882 * k + 150742 := by
    unfold C
    simp [show (2125764 * k + 301484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 150742) = 531441 * k + 75371 := by
    unfold C
    simp [show (1062882 * k + 150742) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 148711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 148711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_149147 : ∀ k : Nat,
    iterate (1048576 * k + 149147) 32 = 531441 * k + 75592 ∧
      531441 * k + 75592 < 1048576 * k + 149147 := by
  intro k
  have h1 : C (1048576 * k + 149147) = 3145728 * k + 447442 := by
    unfold C
    simp [show (1048576 * k + 149147) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 447442) = 1572864 * k + 223721 := by
    unfold C
    simp [show (3145728 * k + 447442) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 223721) = 4718592 * k + 671164 := by
    unfold C
    simp [show (1572864 * k + 223721) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 671164) = 2359296 * k + 335582 := by
    unfold C
    simp [show (4718592 * k + 671164) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 335582) = 1179648 * k + 167791 := by
    unfold C
    simp [show (2359296 * k + 335582) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 167791) = 3538944 * k + 503374 := by
    unfold C
    simp [show (1179648 * k + 167791) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 503374) = 1769472 * k + 251687 := by
    unfold C
    simp [show (3538944 * k + 503374) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 251687) = 5308416 * k + 755062 := by
    unfold C
    simp [show (1769472 * k + 251687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 755062) = 2654208 * k + 377531 := by
    unfold C
    simp [show (5308416 * k + 755062) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 377531) = 7962624 * k + 1132594 := by
    unfold C
    simp [show (2654208 * k + 377531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1132594) = 3981312 * k + 566297 := by
    unfold C
    simp [show (7962624 * k + 1132594) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 566297) = 11943936 * k + 1698892 := by
    unfold C
    simp [show (3981312 * k + 566297) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1698892) = 5971968 * k + 849446 := by
    unfold C
    simp [show (11943936 * k + 1698892) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 849446) = 2985984 * k + 424723 := by
    unfold C
    simp [show (5971968 * k + 849446) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 424723) = 8957952 * k + 1274170 := by
    unfold C
    simp [show (2985984 * k + 424723) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1274170) = 4478976 * k + 637085 := by
    unfold C
    simp [show (8957952 * k + 1274170) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 637085) = 13436928 * k + 1911256 := by
    unfold C
    simp [show (4478976 * k + 637085) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1911256) = 6718464 * k + 955628 := by
    unfold C
    simp [show (13436928 * k + 1911256) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 955628) = 3359232 * k + 477814 := by
    unfold C
    simp [show (6718464 * k + 955628) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 477814) = 1679616 * k + 238907 := by
    unfold C
    simp [show (3359232 * k + 477814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 238907) = 5038848 * k + 716722 := by
    unfold C
    simp [show (1679616 * k + 238907) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 716722) = 2519424 * k + 358361 := by
    unfold C
    simp [show (5038848 * k + 716722) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 358361) = 7558272 * k + 1075084 := by
    unfold C
    simp [show (2519424 * k + 358361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1075084) = 3779136 * k + 537542 := by
    unfold C
    simp [show (7558272 * k + 1075084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 537542) = 1889568 * k + 268771 := by
    unfold C
    simp [show (3779136 * k + 537542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 268771) = 5668704 * k + 806314 := by
    unfold C
    simp [show (1889568 * k + 268771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 806314) = 2834352 * k + 403157 := by
    unfold C
    simp [show (5668704 * k + 806314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 403157) = 8503056 * k + 1209472 := by
    unfold C
    simp [show (2834352 * k + 403157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1209472) = 4251528 * k + 604736 := by
    unfold C
    simp [show (8503056 * k + 1209472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 604736) = 2125764 * k + 302368 := by
    unfold C
    simp [show (4251528 * k + 604736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 302368) = 1062882 * k + 151184 := by
    unfold C
    simp [show (2125764 * k + 302368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 151184) = 531441 * k + 75592 := by
    unfold C
    simp [show (1062882 * k + 151184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 149147) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 149147)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_149351 : ∀ k : Nat,
    iterate (1048576 * k + 149351) 32 = 531441 * k + 75695 ∧
      531441 * k + 75695 < 1048576 * k + 149351 := by
  intro k
  have h1 : C (1048576 * k + 149351) = 3145728 * k + 448054 := by
    unfold C
    simp [show (1048576 * k + 149351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 448054) = 1572864 * k + 224027 := by
    unfold C
    simp [show (3145728 * k + 448054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 224027) = 4718592 * k + 672082 := by
    unfold C
    simp [show (1572864 * k + 224027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 672082) = 2359296 * k + 336041 := by
    unfold C
    simp [show (4718592 * k + 672082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 336041) = 7077888 * k + 1008124 := by
    unfold C
    simp [show (2359296 * k + 336041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1008124) = 3538944 * k + 504062 := by
    unfold C
    simp [show (7077888 * k + 1008124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 504062) = 1769472 * k + 252031 := by
    unfold C
    simp [show (3538944 * k + 504062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 252031) = 5308416 * k + 756094 := by
    unfold C
    simp [show (1769472 * k + 252031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 756094) = 2654208 * k + 378047 := by
    unfold C
    simp [show (5308416 * k + 756094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 378047) = 7962624 * k + 1134142 := by
    unfold C
    simp [show (2654208 * k + 378047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1134142) = 3981312 * k + 567071 := by
    unfold C
    simp [show (7962624 * k + 1134142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 567071) = 11943936 * k + 1701214 := by
    unfold C
    simp [show (3981312 * k + 567071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1701214) = 5971968 * k + 850607 := by
    unfold C
    simp [show (11943936 * k + 1701214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 850607) = 17915904 * k + 2551822 := by
    unfold C
    simp [show (5971968 * k + 850607) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2551822) = 8957952 * k + 1275911 := by
    unfold C
    simp [show (17915904 * k + 2551822) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1275911) = 26873856 * k + 3827734 := by
    unfold C
    simp [show (8957952 * k + 1275911) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 3827734) = 13436928 * k + 1913867 := by
    unfold C
    simp [show (26873856 * k + 3827734) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1913867) = 40310784 * k + 5741602 := by
    unfold C
    simp [show (13436928 * k + 1913867) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 5741602) = 20155392 * k + 2870801 := by
    unfold C
    simp [show (40310784 * k + 5741602) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2870801) = 60466176 * k + 8612404 := by
    unfold C
    simp [show (20155392 * k + 2870801) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 8612404) = 30233088 * k + 4306202 := by
    unfold C
    simp [show (60466176 * k + 8612404) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4306202) = 15116544 * k + 2153101 := by
    unfold C
    simp [show (30233088 * k + 4306202) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2153101) = 45349632 * k + 6459304 := by
    unfold C
    simp [show (15116544 * k + 2153101) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 6459304) = 22674816 * k + 3229652 := by
    unfold C
    simp [show (45349632 * k + 6459304) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3229652) = 11337408 * k + 1614826 := by
    unfold C
    simp [show (22674816 * k + 3229652) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1614826) = 5668704 * k + 807413 := by
    unfold C
    simp [show (11337408 * k + 1614826) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 807413) = 17006112 * k + 2422240 := by
    unfold C
    simp [show (5668704 * k + 807413) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2422240) = 8503056 * k + 1211120 := by
    unfold C
    simp [show (17006112 * k + 2422240) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1211120) = 4251528 * k + 605560 := by
    unfold C
    simp [show (8503056 * k + 1211120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 605560) = 2125764 * k + 302780 := by
    unfold C
    simp [show (4251528 * k + 605560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 302780) = 1062882 * k + 151390 := by
    unfold C
    simp [show (2125764 * k + 302780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 151390) = 531441 * k + 75695 := by
    unfold C
    simp [show (1062882 * k + 151390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 149351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 149351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_149759 : ∀ k : Nat,
    iterate (1048576 * k + 149759) 32 = 531441 * k + 75902 ∧
      531441 * k + 75902 < 1048576 * k + 149759 := by
  intro k
  have h1 : C (1048576 * k + 149759) = 3145728 * k + 449278 := by
    unfold C
    simp [show (1048576 * k + 149759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 449278) = 1572864 * k + 224639 := by
    unfold C
    simp [show (3145728 * k + 449278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 224639) = 4718592 * k + 673918 := by
    unfold C
    simp [show (1572864 * k + 224639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 673918) = 2359296 * k + 336959 := by
    unfold C
    simp [show (4718592 * k + 673918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 336959) = 7077888 * k + 1010878 := by
    unfold C
    simp [show (2359296 * k + 336959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1010878) = 3538944 * k + 505439 := by
    unfold C
    simp [show (7077888 * k + 1010878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 505439) = 10616832 * k + 1516318 := by
    unfold C
    simp [show (3538944 * k + 505439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1516318) = 5308416 * k + 758159 := by
    unfold C
    simp [show (10616832 * k + 1516318) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 758159) = 15925248 * k + 2274478 := by
    unfold C
    simp [show (5308416 * k + 758159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2274478) = 7962624 * k + 1137239 := by
    unfold C
    simp [show (15925248 * k + 2274478) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1137239) = 23887872 * k + 3411718 := by
    unfold C
    simp [show (7962624 * k + 1137239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3411718) = 11943936 * k + 1705859 := by
    unfold C
    simp [show (23887872 * k + 3411718) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1705859) = 35831808 * k + 5117578 := by
    unfold C
    simp [show (11943936 * k + 1705859) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5117578) = 17915904 * k + 2558789 := by
    unfold C
    simp [show (35831808 * k + 5117578) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2558789) = 53747712 * k + 7676368 := by
    unfold C
    simp [show (17915904 * k + 2558789) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 7676368) = 26873856 * k + 3838184 := by
    unfold C
    simp [show (53747712 * k + 7676368) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 3838184) = 13436928 * k + 1919092 := by
    unfold C
    simp [show (26873856 * k + 3838184) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1919092) = 6718464 * k + 959546 := by
    unfold C
    simp [show (13436928 * k + 1919092) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 959546) = 3359232 * k + 479773 := by
    unfold C
    simp [show (6718464 * k + 959546) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 479773) = 10077696 * k + 1439320 := by
    unfold C
    simp [show (3359232 * k + 479773) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1439320) = 5038848 * k + 719660 := by
    unfold C
    simp [show (10077696 * k + 1439320) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 719660) = 2519424 * k + 359830 := by
    unfold C
    simp [show (5038848 * k + 719660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 359830) = 1259712 * k + 179915 := by
    unfold C
    simp [show (2519424 * k + 359830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 179915) = 3779136 * k + 539746 := by
    unfold C
    simp [show (1259712 * k + 179915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 539746) = 1889568 * k + 269873 := by
    unfold C
    simp [show (3779136 * k + 539746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 269873) = 5668704 * k + 809620 := by
    unfold C
    simp [show (1889568 * k + 269873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 809620) = 2834352 * k + 404810 := by
    unfold C
    simp [show (5668704 * k + 809620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 404810) = 1417176 * k + 202405 := by
    unfold C
    simp [show (2834352 * k + 404810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 202405) = 4251528 * k + 607216 := by
    unfold C
    simp [show (1417176 * k + 202405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 607216) = 2125764 * k + 303608 := by
    unfold C
    simp [show (4251528 * k + 607216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 303608) = 1062882 * k + 151804 := by
    unfold C
    simp [show (2125764 * k + 303608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 151804) = 531441 * k + 75902 := by
    unfold C
    simp [show (1062882 * k + 151804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 149759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 149759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard020
