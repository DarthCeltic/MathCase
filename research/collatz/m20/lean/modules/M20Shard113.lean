import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard113

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_881967 : ∀ k : Nat,
    iterate (1048576 * k + 881967) 32 = 531441 * k + 447001 ∧
      531441 * k + 447001 < 1048576 * k + 881967 := by
  intro k
  have h1 : C (1048576 * k + 881967) = 3145728 * k + 2645902 := by
    unfold C
    simp [show (1048576 * k + 881967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2645902) = 1572864 * k + 1322951 := by
    unfold C
    simp [show (3145728 * k + 2645902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1322951) = 4718592 * k + 3968854 := by
    unfold C
    simp [show (1572864 * k + 1322951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3968854) = 2359296 * k + 1984427 := by
    unfold C
    simp [show (4718592 * k + 3968854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1984427) = 7077888 * k + 5953282 := by
    unfold C
    simp [show (2359296 * k + 1984427) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5953282) = 3538944 * k + 2976641 := by
    unfold C
    simp [show (7077888 * k + 5953282) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2976641) = 10616832 * k + 8929924 := by
    unfold C
    simp [show (3538944 * k + 2976641) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8929924) = 5308416 * k + 4464962 := by
    unfold C
    simp [show (10616832 * k + 8929924) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4464962) = 2654208 * k + 2232481 := by
    unfold C
    simp [show (5308416 * k + 4464962) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2232481) = 7962624 * k + 6697444 := by
    unfold C
    simp [show (2654208 * k + 2232481) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6697444) = 3981312 * k + 3348722 := by
    unfold C
    simp [show (7962624 * k + 6697444) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3348722) = 1990656 * k + 1674361 := by
    unfold C
    simp [show (3981312 * k + 3348722) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1674361) = 5971968 * k + 5023084 := by
    unfold C
    simp [show (1990656 * k + 1674361) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5023084) = 2985984 * k + 2511542 := by
    unfold C
    simp [show (5971968 * k + 5023084) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2511542) = 1492992 * k + 1255771 := by
    unfold C
    simp [show (2985984 * k + 2511542) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1255771) = 4478976 * k + 3767314 := by
    unfold C
    simp [show (1492992 * k + 1255771) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3767314) = 2239488 * k + 1883657 := by
    unfold C
    simp [show (4478976 * k + 3767314) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1883657) = 6718464 * k + 5650972 := by
    unfold C
    simp [show (2239488 * k + 1883657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5650972) = 3359232 * k + 2825486 := by
    unfold C
    simp [show (6718464 * k + 5650972) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2825486) = 1679616 * k + 1412743 := by
    unfold C
    simp [show (3359232 * k + 2825486) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1412743) = 5038848 * k + 4238230 := by
    unfold C
    simp [show (1679616 * k + 1412743) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4238230) = 2519424 * k + 2119115 := by
    unfold C
    simp [show (5038848 * k + 4238230) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2119115) = 7558272 * k + 6357346 := by
    unfold C
    simp [show (2519424 * k + 2119115) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6357346) = 3779136 * k + 3178673 := by
    unfold C
    simp [show (7558272 * k + 6357346) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3178673) = 11337408 * k + 9536020 := by
    unfold C
    simp [show (3779136 * k + 3178673) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9536020) = 5668704 * k + 4768010 := by
    unfold C
    simp [show (11337408 * k + 9536020) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4768010) = 2834352 * k + 2384005 := by
    unfold C
    simp [show (5668704 * k + 4768010) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2384005) = 8503056 * k + 7152016 := by
    unfold C
    simp [show (2834352 * k + 2384005) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7152016) = 4251528 * k + 3576008 := by
    unfold C
    simp [show (8503056 * k + 7152016) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3576008) = 2125764 * k + 1788004 := by
    unfold C
    simp [show (4251528 * k + 3576008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1788004) = 1062882 * k + 894002 := by
    unfold C
    simp [show (2125764 * k + 1788004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 894002) = 531441 * k + 447001 := by
    unfold C
    simp [show (1062882 * k + 894002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 881967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 881967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_882127 : ∀ k : Nat,
    iterate (1048576 * k + 882127) 32 = 531441 * k + 447082 ∧
      531441 * k + 447082 < 1048576 * k + 882127 := by
  intro k
  have h1 : C (1048576 * k + 882127) = 3145728 * k + 2646382 := by
    unfold C
    simp [show (1048576 * k + 882127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2646382) = 1572864 * k + 1323191 := by
    unfold C
    simp [show (3145728 * k + 2646382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1323191) = 4718592 * k + 3969574 := by
    unfold C
    simp [show (1572864 * k + 1323191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3969574) = 2359296 * k + 1984787 := by
    unfold C
    simp [show (4718592 * k + 3969574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1984787) = 7077888 * k + 5954362 := by
    unfold C
    simp [show (2359296 * k + 1984787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5954362) = 3538944 * k + 2977181 := by
    unfold C
    simp [show (7077888 * k + 5954362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2977181) = 10616832 * k + 8931544 := by
    unfold C
    simp [show (3538944 * k + 2977181) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8931544) = 5308416 * k + 4465772 := by
    unfold C
    simp [show (10616832 * k + 8931544) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4465772) = 2654208 * k + 2232886 := by
    unfold C
    simp [show (5308416 * k + 4465772) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2232886) = 1327104 * k + 1116443 := by
    unfold C
    simp [show (2654208 * k + 2232886) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1116443) = 3981312 * k + 3349330 := by
    unfold C
    simp [show (1327104 * k + 1116443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3349330) = 1990656 * k + 1674665 := by
    unfold C
    simp [show (3981312 * k + 3349330) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1674665) = 5971968 * k + 5023996 := by
    unfold C
    simp [show (1990656 * k + 1674665) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5023996) = 2985984 * k + 2511998 := by
    unfold C
    simp [show (5971968 * k + 5023996) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2511998) = 1492992 * k + 1255999 := by
    unfold C
    simp [show (2985984 * k + 2511998) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1255999) = 4478976 * k + 3767998 := by
    unfold C
    simp [show (1492992 * k + 1255999) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3767998) = 2239488 * k + 1883999 := by
    unfold C
    simp [show (4478976 * k + 3767998) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1883999) = 6718464 * k + 5651998 := by
    unfold C
    simp [show (2239488 * k + 1883999) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5651998) = 3359232 * k + 2825999 := by
    unfold C
    simp [show (6718464 * k + 5651998) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2825999) = 10077696 * k + 8477998 := by
    unfold C
    simp [show (3359232 * k + 2825999) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8477998) = 5038848 * k + 4238999 := by
    unfold C
    simp [show (10077696 * k + 8477998) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4238999) = 15116544 * k + 12716998 := by
    unfold C
    simp [show (5038848 * k + 4238999) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12716998) = 7558272 * k + 6358499 := by
    unfold C
    simp [show (15116544 * k + 12716998) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6358499) = 22674816 * k + 19075498 := by
    unfold C
    simp [show (7558272 * k + 6358499) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19075498) = 11337408 * k + 9537749 := by
    unfold C
    simp [show (22674816 * k + 19075498) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9537749) = 34012224 * k + 28613248 := by
    unfold C
    simp [show (11337408 * k + 9537749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28613248) = 17006112 * k + 14306624 := by
    unfold C
    simp [show (34012224 * k + 28613248) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14306624) = 8503056 * k + 7153312 := by
    unfold C
    simp [show (17006112 * k + 14306624) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7153312) = 4251528 * k + 3576656 := by
    unfold C
    simp [show (8503056 * k + 7153312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3576656) = 2125764 * k + 1788328 := by
    unfold C
    simp [show (4251528 * k + 3576656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1788328) = 1062882 * k + 894164 := by
    unfold C
    simp [show (2125764 * k + 1788328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 894164) = 531441 * k + 447082 := by
    unfold C
    simp [show (1062882 * k + 894164) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 882127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 882127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_882719 : ∀ k : Nat,
    iterate (1048576 * k + 882719) 32 = 531441 * k + 447382 ∧
      531441 * k + 447382 < 1048576 * k + 882719 := by
  intro k
  have h1 : C (1048576 * k + 882719) = 3145728 * k + 2648158 := by
    unfold C
    simp [show (1048576 * k + 882719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2648158) = 1572864 * k + 1324079 := by
    unfold C
    simp [show (3145728 * k + 2648158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1324079) = 4718592 * k + 3972238 := by
    unfold C
    simp [show (1572864 * k + 1324079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3972238) = 2359296 * k + 1986119 := by
    unfold C
    simp [show (4718592 * k + 3972238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1986119) = 7077888 * k + 5958358 := by
    unfold C
    simp [show (2359296 * k + 1986119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5958358) = 3538944 * k + 2979179 := by
    unfold C
    simp [show (7077888 * k + 5958358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2979179) = 10616832 * k + 8937538 := by
    unfold C
    simp [show (3538944 * k + 2979179) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8937538) = 5308416 * k + 4468769 := by
    unfold C
    simp [show (10616832 * k + 8937538) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4468769) = 15925248 * k + 13406308 := by
    unfold C
    simp [show (5308416 * k + 4468769) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13406308) = 7962624 * k + 6703154 := by
    unfold C
    simp [show (15925248 * k + 13406308) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6703154) = 3981312 * k + 3351577 := by
    unfold C
    simp [show (7962624 * k + 6703154) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3351577) = 11943936 * k + 10054732 := by
    unfold C
    simp [show (3981312 * k + 3351577) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10054732) = 5971968 * k + 5027366 := by
    unfold C
    simp [show (11943936 * k + 10054732) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5027366) = 2985984 * k + 2513683 := by
    unfold C
    simp [show (5971968 * k + 5027366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2513683) = 8957952 * k + 7541050 := by
    unfold C
    simp [show (2985984 * k + 2513683) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7541050) = 4478976 * k + 3770525 := by
    unfold C
    simp [show (8957952 * k + 7541050) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3770525) = 13436928 * k + 11311576 := by
    unfold C
    simp [show (4478976 * k + 3770525) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11311576) = 6718464 * k + 5655788 := by
    unfold C
    simp [show (13436928 * k + 11311576) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5655788) = 3359232 * k + 2827894 := by
    unfold C
    simp [show (6718464 * k + 5655788) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2827894) = 1679616 * k + 1413947 := by
    unfold C
    simp [show (3359232 * k + 2827894) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1413947) = 5038848 * k + 4241842 := by
    unfold C
    simp [show (1679616 * k + 1413947) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4241842) = 2519424 * k + 2120921 := by
    unfold C
    simp [show (5038848 * k + 4241842) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2120921) = 7558272 * k + 6362764 := by
    unfold C
    simp [show (2519424 * k + 2120921) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6362764) = 3779136 * k + 3181382 := by
    unfold C
    simp [show (7558272 * k + 6362764) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3181382) = 1889568 * k + 1590691 := by
    unfold C
    simp [show (3779136 * k + 3181382) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1590691) = 5668704 * k + 4772074 := by
    unfold C
    simp [show (1889568 * k + 1590691) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4772074) = 2834352 * k + 2386037 := by
    unfold C
    simp [show (5668704 * k + 4772074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2386037) = 8503056 * k + 7158112 := by
    unfold C
    simp [show (2834352 * k + 2386037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7158112) = 4251528 * k + 3579056 := by
    unfold C
    simp [show (8503056 * k + 7158112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3579056) = 2125764 * k + 1789528 := by
    unfold C
    simp [show (4251528 * k + 3579056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1789528) = 1062882 * k + 894764 := by
    unfold C
    simp [show (2125764 * k + 1789528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 894764) = 531441 * k + 447382 := by
    unfold C
    simp [show (1062882 * k + 894764) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 882719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 882719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_883015 : ∀ k : Nat,
    iterate (1048576 * k + 883015) 32 = 531441 * k + 447532 ∧
      531441 * k + 447532 < 1048576 * k + 883015 := by
  intro k
  have h1 : C (1048576 * k + 883015) = 3145728 * k + 2649046 := by
    unfold C
    simp [show (1048576 * k + 883015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2649046) = 1572864 * k + 1324523 := by
    unfold C
    simp [show (3145728 * k + 2649046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1324523) = 4718592 * k + 3973570 := by
    unfold C
    simp [show (1572864 * k + 1324523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3973570) = 2359296 * k + 1986785 := by
    unfold C
    simp [show (4718592 * k + 3973570) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1986785) = 7077888 * k + 5960356 := by
    unfold C
    simp [show (2359296 * k + 1986785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5960356) = 3538944 * k + 2980178 := by
    unfold C
    simp [show (7077888 * k + 5960356) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2980178) = 1769472 * k + 1490089 := by
    unfold C
    simp [show (3538944 * k + 2980178) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1490089) = 5308416 * k + 4470268 := by
    unfold C
    simp [show (1769472 * k + 1490089) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4470268) = 2654208 * k + 2235134 := by
    unfold C
    simp [show (5308416 * k + 4470268) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2235134) = 1327104 * k + 1117567 := by
    unfold C
    simp [show (2654208 * k + 2235134) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1117567) = 3981312 * k + 3352702 := by
    unfold C
    simp [show (1327104 * k + 1117567) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3352702) = 1990656 * k + 1676351 := by
    unfold C
    simp [show (3981312 * k + 3352702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1676351) = 5971968 * k + 5029054 := by
    unfold C
    simp [show (1990656 * k + 1676351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5029054) = 2985984 * k + 2514527 := by
    unfold C
    simp [show (5971968 * k + 5029054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2514527) = 8957952 * k + 7543582 := by
    unfold C
    simp [show (2985984 * k + 2514527) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7543582) = 4478976 * k + 3771791 := by
    unfold C
    simp [show (8957952 * k + 7543582) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3771791) = 13436928 * k + 11315374 := by
    unfold C
    simp [show (4478976 * k + 3771791) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11315374) = 6718464 * k + 5657687 := by
    unfold C
    simp [show (13436928 * k + 11315374) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5657687) = 20155392 * k + 16973062 := by
    unfold C
    simp [show (6718464 * k + 5657687) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16973062) = 10077696 * k + 8486531 := by
    unfold C
    simp [show (20155392 * k + 16973062) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8486531) = 30233088 * k + 25459594 := by
    unfold C
    simp [show (10077696 * k + 8486531) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25459594) = 15116544 * k + 12729797 := by
    unfold C
    simp [show (30233088 * k + 25459594) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12729797) = 45349632 * k + 38189392 := by
    unfold C
    simp [show (15116544 * k + 12729797) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 38189392) = 22674816 * k + 19094696 := by
    unfold C
    simp [show (45349632 * k + 38189392) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19094696) = 11337408 * k + 9547348 := by
    unfold C
    simp [show (22674816 * k + 19094696) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9547348) = 5668704 * k + 4773674 := by
    unfold C
    simp [show (11337408 * k + 9547348) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4773674) = 2834352 * k + 2386837 := by
    unfold C
    simp [show (5668704 * k + 4773674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2386837) = 8503056 * k + 7160512 := by
    unfold C
    simp [show (2834352 * k + 2386837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7160512) = 4251528 * k + 3580256 := by
    unfold C
    simp [show (8503056 * k + 7160512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3580256) = 2125764 * k + 1790128 := by
    unfold C
    simp [show (4251528 * k + 3580256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1790128) = 1062882 * k + 895064 := by
    unfold C
    simp [show (2125764 * k + 1790128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 895064) = 531441 * k + 447532 := by
    unfold C
    simp [show (1062882 * k + 895064) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 883015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 883015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_884763 : ∀ k : Nat,
    iterate (1048576 * k + 884763) 32 = 531441 * k + 448418 ∧
      531441 * k + 448418 < 1048576 * k + 884763 := by
  intro k
  have h1 : C (1048576 * k + 884763) = 3145728 * k + 2654290 := by
    unfold C
    simp [show (1048576 * k + 884763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2654290) = 1572864 * k + 1327145 := by
    unfold C
    simp [show (3145728 * k + 2654290) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1327145) = 4718592 * k + 3981436 := by
    unfold C
    simp [show (1572864 * k + 1327145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3981436) = 2359296 * k + 1990718 := by
    unfold C
    simp [show (4718592 * k + 3981436) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1990718) = 1179648 * k + 995359 := by
    unfold C
    simp [show (2359296 * k + 1990718) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 995359) = 3538944 * k + 2986078 := by
    unfold C
    simp [show (1179648 * k + 995359) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2986078) = 1769472 * k + 1493039 := by
    unfold C
    simp [show (3538944 * k + 2986078) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1493039) = 5308416 * k + 4479118 := by
    unfold C
    simp [show (1769472 * k + 1493039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4479118) = 2654208 * k + 2239559 := by
    unfold C
    simp [show (5308416 * k + 4479118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2239559) = 7962624 * k + 6718678 := by
    unfold C
    simp [show (2654208 * k + 2239559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6718678) = 3981312 * k + 3359339 := by
    unfold C
    simp [show (7962624 * k + 6718678) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3359339) = 11943936 * k + 10078018 := by
    unfold C
    simp [show (3981312 * k + 3359339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10078018) = 5971968 * k + 5039009 := by
    unfold C
    simp [show (11943936 * k + 10078018) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5039009) = 17915904 * k + 15117028 := by
    unfold C
    simp [show (5971968 * k + 5039009) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15117028) = 8957952 * k + 7558514 := by
    unfold C
    simp [show (17915904 * k + 15117028) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7558514) = 4478976 * k + 3779257 := by
    unfold C
    simp [show (8957952 * k + 7558514) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3779257) = 13436928 * k + 11337772 := by
    unfold C
    simp [show (4478976 * k + 3779257) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11337772) = 6718464 * k + 5668886 := by
    unfold C
    simp [show (13436928 * k + 11337772) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5668886) = 3359232 * k + 2834443 := by
    unfold C
    simp [show (6718464 * k + 5668886) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2834443) = 10077696 * k + 8503330 := by
    unfold C
    simp [show (3359232 * k + 2834443) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8503330) = 5038848 * k + 4251665 := by
    unfold C
    simp [show (10077696 * k + 8503330) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4251665) = 15116544 * k + 12754996 := by
    unfold C
    simp [show (5038848 * k + 4251665) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12754996) = 7558272 * k + 6377498 := by
    unfold C
    simp [show (15116544 * k + 12754996) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6377498) = 3779136 * k + 3188749 := by
    unfold C
    simp [show (7558272 * k + 6377498) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3188749) = 11337408 * k + 9566248 := by
    unfold C
    simp [show (3779136 * k + 3188749) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9566248) = 5668704 * k + 4783124 := by
    unfold C
    simp [show (11337408 * k + 9566248) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4783124) = 2834352 * k + 2391562 := by
    unfold C
    simp [show (5668704 * k + 4783124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2391562) = 1417176 * k + 1195781 := by
    unfold C
    simp [show (2834352 * k + 2391562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1195781) = 4251528 * k + 3587344 := by
    unfold C
    simp [show (1417176 * k + 1195781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3587344) = 2125764 * k + 1793672 := by
    unfold C
    simp [show (4251528 * k + 3587344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1793672) = 1062882 * k + 896836 := by
    unfold C
    simp [show (2125764 * k + 1793672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 896836) = 531441 * k + 448418 := by
    unfold C
    simp [show (1062882 * k + 896836) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 884763) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 884763)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_885063 : ∀ k : Nat,
    iterate (1048576 * k + 885063) 32 = 531441 * k + 448570 ∧
      531441 * k + 448570 < 1048576 * k + 885063 := by
  intro k
  have h1 : C (1048576 * k + 885063) = 3145728 * k + 2655190 := by
    unfold C
    simp [show (1048576 * k + 885063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2655190) = 1572864 * k + 1327595 := by
    unfold C
    simp [show (3145728 * k + 2655190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1327595) = 4718592 * k + 3982786 := by
    unfold C
    simp [show (1572864 * k + 1327595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3982786) = 2359296 * k + 1991393 := by
    unfold C
    simp [show (4718592 * k + 3982786) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1991393) = 7077888 * k + 5974180 := by
    unfold C
    simp [show (2359296 * k + 1991393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5974180) = 3538944 * k + 2987090 := by
    unfold C
    simp [show (7077888 * k + 5974180) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2987090) = 1769472 * k + 1493545 := by
    unfold C
    simp [show (3538944 * k + 2987090) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1493545) = 5308416 * k + 4480636 := by
    unfold C
    simp [show (1769472 * k + 1493545) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4480636) = 2654208 * k + 2240318 := by
    unfold C
    simp [show (5308416 * k + 4480636) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2240318) = 1327104 * k + 1120159 := by
    unfold C
    simp [show (2654208 * k + 2240318) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1120159) = 3981312 * k + 3360478 := by
    unfold C
    simp [show (1327104 * k + 1120159) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3360478) = 1990656 * k + 1680239 := by
    unfold C
    simp [show (3981312 * k + 3360478) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1680239) = 5971968 * k + 5040718 := by
    unfold C
    simp [show (1990656 * k + 1680239) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5040718) = 2985984 * k + 2520359 := by
    unfold C
    simp [show (5971968 * k + 5040718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2520359) = 8957952 * k + 7561078 := by
    unfold C
    simp [show (2985984 * k + 2520359) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7561078) = 4478976 * k + 3780539 := by
    unfold C
    simp [show (8957952 * k + 7561078) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3780539) = 13436928 * k + 11341618 := by
    unfold C
    simp [show (4478976 * k + 3780539) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11341618) = 6718464 * k + 5670809 := by
    unfold C
    simp [show (13436928 * k + 11341618) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5670809) = 20155392 * k + 17012428 := by
    unfold C
    simp [show (6718464 * k + 5670809) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17012428) = 10077696 * k + 8506214 := by
    unfold C
    simp [show (20155392 * k + 17012428) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8506214) = 5038848 * k + 4253107 := by
    unfold C
    simp [show (10077696 * k + 8506214) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4253107) = 15116544 * k + 12759322 := by
    unfold C
    simp [show (5038848 * k + 4253107) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12759322) = 7558272 * k + 6379661 := by
    unfold C
    simp [show (15116544 * k + 12759322) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6379661) = 22674816 * k + 19138984 := by
    unfold C
    simp [show (7558272 * k + 6379661) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19138984) = 11337408 * k + 9569492 := by
    unfold C
    simp [show (22674816 * k + 19138984) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9569492) = 5668704 * k + 4784746 := by
    unfold C
    simp [show (11337408 * k + 9569492) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4784746) = 2834352 * k + 2392373 := by
    unfold C
    simp [show (5668704 * k + 4784746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2392373) = 8503056 * k + 7177120 := by
    unfold C
    simp [show (2834352 * k + 2392373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7177120) = 4251528 * k + 3588560 := by
    unfold C
    simp [show (8503056 * k + 7177120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3588560) = 2125764 * k + 1794280 := by
    unfold C
    simp [show (4251528 * k + 3588560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1794280) = 1062882 * k + 897140 := by
    unfold C
    simp [show (2125764 * k + 1794280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 897140) = 531441 * k + 448570 := by
    unfold C
    simp [show (1062882 * k + 897140) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 885063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 885063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_885231 : ∀ k : Nat,
    iterate (1048576 * k + 885231) 32 = 531441 * k + 448655 ∧
      531441 * k + 448655 < 1048576 * k + 885231 := by
  intro k
  have h1 : C (1048576 * k + 885231) = 3145728 * k + 2655694 := by
    unfold C
    simp [show (1048576 * k + 885231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2655694) = 1572864 * k + 1327847 := by
    unfold C
    simp [show (3145728 * k + 2655694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1327847) = 4718592 * k + 3983542 := by
    unfold C
    simp [show (1572864 * k + 1327847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3983542) = 2359296 * k + 1991771 := by
    unfold C
    simp [show (4718592 * k + 3983542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1991771) = 7077888 * k + 5975314 := by
    unfold C
    simp [show (2359296 * k + 1991771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5975314) = 3538944 * k + 2987657 := by
    unfold C
    simp [show (7077888 * k + 5975314) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2987657) = 10616832 * k + 8962972 := by
    unfold C
    simp [show (3538944 * k + 2987657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8962972) = 5308416 * k + 4481486 := by
    unfold C
    simp [show (10616832 * k + 8962972) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4481486) = 2654208 * k + 2240743 := by
    unfold C
    simp [show (5308416 * k + 4481486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2240743) = 7962624 * k + 6722230 := by
    unfold C
    simp [show (2654208 * k + 2240743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6722230) = 3981312 * k + 3361115 := by
    unfold C
    simp [show (7962624 * k + 6722230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3361115) = 11943936 * k + 10083346 := by
    unfold C
    simp [show (3981312 * k + 3361115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10083346) = 5971968 * k + 5041673 := by
    unfold C
    simp [show (11943936 * k + 10083346) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5041673) = 17915904 * k + 15125020 := by
    unfold C
    simp [show (5971968 * k + 5041673) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15125020) = 8957952 * k + 7562510 := by
    unfold C
    simp [show (17915904 * k + 15125020) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7562510) = 4478976 * k + 3781255 := by
    unfold C
    simp [show (8957952 * k + 7562510) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3781255) = 13436928 * k + 11343766 := by
    unfold C
    simp [show (4478976 * k + 3781255) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11343766) = 6718464 * k + 5671883 := by
    unfold C
    simp [show (13436928 * k + 11343766) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5671883) = 20155392 * k + 17015650 := by
    unfold C
    simp [show (6718464 * k + 5671883) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17015650) = 10077696 * k + 8507825 := by
    unfold C
    simp [show (20155392 * k + 17015650) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8507825) = 30233088 * k + 25523476 := by
    unfold C
    simp [show (10077696 * k + 8507825) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25523476) = 15116544 * k + 12761738 := by
    unfold C
    simp [show (30233088 * k + 25523476) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12761738) = 7558272 * k + 6380869 := by
    unfold C
    simp [show (15116544 * k + 12761738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6380869) = 22674816 * k + 19142608 := by
    unfold C
    simp [show (7558272 * k + 6380869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19142608) = 11337408 * k + 9571304 := by
    unfold C
    simp [show (22674816 * k + 19142608) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9571304) = 5668704 * k + 4785652 := by
    unfold C
    simp [show (11337408 * k + 9571304) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4785652) = 2834352 * k + 2392826 := by
    unfold C
    simp [show (5668704 * k + 4785652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2392826) = 1417176 * k + 1196413 := by
    unfold C
    simp [show (2834352 * k + 2392826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1196413) = 4251528 * k + 3589240 := by
    unfold C
    simp [show (1417176 * k + 1196413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3589240) = 2125764 * k + 1794620 := by
    unfold C
    simp [show (4251528 * k + 3589240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1794620) = 1062882 * k + 897310 := by
    unfold C
    simp [show (2125764 * k + 1794620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 897310) = 531441 * k + 448655 := by
    unfold C
    simp [show (1062882 * k + 897310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 885231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 885231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_885595 : ∀ k : Nat,
    iterate (1048576 * k + 885595) 32 = 531441 * k + 448840 ∧
      531441 * k + 448840 < 1048576 * k + 885595 := by
  intro k
  have h1 : C (1048576 * k + 885595) = 3145728 * k + 2656786 := by
    unfold C
    simp [show (1048576 * k + 885595) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2656786) = 1572864 * k + 1328393 := by
    unfold C
    simp [show (3145728 * k + 2656786) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1328393) = 4718592 * k + 3985180 := by
    unfold C
    simp [show (1572864 * k + 1328393) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3985180) = 2359296 * k + 1992590 := by
    unfold C
    simp [show (4718592 * k + 3985180) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1992590) = 1179648 * k + 996295 := by
    unfold C
    simp [show (2359296 * k + 1992590) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 996295) = 3538944 * k + 2988886 := by
    unfold C
    simp [show (1179648 * k + 996295) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2988886) = 1769472 * k + 1494443 := by
    unfold C
    simp [show (3538944 * k + 2988886) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1494443) = 5308416 * k + 4483330 := by
    unfold C
    simp [show (1769472 * k + 1494443) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4483330) = 2654208 * k + 2241665 := by
    unfold C
    simp [show (5308416 * k + 4483330) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2241665) = 7962624 * k + 6724996 := by
    unfold C
    simp [show (2654208 * k + 2241665) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6724996) = 3981312 * k + 3362498 := by
    unfold C
    simp [show (7962624 * k + 6724996) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3362498) = 1990656 * k + 1681249 := by
    unfold C
    simp [show (3981312 * k + 3362498) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1681249) = 5971968 * k + 5043748 := by
    unfold C
    simp [show (1990656 * k + 1681249) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5043748) = 2985984 * k + 2521874 := by
    unfold C
    simp [show (5971968 * k + 5043748) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2521874) = 1492992 * k + 1260937 := by
    unfold C
    simp [show (2985984 * k + 2521874) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1260937) = 4478976 * k + 3782812 := by
    unfold C
    simp [show (1492992 * k + 1260937) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3782812) = 2239488 * k + 1891406 := by
    unfold C
    simp [show (4478976 * k + 3782812) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1891406) = 1119744 * k + 945703 := by
    unfold C
    simp [show (2239488 * k + 1891406) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 945703) = 3359232 * k + 2837110 := by
    unfold C
    simp [show (1119744 * k + 945703) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2837110) = 1679616 * k + 1418555 := by
    unfold C
    simp [show (3359232 * k + 2837110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1418555) = 5038848 * k + 4255666 := by
    unfold C
    simp [show (1679616 * k + 1418555) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4255666) = 2519424 * k + 2127833 := by
    unfold C
    simp [show (5038848 * k + 4255666) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2127833) = 7558272 * k + 6383500 := by
    unfold C
    simp [show (2519424 * k + 2127833) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6383500) = 3779136 * k + 3191750 := by
    unfold C
    simp [show (7558272 * k + 6383500) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3191750) = 1889568 * k + 1595875 := by
    unfold C
    simp [show (3779136 * k + 3191750) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1595875) = 5668704 * k + 4787626 := by
    unfold C
    simp [show (1889568 * k + 1595875) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4787626) = 2834352 * k + 2393813 := by
    unfold C
    simp [show (5668704 * k + 4787626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2393813) = 8503056 * k + 7181440 := by
    unfold C
    simp [show (2834352 * k + 2393813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7181440) = 4251528 * k + 3590720 := by
    unfold C
    simp [show (8503056 * k + 7181440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3590720) = 2125764 * k + 1795360 := by
    unfold C
    simp [show (4251528 * k + 3590720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1795360) = 1062882 * k + 897680 := by
    unfold C
    simp [show (2125764 * k + 1795360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 897680) = 531441 * k + 448840 := by
    unfold C
    simp [show (1062882 * k + 897680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 885595) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 885595)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_885915 : ∀ k : Nat,
    iterate (1048576 * k + 885915) 32 = 531441 * k + 449002 ∧
      531441 * k + 449002 < 1048576 * k + 885915 := by
  intro k
  have h1 : C (1048576 * k + 885915) = 3145728 * k + 2657746 := by
    unfold C
    simp [show (1048576 * k + 885915) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2657746) = 1572864 * k + 1328873 := by
    unfold C
    simp [show (3145728 * k + 2657746) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1328873) = 4718592 * k + 3986620 := by
    unfold C
    simp [show (1572864 * k + 1328873) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3986620) = 2359296 * k + 1993310 := by
    unfold C
    simp [show (4718592 * k + 3986620) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1993310) = 1179648 * k + 996655 := by
    unfold C
    simp [show (2359296 * k + 1993310) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 996655) = 3538944 * k + 2989966 := by
    unfold C
    simp [show (1179648 * k + 996655) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2989966) = 1769472 * k + 1494983 := by
    unfold C
    simp [show (3538944 * k + 2989966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1494983) = 5308416 * k + 4484950 := by
    unfold C
    simp [show (1769472 * k + 1494983) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4484950) = 2654208 * k + 2242475 := by
    unfold C
    simp [show (5308416 * k + 4484950) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2242475) = 7962624 * k + 6727426 := by
    unfold C
    simp [show (2654208 * k + 2242475) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6727426) = 3981312 * k + 3363713 := by
    unfold C
    simp [show (7962624 * k + 6727426) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3363713) = 11943936 * k + 10091140 := by
    unfold C
    simp [show (3981312 * k + 3363713) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10091140) = 5971968 * k + 5045570 := by
    unfold C
    simp [show (11943936 * k + 10091140) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5045570) = 2985984 * k + 2522785 := by
    unfold C
    simp [show (5971968 * k + 5045570) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2522785) = 8957952 * k + 7568356 := by
    unfold C
    simp [show (2985984 * k + 2522785) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7568356) = 4478976 * k + 3784178 := by
    unfold C
    simp [show (8957952 * k + 7568356) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3784178) = 2239488 * k + 1892089 := by
    unfold C
    simp [show (4478976 * k + 3784178) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1892089) = 6718464 * k + 5676268 := by
    unfold C
    simp [show (2239488 * k + 1892089) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5676268) = 3359232 * k + 2838134 := by
    unfold C
    simp [show (6718464 * k + 5676268) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2838134) = 1679616 * k + 1419067 := by
    unfold C
    simp [show (3359232 * k + 2838134) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1419067) = 5038848 * k + 4257202 := by
    unfold C
    simp [show (1679616 * k + 1419067) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4257202) = 2519424 * k + 2128601 := by
    unfold C
    simp [show (5038848 * k + 4257202) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2128601) = 7558272 * k + 6385804 := by
    unfold C
    simp [show (2519424 * k + 2128601) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6385804) = 3779136 * k + 3192902 := by
    unfold C
    simp [show (7558272 * k + 6385804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3192902) = 1889568 * k + 1596451 := by
    unfold C
    simp [show (3779136 * k + 3192902) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1596451) = 5668704 * k + 4789354 := by
    unfold C
    simp [show (1889568 * k + 1596451) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4789354) = 2834352 * k + 2394677 := by
    unfold C
    simp [show (5668704 * k + 4789354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2394677) = 8503056 * k + 7184032 := by
    unfold C
    simp [show (2834352 * k + 2394677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7184032) = 4251528 * k + 3592016 := by
    unfold C
    simp [show (8503056 * k + 7184032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3592016) = 2125764 * k + 1796008 := by
    unfold C
    simp [show (4251528 * k + 3592016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1796008) = 1062882 * k + 898004 := by
    unfold C
    simp [show (2125764 * k + 1796008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 898004) = 531441 * k + 449002 := by
    unfold C
    simp [show (1062882 * k + 898004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 885915) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 885915)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_886271 : ∀ k : Nat,
    iterate (1048576 * k + 886271) 32 = 531441 * k + 449182 ∧
      531441 * k + 449182 < 1048576 * k + 886271 := by
  intro k
  have h1 : C (1048576 * k + 886271) = 3145728 * k + 2658814 := by
    unfold C
    simp [show (1048576 * k + 886271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2658814) = 1572864 * k + 1329407 := by
    unfold C
    simp [show (3145728 * k + 2658814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1329407) = 4718592 * k + 3988222 := by
    unfold C
    simp [show (1572864 * k + 1329407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3988222) = 2359296 * k + 1994111 := by
    unfold C
    simp [show (4718592 * k + 3988222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1994111) = 7077888 * k + 5982334 := by
    unfold C
    simp [show (2359296 * k + 1994111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5982334) = 3538944 * k + 2991167 := by
    unfold C
    simp [show (7077888 * k + 5982334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2991167) = 10616832 * k + 8973502 := by
    unfold C
    simp [show (3538944 * k + 2991167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8973502) = 5308416 * k + 4486751 := by
    unfold C
    simp [show (10616832 * k + 8973502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4486751) = 15925248 * k + 13460254 := by
    unfold C
    simp [show (5308416 * k + 4486751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13460254) = 7962624 * k + 6730127 := by
    unfold C
    simp [show (15925248 * k + 13460254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6730127) = 23887872 * k + 20190382 := by
    unfold C
    simp [show (7962624 * k + 6730127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20190382) = 11943936 * k + 10095191 := by
    unfold C
    simp [show (23887872 * k + 20190382) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10095191) = 35831808 * k + 30285574 := by
    unfold C
    simp [show (11943936 * k + 10095191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30285574) = 17915904 * k + 15142787 := by
    unfold C
    simp [show (35831808 * k + 30285574) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15142787) = 53747712 * k + 45428362 := by
    unfold C
    simp [show (17915904 * k + 15142787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 45428362) = 26873856 * k + 22714181 := by
    unfold C
    simp [show (53747712 * k + 45428362) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 22714181) = 80621568 * k + 68142544 := by
    unfold C
    simp [show (26873856 * k + 22714181) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 68142544) = 40310784 * k + 34071272 := by
    unfold C
    simp [show (80621568 * k + 68142544) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 34071272) = 20155392 * k + 17035636 := by
    unfold C
    simp [show (40310784 * k + 34071272) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17035636) = 10077696 * k + 8517818 := by
    unfold C
    simp [show (20155392 * k + 17035636) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8517818) = 5038848 * k + 4258909 := by
    unfold C
    simp [show (10077696 * k + 8517818) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4258909) = 15116544 * k + 12776728 := by
    unfold C
    simp [show (5038848 * k + 4258909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12776728) = 7558272 * k + 6388364 := by
    unfold C
    simp [show (15116544 * k + 12776728) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6388364) = 3779136 * k + 3194182 := by
    unfold C
    simp [show (7558272 * k + 6388364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3194182) = 1889568 * k + 1597091 := by
    unfold C
    simp [show (3779136 * k + 3194182) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1597091) = 5668704 * k + 4791274 := by
    unfold C
    simp [show (1889568 * k + 1597091) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4791274) = 2834352 * k + 2395637 := by
    unfold C
    simp [show (5668704 * k + 4791274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2395637) = 8503056 * k + 7186912 := by
    unfold C
    simp [show (2834352 * k + 2395637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7186912) = 4251528 * k + 3593456 := by
    unfold C
    simp [show (8503056 * k + 7186912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3593456) = 2125764 * k + 1796728 := by
    unfold C
    simp [show (4251528 * k + 3593456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1796728) = 1062882 * k + 898364 := by
    unfold C
    simp [show (2125764 * k + 1796728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 898364) = 531441 * k + 449182 := by
    unfold C
    simp [show (1062882 * k + 898364) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 886271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 886271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_886687 : ∀ k : Nat,
    iterate (1048576 * k + 886687) 32 = 531441 * k + 449393 ∧
      531441 * k + 449393 < 1048576 * k + 886687 := by
  intro k
  have h1 : C (1048576 * k + 886687) = 3145728 * k + 2660062 := by
    unfold C
    simp [show (1048576 * k + 886687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2660062) = 1572864 * k + 1330031 := by
    unfold C
    simp [show (3145728 * k + 2660062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1330031) = 4718592 * k + 3990094 := by
    unfold C
    simp [show (1572864 * k + 1330031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3990094) = 2359296 * k + 1995047 := by
    unfold C
    simp [show (4718592 * k + 3990094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1995047) = 7077888 * k + 5985142 := by
    unfold C
    simp [show (2359296 * k + 1995047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5985142) = 3538944 * k + 2992571 := by
    unfold C
    simp [show (7077888 * k + 5985142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2992571) = 10616832 * k + 8977714 := by
    unfold C
    simp [show (3538944 * k + 2992571) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8977714) = 5308416 * k + 4488857 := by
    unfold C
    simp [show (10616832 * k + 8977714) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4488857) = 15925248 * k + 13466572 := by
    unfold C
    simp [show (5308416 * k + 4488857) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13466572) = 7962624 * k + 6733286 := by
    unfold C
    simp [show (15925248 * k + 13466572) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6733286) = 3981312 * k + 3366643 := by
    unfold C
    simp [show (7962624 * k + 6733286) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3366643) = 11943936 * k + 10099930 := by
    unfold C
    simp [show (3981312 * k + 3366643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10099930) = 5971968 * k + 5049965 := by
    unfold C
    simp [show (11943936 * k + 10099930) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5049965) = 17915904 * k + 15149896 := by
    unfold C
    simp [show (5971968 * k + 5049965) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15149896) = 8957952 * k + 7574948 := by
    unfold C
    simp [show (17915904 * k + 15149896) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7574948) = 4478976 * k + 3787474 := by
    unfold C
    simp [show (8957952 * k + 7574948) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3787474) = 2239488 * k + 1893737 := by
    unfold C
    simp [show (4478976 * k + 3787474) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1893737) = 6718464 * k + 5681212 := by
    unfold C
    simp [show (2239488 * k + 1893737) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5681212) = 3359232 * k + 2840606 := by
    unfold C
    simp [show (6718464 * k + 5681212) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2840606) = 1679616 * k + 1420303 := by
    unfold C
    simp [show (3359232 * k + 2840606) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1420303) = 5038848 * k + 4260910 := by
    unfold C
    simp [show (1679616 * k + 1420303) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4260910) = 2519424 * k + 2130455 := by
    unfold C
    simp [show (5038848 * k + 4260910) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2130455) = 7558272 * k + 6391366 := by
    unfold C
    simp [show (2519424 * k + 2130455) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6391366) = 3779136 * k + 3195683 := by
    unfold C
    simp [show (7558272 * k + 6391366) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3195683) = 11337408 * k + 9587050 := by
    unfold C
    simp [show (3779136 * k + 3195683) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9587050) = 5668704 * k + 4793525 := by
    unfold C
    simp [show (11337408 * k + 9587050) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4793525) = 17006112 * k + 14380576 := by
    unfold C
    simp [show (5668704 * k + 4793525) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14380576) = 8503056 * k + 7190288 := by
    unfold C
    simp [show (17006112 * k + 14380576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7190288) = 4251528 * k + 3595144 := by
    unfold C
    simp [show (8503056 * k + 7190288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3595144) = 2125764 * k + 1797572 := by
    unfold C
    simp [show (4251528 * k + 3595144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1797572) = 1062882 * k + 898786 := by
    unfold C
    simp [show (2125764 * k + 1797572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 898786) = 531441 * k + 449393 := by
    unfold C
    simp [show (1062882 * k + 898786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 886687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 886687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_887407 : ∀ k : Nat,
    iterate (1048576 * k + 887407) 32 = 531441 * k + 449758 ∧
      531441 * k + 449758 < 1048576 * k + 887407 := by
  intro k
  have h1 : C (1048576 * k + 887407) = 3145728 * k + 2662222 := by
    unfold C
    simp [show (1048576 * k + 887407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2662222) = 1572864 * k + 1331111 := by
    unfold C
    simp [show (3145728 * k + 2662222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1331111) = 4718592 * k + 3993334 := by
    unfold C
    simp [show (1572864 * k + 1331111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3993334) = 2359296 * k + 1996667 := by
    unfold C
    simp [show (4718592 * k + 3993334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1996667) = 7077888 * k + 5990002 := by
    unfold C
    simp [show (2359296 * k + 1996667) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5990002) = 3538944 * k + 2995001 := by
    unfold C
    simp [show (7077888 * k + 5990002) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2995001) = 10616832 * k + 8985004 := by
    unfold C
    simp [show (3538944 * k + 2995001) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8985004) = 5308416 * k + 4492502 := by
    unfold C
    simp [show (10616832 * k + 8985004) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4492502) = 2654208 * k + 2246251 := by
    unfold C
    simp [show (5308416 * k + 4492502) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2246251) = 7962624 * k + 6738754 := by
    unfold C
    simp [show (2654208 * k + 2246251) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6738754) = 3981312 * k + 3369377 := by
    unfold C
    simp [show (7962624 * k + 6738754) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3369377) = 11943936 * k + 10108132 := by
    unfold C
    simp [show (3981312 * k + 3369377) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10108132) = 5971968 * k + 5054066 := by
    unfold C
    simp [show (11943936 * k + 10108132) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5054066) = 2985984 * k + 2527033 := by
    unfold C
    simp [show (5971968 * k + 5054066) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2527033) = 8957952 * k + 7581100 := by
    unfold C
    simp [show (2985984 * k + 2527033) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7581100) = 4478976 * k + 3790550 := by
    unfold C
    simp [show (8957952 * k + 7581100) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3790550) = 2239488 * k + 1895275 := by
    unfold C
    simp [show (4478976 * k + 3790550) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1895275) = 6718464 * k + 5685826 := by
    unfold C
    simp [show (2239488 * k + 1895275) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5685826) = 3359232 * k + 2842913 := by
    unfold C
    simp [show (6718464 * k + 5685826) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2842913) = 10077696 * k + 8528740 := by
    unfold C
    simp [show (3359232 * k + 2842913) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8528740) = 5038848 * k + 4264370 := by
    unfold C
    simp [show (10077696 * k + 8528740) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4264370) = 2519424 * k + 2132185 := by
    unfold C
    simp [show (5038848 * k + 4264370) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2132185) = 7558272 * k + 6396556 := by
    unfold C
    simp [show (2519424 * k + 2132185) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6396556) = 3779136 * k + 3198278 := by
    unfold C
    simp [show (7558272 * k + 6396556) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3198278) = 1889568 * k + 1599139 := by
    unfold C
    simp [show (3779136 * k + 3198278) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1599139) = 5668704 * k + 4797418 := by
    unfold C
    simp [show (1889568 * k + 1599139) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4797418) = 2834352 * k + 2398709 := by
    unfold C
    simp [show (5668704 * k + 4797418) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2398709) = 8503056 * k + 7196128 := by
    unfold C
    simp [show (2834352 * k + 2398709) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7196128) = 4251528 * k + 3598064 := by
    unfold C
    simp [show (8503056 * k + 7196128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3598064) = 2125764 * k + 1799032 := by
    unfold C
    simp [show (4251528 * k + 3598064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1799032) = 1062882 * k + 899516 := by
    unfold C
    simp [show (2125764 * k + 1799032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 899516) = 531441 * k + 449758 := by
    unfold C
    simp [show (1062882 * k + 899516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 887407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 887407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_887579 : ∀ k : Nat,
    iterate (1048576 * k + 887579) 32 = 531441 * k + 449845 ∧
      531441 * k + 449845 < 1048576 * k + 887579 := by
  intro k
  have h1 : C (1048576 * k + 887579) = 3145728 * k + 2662738 := by
    unfold C
    simp [show (1048576 * k + 887579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2662738) = 1572864 * k + 1331369 := by
    unfold C
    simp [show (3145728 * k + 2662738) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1331369) = 4718592 * k + 3994108 := by
    unfold C
    simp [show (1572864 * k + 1331369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3994108) = 2359296 * k + 1997054 := by
    unfold C
    simp [show (4718592 * k + 3994108) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1997054) = 1179648 * k + 998527 := by
    unfold C
    simp [show (2359296 * k + 1997054) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 998527) = 3538944 * k + 2995582 := by
    unfold C
    simp [show (1179648 * k + 998527) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2995582) = 1769472 * k + 1497791 := by
    unfold C
    simp [show (3538944 * k + 2995582) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1497791) = 5308416 * k + 4493374 := by
    unfold C
    simp [show (1769472 * k + 1497791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4493374) = 2654208 * k + 2246687 := by
    unfold C
    simp [show (5308416 * k + 4493374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2246687) = 7962624 * k + 6740062 := by
    unfold C
    simp [show (2654208 * k + 2246687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6740062) = 3981312 * k + 3370031 := by
    unfold C
    simp [show (7962624 * k + 6740062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3370031) = 11943936 * k + 10110094 := by
    unfold C
    simp [show (3981312 * k + 3370031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10110094) = 5971968 * k + 5055047 := by
    unfold C
    simp [show (11943936 * k + 10110094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5055047) = 17915904 * k + 15165142 := by
    unfold C
    simp [show (5971968 * k + 5055047) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15165142) = 8957952 * k + 7582571 := by
    unfold C
    simp [show (17915904 * k + 15165142) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7582571) = 26873856 * k + 22747714 := by
    unfold C
    simp [show (8957952 * k + 7582571) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22747714) = 13436928 * k + 11373857 := by
    unfold C
    simp [show (26873856 * k + 22747714) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11373857) = 40310784 * k + 34121572 := by
    unfold C
    simp [show (13436928 * k + 11373857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34121572) = 20155392 * k + 17060786 := by
    unfold C
    simp [show (40310784 * k + 34121572) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17060786) = 10077696 * k + 8530393 := by
    unfold C
    simp [show (20155392 * k + 17060786) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8530393) = 30233088 * k + 25591180 := by
    unfold C
    simp [show (10077696 * k + 8530393) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25591180) = 15116544 * k + 12795590 := by
    unfold C
    simp [show (30233088 * k + 25591180) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12795590) = 7558272 * k + 6397795 := by
    unfold C
    simp [show (15116544 * k + 12795590) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6397795) = 22674816 * k + 19193386 := by
    unfold C
    simp [show (7558272 * k + 6397795) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19193386) = 11337408 * k + 9596693 := by
    unfold C
    simp [show (22674816 * k + 19193386) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9596693) = 34012224 * k + 28790080 := by
    unfold C
    simp [show (11337408 * k + 9596693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28790080) = 17006112 * k + 14395040 := by
    unfold C
    simp [show (34012224 * k + 28790080) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14395040) = 8503056 * k + 7197520 := by
    unfold C
    simp [show (17006112 * k + 14395040) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7197520) = 4251528 * k + 3598760 := by
    unfold C
    simp [show (8503056 * k + 7197520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3598760) = 2125764 * k + 1799380 := by
    unfold C
    simp [show (4251528 * k + 3598760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1799380) = 1062882 * k + 899690 := by
    unfold C
    simp [show (2125764 * k + 1799380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 899690) = 531441 * k + 449845 := by
    unfold C
    simp [show (1062882 * k + 899690) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 887579) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 887579)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_887663 : ∀ k : Nat,
    iterate (1048576 * k + 887663) 32 = 531441 * k + 449888 ∧
      531441 * k + 449888 < 1048576 * k + 887663 := by
  intro k
  have h1 : C (1048576 * k + 887663) = 3145728 * k + 2662990 := by
    unfold C
    simp [show (1048576 * k + 887663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2662990) = 1572864 * k + 1331495 := by
    unfold C
    simp [show (3145728 * k + 2662990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1331495) = 4718592 * k + 3994486 := by
    unfold C
    simp [show (1572864 * k + 1331495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3994486) = 2359296 * k + 1997243 := by
    unfold C
    simp [show (4718592 * k + 3994486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1997243) = 7077888 * k + 5991730 := by
    unfold C
    simp [show (2359296 * k + 1997243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5991730) = 3538944 * k + 2995865 := by
    unfold C
    simp [show (7077888 * k + 5991730) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2995865) = 10616832 * k + 8987596 := by
    unfold C
    simp [show (3538944 * k + 2995865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8987596) = 5308416 * k + 4493798 := by
    unfold C
    simp [show (10616832 * k + 8987596) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4493798) = 2654208 * k + 2246899 := by
    unfold C
    simp [show (5308416 * k + 4493798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2246899) = 7962624 * k + 6740698 := by
    unfold C
    simp [show (2654208 * k + 2246899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6740698) = 3981312 * k + 3370349 := by
    unfold C
    simp [show (7962624 * k + 6740698) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3370349) = 11943936 * k + 10111048 := by
    unfold C
    simp [show (3981312 * k + 3370349) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10111048) = 5971968 * k + 5055524 := by
    unfold C
    simp [show (11943936 * k + 10111048) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5055524) = 2985984 * k + 2527762 := by
    unfold C
    simp [show (5971968 * k + 5055524) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2527762) = 1492992 * k + 1263881 := by
    unfold C
    simp [show (2985984 * k + 2527762) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1263881) = 4478976 * k + 3791644 := by
    unfold C
    simp [show (1492992 * k + 1263881) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3791644) = 2239488 * k + 1895822 := by
    unfold C
    simp [show (4478976 * k + 3791644) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1895822) = 1119744 * k + 947911 := by
    unfold C
    simp [show (2239488 * k + 1895822) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 947911) = 3359232 * k + 2843734 := by
    unfold C
    simp [show (1119744 * k + 947911) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2843734) = 1679616 * k + 1421867 := by
    unfold C
    simp [show (3359232 * k + 2843734) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1421867) = 5038848 * k + 4265602 := by
    unfold C
    simp [show (1679616 * k + 1421867) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4265602) = 2519424 * k + 2132801 := by
    unfold C
    simp [show (5038848 * k + 4265602) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2132801) = 7558272 * k + 6398404 := by
    unfold C
    simp [show (2519424 * k + 2132801) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6398404) = 3779136 * k + 3199202 := by
    unfold C
    simp [show (7558272 * k + 6398404) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3199202) = 1889568 * k + 1599601 := by
    unfold C
    simp [show (3779136 * k + 3199202) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1599601) = 5668704 * k + 4798804 := by
    unfold C
    simp [show (1889568 * k + 1599601) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4798804) = 2834352 * k + 2399402 := by
    unfold C
    simp [show (5668704 * k + 4798804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2399402) = 1417176 * k + 1199701 := by
    unfold C
    simp [show (2834352 * k + 2399402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1199701) = 4251528 * k + 3599104 := by
    unfold C
    simp [show (1417176 * k + 1199701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3599104) = 2125764 * k + 1799552 := by
    unfold C
    simp [show (4251528 * k + 3599104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1799552) = 1062882 * k + 899776 := by
    unfold C
    simp [show (2125764 * k + 1799552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 899776) = 531441 * k + 449888 := by
    unfold C
    simp [show (1062882 * k + 899776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 887663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 887663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_887975 : ∀ k : Nat,
    iterate (1048576 * k + 887975) 32 = 531441 * k + 450046 ∧
      531441 * k + 450046 < 1048576 * k + 887975 := by
  intro k
  have h1 : C (1048576 * k + 887975) = 3145728 * k + 2663926 := by
    unfold C
    simp [show (1048576 * k + 887975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2663926) = 1572864 * k + 1331963 := by
    unfold C
    simp [show (3145728 * k + 2663926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1331963) = 4718592 * k + 3995890 := by
    unfold C
    simp [show (1572864 * k + 1331963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3995890) = 2359296 * k + 1997945 := by
    unfold C
    simp [show (4718592 * k + 3995890) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1997945) = 7077888 * k + 5993836 := by
    unfold C
    simp [show (2359296 * k + 1997945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5993836) = 3538944 * k + 2996918 := by
    unfold C
    simp [show (7077888 * k + 5993836) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2996918) = 1769472 * k + 1498459 := by
    unfold C
    simp [show (3538944 * k + 2996918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1498459) = 5308416 * k + 4495378 := by
    unfold C
    simp [show (1769472 * k + 1498459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4495378) = 2654208 * k + 2247689 := by
    unfold C
    simp [show (5308416 * k + 4495378) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2247689) = 7962624 * k + 6743068 := by
    unfold C
    simp [show (2654208 * k + 2247689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6743068) = 3981312 * k + 3371534 := by
    unfold C
    simp [show (7962624 * k + 6743068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3371534) = 1990656 * k + 1685767 := by
    unfold C
    simp [show (3981312 * k + 3371534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1685767) = 5971968 * k + 5057302 := by
    unfold C
    simp [show (1990656 * k + 1685767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5057302) = 2985984 * k + 2528651 := by
    unfold C
    simp [show (5971968 * k + 5057302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2528651) = 8957952 * k + 7585954 := by
    unfold C
    simp [show (2985984 * k + 2528651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7585954) = 4478976 * k + 3792977 := by
    unfold C
    simp [show (8957952 * k + 7585954) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3792977) = 13436928 * k + 11378932 := by
    unfold C
    simp [show (4478976 * k + 3792977) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11378932) = 6718464 * k + 5689466 := by
    unfold C
    simp [show (13436928 * k + 11378932) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5689466) = 3359232 * k + 2844733 := by
    unfold C
    simp [show (6718464 * k + 5689466) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2844733) = 10077696 * k + 8534200 := by
    unfold C
    simp [show (3359232 * k + 2844733) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8534200) = 5038848 * k + 4267100 := by
    unfold C
    simp [show (10077696 * k + 8534200) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4267100) = 2519424 * k + 2133550 := by
    unfold C
    simp [show (5038848 * k + 4267100) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2133550) = 1259712 * k + 1066775 := by
    unfold C
    simp [show (2519424 * k + 2133550) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1066775) = 3779136 * k + 3200326 := by
    unfold C
    simp [show (1259712 * k + 1066775) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3200326) = 1889568 * k + 1600163 := by
    unfold C
    simp [show (3779136 * k + 3200326) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1600163) = 5668704 * k + 4800490 := by
    unfold C
    simp [show (1889568 * k + 1600163) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4800490) = 2834352 * k + 2400245 := by
    unfold C
    simp [show (5668704 * k + 4800490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2400245) = 8503056 * k + 7200736 := by
    unfold C
    simp [show (2834352 * k + 2400245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7200736) = 4251528 * k + 3600368 := by
    unfold C
    simp [show (8503056 * k + 7200736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3600368) = 2125764 * k + 1800184 := by
    unfold C
    simp [show (4251528 * k + 3600368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1800184) = 1062882 * k + 900092 := by
    unfold C
    simp [show (2125764 * k + 1800184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 900092) = 531441 * k + 450046 := by
    unfold C
    simp [show (1062882 * k + 900092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 887975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 887975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_888303 : ∀ k : Nat,
    iterate (1048576 * k + 888303) 32 = 531441 * k + 450212 ∧
      531441 * k + 450212 < 1048576 * k + 888303 := by
  intro k
  have h1 : C (1048576 * k + 888303) = 3145728 * k + 2664910 := by
    unfold C
    simp [show (1048576 * k + 888303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2664910) = 1572864 * k + 1332455 := by
    unfold C
    simp [show (3145728 * k + 2664910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1332455) = 4718592 * k + 3997366 := by
    unfold C
    simp [show (1572864 * k + 1332455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3997366) = 2359296 * k + 1998683 := by
    unfold C
    simp [show (4718592 * k + 3997366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1998683) = 7077888 * k + 5996050 := by
    unfold C
    simp [show (2359296 * k + 1998683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5996050) = 3538944 * k + 2998025 := by
    unfold C
    simp [show (7077888 * k + 5996050) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2998025) = 10616832 * k + 8994076 := by
    unfold C
    simp [show (3538944 * k + 2998025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8994076) = 5308416 * k + 4497038 := by
    unfold C
    simp [show (10616832 * k + 8994076) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4497038) = 2654208 * k + 2248519 := by
    unfold C
    simp [show (5308416 * k + 4497038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2248519) = 7962624 * k + 6745558 := by
    unfold C
    simp [show (2654208 * k + 2248519) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6745558) = 3981312 * k + 3372779 := by
    unfold C
    simp [show (7962624 * k + 6745558) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3372779) = 11943936 * k + 10118338 := by
    unfold C
    simp [show (3981312 * k + 3372779) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10118338) = 5971968 * k + 5059169 := by
    unfold C
    simp [show (11943936 * k + 10118338) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5059169) = 17915904 * k + 15177508 := by
    unfold C
    simp [show (5971968 * k + 5059169) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15177508) = 8957952 * k + 7588754 := by
    unfold C
    simp [show (17915904 * k + 15177508) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7588754) = 4478976 * k + 3794377 := by
    unfold C
    simp [show (8957952 * k + 7588754) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3794377) = 13436928 * k + 11383132 := by
    unfold C
    simp [show (4478976 * k + 3794377) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11383132) = 6718464 * k + 5691566 := by
    unfold C
    simp [show (13436928 * k + 11383132) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5691566) = 3359232 * k + 2845783 := by
    unfold C
    simp [show (6718464 * k + 5691566) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2845783) = 10077696 * k + 8537350 := by
    unfold C
    simp [show (3359232 * k + 2845783) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8537350) = 5038848 * k + 4268675 := by
    unfold C
    simp [show (10077696 * k + 8537350) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4268675) = 15116544 * k + 12806026 := by
    unfold C
    simp [show (5038848 * k + 4268675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12806026) = 7558272 * k + 6403013 := by
    unfold C
    simp [show (15116544 * k + 12806026) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6403013) = 22674816 * k + 19209040 := by
    unfold C
    simp [show (7558272 * k + 6403013) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19209040) = 11337408 * k + 9604520 := by
    unfold C
    simp [show (22674816 * k + 19209040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9604520) = 5668704 * k + 4802260 := by
    unfold C
    simp [show (11337408 * k + 9604520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4802260) = 2834352 * k + 2401130 := by
    unfold C
    simp [show (5668704 * k + 4802260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2401130) = 1417176 * k + 1200565 := by
    unfold C
    simp [show (2834352 * k + 2401130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1200565) = 4251528 * k + 3601696 := by
    unfold C
    simp [show (1417176 * k + 1200565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3601696) = 2125764 * k + 1800848 := by
    unfold C
    simp [show (4251528 * k + 3601696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1800848) = 1062882 * k + 900424 := by
    unfold C
    simp [show (2125764 * k + 1800848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 900424) = 531441 * k + 450212 := by
    unfold C
    simp [show (1062882 * k + 900424) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 888303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 888303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_888551 : ∀ k : Nat,
    iterate (1048576 * k + 888551) 32 = 531441 * k + 450338 ∧
      531441 * k + 450338 < 1048576 * k + 888551 := by
  intro k
  have h1 : C (1048576 * k + 888551) = 3145728 * k + 2665654 := by
    unfold C
    simp [show (1048576 * k + 888551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2665654) = 1572864 * k + 1332827 := by
    unfold C
    simp [show (3145728 * k + 2665654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1332827) = 4718592 * k + 3998482 := by
    unfold C
    simp [show (1572864 * k + 1332827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3998482) = 2359296 * k + 1999241 := by
    unfold C
    simp [show (4718592 * k + 3998482) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1999241) = 7077888 * k + 5997724 := by
    unfold C
    simp [show (2359296 * k + 1999241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5997724) = 3538944 * k + 2998862 := by
    unfold C
    simp [show (7077888 * k + 5997724) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2998862) = 1769472 * k + 1499431 := by
    unfold C
    simp [show (3538944 * k + 2998862) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1499431) = 5308416 * k + 4498294 := by
    unfold C
    simp [show (1769472 * k + 1499431) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4498294) = 2654208 * k + 2249147 := by
    unfold C
    simp [show (5308416 * k + 4498294) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2249147) = 7962624 * k + 6747442 := by
    unfold C
    simp [show (2654208 * k + 2249147) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6747442) = 3981312 * k + 3373721 := by
    unfold C
    simp [show (7962624 * k + 6747442) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3373721) = 11943936 * k + 10121164 := by
    unfold C
    simp [show (3981312 * k + 3373721) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10121164) = 5971968 * k + 5060582 := by
    unfold C
    simp [show (11943936 * k + 10121164) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5060582) = 2985984 * k + 2530291 := by
    unfold C
    simp [show (5971968 * k + 5060582) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2530291) = 8957952 * k + 7590874 := by
    unfold C
    simp [show (2985984 * k + 2530291) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7590874) = 4478976 * k + 3795437 := by
    unfold C
    simp [show (8957952 * k + 7590874) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3795437) = 13436928 * k + 11386312 := by
    unfold C
    simp [show (4478976 * k + 3795437) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11386312) = 6718464 * k + 5693156 := by
    unfold C
    simp [show (13436928 * k + 11386312) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5693156) = 3359232 * k + 2846578 := by
    unfold C
    simp [show (6718464 * k + 5693156) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2846578) = 1679616 * k + 1423289 := by
    unfold C
    simp [show (3359232 * k + 2846578) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1423289) = 5038848 * k + 4269868 := by
    unfold C
    simp [show (1679616 * k + 1423289) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4269868) = 2519424 * k + 2134934 := by
    unfold C
    simp [show (5038848 * k + 4269868) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2134934) = 1259712 * k + 1067467 := by
    unfold C
    simp [show (2519424 * k + 2134934) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1067467) = 3779136 * k + 3202402 := by
    unfold C
    simp [show (1259712 * k + 1067467) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3202402) = 1889568 * k + 1601201 := by
    unfold C
    simp [show (3779136 * k + 3202402) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1601201) = 5668704 * k + 4803604 := by
    unfold C
    simp [show (1889568 * k + 1601201) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4803604) = 2834352 * k + 2401802 := by
    unfold C
    simp [show (5668704 * k + 4803604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2401802) = 1417176 * k + 1200901 := by
    unfold C
    simp [show (2834352 * k + 2401802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1200901) = 4251528 * k + 3602704 := by
    unfold C
    simp [show (1417176 * k + 1200901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3602704) = 2125764 * k + 1801352 := by
    unfold C
    simp [show (4251528 * k + 3602704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1801352) = 1062882 * k + 900676 := by
    unfold C
    simp [show (2125764 * k + 1801352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 900676) = 531441 * k + 450338 := by
    unfold C
    simp [show (1062882 * k + 900676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 888551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 888551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_889159 : ∀ k : Nat,
    iterate (1048576 * k + 889159) 32 = 531441 * k + 450646 ∧
      531441 * k + 450646 < 1048576 * k + 889159 := by
  intro k
  have h1 : C (1048576 * k + 889159) = 3145728 * k + 2667478 := by
    unfold C
    simp [show (1048576 * k + 889159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2667478) = 1572864 * k + 1333739 := by
    unfold C
    simp [show (3145728 * k + 2667478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1333739) = 4718592 * k + 4001218 := by
    unfold C
    simp [show (1572864 * k + 1333739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4001218) = 2359296 * k + 2000609 := by
    unfold C
    simp [show (4718592 * k + 4001218) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2000609) = 7077888 * k + 6001828 := by
    unfold C
    simp [show (2359296 * k + 2000609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6001828) = 3538944 * k + 3000914 := by
    unfold C
    simp [show (7077888 * k + 6001828) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3000914) = 1769472 * k + 1500457 := by
    unfold C
    simp [show (3538944 * k + 3000914) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1500457) = 5308416 * k + 4501372 := by
    unfold C
    simp [show (1769472 * k + 1500457) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4501372) = 2654208 * k + 2250686 := by
    unfold C
    simp [show (5308416 * k + 4501372) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2250686) = 1327104 * k + 1125343 := by
    unfold C
    simp [show (2654208 * k + 2250686) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1125343) = 3981312 * k + 3376030 := by
    unfold C
    simp [show (1327104 * k + 1125343) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3376030) = 1990656 * k + 1688015 := by
    unfold C
    simp [show (3981312 * k + 3376030) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1688015) = 5971968 * k + 5064046 := by
    unfold C
    simp [show (1990656 * k + 1688015) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5064046) = 2985984 * k + 2532023 := by
    unfold C
    simp [show (5971968 * k + 5064046) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2532023) = 8957952 * k + 7596070 := by
    unfold C
    simp [show (2985984 * k + 2532023) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7596070) = 4478976 * k + 3798035 := by
    unfold C
    simp [show (8957952 * k + 7596070) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3798035) = 13436928 * k + 11394106 := by
    unfold C
    simp [show (4478976 * k + 3798035) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11394106) = 6718464 * k + 5697053 := by
    unfold C
    simp [show (13436928 * k + 11394106) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5697053) = 20155392 * k + 17091160 := by
    unfold C
    simp [show (6718464 * k + 5697053) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17091160) = 10077696 * k + 8545580 := by
    unfold C
    simp [show (20155392 * k + 17091160) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8545580) = 5038848 * k + 4272790 := by
    unfold C
    simp [show (10077696 * k + 8545580) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4272790) = 2519424 * k + 2136395 := by
    unfold C
    simp [show (5038848 * k + 4272790) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2136395) = 7558272 * k + 6409186 := by
    unfold C
    simp [show (2519424 * k + 2136395) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6409186) = 3779136 * k + 3204593 := by
    unfold C
    simp [show (7558272 * k + 6409186) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3204593) = 11337408 * k + 9613780 := by
    unfold C
    simp [show (3779136 * k + 3204593) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9613780) = 5668704 * k + 4806890 := by
    unfold C
    simp [show (11337408 * k + 9613780) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4806890) = 2834352 * k + 2403445 := by
    unfold C
    simp [show (5668704 * k + 4806890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2403445) = 8503056 * k + 7210336 := by
    unfold C
    simp [show (2834352 * k + 2403445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7210336) = 4251528 * k + 3605168 := by
    unfold C
    simp [show (8503056 * k + 7210336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3605168) = 2125764 * k + 1802584 := by
    unfold C
    simp [show (4251528 * k + 3605168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1802584) = 1062882 * k + 901292 := by
    unfold C
    simp [show (2125764 * k + 1802584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 901292) = 531441 * k + 450646 := by
    unfold C
    simp [show (1062882 * k + 901292) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 889159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 889159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_889319 : ∀ k : Nat,
    iterate (1048576 * k + 889319) 32 = 531441 * k + 450727 ∧
      531441 * k + 450727 < 1048576 * k + 889319 := by
  intro k
  have h1 : C (1048576 * k + 889319) = 3145728 * k + 2667958 := by
    unfold C
    simp [show (1048576 * k + 889319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2667958) = 1572864 * k + 1333979 := by
    unfold C
    simp [show (3145728 * k + 2667958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1333979) = 4718592 * k + 4001938 := by
    unfold C
    simp [show (1572864 * k + 1333979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4001938) = 2359296 * k + 2000969 := by
    unfold C
    simp [show (4718592 * k + 4001938) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2000969) = 7077888 * k + 6002908 := by
    unfold C
    simp [show (2359296 * k + 2000969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6002908) = 3538944 * k + 3001454 := by
    unfold C
    simp [show (7077888 * k + 6002908) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3001454) = 1769472 * k + 1500727 := by
    unfold C
    simp [show (3538944 * k + 3001454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1500727) = 5308416 * k + 4502182 := by
    unfold C
    simp [show (1769472 * k + 1500727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4502182) = 2654208 * k + 2251091 := by
    unfold C
    simp [show (5308416 * k + 4502182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2251091) = 7962624 * k + 6753274 := by
    unfold C
    simp [show (2654208 * k + 2251091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6753274) = 3981312 * k + 3376637 := by
    unfold C
    simp [show (7962624 * k + 6753274) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3376637) = 11943936 * k + 10129912 := by
    unfold C
    simp [show (3981312 * k + 3376637) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10129912) = 5971968 * k + 5064956 := by
    unfold C
    simp [show (11943936 * k + 10129912) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5064956) = 2985984 * k + 2532478 := by
    unfold C
    simp [show (5971968 * k + 5064956) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2532478) = 1492992 * k + 1266239 := by
    unfold C
    simp [show (2985984 * k + 2532478) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1266239) = 4478976 * k + 3798718 := by
    unfold C
    simp [show (1492992 * k + 1266239) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3798718) = 2239488 * k + 1899359 := by
    unfold C
    simp [show (4478976 * k + 3798718) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1899359) = 6718464 * k + 5698078 := by
    unfold C
    simp [show (2239488 * k + 1899359) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5698078) = 3359232 * k + 2849039 := by
    unfold C
    simp [show (6718464 * k + 5698078) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2849039) = 10077696 * k + 8547118 := by
    unfold C
    simp [show (3359232 * k + 2849039) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8547118) = 5038848 * k + 4273559 := by
    unfold C
    simp [show (10077696 * k + 8547118) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4273559) = 15116544 * k + 12820678 := by
    unfold C
    simp [show (5038848 * k + 4273559) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12820678) = 7558272 * k + 6410339 := by
    unfold C
    simp [show (15116544 * k + 12820678) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6410339) = 22674816 * k + 19231018 := by
    unfold C
    simp [show (7558272 * k + 6410339) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19231018) = 11337408 * k + 9615509 := by
    unfold C
    simp [show (22674816 * k + 19231018) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9615509) = 34012224 * k + 28846528 := by
    unfold C
    simp [show (11337408 * k + 9615509) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28846528) = 17006112 * k + 14423264 := by
    unfold C
    simp [show (34012224 * k + 28846528) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14423264) = 8503056 * k + 7211632 := by
    unfold C
    simp [show (17006112 * k + 14423264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7211632) = 4251528 * k + 3605816 := by
    unfold C
    simp [show (8503056 * k + 7211632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3605816) = 2125764 * k + 1802908 := by
    unfold C
    simp [show (4251528 * k + 3605816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1802908) = 1062882 * k + 901454 := by
    unfold C
    simp [show (2125764 * k + 1802908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 901454) = 531441 * k + 450727 := by
    unfold C
    simp [show (1062882 * k + 901454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 889319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 889319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_890095 : ∀ k : Nat,
    iterate (1048576 * k + 890095) 32 = 531441 * k + 451120 ∧
      531441 * k + 451120 < 1048576 * k + 890095 := by
  intro k
  have h1 : C (1048576 * k + 890095) = 3145728 * k + 2670286 := by
    unfold C
    simp [show (1048576 * k + 890095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2670286) = 1572864 * k + 1335143 := by
    unfold C
    simp [show (3145728 * k + 2670286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1335143) = 4718592 * k + 4005430 := by
    unfold C
    simp [show (1572864 * k + 1335143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4005430) = 2359296 * k + 2002715 := by
    unfold C
    simp [show (4718592 * k + 4005430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2002715) = 7077888 * k + 6008146 := by
    unfold C
    simp [show (2359296 * k + 2002715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6008146) = 3538944 * k + 3004073 := by
    unfold C
    simp [show (7077888 * k + 6008146) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3004073) = 10616832 * k + 9012220 := by
    unfold C
    simp [show (3538944 * k + 3004073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9012220) = 5308416 * k + 4506110 := by
    unfold C
    simp [show (10616832 * k + 9012220) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4506110) = 2654208 * k + 2253055 := by
    unfold C
    simp [show (5308416 * k + 4506110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2253055) = 7962624 * k + 6759166 := by
    unfold C
    simp [show (2654208 * k + 2253055) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6759166) = 3981312 * k + 3379583 := by
    unfold C
    simp [show (7962624 * k + 6759166) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3379583) = 11943936 * k + 10138750 := by
    unfold C
    simp [show (3981312 * k + 3379583) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10138750) = 5971968 * k + 5069375 := by
    unfold C
    simp [show (11943936 * k + 10138750) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5069375) = 17915904 * k + 15208126 := by
    unfold C
    simp [show (5971968 * k + 5069375) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15208126) = 8957952 * k + 7604063 := by
    unfold C
    simp [show (17915904 * k + 15208126) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7604063) = 26873856 * k + 22812190 := by
    unfold C
    simp [show (8957952 * k + 7604063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22812190) = 13436928 * k + 11406095 := by
    unfold C
    simp [show (26873856 * k + 22812190) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11406095) = 40310784 * k + 34218286 := by
    unfold C
    simp [show (13436928 * k + 11406095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34218286) = 20155392 * k + 17109143 := by
    unfold C
    simp [show (40310784 * k + 34218286) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17109143) = 60466176 * k + 51327430 := by
    unfold C
    simp [show (20155392 * k + 17109143) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 51327430) = 30233088 * k + 25663715 := by
    unfold C
    simp [show (60466176 * k + 51327430) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 25663715) = 90699264 * k + 76991146 := by
    unfold C
    simp [show (30233088 * k + 25663715) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 76991146) = 45349632 * k + 38495573 := by
    unfold C
    simp [show (90699264 * k + 76991146) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 38495573) = 136048896 * k + 115486720 := by
    unfold C
    simp [show (45349632 * k + 38495573) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 115486720) = 68024448 * k + 57743360 := by
    unfold C
    simp [show (136048896 * k + 115486720) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 57743360) = 34012224 * k + 28871680 := by
    unfold C
    simp [show (68024448 * k + 57743360) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 28871680) = 17006112 * k + 14435840 := by
    unfold C
    simp [show (34012224 * k + 28871680) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14435840) = 8503056 * k + 7217920 := by
    unfold C
    simp [show (17006112 * k + 14435840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7217920) = 4251528 * k + 3608960 := by
    unfold C
    simp [show (8503056 * k + 7217920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3608960) = 2125764 * k + 1804480 := by
    unfold C
    simp [show (4251528 * k + 3608960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1804480) = 1062882 * k + 902240 := by
    unfold C
    simp [show (2125764 * k + 1804480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 902240) = 531441 * k + 451120 := by
    unfold C
    simp [show (1062882 * k + 902240) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 890095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 890095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard113
