import M16ShardA
import M16ShardB
import M16ShardC
import M16ShardD
import M16ShardE
import M16ShardF
import M16ShardG
import M16ShardH
import M16ShardI
import M16ShardJ
import M16ShardK
import M16ShardL
import M16ShardM
import M16ShardN
import M16ShardO
import M16ShardP
import M16ShardQ
import M16ShardR
import M16ShardS
import M16ShardT
import M16ShardU
import M16ShardV
import M16ShardW
import M16ShardX

set_option maxRecDepth 8192

namespace CollatzM16AllFamilies

theorem all_scanned_m16_families_descend :
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 359) 26 = 59049 * k + 325 ∧ 59049 * k + 325 < 65536 * k + 359) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 479) 26 = 59049 * k + 433 ∧ 59049 * k + 433 < 65536 * k + 479) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 559) 26 = 59049 * k + 505 ∧ 59049 * k + 505 < 65536 * k + 559) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 603) 26 = 59049 * k + 545 ∧ 59049 * k + 545 < 65536 * k + 603) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 767) 26 = 59049 * k + 692 ∧ 59049 * k + 692 < 65536 * k + 767) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 859) 26 = 59049 * k + 776 ∧ 59049 * k + 776 < 65536 * k + 859) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 1179) 26 = 59049 * k + 1064 ∧ 59049 * k + 1064 < 65536 * k + 1179) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 1183) 26 = 59049 * k + 1067 ∧ 59049 * k + 1067 < 65536 * k + 1183) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 1351) 26 = 59049 * k + 1219 ∧ 59049 * k + 1219 < 65536 * k + 1351) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 1519) 26 = 59049 * k + 1370 ∧ 59049 * k + 1370 < 65536 * k + 1519) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 1535) 26 = 59049 * k + 1384 ∧ 59049 * k + 1384 < 65536 * k + 1535) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 1627) 26 = 59049 * k + 1468 ∧ 59049 * k + 1468 < 65536 * k + 1627) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2367) 26 = 59049 * k + 2134 ∧ 59049 * k + 2134 < 65536 * k + 2367) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2407) 26 = 59049 * k + 2170 ∧ 59049 * k + 2170 < 65536 * k + 2407) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2495) 26 = 59049 * k + 2249 ∧ 59049 * k + 2249 < 65536 * k + 2495) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2671) 26 = 59049 * k + 2408 ∧ 59049 * k + 2408 < 65536 * k + 2671) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2687) 26 = 59049 * k + 2422 ∧ 59049 * k + 2422 < 65536 * k + 2687) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2791) 26 = 59049 * k + 2516 ∧ 59049 * k + 2516 < 65536 * k + 2791) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2887) 26 = 59049 * k + 2603 ∧ 59049 * k + 2603 < 65536 * k + 2887) ∧
  (∀ k : Nat, CollatzM16ShardA.iterate (65536 * k + 2927) 26 = 59049 * k + 2639 ∧ 59049 * k + 2639 < 65536 * k + 2927) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 3103) 26 = 59049 * k + 2797 ∧ 59049 * k + 2797 < 65536 * k + 3103) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 3239) 26 = 59049 * k + 2920 ∧ 59049 * k + 2920 < 65536 * k + 3239) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 3487) 26 = 59049 * k + 3143 ∧ 59049 * k + 3143 < 65536 * k + 3487) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 3535) 26 = 59049 * k + 3187 ∧ 59049 * k + 3187 < 65536 * k + 3535) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 3695) 26 = 59049 * k + 3331 ∧ 59049 * k + 3331 < 65536 * k + 3695) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 3815) 26 = 59049 * k + 3439 ∧ 59049 * k + 3439 < 65536 * k + 3815) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4319) 26 = 59049 * k + 3893 ∧ 59049 * k + 3893 < 65536 * k + 4319) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4335) 26 = 59049 * k + 3907 ∧ 59049 * k + 3907 < 65536 * k + 4335) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4379) 26 = 59049 * k + 3947 ∧ 59049 * k + 3947 < 65536 * k + 4379) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4635) 26 = 59049 * k + 4178 ∧ 59049 * k + 4178 < 65536 * k + 4635) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4775) 26 = 59049 * k + 4304 ∧ 59049 * k + 4304 < 65536 * k + 4775) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4799) 26 = 59049 * k + 4325 ∧ 59049 * k + 4325 < 65536 * k + 4799) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4815) 26 = 59049 * k + 4340 ∧ 59049 * k + 4340 < 65536 * k + 4815) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4895) 26 = 59049 * k + 4412 ∧ 59049 * k + 4412 < 65536 * k + 4895) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 4991) 26 = 59049 * k + 4498 ∧ 59049 * k + 4498 < 65536 * k + 4991) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 5087) 26 = 59049 * k + 4585 ∧ 59049 * k + 4585 < 65536 * k + 5087) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 5343) 26 = 59049 * k + 4816 ∧ 59049 * k + 4816 < 65536 * k + 5343) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 5375) 26 = 59049 * k + 4844 ∧ 59049 * k + 4844 < 65536 * k + 5375) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 5423) 26 = 59049 * k + 4888 ∧ 59049 * k + 4888 < 65536 * k + 5423) ∧
  (∀ k : Nat, CollatzM16ShardB.iterate (65536 * k + 5583) 26 = 59049 * k + 5032 ∧ 59049 * k + 5032 < 65536 * k + 5583) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 5663) 26 = 59049 * k + 5104 ∧ 59049 * k + 5104 < 65536 * k + 5663) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 5823) 26 = 59049 * k + 5248 ∧ 59049 * k + 5248 < 65536 * k + 5823) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 5863) 26 = 59049 * k + 5284 ∧ 59049 * k + 5284 < 65536 * k + 5863) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 6207) 26 = 59049 * k + 5594 ∧ 59049 * k + 5594 < 65536 * k + 6207) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 6247) 26 = 59049 * k + 5630 ∧ 59049 * k + 5630 < 65536 * k + 6247) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 6555) 26 = 59049 * k + 5908 ∧ 59049 * k + 5908 < 65536 * k + 6555) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 6639) 26 = 59049 * k + 5983 ∧ 59049 * k + 5983 < 65536 * k + 6639) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 6703) 26 = 59049 * k + 6041 ∧ 59049 * k + 6041 < 65536 * k + 6703) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 6975) 26 = 59049 * k + 6286 ∧ 59049 * k + 6286 < 65536 * k + 6975) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7015) 26 = 59049 * k + 6322 ∧ 59049 * k + 6322 < 65536 * k + 7015) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7103) 26 = 59049 * k + 6401 ∧ 59049 * k + 6401 < 65536 * k + 7103) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7231) 26 = 59049 * k + 6517 ∧ 59049 * k + 6517 < 65536 * k + 7231) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7451) 26 = 59049 * k + 6715 ∧ 59049 * k + 6715 < 65536 * k + 7451) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7471) 26 = 59049 * k + 6733 ∧ 59049 * k + 6733 < 65536 * k + 7471) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7551) 26 = 59049 * k + 6805 ∧ 59049 * k + 6805 < 65536 * k + 7551) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7711) 26 = 59049 * k + 6949 ∧ 59049 * k + 6949 < 65536 * k + 7711) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7835) 26 = 59049 * k + 7061 ∧ 59049 * k + 7061 < 65536 * k + 7835) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7871) 26 = 59049 * k + 7093 ∧ 59049 * k + 7093 < 65536 * k + 7871) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 7931) 26 = 59049 * k + 7148 ∧ 59049 * k + 7148 < 65536 * k + 7931) ∧
  (∀ k : Nat, CollatzM16ShardC.iterate (65536 * k + 8095) 26 = 59049 * k + 7295 ∧ 59049 * k + 7295 < 65536 * k + 8095) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 8263) 26 = 59049 * k + 7447 ∧ 59049 * k + 7447 < 65536 * k + 8263) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 8551) 26 = 59049 * k + 7706 ∧ 59049 * k + 7706 < 65536 * k + 8551) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 8671) 26 = 59049 * k + 7814 ∧ 59049 * k + 7814 < 65536 * k + 8671) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 8863) 26 = 59049 * k + 7987 ∧ 59049 * k + 7987 < 65536 * k + 8863) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9119) 26 = 59049 * k + 8218 ∧ 59049 * k + 8218 < 65536 * k + 9119) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9199) 26 = 59049 * k + 8290 ∧ 59049 * k + 8290 < 65536 * k + 9199) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9319) 26 = 59049 * k + 8398 ∧ 59049 * k + 8398 < 65536 * k + 9319) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9543) 26 = 59049 * k + 8600 ∧ 59049 * k + 8600 < 65536 * k + 9543) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9599) 26 = 59049 * k + 8650 ∧ 59049 * k + 8650 < 65536 * k + 9599) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9819) 26 = 59049 * k + 8849 ∧ 59049 * k + 8849 < 65536 * k + 9819) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 9935) 26 = 59049 * k + 8953 ∧ 59049 * k + 8953 < 65536 * k + 9935) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 10151) 26 = 59049 * k + 9148 ∧ 59049 * k + 9148 < 65536 * k + 10151) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 10559) 26 = 59049 * k + 9515 ∧ 59049 * k + 9515 < 65536 * k + 10559) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 10727) 26 = 59049 * k + 9667 ∧ 59049 * k + 9667 < 65536 * k + 10727) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 10907) 26 = 59049 * k + 9829 ∧ 59049 * k + 9829 < 65536 * k + 10907) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 11035) 26 = 59049 * k + 9944 ∧ 59049 * k + 9944 < 65536 * k + 11035) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 11247) 26 = 59049 * k + 10135 ∧ 59049 * k + 10135 < 65536 * k + 11247) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 11431) 26 = 59049 * k + 10301 ∧ 59049 * k + 10301 < 65536 * k + 11431) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 11727) 26 = 59049 * k + 10568 ∧ 59049 * k + 10568 < 65536 * k + 11727) ∧
  (∀ k : Nat, CollatzM16ShardD.iterate (65536 * k + 11823) 26 = 59049 * k + 10654 ∧ 59049 * k + 10654 < 65536 * k + 11823) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 11887) 26 = 59049 * k + 10712 ∧ 59049 * k + 10712 < 65536 * k + 11887) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 12007) 26 = 59049 * k + 10820 ∧ 59049 * k + 10820 < 65536 * k + 12007) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 12319) 26 = 59049 * k + 11101 ∧ 59049 * k + 11101 < 65536 * k + 12319) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 12495) 26 = 59049 * k + 11260 ∧ 59049 * k + 11260 < 65536 * k + 12495) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 12615) 26 = 59049 * k + 11368 ∧ 59049 * k + 11368 < 65536 * k + 12615) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 12775) 26 = 59049 * k + 11512 ∧ 59049 * k + 11512 < 65536 * k + 12775) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 12799) 26 = 59049 * k + 11533 ∧ 59049 * k + 11533 < 65536 * k + 12799) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13279) 26 = 59049 * k + 11966 ∧ 59049 * k + 11966 < 65536 * k + 13279) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13339) 26 = 59049 * k + 12020 ∧ 59049 * k + 12020 < 65536 * k + 13339) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13535) 26 = 59049 * k + 12197 ∧ 59049 * k + 12197 < 65536 * k + 13535) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13615) 26 = 59049 * k + 12269 ∧ 59049 * k + 12269 < 65536 * k + 13615) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13671) 26 = 59049 * k + 12319 ∧ 59049 * k + 12319 < 65536 * k + 13671) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13855) 26 = 59049 * k + 12485 ∧ 59049 * k + 12485 < 65536 * k + 13855) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13927) 26 = 59049 * k + 12550 ∧ 59049 * k + 12550 < 65536 * k + 13927) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 13951) 26 = 59049 * k + 12571 ∧ 59049 * k + 12571 < 65536 * k + 13951) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 14015) 26 = 59049 * k + 12629 ∧ 59049 * k + 12629 < 65536 * k + 14015) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 14207) 26 = 59049 * k + 12802 ∧ 59049 * k + 12802 < 65536 * k + 14207) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 14303) 26 = 59049 * k + 12889 ∧ 59049 * k + 12889 < 65536 * k + 14303) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 14363) 26 = 59049 * k + 12943 ∧ 59049 * k + 12943 < 65536 * k + 14363) ∧
  (∀ k : Nat, CollatzM16ShardE.iterate (65536 * k + 14383) 26 = 59049 * k + 12961 ∧ 59049 * k + 12961 < 65536 * k + 14383) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 14503) 26 = 59049 * k + 13069 ∧ 59049 * k + 13069 < 65536 * k + 14503) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 14543) 26 = 59049 * k + 13105 ∧ 59049 * k + 13105 < 65536 * k + 14543) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 14747) 26 = 59049 * k + 13289 ∧ 59049 * k + 13289 < 65536 * k + 14747) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15103) 26 = 59049 * k + 13609 ∧ 59049 * k + 13609 < 65536 * k + 15103) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15167) 26 = 59049 * k + 13667 ∧ 59049 * k + 13667 < 65536 * k + 15167) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15207) 26 = 59049 * k + 13703 ∧ 59049 * k + 13703 < 65536 * k + 15207) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15423) 26 = 59049 * k + 13898 ∧ 59049 * k + 13898 < 65536 * k + 15423) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15487) 26 = 59049 * k + 13955 ∧ 59049 * k + 13955 < 65536 * k + 15487) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15515) 26 = 59049 * k + 13981 ∧ 59049 * k + 13981 < 65536 * k + 15515) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15599) 26 = 59049 * k + 14056 ∧ 59049 * k + 14056 < 65536 * k + 15599) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15643) 26 = 59049 * k + 14096 ∧ 59049 * k + 14096 < 65536 * k + 15643) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15743) 26 = 59049 * k + 14186 ∧ 59049 * k + 14186 < 65536 * k + 15743) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15771) 26 = 59049 * k + 14212 ∧ 59049 * k + 14212 < 65536 * k + 15771) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 15855) 26 = 59049 * k + 14287 ∧ 59049 * k + 14287 < 65536 * k + 15855) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 16191) 26 = 59049 * k + 14590 ∧ 59049 * k + 14590 < 65536 * k + 16191) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 16411) 26 = 59049 * k + 14788 ∧ 59049 * k + 14788 < 65536 * k + 16411) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 16431) 26 = 59049 * k + 14806 ∧ 59049 * k + 14806 < 65536 * k + 16431) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 16455) 26 = 59049 * k + 14828 ∧ 59049 * k + 14828 < 65536 * k + 16455) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 16511) 26 = 59049 * k + 14878 ∧ 59049 * k + 14878 < 65536 * k + 16511) ∧
  (∀ k : Nat, CollatzM16ShardF.iterate (65536 * k + 16635) 26 = 59049 * k + 14990 ∧ 59049 * k + 14990 < 65536 * k + 16635) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 16831) 26 = 59049 * k + 15166 ∧ 59049 * k + 15166 < 65536 * k + 16831) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17055) 26 = 59049 * k + 15368 ∧ 59049 * k + 15368 < 65536 * k + 17055) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17127) 26 = 59049 * k + 15433 ∧ 59049 * k + 15433 < 65536 * k + 17127) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17135) 26 = 59049 * k + 15440 ∧ 59049 * k + 15440 < 65536 * k + 17135) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17223) 26 = 59049 * k + 15520 ∧ 59049 * k + 15520 < 65536 * k + 17223) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17311) 26 = 59049 * k + 15599 ∧ 59049 * k + 15599 < 65536 * k + 17311) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17391) 26 = 59049 * k + 15671 ∧ 59049 * k + 15671 < 65536 * k + 17391) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17479) 26 = 59049 * k + 15751 ∧ 59049 * k + 15751 < 65536 * k + 17479) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17511) 26 = 59049 * k + 15779 ∧ 59049 * k + 15779 < 65536 * k + 17511) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 17659) 26 = 59049 * k + 15913 ∧ 59049 * k + 15913 < 65536 * k + 17659) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 18159) 26 = 59049 * k + 16363 ∧ 59049 * k + 16363 < 65536 * k + 18159) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 18343) 26 = 59049 * k + 16529 ∧ 59049 * k + 16529 < 65536 * k + 18343) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 18523) 26 = 59049 * k + 16691 ∧ 59049 * k + 16691 < 65536 * k + 18523) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 18559) 26 = 59049 * k + 16723 ∧ 59049 * k + 16723 < 65536 * k + 18559) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 18919) 26 = 59049 * k + 17048 ∧ 59049 * k + 17048 < 65536 * k + 18919) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 19099) 26 = 59049 * k + 17210 ∧ 59049 * k + 17210 < 65536 * k + 19099) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 19111) 26 = 59049 * k + 17221 ∧ 59049 * k + 17221 < 65536 * k + 19111) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 19135) 26 = 59049 * k + 17242 ∧ 59049 * k + 17242 < 65536 * k + 19135) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 19151) 26 = 59049 * k + 17257 ∧ 59049 * k + 17257 < 65536 * k + 19151) ∧
  (∀ k : Nat, CollatzM16ShardG.iterate (65536 * k + 19231) 26 = 59049 * k + 17329 ∧ 59049 * k + 17329 < 65536 * k + 19231) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 19367) 26 = 59049 * k + 17452 ∧ 59049 * k + 17452 < 65536 * k + 19367) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 19547) 26 = 59049 * k + 17614 ∧ 59049 * k + 17614 < 65536 * k + 19547) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 19687) 26 = 59049 * k + 17740 ∧ 59049 * k + 17740 < 65536 * k + 19687) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 19707) 26 = 59049 * k + 17758 ∧ 59049 * k + 17758 < 65536 * k + 19707) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 20127) 26 = 59049 * k + 18136 ∧ 59049 * k + 18136 < 65536 * k + 20127) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 20207) 26 = 59049 * k + 18208 ∧ 59049 * k + 18208 < 65536 * k + 20207) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 20511) 26 = 59049 * k + 18482 ∧ 59049 * k + 18482 < 65536 * k + 20511) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 20591) 26 = 59049 * k + 18554 ∧ 59049 * k + 18554 < 65536 * k + 20591) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 20687) 26 = 59049 * k + 18641 ∧ 59049 * k + 18641 < 65536 * k + 20687) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 20807) 26 = 59049 * k + 18749 ∧ 59049 * k + 18749 < 65536 * k + 20807) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 21039) 26 = 59049 * k + 18958 ∧ 59049 * k + 18958 < 65536 * k + 21039) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 21595) 26 = 59049 * k + 19459 ∧ 59049 * k + 19459 < 65536 * k + 21595) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 21615) 26 = 59049 * k + 19477 ∧ 59049 * k + 19477 < 65536 * k + 21615) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 21695) 26 = 59049 * k + 19549 ∧ 59049 * k + 19549 < 65536 * k + 21695) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 21735) 26 = 59049 * k + 19585 ∧ 59049 * k + 19585 < 65536 * k + 21735) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 22015) 26 = 59049 * k + 19837 ∧ 59049 * k + 19837 < 65536 * k + 22015) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 22119) 26 = 59049 * k + 19931 ∧ 59049 * k + 19931 < 65536 * k + 22119) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 22399) 26 = 59049 * k + 20183 ∧ 59049 * k + 20183 < 65536 * k + 22399) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 22495) 26 = 59049 * k + 20270 ∧ 59049 * k + 20270 < 65536 * k + 22495) ∧
  (∀ k : Nat, CollatzM16ShardH.iterate (65536 * k + 22555) 26 = 59049 * k + 20324 ∧ 59049 * k + 20324 < 65536 * k + 22555) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 22575) 26 = 59049 * k + 20342 ∧ 59049 * k + 20342 < 65536 * k + 22575) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 22695) 26 = 59049 * k + 20450 ∧ 59049 * k + 20450 < 65536 * k + 22695) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 22887) 26 = 59049 * k + 20623 ∧ 59049 * k + 20623 < 65536 * k + 22887) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23143) 26 = 59049 * k + 20854 ∧ 59049 * k + 20854 < 65536 * k + 23143) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23167) 26 = 59049 * k + 20875 ∧ 59049 * k + 20875 < 65536 * k + 23167) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23583) 26 = 59049 * k + 21250 ∧ 59049 * k + 21250 < 65536 * k + 23583) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23663) 26 = 59049 * k + 21322 ∧ 59049 * k + 21322 < 65536 * k + 23663) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23707) 26 = 59049 * k + 21362 ∧ 59049 * k + 21362 < 65536 * k + 23707) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23711) 26 = 59049 * k + 21365 ∧ 59049 * k + 21365 < 65536 * k + 23711) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23743) 26 = 59049 * k + 21394 ∧ 59049 * k + 21394 < 65536 * k + 23743) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 23963) 26 = 59049 * k + 21593 ∧ 59049 * k + 21593 < 65536 * k + 23963) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 24047) 26 = 59049 * k + 21668 ∧ 59049 * k + 21668 < 65536 * k + 24047) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 24383) 26 = 59049 * k + 21971 ∧ 59049 * k + 21971 < 65536 * k + 24383) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 24571) 26 = 59049 * k + 22141 ∧ 59049 * k + 22141 < 65536 * k + 24571) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 24703) 26 = 59049 * k + 22259 ∧ 59049 * k + 22259 < 65536 * k + 24703) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 24731) 26 = 59049 * k + 22285 ∧ 59049 * k + 22285 < 65536 * k + 24731) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 24815) 26 = 59049 * k + 22360 ∧ 59049 * k + 22360 < 65536 * k + 24815) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 25371) 26 = 59049 * k + 22861 ∧ 59049 * k + 22861 < 65536 * k + 25371) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 25415) 26 = 59049 * k + 22901 ∧ 59049 * k + 22901 < 65536 * k + 25415) ∧
  (∀ k : Nat, CollatzM16ShardI.iterate (65536 * k + 25471) 26 = 59049 * k + 22951 ∧ 59049 * k + 22951 < 65536 * k + 25471) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 25599) 26 = 59049 * k + 23066 ∧ 59049 * k + 23066 < 65536 * k + 25599) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 25671) 26 = 59049 * k + 23132 ∧ 59049 * k + 23132 < 65536 * k + 25671) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 25851) 26 = 59049 * k + 23294 ∧ 59049 * k + 23294 < 65536 * k + 25851) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26015) 26 = 59049 * k + 23441 ∧ 59049 * k + 23441 < 65536 * k + 26015) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26063) 26 = 59049 * k + 23485 ∧ 59049 * k + 23485 < 65536 * k + 26063) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26343) 26 = 59049 * k + 23737 ∧ 59049 * k + 23737 < 65536 * k + 26343) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26351) 26 = 59049 * k + 23744 ∧ 59049 * k + 23744 < 65536 * k + 26351) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26367) 26 = 59049 * k + 23758 ∧ 59049 * k + 23758 < 65536 * k + 26367) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26439) 26 = 59049 * k + 23824 ∧ 59049 * k + 23824 < 65536 * k + 26439) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26459) 26 = 59049 * k + 23842 ∧ 59049 * k + 23842 < 65536 * k + 26459) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 26619) 26 = 59049 * k + 23986 ∧ 59049 * k + 23986 < 65536 * k + 26619) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27039) 26 = 59049 * k + 24364 ∧ 59049 * k + 24364 < 65536 * k + 27039) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27119) 26 = 59049 * k + 24436 ∧ 59049 * k + 24436 < 65536 * k + 27119) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27303) 26 = 59049 * k + 24602 ∧ 59049 * k + 24602 < 65536 * k + 27303) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27343) 26 = 59049 * k + 24638 ∧ 59049 * k + 24638 < 65536 * k + 27343) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27423) 26 = 59049 * k + 24710 ∧ 59049 * k + 24710 < 65536 * k + 27423) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27559) 26 = 59049 * k + 24833 ∧ 59049 * k + 24833 < 65536 * k + 27559) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27675) 26 = 59049 * k + 24937 ∧ 59049 * k + 24937 < 65536 * k + 27675) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27739) 26 = 59049 * k + 24995 ∧ 59049 * k + 24995 < 65536 * k + 27739) ∧
  (∀ k : Nat, CollatzM16ShardJ.iterate (65536 * k + 27879) 26 = 59049 * k + 25121 ∧ 59049 * k + 25121 < 65536 * k + 27879) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 27903) 26 = 59049 * k + 25142 ∧ 59049 * k + 25142 < 65536 * k + 27903) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 27951) 26 = 59049 * k + 25186 ∧ 59049 * k + 25186 < 65536 * k + 27951) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28095) 26 = 59049 * k + 25315 ∧ 59049 * k + 25315 < 65536 * k + 28095) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28191) 26 = 59049 * k + 25402 ∧ 59049 * k + 25402 < 65536 * k + 28191) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28319) 26 = 59049 * k + 25517 ∧ 59049 * k + 25517 < 65536 * k + 28319) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28327) 26 = 59049 * k + 25525 ∧ 59049 * k + 25525 < 65536 * k + 28327) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28351) 26 = 59049 * k + 25546 ∧ 59049 * k + 25546 < 65536 * k + 28351) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28447) 26 = 59049 * k + 25633 ∧ 59049 * k + 25633 < 65536 * k + 28447) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28507) 26 = 59049 * k + 25687 ∧ 59049 * k + 25687 < 65536 * k + 28507) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28527) 26 = 59049 * k + 25705 ∧ 59049 * k + 25705 < 65536 * k + 28527) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 28927) 26 = 59049 * k + 26065 ∧ 59049 * k + 26065 < 65536 * k + 28927) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 29087) 26 = 59049 * k + 26209 ∧ 59049 * k + 26209 < 65536 * k + 29087) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 29231) 26 = 59049 * k + 26339 ∧ 59049 * k + 26339 < 65536 * k + 29231) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 29631) 26 = 59049 * k + 26699 ∧ 59049 * k + 26699 < 65536 * k + 29631) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 29807) 26 = 59049 * k + 26858 ∧ 59049 * k + 26858 < 65536 * k + 29807) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 29823) 26 = 59049 * k + 26872 ∧ 59049 * k + 26872 < 65536 * k + 29823) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 29887) 26 = 59049 * k + 26930 ∧ 59049 * k + 26930 < 65536 * k + 29887) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 30079) 26 = 59049 * k + 27103 ∧ 59049 * k + 27103 < 65536 * k + 30079) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 30207) 26 = 59049 * k + 27218 ∧ 59049 * k + 27218 < 65536 * k + 30207) ∧
  (∀ k : Nat, CollatzM16ShardK.iterate (65536 * k + 30235) 26 = 59049 * k + 27244 ∧ 59049 * k + 27244 < 65536 * k + 30235) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 30415) 26 = 59049 * k + 27406 ∧ 59049 * k + 27406 < 65536 * k + 30415) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 30575) 26 = 59049 * k + 27550 ∧ 59049 * k + 27550 < 65536 * k + 30575) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 30655) 26 = 59049 * k + 27622 ∧ 59049 * k + 27622 < 65536 * k + 30655) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 30971) 26 = 59049 * k + 27907 ∧ 59049 * k + 27907 < 65536 * k + 30971) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 30975) 26 = 59049 * k + 27910 ∧ 59049 * k + 27910 < 65536 * k + 30975) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31079) 26 = 59049 * k + 28004 ∧ 59049 * k + 28004 < 65536 * k + 31079) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31199) 26 = 59049 * k + 28112 ∧ 59049 * k + 28112 < 65536 * k + 31199) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31335) 26 = 59049 * k + 28235 ∧ 59049 * k + 28235 < 65536 * k + 31335) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31359) 26 = 59049 * k + 28256 ∧ 59049 * k + 28256 < 65536 * k + 31359) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31471) 26 = 59049 * k + 28357 ∧ 59049 * k + 28357 < 65536 * k + 31471) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31727) 26 = 59049 * k + 28588 ∧ 59049 * k + 28588 < 65536 * k + 31727) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 31775) 26 = 59049 * k + 28631 ∧ 59049 * k + 28631 < 65536 * k + 31775) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32223) 26 = 59049 * k + 29035 ∧ 59049 * k + 29035 < 65536 * k + 32223) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32283) 26 = 59049 * k + 29089 ∧ 59049 * k + 29089 < 65536 * k + 32283) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32303) 26 = 59049 * k + 29107 ∧ 59049 * k + 29107 < 65536 * k + 32303) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32703) 26 = 59049 * k + 29467 ∧ 59049 * k + 29467 < 65536 * k + 32703) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32763) 26 = 59049 * k + 29522 ∧ 59049 * k + 29522 < 65536 * k + 32763) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32859) 26 = 59049 * k + 29608 ∧ 59049 * k + 29608 < 65536 * k + 32859) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 32923) 26 = 59049 * k + 29666 ∧ 59049 * k + 29666 < 65536 * k + 32923) ∧
  (∀ k : Nat, CollatzM16ShardL.iterate (65536 * k + 33007) 26 = 59049 * k + 29741 ∧ 59049 * k + 29741 < 65536 * k + 33007) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 33087) 26 = 59049 * k + 29813 ∧ 59049 * k + 29813 < 65536 * k + 33087) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 33255) 26 = 59049 * k + 29965 ∧ 59049 * k + 29965 < 65536 * k + 33255) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 33531) 26 = 59049 * k + 30214 ∧ 59049 * k + 30214 < 65536 * k + 33531) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 33663) 26 = 59049 * k + 30332 ∧ 59049 * k + 30332 < 65536 * k + 33663) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34111) 26 = 59049 * k + 30736 ∧ 59049 * k + 30736 < 65536 * k + 34111) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34151) 26 = 59049 * k + 30772 ∧ 59049 * k + 30772 < 65536 * k + 34151) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34255) 26 = 59049 * k + 30866 ∧ 59049 * k + 30866 < 65536 * k + 34255) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34271) 26 = 59049 * k + 30880 ∧ 59049 * k + 30880 < 65536 * k + 34271) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34535) 26 = 59049 * k + 31118 ∧ 59049 * k + 31118 < 65536 * k + 34535) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34631) 26 = 59049 * k + 31205 ∧ 59049 * k + 31205 < 65536 * k + 34631) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34651) 26 = 59049 * k + 31223 ∧ 59049 * k + 31223 < 65536 * k + 34651) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 34927) 26 = 59049 * k + 31471 ∧ 59049 * k + 31471 < 65536 * k + 34927) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35023) 26 = 59049 * k + 31558 ∧ 59049 * k + 31558 < 65536 * k + 35023) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35231) 26 = 59049 * k + 31745 ∧ 59049 * k + 31745 < 65536 * k + 35231) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35279) 26 = 59049 * k + 31789 ∧ 59049 * k + 31789 < 65536 * k + 35279) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35311) 26 = 59049 * k + 31817 ∧ 59049 * k + 31817 < 65536 * k + 35311) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35419) 26 = 59049 * k + 31915 ∧ 59049 * k + 31915 < 65536 * k + 35419) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35579) 26 = 59049 * k + 32059 ∧ 59049 * k + 32059 < 65536 * k + 35579) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 35583) 26 = 59049 * k + 32062 ∧ 59049 * k + 32062 < 65536 * k + 35583) ∧
  (∀ k : Nat, CollatzM16ShardM.iterate (65536 * k + 36143) 26 = 59049 * k + 32567 ∧ 59049 * k + 32567 < 65536 * k + 36143) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36159) 26 = 59049 * k + 32581 ∧ 59049 * k + 32581 < 65536 * k + 36159) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36383) 26 = 59049 * k + 32783 ∧ 59049 * k + 32783 < 65536 * k + 36383) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36519) 26 = 59049 * k + 32906 ∧ 59049 * k + 32906 < 65536 * k + 36519) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36543) 26 = 59049 * k + 32927 ∧ 59049 * k + 32927 < 65536 * k + 36543) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36635) 26 = 59049 * k + 33010 ∧ 59049 * k + 33010 < 65536 * k + 36635) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36639) 26 = 59049 * k + 33014 ∧ 59049 * k + 33014 < 65536 * k + 36639) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36719) 26 = 59049 * k + 33086 ∧ 59049 * k + 33086 < 65536 * k + 36719) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36891) 26 = 59049 * k + 33241 ∧ 59049 * k + 33241 < 65536 * k + 36891) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 36911) 26 = 59049 * k + 33259 ∧ 59049 * k + 33259 < 65536 * k + 36911) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37119) 26 = 59049 * k + 33446 ∧ 59049 * k + 33446 < 65536 * k + 37119) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37167) 26 = 59049 * k + 33490 ∧ 59049 * k + 33490 < 65536 * k + 37167) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37311) 26 = 59049 * k + 33619 ∧ 59049 * k + 33619 < 65536 * k + 37311) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37407) 26 = 59049 * k + 33706 ∧ 59049 * k + 33706 < 65536 * k + 37407) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37467) 26 = 59049 * k + 33760 ∧ 59049 * k + 33760 < 65536 * k + 37467) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37487) 26 = 59049 * k + 33778 ∧ 59049 * k + 33778 < 65536 * k + 37487) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37607) 26 = 59049 * k + 33886 ∧ 59049 * k + 33886 < 65536 * k + 37607) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 37735) 26 = 59049 * k + 34001 ∧ 59049 * k + 34001 < 65536 * k + 37735) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 38047) 26 = 59049 * k + 34282 ∧ 59049 * k + 34282 < 65536 * k + 38047) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 38171) 26 = 59049 * k + 34394 ∧ 59049 * k + 34394 < 65536 * k + 38171) ∧
  (∀ k : Nat, CollatzM16ShardN.iterate (65536 * k + 38271) 26 = 59049 * k + 34484 ∧ 59049 * k + 34484 < 65536 * k + 38271) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 38427) 26 = 59049 * k + 34625 ∧ 59049 * k + 34625 < 65536 * k + 38427) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 38607) 26 = 59049 * k + 34787 ∧ 59049 * k + 34787 < 65536 * k + 38607) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 38847) 26 = 59049 * k + 35003 ∧ 59049 * k + 35003 < 65536 * k + 38847) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39039) 26 = 59049 * k + 35176 ∧ 59049 * k + 35176 < 65536 * k + 39039) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39135) 26 = 59049 * k + 35263 ∧ 59049 * k + 35263 < 65536 * k + 39135) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39195) 26 = 59049 * k + 35317 ∧ 59049 * k + 35317 < 65536 * k + 39195) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39295) 26 = 59049 * k + 35407 ∧ 59049 * k + 35407 < 65536 * k + 39295) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39535) 26 = 59049 * k + 35623 ∧ 59049 * k + 35623 < 65536 * k + 39535) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39615) 26 = 59049 * k + 35695 ∧ 59049 * k + 35695 < 65536 * k + 39615) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 39919) 26 = 59049 * k + 35969 ∧ 59049 * k + 35969 < 65536 * k + 39919) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40039) 26 = 59049 * k + 36077 ∧ 59049 * k + 36077 < 65536 * k + 40039) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40187) 26 = 59049 * k + 36211 ∧ 59049 * k + 36211 < 65536 * k + 40187) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40351) 26 = 59049 * k + 36358 ∧ 59049 * k + 36358 < 65536 * k + 40351) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40415) 26 = 59049 * k + 36416 ∧ 59049 * k + 36416 < 65536 * k + 40415) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40495) 26 = 59049 * k + 36488 ∧ 59049 * k + 36488 < 65536 * k + 40495) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40687) 26 = 59049 * k + 36661 ∧ 59049 * k + 36661 < 65536 * k + 40687) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 40943) 26 = 59049 * k + 36892 ∧ 59049 * k + 36892 < 65536 * k + 40943) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 41023) 26 = 59049 * k + 36964 ∧ 59049 * k + 36964 < 65536 * k + 41023) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 41063) 26 = 59049 * k + 37000 ∧ 59049 * k + 37000 < 65536 * k + 41063) ∧
  (∀ k : Nat, CollatzM16ShardO.iterate (65536 * k + 41183) 26 = 59049 * k + 37108 ∧ 59049 * k + 37108 < 65536 * k + 41183) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 41243) 26 = 59049 * k + 37162 ∧ 59049 * k + 37162 < 65536 * k + 41243) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 41447) 26 = 59049 * k + 37346 ∧ 59049 * k + 37346 < 65536 * k + 41447) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 41627) 26 = 59049 * k + 37508 ∧ 59049 * k + 37508 < 65536 * k + 41627) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 41723) 26 = 59049 * k + 37595 ∧ 59049 * k + 37595 < 65536 * k + 41723) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42075) 26 = 59049 * k + 37912 ∧ 59049 * k + 37912 < 65536 * k + 42075) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42215) 26 = 59049 * k + 38038 ∧ 59049 * k + 38038 < 65536 * k + 42215) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42239) 26 = 59049 * k + 38059 ∧ 59049 * k + 38059 < 65536 * k + 42239) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42303) 26 = 59049 * k + 38117 ∧ 59049 * k + 38117 < 65536 * k + 42303) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42343) 26 = 59049 * k + 38153 ∧ 59049 * k + 38153 < 65536 * k + 42343) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42471) 26 = 59049 * k + 38269 ∧ 59049 * k + 38269 < 65536 * k + 42471) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42651) 26 = 59049 * k + 38431 ∧ 59049 * k + 38431 < 65536 * k + 42651) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 42911) 26 = 59049 * k + 38665 ∧ 59049 * k + 38665 < 65536 * k + 42911) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43071) 26 = 59049 * k + 38809 ∧ 59049 * k + 38809 < 65536 * k + 43071) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43111) 26 = 59049 * k + 38845 ∧ 59049 * k + 38845 < 65536 * k + 43111) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43215) 26 = 59049 * k + 38939 ∧ 59049 * k + 38939 < 65536 * k + 43215) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43335) 26 = 59049 * k + 39047 ∧ 59049 * k + 39047 < 65536 * k + 43335) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43471) 26 = 59049 * k + 39170 ∧ 59049 * k + 39170 < 65536 * k + 43471) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43611) 26 = 59049 * k + 39296 ∧ 59049 * k + 39296 < 65536 * k + 43611) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43775) 26 = 59049 * k + 39443 ∧ 59049 * k + 39443 < 65536 * k + 43775) ∧
  (∀ k : Nat, CollatzM16ShardP.iterate (65536 * k + 43967) 26 = 59049 * k + 39616 ∧ 59049 * k + 39616 < 65536 * k + 43967) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 44143) 26 = 59049 * k + 39775 ∧ 59049 * k + 39775 < 65536 * k + 44143) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 44223) 26 = 59049 * k + 39847 ∧ 59049 * k + 39847 < 65536 * k + 44223) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 44239) 26 = 59049 * k + 39862 ∧ 59049 * k + 39862 < 65536 * k + 44239) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 44359) 26 = 59049 * k + 39970 ∧ 59049 * k + 39970 < 65536 * k + 44359) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 44699) 26 = 59049 * k + 40276 ∧ 59049 * k + 40276 < 65536 * k + 44699) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 44959) 26 = 59049 * k + 40510 ∧ 59049 * k + 40510 < 65536 * k + 44959) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45083) 26 = 59049 * k + 40622 ∧ 59049 * k + 40622 < 65536 * k + 45083) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45103) 26 = 59049 * k + 40640 ∧ 59049 * k + 40640 < 65536 * k + 45103) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45223) 26 = 59049 * k + 40748 ∧ 59049 * k + 40748 < 65536 * k + 45223) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45359) 26 = 59049 * k + 40871 ∧ 59049 * k + 40871 < 65536 * k + 45359) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45503) 26 = 59049 * k + 41000 ∧ 59049 * k + 41000 < 65536 * k + 45503) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45535) 26 = 59049 * k + 41029 ∧ 59049 * k + 41029 < 65536 * k + 45535) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45599) 26 = 59049 * k + 41087 ∧ 59049 * k + 41087 < 65536 * k + 45599) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45679) 26 = 59049 * k + 41159 ∧ 59049 * k + 41159 < 65536 * k + 45679) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45799) 26 = 59049 * k + 41267 ∧ 59049 * k + 41267 < 65536 * k + 45799) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 45851) 26 = 59049 * k + 41314 ∧ 59049 * k + 41314 < 65536 * k + 45851) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 46127) 26 = 59049 * k + 41563 ∧ 59049 * k + 41563 < 65536 * k + 46127) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 46247) 26 = 59049 * k + 41671 ∧ 59049 * k + 41671 < 65536 * k + 46247) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 46407) 26 = 59049 * k + 41815 ∧ 59049 * k + 41815 < 65536 * k + 46407) ∧
  (∀ k : Nat, CollatzM16ShardQ.iterate (65536 * k + 47099) 26 = 59049 * k + 42439 ∧ 59049 * k + 42439 < 65536 * k + 47099) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 47231) 26 = 59049 * k + 42557 ∧ 59049 * k + 42557 < 65536 * k + 47231) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 47327) 26 = 59049 * k + 42644 ∧ 59049 * k + 42644 < 65536 * k + 47327) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 47387) 26 = 59049 * k + 42698 ∧ 59049 * k + 42698 < 65536 * k + 47387) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 47423) 26 = 59049 * k + 42730 ∧ 59049 * k + 42730 < 65536 * k + 47423) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 47487) 26 = 59049 * k + 42788 ∧ 59049 * k + 42788 < 65536 * k + 47487) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 47807) 26 = 59049 * k + 43076 ∧ 59049 * k + 43076 < 65536 * k + 47807) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 48095) 26 = 59049 * k + 43336 ∧ 59049 * k + 43336 < 65536 * k + 48095) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 48155) 26 = 59049 * k + 43390 ∧ 59049 * k + 43390 < 65536 * k + 48155) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 48295) 26 = 59049 * k + 43516 ∧ 59049 * k + 43516 < 65536 * k + 48295) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 48379) 26 = 59049 * k + 43592 ∧ 59049 * k + 43592 < 65536 * k + 48379) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 48879) 26 = 59049 * k + 44042 ∧ 59049 * k + 44042 < 65536 * k + 48879) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 48987) 26 = 59049 * k + 44140 ∧ 59049 * k + 44140 < 65536 * k + 48987) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49135) 26 = 59049 * k + 44273 ∧ 59049 * k + 44273 < 65536 * k + 49135) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49215) 26 = 59049 * k + 44345 ∧ 59049 * k + 44345 < 65536 * k + 49215) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49255) 26 = 59049 * k + 44381 ∧ 59049 * k + 44381 < 65536 * k + 49255) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49311) 26 = 59049 * k + 44431 ∧ 59049 * k + 44431 < 65536 * k + 49311) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49563) 26 = 59049 * k + 44659 ∧ 59049 * k + 44659 < 65536 * k + 49563) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49567) 26 = 59049 * k + 44662 ∧ 59049 * k + 44662 < 65536 * k + 49567) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 49983) 26 = 59049 * k + 45037 ∧ 59049 * k + 45037 < 65536 * k + 49983) ∧
  (∀ k : Nat, CollatzM16ShardR.iterate (65536 * k + 50143) 26 = 59049 * k + 45181 ∧ 59049 * k + 45181 < 65536 * k + 50143) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 50267) 26 = 59049 * k + 45293 ∧ 59049 * k + 45293 < 65536 * k + 50267) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 50303) 26 = 59049 * k + 45325 ∧ 59049 * k + 45325 < 65536 * k + 50303) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 50407) 26 = 59049 * k + 45419 ∧ 59049 * k + 45419 < 65536 * k + 50407) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 50663) 26 = 59049 * k + 45650 ∧ 59049 * k + 45650 < 65536 * k + 50663) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 50843) 26 = 59049 * k + 45812 ∧ 59049 * k + 45812 < 65536 * k + 50843) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 50847) 26 = 59049 * k + 45815 ∧ 59049 * k + 45815 < 65536 * k + 50847) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51055) 26 = 59049 * k + 46003 ∧ 59049 * k + 46003 < 65536 * k + 51055) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51103) 26 = 59049 * k + 46046 ∧ 59049 * k + 46046 < 65536 * k + 51103) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51271) 26 = 59049 * k + 46198 ∧ 59049 * k + 46198 < 65536 * k + 51271) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51431) 26 = 59049 * k + 46342 ∧ 59049 * k + 46342 < 65536 * k + 51431) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51451) 26 = 59049 * k + 46360 ∧ 59049 * k + 46360 < 65536 * k + 51451) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51455) 26 = 59049 * k + 46363 ∧ 59049 * k + 46363 < 65536 * k + 51455) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51611) 26 = 59049 * k + 46504 ∧ 59049 * k + 46504 < 65536 * k + 51611) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51871) 26 = 59049 * k + 46738 ∧ 59049 * k + 46738 < 65536 * k + 51871) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 51951) 26 = 59049 * k + 46810 ∧ 59049 * k + 46810 < 65536 * k + 51951) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 52031) 26 = 59049 * k + 46882 ∧ 59049 * k + 46882 < 65536 * k + 52031) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 52071) 26 = 59049 * k + 46918 ∧ 59049 * k + 46918 < 65536 * k + 52071) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 52335) 26 = 59049 * k + 47156 ∧ 59049 * k + 47156 < 65536 * k + 52335) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 52415) 26 = 59049 * k + 47228 ∧ 59049 * k + 47228 < 65536 * k + 52415) ∧
  (∀ k : Nat, CollatzM16ShardS.iterate (65536 * k + 52431) 26 = 59049 * k + 47243 ∧ 59049 * k + 47243 < 65536 * k + 52431) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 52507) 26 = 59049 * k + 47311 ∧ 59049 * k + 47311 < 65536 * k + 52507) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 52551) 26 = 59049 * k + 47351 ∧ 59049 * k + 47351 < 65536 * k + 52551) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 52735) 26 = 59049 * k + 47516 ∧ 59049 * k + 47516 < 65536 * k + 52735) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 52763) 26 = 59049 * k + 47542 ∧ 59049 * k + 47542 < 65536 * k + 52763) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53159) 26 = 59049 * k + 47899 ∧ 59049 * k + 47899 < 65536 * k + 53159) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53183) 26 = 59049 * k + 47920 ∧ 59049 * k + 47920 < 65536 * k + 53183) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53319) 26 = 59049 * k + 48043 ∧ 59049 * k + 48043 < 65536 * k + 53319) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53339) 26 = 59049 * k + 48061 ∧ 59049 * k + 48061 < 65536 * k + 53339) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53439) 26 = 59049 * k + 48151 ∧ 59049 * k + 48151 < 65536 * k + 53439) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53887) 26 = 59049 * k + 48554 ∧ 59049 * k + 48554 < 65536 * k + 53887) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 53919) 26 = 59049 * k + 48583 ∧ 59049 * k + 48583 < 65536 * k + 53919) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 54043) 26 = 59049 * k + 48695 ∧ 59049 * k + 48695 < 65536 * k + 54043) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 54303) 26 = 59049 * k + 48929 ∧ 59049 * k + 48929 < 65536 * k + 54303) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 54319) 26 = 59049 * k + 48944 ∧ 59049 * k + 48944 < 65536 * k + 54319) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 54375) 26 = 59049 * k + 48994 ∧ 59049 * k + 48994 < 65536 * k + 54375) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 54439) 26 = 59049 * k + 49052 ∧ 59049 * k + 49052 < 65536 * k + 54439) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 54751) 26 = 59049 * k + 49333 ∧ 59049 * k + 49333 < 65536 * k + 54751) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 55207) 26 = 59049 * k + 49744 ∧ 59049 * k + 49744 < 65536 * k + 55207) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 55291) 26 = 59049 * k + 49820 ∧ 59049 * k + 49820 < 65536 * k + 55291) ∧
  (∀ k : Nat, CollatzM16ShardT.iterate (65536 * k + 55327) 26 = 59049 * k + 49852 ∧ 59049 * k + 49852 < 65536 * k + 55327) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 55407) 26 = 59049 * k + 49924 ∧ 59049 * k + 49924 < 65536 * k + 55407) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 55535) 26 = 59049 * k + 50039 ∧ 59049 * k + 50039 < 65536 * k + 55535) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 55963) 26 = 59049 * k + 50425 ∧ 59049 * k + 50425 < 65536 * k + 55963) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56059) 26 = 59049 * k + 50512 ∧ 59049 * k + 50512 < 65536 * k + 56059) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56191) 26 = 59049 * k + 50630 ∧ 59049 * k + 50630 < 65536 * k + 56191) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56287) 26 = 59049 * k + 50717 ∧ 59049 * k + 50717 < 65536 * k + 56287) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56315) 26 = 59049 * k + 50743 ∧ 59049 * k + 50743 < 65536 * k + 56315) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56347) 26 = 59049 * k + 50771 ∧ 59049 * k + 50771 < 65536 * k + 56347) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56639) 26 = 59049 * k + 51034 ∧ 59049 * k + 51034 < 65536 * k + 56639) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 56935) 26 = 59049 * k + 51301 ∧ 59049 * k + 51301 < 65536 * k + 56935) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57179) 26 = 59049 * k + 51521 ∧ 59049 * k + 51521 < 65536 * k + 57179) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57215) 26 = 59049 * k + 51553 ∧ 59049 * k + 51553 < 65536 * k + 57215) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57375) 26 = 59049 * k + 51697 ∧ 59049 * k + 51697 < 65536 * k + 57375) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57671) 26 = 59049 * k + 51964 ∧ 59049 * k + 51964 < 65536 * k + 57671) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57755) 26 = 59049 * k + 52040 ∧ 59049 * k + 52040 < 65536 * k + 57755) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57759) 26 = 59049 * k + 52043 ∧ 59049 * k + 52043 < 65536 * k + 57759) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57839) 26 = 59049 * k + 52115 ∧ 59049 * k + 52115 < 65536 * k + 57839) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 57947) 26 = 59049 * k + 52213 ∧ 59049 * k + 52213 < 65536 * k + 57947) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 58175) 26 = 59049 * k + 52418 ∧ 59049 * k + 52418 < 65536 * k + 58175) ∧
  (∀ k : Nat, CollatzM16ShardU.iterate (65536 * k + 58203) 26 = 59049 * k + 52444 ∧ 59049 * k + 52444 < 65536 * k + 58203) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 58495) 26 = 59049 * k + 52706 ∧ 59049 * k + 52706 < 65536 * k + 58495) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 58523) 26 = 59049 * k + 52732 ∧ 59049 * k + 52732 < 65536 * k + 58523) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 58527) 26 = 59049 * k + 52735 ∧ 59049 * k + 52735 < 65536 * k + 58527) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 58863) 26 = 59049 * k + 53038 ∧ 59049 * k + 53038 < 65536 * k + 58863) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 58983) 26 = 59049 * k + 53146 ∧ 59049 * k + 53146 < 65536 * k + 58983) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59247) 26 = 59049 * k + 53384 ∧ 59049 * k + 53384 < 65536 * k + 59247) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59263) 26 = 59049 * k + 53398 ∧ 59049 * k + 53398 < 65536 * k + 59263) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59463) 26 = 59049 * k + 53579 ∧ 59049 * k + 53579 < 65536 * k + 59463) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59559) 26 = 59049 * k + 53665 ∧ 59049 * k + 53665 < 65536 * k + 59559) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59623) 26 = 59049 * k + 53723 ∧ 59049 * k + 53723 < 65536 * k + 59623) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59643) 26 = 59049 * k + 53741 ∧ 59049 * k + 53741 < 65536 * k + 59643) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 59647) 26 = 59049 * k + 53744 ∧ 59049 * k + 53744 < 65536 * k + 59647) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60015) 26 = 59049 * k + 54076 ∧ 59049 * k + 54076 < 65536 * k + 60015) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60063) 26 = 59049 * k + 54119 ∧ 59049 * k + 54119 < 65536 * k + 60063) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60143) 26 = 59049 * k + 54191 ∧ 59049 * k + 54191 < 65536 * k + 60143) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60231) 26 = 59049 * k + 54271 ∧ 59049 * k + 54271 < 65536 * k + 60231) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60271) 26 = 59049 * k + 54307 ∧ 59049 * k + 54307 < 65536 * k + 60271) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60571) 26 = 59049 * k + 54577 ∧ 59049 * k + 54577 < 65536 * k + 60571) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60831) 26 = 59049 * k + 54811 ∧ 59049 * k + 54811 < 65536 * k + 60831) ∧
  (∀ k : Nat, CollatzM16ShardV.iterate (65536 * k + 60911) 26 = 59049 * k + 54883 ∧ 59049 * k + 54883 < 65536 * k + 60911) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 60955) 26 = 59049 * k + 54923 ∧ 59049 * k + 54923 < 65536 * k + 60955) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61135) 26 = 59049 * k + 55085 ∧ 59049 * k + 55085 < 65536 * k + 61135) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61351) 26 = 59049 * k + 55280 ∧ 59049 * k + 55280 < 65536 * k + 61351) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61375) 26 = 59049 * k + 55301 ∧ 59049 * k + 55301 < 65536 * k + 61375) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61531) 26 = 59049 * k + 55442 ∧ 59049 * k + 55442 < 65536 * k + 61531) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61631) 26 = 59049 * k + 55532 ∧ 59049 * k + 55532 < 65536 * k + 61631) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61663) 26 = 59049 * k + 55561 ∧ 59049 * k + 55561 < 65536 * k + 61663) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61723) 26 = 59049 * k + 55615 ∧ 59049 * k + 55615 < 65536 * k + 61723) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 61979) 26 = 59049 * k + 55846 ∧ 59049 * k + 55846 < 65536 * k + 61979) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 62119) 26 = 59049 * k + 55972 ∧ 59049 * k + 55972 < 65536 * k + 62119) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 62159) 26 = 59049 * k + 56008 ∧ 59049 * k + 56008 < 65536 * k + 62159) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 62239) 26 = 59049 * k + 56080 ∧ 59049 * k + 56080 < 65536 * k + 62239) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 62279) 26 = 59049 * k + 56116 ∧ 59049 * k + 56116 < 65536 * k + 62279) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 62719) 26 = 59049 * k + 56512 ∧ 59049 * k + 56512 < 65536 * k + 62719) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 62943) 26 = 59049 * k + 56714 ∧ 59049 * k + 56714 < 65536 * k + 62943) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 63023) 26 = 59049 * k + 56786 ∧ 59049 * k + 56786 < 65536 * k + 63023) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 63335) 26 = 59049 * k + 57067 ∧ 59049 * k + 57067 < 65536 * k + 63335) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 63519) 26 = 59049 * k + 57233 ∧ 59049 * k + 57233 < 65536 * k + 63519) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 63551) 26 = 59049 * k + 57262 ∧ 59049 * k + 57262 < 65536 * k + 63551) ∧
  (∀ k : Nat, CollatzM16ShardW.iterate (65536 * k + 63591) 26 = 59049 * k + 57298 ∧ 59049 * k + 57298 < 65536 * k + 63591) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 63599) 26 = 59049 * k + 57305 ∧ 59049 * k + 57305 < 65536 * k + 63599) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64047) 26 = 59049 * k + 57709 ∧ 59049 * k + 57709 < 65536 * k + 64047) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64167) 26 = 59049 * k + 57817 ∧ 59049 * k + 57817 < 65536 * k + 64167) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64207) 26 = 59049 * k + 57853 ∧ 59049 * k + 57853 < 65536 * k + 64207) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64251) 26 = 59049 * k + 57893 ∧ 59049 * k + 57893 < 65536 * k + 64251) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64287) 26 = 59049 * k + 57925 ∧ 59049 * k + 57925 < 65536 * k + 64287) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64447) 26 = 59049 * k + 58069 ∧ 59049 * k + 58069 < 65536 * k + 64447) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64507) 26 = 59049 * k + 58124 ∧ 59049 * k + 58124 < 65536 * k + 64507) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64831) 26 = 59049 * k + 58415 ∧ 59049 * k + 58415 < 65536 * k + 64831) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 64871) 26 = 59049 * k + 58451 ∧ 59049 * k + 58451 < 65536 * k + 64871) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 65127) 26 = 59049 * k + 58682 ∧ 59049 * k + 58682 < 65536 * k + 65127) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 65179) 26 = 59049 * k + 58729 ∧ 59049 * k + 58729 < 65536 * k + 65179) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 65183) 26 = 59049 * k + 58732 ∧ 59049 * k + 58732 < 65536 * k + 65183) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 65275) 26 = 59049 * k + 58816 ∧ 59049 * k + 58816 < 65536 * k + 65275) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 65407) 26 = 59049 * k + 58934 ∧ 59049 * k + 58934 < 65536 * k + 65407) ∧
  (∀ k : Nat, CollatzM16ShardX.iterate (65536 * k + 65439) 26 = 59049 * k + 58963 ∧ 59049 * k + 58963 < 65536 * k + 65439) := by
  exact ⟨CollatzM16ShardA.descent_mod65536_359,
    ⟨CollatzM16ShardA.descent_mod65536_479,
    ⟨CollatzM16ShardA.descent_mod65536_559,
    ⟨CollatzM16ShardA.descent_mod65536_603,
    ⟨CollatzM16ShardA.descent_mod65536_767,
    ⟨CollatzM16ShardA.descent_mod65536_859,
    ⟨CollatzM16ShardA.descent_mod65536_1179,
    ⟨CollatzM16ShardA.descent_mod65536_1183,
    ⟨CollatzM16ShardA.descent_mod65536_1351,
    ⟨CollatzM16ShardA.descent_mod65536_1519,
    ⟨CollatzM16ShardA.descent_mod65536_1535,
    ⟨CollatzM16ShardA.descent_mod65536_1627,
    ⟨CollatzM16ShardA.descent_mod65536_2367,
    ⟨CollatzM16ShardA.descent_mod65536_2407,
    ⟨CollatzM16ShardA.descent_mod65536_2495,
    ⟨CollatzM16ShardA.descent_mod65536_2671,
    ⟨CollatzM16ShardA.descent_mod65536_2687,
    ⟨CollatzM16ShardA.descent_mod65536_2791,
    ⟨CollatzM16ShardA.descent_mod65536_2887,
    ⟨CollatzM16ShardA.descent_mod65536_2927,
    ⟨CollatzM16ShardB.descent_mod65536_3103,
    ⟨CollatzM16ShardB.descent_mod65536_3239,
    ⟨CollatzM16ShardB.descent_mod65536_3487,
    ⟨CollatzM16ShardB.descent_mod65536_3535,
    ⟨CollatzM16ShardB.descent_mod65536_3695,
    ⟨CollatzM16ShardB.descent_mod65536_3815,
    ⟨CollatzM16ShardB.descent_mod65536_4319,
    ⟨CollatzM16ShardB.descent_mod65536_4335,
    ⟨CollatzM16ShardB.descent_mod65536_4379,
    ⟨CollatzM16ShardB.descent_mod65536_4635,
    ⟨CollatzM16ShardB.descent_mod65536_4775,
    ⟨CollatzM16ShardB.descent_mod65536_4799,
    ⟨CollatzM16ShardB.descent_mod65536_4815,
    ⟨CollatzM16ShardB.descent_mod65536_4895,
    ⟨CollatzM16ShardB.descent_mod65536_4991,
    ⟨CollatzM16ShardB.descent_mod65536_5087,
    ⟨CollatzM16ShardB.descent_mod65536_5343,
    ⟨CollatzM16ShardB.descent_mod65536_5375,
    ⟨CollatzM16ShardB.descent_mod65536_5423,
    ⟨CollatzM16ShardB.descent_mod65536_5583,
    ⟨CollatzM16ShardC.descent_mod65536_5663,
    ⟨CollatzM16ShardC.descent_mod65536_5823,
    ⟨CollatzM16ShardC.descent_mod65536_5863,
    ⟨CollatzM16ShardC.descent_mod65536_6207,
    ⟨CollatzM16ShardC.descent_mod65536_6247,
    ⟨CollatzM16ShardC.descent_mod65536_6555,
    ⟨CollatzM16ShardC.descent_mod65536_6639,
    ⟨CollatzM16ShardC.descent_mod65536_6703,
    ⟨CollatzM16ShardC.descent_mod65536_6975,
    ⟨CollatzM16ShardC.descent_mod65536_7015,
    ⟨CollatzM16ShardC.descent_mod65536_7103,
    ⟨CollatzM16ShardC.descent_mod65536_7231,
    ⟨CollatzM16ShardC.descent_mod65536_7451,
    ⟨CollatzM16ShardC.descent_mod65536_7471,
    ⟨CollatzM16ShardC.descent_mod65536_7551,
    ⟨CollatzM16ShardC.descent_mod65536_7711,
    ⟨CollatzM16ShardC.descent_mod65536_7835,
    ⟨CollatzM16ShardC.descent_mod65536_7871,
    ⟨CollatzM16ShardC.descent_mod65536_7931,
    ⟨CollatzM16ShardC.descent_mod65536_8095,
    ⟨CollatzM16ShardD.descent_mod65536_8263,
    ⟨CollatzM16ShardD.descent_mod65536_8551,
    ⟨CollatzM16ShardD.descent_mod65536_8671,
    ⟨CollatzM16ShardD.descent_mod65536_8863,
    ⟨CollatzM16ShardD.descent_mod65536_9119,
    ⟨CollatzM16ShardD.descent_mod65536_9199,
    ⟨CollatzM16ShardD.descent_mod65536_9319,
    ⟨CollatzM16ShardD.descent_mod65536_9543,
    ⟨CollatzM16ShardD.descent_mod65536_9599,
    ⟨CollatzM16ShardD.descent_mod65536_9819,
    ⟨CollatzM16ShardD.descent_mod65536_9935,
    ⟨CollatzM16ShardD.descent_mod65536_10151,
    ⟨CollatzM16ShardD.descent_mod65536_10559,
    ⟨CollatzM16ShardD.descent_mod65536_10727,
    ⟨CollatzM16ShardD.descent_mod65536_10907,
    ⟨CollatzM16ShardD.descent_mod65536_11035,
    ⟨CollatzM16ShardD.descent_mod65536_11247,
    ⟨CollatzM16ShardD.descent_mod65536_11431,
    ⟨CollatzM16ShardD.descent_mod65536_11727,
    ⟨CollatzM16ShardD.descent_mod65536_11823,
    ⟨CollatzM16ShardE.descent_mod65536_11887,
    ⟨CollatzM16ShardE.descent_mod65536_12007,
    ⟨CollatzM16ShardE.descent_mod65536_12319,
    ⟨CollatzM16ShardE.descent_mod65536_12495,
    ⟨CollatzM16ShardE.descent_mod65536_12615,
    ⟨CollatzM16ShardE.descent_mod65536_12775,
    ⟨CollatzM16ShardE.descent_mod65536_12799,
    ⟨CollatzM16ShardE.descent_mod65536_13279,
    ⟨CollatzM16ShardE.descent_mod65536_13339,
    ⟨CollatzM16ShardE.descent_mod65536_13535,
    ⟨CollatzM16ShardE.descent_mod65536_13615,
    ⟨CollatzM16ShardE.descent_mod65536_13671,
    ⟨CollatzM16ShardE.descent_mod65536_13855,
    ⟨CollatzM16ShardE.descent_mod65536_13927,
    ⟨CollatzM16ShardE.descent_mod65536_13951,
    ⟨CollatzM16ShardE.descent_mod65536_14015,
    ⟨CollatzM16ShardE.descent_mod65536_14207,
    ⟨CollatzM16ShardE.descent_mod65536_14303,
    ⟨CollatzM16ShardE.descent_mod65536_14363,
    ⟨CollatzM16ShardE.descent_mod65536_14383,
    ⟨CollatzM16ShardF.descent_mod65536_14503,
    ⟨CollatzM16ShardF.descent_mod65536_14543,
    ⟨CollatzM16ShardF.descent_mod65536_14747,
    ⟨CollatzM16ShardF.descent_mod65536_15103,
    ⟨CollatzM16ShardF.descent_mod65536_15167,
    ⟨CollatzM16ShardF.descent_mod65536_15207,
    ⟨CollatzM16ShardF.descent_mod65536_15423,
    ⟨CollatzM16ShardF.descent_mod65536_15487,
    ⟨CollatzM16ShardF.descent_mod65536_15515,
    ⟨CollatzM16ShardF.descent_mod65536_15599,
    ⟨CollatzM16ShardF.descent_mod65536_15643,
    ⟨CollatzM16ShardF.descent_mod65536_15743,
    ⟨CollatzM16ShardF.descent_mod65536_15771,
    ⟨CollatzM16ShardF.descent_mod65536_15855,
    ⟨CollatzM16ShardF.descent_mod65536_16191,
    ⟨CollatzM16ShardF.descent_mod65536_16411,
    ⟨CollatzM16ShardF.descent_mod65536_16431,
    ⟨CollatzM16ShardF.descent_mod65536_16455,
    ⟨CollatzM16ShardF.descent_mod65536_16511,
    ⟨CollatzM16ShardF.descent_mod65536_16635,
    ⟨CollatzM16ShardG.descent_mod65536_16831,
    ⟨CollatzM16ShardG.descent_mod65536_17055,
    ⟨CollatzM16ShardG.descent_mod65536_17127,
    ⟨CollatzM16ShardG.descent_mod65536_17135,
    ⟨CollatzM16ShardG.descent_mod65536_17223,
    ⟨CollatzM16ShardG.descent_mod65536_17311,
    ⟨CollatzM16ShardG.descent_mod65536_17391,
    ⟨CollatzM16ShardG.descent_mod65536_17479,
    ⟨CollatzM16ShardG.descent_mod65536_17511,
    ⟨CollatzM16ShardG.descent_mod65536_17659,
    ⟨CollatzM16ShardG.descent_mod65536_18159,
    ⟨CollatzM16ShardG.descent_mod65536_18343,
    ⟨CollatzM16ShardG.descent_mod65536_18523,
    ⟨CollatzM16ShardG.descent_mod65536_18559,
    ⟨CollatzM16ShardG.descent_mod65536_18919,
    ⟨CollatzM16ShardG.descent_mod65536_19099,
    ⟨CollatzM16ShardG.descent_mod65536_19111,
    ⟨CollatzM16ShardG.descent_mod65536_19135,
    ⟨CollatzM16ShardG.descent_mod65536_19151,
    ⟨CollatzM16ShardG.descent_mod65536_19231,
    ⟨CollatzM16ShardH.descent_mod65536_19367,
    ⟨CollatzM16ShardH.descent_mod65536_19547,
    ⟨CollatzM16ShardH.descent_mod65536_19687,
    ⟨CollatzM16ShardH.descent_mod65536_19707,
    ⟨CollatzM16ShardH.descent_mod65536_20127,
    ⟨CollatzM16ShardH.descent_mod65536_20207,
    ⟨CollatzM16ShardH.descent_mod65536_20511,
    ⟨CollatzM16ShardH.descent_mod65536_20591,
    ⟨CollatzM16ShardH.descent_mod65536_20687,
    ⟨CollatzM16ShardH.descent_mod65536_20807,
    ⟨CollatzM16ShardH.descent_mod65536_21039,
    ⟨CollatzM16ShardH.descent_mod65536_21595,
    ⟨CollatzM16ShardH.descent_mod65536_21615,
    ⟨CollatzM16ShardH.descent_mod65536_21695,
    ⟨CollatzM16ShardH.descent_mod65536_21735,
    ⟨CollatzM16ShardH.descent_mod65536_22015,
    ⟨CollatzM16ShardH.descent_mod65536_22119,
    ⟨CollatzM16ShardH.descent_mod65536_22399,
    ⟨CollatzM16ShardH.descent_mod65536_22495,
    ⟨CollatzM16ShardH.descent_mod65536_22555,
    ⟨CollatzM16ShardI.descent_mod65536_22575,
    ⟨CollatzM16ShardI.descent_mod65536_22695,
    ⟨CollatzM16ShardI.descent_mod65536_22887,
    ⟨CollatzM16ShardI.descent_mod65536_23143,
    ⟨CollatzM16ShardI.descent_mod65536_23167,
    ⟨CollatzM16ShardI.descent_mod65536_23583,
    ⟨CollatzM16ShardI.descent_mod65536_23663,
    ⟨CollatzM16ShardI.descent_mod65536_23707,
    ⟨CollatzM16ShardI.descent_mod65536_23711,
    ⟨CollatzM16ShardI.descent_mod65536_23743,
    ⟨CollatzM16ShardI.descent_mod65536_23963,
    ⟨CollatzM16ShardI.descent_mod65536_24047,
    ⟨CollatzM16ShardI.descent_mod65536_24383,
    ⟨CollatzM16ShardI.descent_mod65536_24571,
    ⟨CollatzM16ShardI.descent_mod65536_24703,
    ⟨CollatzM16ShardI.descent_mod65536_24731,
    ⟨CollatzM16ShardI.descent_mod65536_24815,
    ⟨CollatzM16ShardI.descent_mod65536_25371,
    ⟨CollatzM16ShardI.descent_mod65536_25415,
    ⟨CollatzM16ShardI.descent_mod65536_25471,
    ⟨CollatzM16ShardJ.descent_mod65536_25599,
    ⟨CollatzM16ShardJ.descent_mod65536_25671,
    ⟨CollatzM16ShardJ.descent_mod65536_25851,
    ⟨CollatzM16ShardJ.descent_mod65536_26015,
    ⟨CollatzM16ShardJ.descent_mod65536_26063,
    ⟨CollatzM16ShardJ.descent_mod65536_26343,
    ⟨CollatzM16ShardJ.descent_mod65536_26351,
    ⟨CollatzM16ShardJ.descent_mod65536_26367,
    ⟨CollatzM16ShardJ.descent_mod65536_26439,
    ⟨CollatzM16ShardJ.descent_mod65536_26459,
    ⟨CollatzM16ShardJ.descent_mod65536_26619,
    ⟨CollatzM16ShardJ.descent_mod65536_27039,
    ⟨CollatzM16ShardJ.descent_mod65536_27119,
    ⟨CollatzM16ShardJ.descent_mod65536_27303,
    ⟨CollatzM16ShardJ.descent_mod65536_27343,
    ⟨CollatzM16ShardJ.descent_mod65536_27423,
    ⟨CollatzM16ShardJ.descent_mod65536_27559,
    ⟨CollatzM16ShardJ.descent_mod65536_27675,
    ⟨CollatzM16ShardJ.descent_mod65536_27739,
    ⟨CollatzM16ShardJ.descent_mod65536_27879,
    ⟨CollatzM16ShardK.descent_mod65536_27903,
    ⟨CollatzM16ShardK.descent_mod65536_27951,
    ⟨CollatzM16ShardK.descent_mod65536_28095,
    ⟨CollatzM16ShardK.descent_mod65536_28191,
    ⟨CollatzM16ShardK.descent_mod65536_28319,
    ⟨CollatzM16ShardK.descent_mod65536_28327,
    ⟨CollatzM16ShardK.descent_mod65536_28351,
    ⟨CollatzM16ShardK.descent_mod65536_28447,
    ⟨CollatzM16ShardK.descent_mod65536_28507,
    ⟨CollatzM16ShardK.descent_mod65536_28527,
    ⟨CollatzM16ShardK.descent_mod65536_28927,
    ⟨CollatzM16ShardK.descent_mod65536_29087,
    ⟨CollatzM16ShardK.descent_mod65536_29231,
    ⟨CollatzM16ShardK.descent_mod65536_29631,
    ⟨CollatzM16ShardK.descent_mod65536_29807,
    ⟨CollatzM16ShardK.descent_mod65536_29823,
    ⟨CollatzM16ShardK.descent_mod65536_29887,
    ⟨CollatzM16ShardK.descent_mod65536_30079,
    ⟨CollatzM16ShardK.descent_mod65536_30207,
    ⟨CollatzM16ShardK.descent_mod65536_30235,
    ⟨CollatzM16ShardL.descent_mod65536_30415,
    ⟨CollatzM16ShardL.descent_mod65536_30575,
    ⟨CollatzM16ShardL.descent_mod65536_30655,
    ⟨CollatzM16ShardL.descent_mod65536_30971,
    ⟨CollatzM16ShardL.descent_mod65536_30975,
    ⟨CollatzM16ShardL.descent_mod65536_31079,
    ⟨CollatzM16ShardL.descent_mod65536_31199,
    ⟨CollatzM16ShardL.descent_mod65536_31335,
    ⟨CollatzM16ShardL.descent_mod65536_31359,
    ⟨CollatzM16ShardL.descent_mod65536_31471,
    ⟨CollatzM16ShardL.descent_mod65536_31727,
    ⟨CollatzM16ShardL.descent_mod65536_31775,
    ⟨CollatzM16ShardL.descent_mod65536_32223,
    ⟨CollatzM16ShardL.descent_mod65536_32283,
    ⟨CollatzM16ShardL.descent_mod65536_32303,
    ⟨CollatzM16ShardL.descent_mod65536_32703,
    ⟨CollatzM16ShardL.descent_mod65536_32763,
    ⟨CollatzM16ShardL.descent_mod65536_32859,
    ⟨CollatzM16ShardL.descent_mod65536_32923,
    ⟨CollatzM16ShardL.descent_mod65536_33007,
    ⟨CollatzM16ShardM.descent_mod65536_33087,
    ⟨CollatzM16ShardM.descent_mod65536_33255,
    ⟨CollatzM16ShardM.descent_mod65536_33531,
    ⟨CollatzM16ShardM.descent_mod65536_33663,
    ⟨CollatzM16ShardM.descent_mod65536_34111,
    ⟨CollatzM16ShardM.descent_mod65536_34151,
    ⟨CollatzM16ShardM.descent_mod65536_34255,
    ⟨CollatzM16ShardM.descent_mod65536_34271,
    ⟨CollatzM16ShardM.descent_mod65536_34535,
    ⟨CollatzM16ShardM.descent_mod65536_34631,
    ⟨CollatzM16ShardM.descent_mod65536_34651,
    ⟨CollatzM16ShardM.descent_mod65536_34927,
    ⟨CollatzM16ShardM.descent_mod65536_35023,
    ⟨CollatzM16ShardM.descent_mod65536_35231,
    ⟨CollatzM16ShardM.descent_mod65536_35279,
    ⟨CollatzM16ShardM.descent_mod65536_35311,
    ⟨CollatzM16ShardM.descent_mod65536_35419,
    ⟨CollatzM16ShardM.descent_mod65536_35579,
    ⟨CollatzM16ShardM.descent_mod65536_35583,
    ⟨CollatzM16ShardM.descent_mod65536_36143,
    ⟨CollatzM16ShardN.descent_mod65536_36159,
    ⟨CollatzM16ShardN.descent_mod65536_36383,
    ⟨CollatzM16ShardN.descent_mod65536_36519,
    ⟨CollatzM16ShardN.descent_mod65536_36543,
    ⟨CollatzM16ShardN.descent_mod65536_36635,
    ⟨CollatzM16ShardN.descent_mod65536_36639,
    ⟨CollatzM16ShardN.descent_mod65536_36719,
    ⟨CollatzM16ShardN.descent_mod65536_36891,
    ⟨CollatzM16ShardN.descent_mod65536_36911,
    ⟨CollatzM16ShardN.descent_mod65536_37119,
    ⟨CollatzM16ShardN.descent_mod65536_37167,
    ⟨CollatzM16ShardN.descent_mod65536_37311,
    ⟨CollatzM16ShardN.descent_mod65536_37407,
    ⟨CollatzM16ShardN.descent_mod65536_37467,
    ⟨CollatzM16ShardN.descent_mod65536_37487,
    ⟨CollatzM16ShardN.descent_mod65536_37607,
    ⟨CollatzM16ShardN.descent_mod65536_37735,
    ⟨CollatzM16ShardN.descent_mod65536_38047,
    ⟨CollatzM16ShardN.descent_mod65536_38171,
    ⟨CollatzM16ShardN.descent_mod65536_38271,
    ⟨CollatzM16ShardO.descent_mod65536_38427,
    ⟨CollatzM16ShardO.descent_mod65536_38607,
    ⟨CollatzM16ShardO.descent_mod65536_38847,
    ⟨CollatzM16ShardO.descent_mod65536_39039,
    ⟨CollatzM16ShardO.descent_mod65536_39135,
    ⟨CollatzM16ShardO.descent_mod65536_39195,
    ⟨CollatzM16ShardO.descent_mod65536_39295,
    ⟨CollatzM16ShardO.descent_mod65536_39535,
    ⟨CollatzM16ShardO.descent_mod65536_39615,
    ⟨CollatzM16ShardO.descent_mod65536_39919,
    ⟨CollatzM16ShardO.descent_mod65536_40039,
    ⟨CollatzM16ShardO.descent_mod65536_40187,
    ⟨CollatzM16ShardO.descent_mod65536_40351,
    ⟨CollatzM16ShardO.descent_mod65536_40415,
    ⟨CollatzM16ShardO.descent_mod65536_40495,
    ⟨CollatzM16ShardO.descent_mod65536_40687,
    ⟨CollatzM16ShardO.descent_mod65536_40943,
    ⟨CollatzM16ShardO.descent_mod65536_41023,
    ⟨CollatzM16ShardO.descent_mod65536_41063,
    ⟨CollatzM16ShardO.descent_mod65536_41183,
    ⟨CollatzM16ShardP.descent_mod65536_41243,
    ⟨CollatzM16ShardP.descent_mod65536_41447,
    ⟨CollatzM16ShardP.descent_mod65536_41627,
    ⟨CollatzM16ShardP.descent_mod65536_41723,
    ⟨CollatzM16ShardP.descent_mod65536_42075,
    ⟨CollatzM16ShardP.descent_mod65536_42215,
    ⟨CollatzM16ShardP.descent_mod65536_42239,
    ⟨CollatzM16ShardP.descent_mod65536_42303,
    ⟨CollatzM16ShardP.descent_mod65536_42343,
    ⟨CollatzM16ShardP.descent_mod65536_42471,
    ⟨CollatzM16ShardP.descent_mod65536_42651,
    ⟨CollatzM16ShardP.descent_mod65536_42911,
    ⟨CollatzM16ShardP.descent_mod65536_43071,
    ⟨CollatzM16ShardP.descent_mod65536_43111,
    ⟨CollatzM16ShardP.descent_mod65536_43215,
    ⟨CollatzM16ShardP.descent_mod65536_43335,
    ⟨CollatzM16ShardP.descent_mod65536_43471,
    ⟨CollatzM16ShardP.descent_mod65536_43611,
    ⟨CollatzM16ShardP.descent_mod65536_43775,
    ⟨CollatzM16ShardP.descent_mod65536_43967,
    ⟨CollatzM16ShardQ.descent_mod65536_44143,
    ⟨CollatzM16ShardQ.descent_mod65536_44223,
    ⟨CollatzM16ShardQ.descent_mod65536_44239,
    ⟨CollatzM16ShardQ.descent_mod65536_44359,
    ⟨CollatzM16ShardQ.descent_mod65536_44699,
    ⟨CollatzM16ShardQ.descent_mod65536_44959,
    ⟨CollatzM16ShardQ.descent_mod65536_45083,
    ⟨CollatzM16ShardQ.descent_mod65536_45103,
    ⟨CollatzM16ShardQ.descent_mod65536_45223,
    ⟨CollatzM16ShardQ.descent_mod65536_45359,
    ⟨CollatzM16ShardQ.descent_mod65536_45503,
    ⟨CollatzM16ShardQ.descent_mod65536_45535,
    ⟨CollatzM16ShardQ.descent_mod65536_45599,
    ⟨CollatzM16ShardQ.descent_mod65536_45679,
    ⟨CollatzM16ShardQ.descent_mod65536_45799,
    ⟨CollatzM16ShardQ.descent_mod65536_45851,
    ⟨CollatzM16ShardQ.descent_mod65536_46127,
    ⟨CollatzM16ShardQ.descent_mod65536_46247,
    ⟨CollatzM16ShardQ.descent_mod65536_46407,
    ⟨CollatzM16ShardQ.descent_mod65536_47099,
    ⟨CollatzM16ShardR.descent_mod65536_47231,
    ⟨CollatzM16ShardR.descent_mod65536_47327,
    ⟨CollatzM16ShardR.descent_mod65536_47387,
    ⟨CollatzM16ShardR.descent_mod65536_47423,
    ⟨CollatzM16ShardR.descent_mod65536_47487,
    ⟨CollatzM16ShardR.descent_mod65536_47807,
    ⟨CollatzM16ShardR.descent_mod65536_48095,
    ⟨CollatzM16ShardR.descent_mod65536_48155,
    ⟨CollatzM16ShardR.descent_mod65536_48295,
    ⟨CollatzM16ShardR.descent_mod65536_48379,
    ⟨CollatzM16ShardR.descent_mod65536_48879,
    ⟨CollatzM16ShardR.descent_mod65536_48987,
    ⟨CollatzM16ShardR.descent_mod65536_49135,
    ⟨CollatzM16ShardR.descent_mod65536_49215,
    ⟨CollatzM16ShardR.descent_mod65536_49255,
    ⟨CollatzM16ShardR.descent_mod65536_49311,
    ⟨CollatzM16ShardR.descent_mod65536_49563,
    ⟨CollatzM16ShardR.descent_mod65536_49567,
    ⟨CollatzM16ShardR.descent_mod65536_49983,
    ⟨CollatzM16ShardR.descent_mod65536_50143,
    ⟨CollatzM16ShardS.descent_mod65536_50267,
    ⟨CollatzM16ShardS.descent_mod65536_50303,
    ⟨CollatzM16ShardS.descent_mod65536_50407,
    ⟨CollatzM16ShardS.descent_mod65536_50663,
    ⟨CollatzM16ShardS.descent_mod65536_50843,
    ⟨CollatzM16ShardS.descent_mod65536_50847,
    ⟨CollatzM16ShardS.descent_mod65536_51055,
    ⟨CollatzM16ShardS.descent_mod65536_51103,
    ⟨CollatzM16ShardS.descent_mod65536_51271,
    ⟨CollatzM16ShardS.descent_mod65536_51431,
    ⟨CollatzM16ShardS.descent_mod65536_51451,
    ⟨CollatzM16ShardS.descent_mod65536_51455,
    ⟨CollatzM16ShardS.descent_mod65536_51611,
    ⟨CollatzM16ShardS.descent_mod65536_51871,
    ⟨CollatzM16ShardS.descent_mod65536_51951,
    ⟨CollatzM16ShardS.descent_mod65536_52031,
    ⟨CollatzM16ShardS.descent_mod65536_52071,
    ⟨CollatzM16ShardS.descent_mod65536_52335,
    ⟨CollatzM16ShardS.descent_mod65536_52415,
    ⟨CollatzM16ShardS.descent_mod65536_52431,
    ⟨CollatzM16ShardT.descent_mod65536_52507,
    ⟨CollatzM16ShardT.descent_mod65536_52551,
    ⟨CollatzM16ShardT.descent_mod65536_52735,
    ⟨CollatzM16ShardT.descent_mod65536_52763,
    ⟨CollatzM16ShardT.descent_mod65536_53159,
    ⟨CollatzM16ShardT.descent_mod65536_53183,
    ⟨CollatzM16ShardT.descent_mod65536_53319,
    ⟨CollatzM16ShardT.descent_mod65536_53339,
    ⟨CollatzM16ShardT.descent_mod65536_53439,
    ⟨CollatzM16ShardT.descent_mod65536_53887,
    ⟨CollatzM16ShardT.descent_mod65536_53919,
    ⟨CollatzM16ShardT.descent_mod65536_54043,
    ⟨CollatzM16ShardT.descent_mod65536_54303,
    ⟨CollatzM16ShardT.descent_mod65536_54319,
    ⟨CollatzM16ShardT.descent_mod65536_54375,
    ⟨CollatzM16ShardT.descent_mod65536_54439,
    ⟨CollatzM16ShardT.descent_mod65536_54751,
    ⟨CollatzM16ShardT.descent_mod65536_55207,
    ⟨CollatzM16ShardT.descent_mod65536_55291,
    ⟨CollatzM16ShardT.descent_mod65536_55327,
    ⟨CollatzM16ShardU.descent_mod65536_55407,
    ⟨CollatzM16ShardU.descent_mod65536_55535,
    ⟨CollatzM16ShardU.descent_mod65536_55963,
    ⟨CollatzM16ShardU.descent_mod65536_56059,
    ⟨CollatzM16ShardU.descent_mod65536_56191,
    ⟨CollatzM16ShardU.descent_mod65536_56287,
    ⟨CollatzM16ShardU.descent_mod65536_56315,
    ⟨CollatzM16ShardU.descent_mod65536_56347,
    ⟨CollatzM16ShardU.descent_mod65536_56639,
    ⟨CollatzM16ShardU.descent_mod65536_56935,
    ⟨CollatzM16ShardU.descent_mod65536_57179,
    ⟨CollatzM16ShardU.descent_mod65536_57215,
    ⟨CollatzM16ShardU.descent_mod65536_57375,
    ⟨CollatzM16ShardU.descent_mod65536_57671,
    ⟨CollatzM16ShardU.descent_mod65536_57755,
    ⟨CollatzM16ShardU.descent_mod65536_57759,
    ⟨CollatzM16ShardU.descent_mod65536_57839,
    ⟨CollatzM16ShardU.descent_mod65536_57947,
    ⟨CollatzM16ShardU.descent_mod65536_58175,
    ⟨CollatzM16ShardU.descent_mod65536_58203,
    ⟨CollatzM16ShardV.descent_mod65536_58495,
    ⟨CollatzM16ShardV.descent_mod65536_58523,
    ⟨CollatzM16ShardV.descent_mod65536_58527,
    ⟨CollatzM16ShardV.descent_mod65536_58863,
    ⟨CollatzM16ShardV.descent_mod65536_58983,
    ⟨CollatzM16ShardV.descent_mod65536_59247,
    ⟨CollatzM16ShardV.descent_mod65536_59263,
    ⟨CollatzM16ShardV.descent_mod65536_59463,
    ⟨CollatzM16ShardV.descent_mod65536_59559,
    ⟨CollatzM16ShardV.descent_mod65536_59623,
    ⟨CollatzM16ShardV.descent_mod65536_59643,
    ⟨CollatzM16ShardV.descent_mod65536_59647,
    ⟨CollatzM16ShardV.descent_mod65536_60015,
    ⟨CollatzM16ShardV.descent_mod65536_60063,
    ⟨CollatzM16ShardV.descent_mod65536_60143,
    ⟨CollatzM16ShardV.descent_mod65536_60231,
    ⟨CollatzM16ShardV.descent_mod65536_60271,
    ⟨CollatzM16ShardV.descent_mod65536_60571,
    ⟨CollatzM16ShardV.descent_mod65536_60831,
    ⟨CollatzM16ShardV.descent_mod65536_60911,
    ⟨CollatzM16ShardW.descent_mod65536_60955,
    ⟨CollatzM16ShardW.descent_mod65536_61135,
    ⟨CollatzM16ShardW.descent_mod65536_61351,
    ⟨CollatzM16ShardW.descent_mod65536_61375,
    ⟨CollatzM16ShardW.descent_mod65536_61531,
    ⟨CollatzM16ShardW.descent_mod65536_61631,
    ⟨CollatzM16ShardW.descent_mod65536_61663,
    ⟨CollatzM16ShardW.descent_mod65536_61723,
    ⟨CollatzM16ShardW.descent_mod65536_61979,
    ⟨CollatzM16ShardW.descent_mod65536_62119,
    ⟨CollatzM16ShardW.descent_mod65536_62159,
    ⟨CollatzM16ShardW.descent_mod65536_62239,
    ⟨CollatzM16ShardW.descent_mod65536_62279,
    ⟨CollatzM16ShardW.descent_mod65536_62719,
    ⟨CollatzM16ShardW.descent_mod65536_62943,
    ⟨CollatzM16ShardW.descent_mod65536_63023,
    ⟨CollatzM16ShardW.descent_mod65536_63335,
    ⟨CollatzM16ShardW.descent_mod65536_63519,
    ⟨CollatzM16ShardW.descent_mod65536_63551,
    ⟨CollatzM16ShardW.descent_mod65536_63591,
    ⟨CollatzM16ShardX.descent_mod65536_63599,
    ⟨CollatzM16ShardX.descent_mod65536_64047,
    ⟨CollatzM16ShardX.descent_mod65536_64167,
    ⟨CollatzM16ShardX.descent_mod65536_64207,
    ⟨CollatzM16ShardX.descent_mod65536_64251,
    ⟨CollatzM16ShardX.descent_mod65536_64287,
    ⟨CollatzM16ShardX.descent_mod65536_64447,
    ⟨CollatzM16ShardX.descent_mod65536_64507,
    ⟨CollatzM16ShardX.descent_mod65536_64831,
    ⟨CollatzM16ShardX.descent_mod65536_64871,
    ⟨CollatzM16ShardX.descent_mod65536_65127,
    ⟨CollatzM16ShardX.descent_mod65536_65179,
    ⟨CollatzM16ShardX.descent_mod65536_65183,
    ⟨CollatzM16ShardX.descent_mod65536_65275,
    ⟨CollatzM16ShardX.descent_mod65536_65407,
    CollatzM16ShardX.descent_mod65536_65439⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM16AllFamilies
#print axioms CollatzM16AllFamilies.all_scanned_m16_families_descend
