import M15ShardA
import M15ShardB
import M15ShardC
import M15ShardD
import M15ShardE
import M15ShardF
import M15ShardG
import M15ShardH
import M15ShardI
import M15ShardJ
import M15ShardK
import M15ShardL
import M15ShardM
import M15ShardN
import M15ShardO
import M15ShardP
import M15ShardQ
import M15ShardR
import M15ShardS
import M15ShardT
import M15ShardU
import M15ShardV
import Descent127

namespace CollatzM15AllFamilies

theorem all_scanned_m15_families_descend :
  (∀ k : Nat, CollatzR127.iterate (32768 * k + 127) 24 = 19683 * k + 77 ∧ 19683 * k + 77 < 32768 * k + 127) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 411) 24 = 19683 * k + 248 ∧ 19683 * k + 248 < 32768 * k + 411) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 415) 24 = 19683 * k + 250 ∧ 19683 * k + 250 < 32768 * k + 415) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 831) 24 = 19683 * k + 500 ∧ 19683 * k + 500 < 32768 * k + 831) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 839) 24 = 19683 * k + 505 ∧ 19683 * k + 505 < 32768 * k + 839) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 1095) 24 = 19683 * k + 659 ∧ 19683 * k + 659 < 32768 * k + 1095) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 1151) 24 = 19683 * k + 692 ∧ 19683 * k + 692 < 32768 * k + 1151) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 1275) 24 = 19683 * k + 767 ∧ 19683 * k + 767 < 32768 * k + 1275) ∧
  (∀ k : Nat, CollatzM15ShardA.iterate (32768 * k + 1775) 24 = 19683 * k + 1067 ∧ 19683 * k + 1067 < 32768 * k + 1775) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 1903) 24 = 19683 * k + 1144 ∧ 19683 * k + 1144 < 32768 * k + 1903) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2119) 24 = 19683 * k + 1274 ∧ 19683 * k + 1274 < 32768 * k + 2119) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2279) 24 = 19683 * k + 1370 ∧ 19683 * k + 1370 < 32768 * k + 2279) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2299) 24 = 19683 * k + 1382 ∧ 19683 * k + 1382 < 32768 * k + 2299) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2303) 24 = 19683 * k + 1384 ∧ 19683 * k + 1384 < 32768 * k + 2303) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2719) 24 = 19683 * k + 1634 ∧ 19683 * k + 1634 < 32768 * k + 2719) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2727) 24 = 19683 * k + 1639 ∧ 19683 * k + 1639 < 32768 * k + 2727) ∧
  (∀ k : Nat, CollatzM15ShardB.iterate (32768 * k + 2767) 24 = 19683 * k + 1663 ∧ 19683 * k + 1663 < 32768 * k + 2767) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 2799) 24 = 19683 * k + 1682 ∧ 19683 * k + 1682 < 32768 * k + 2799) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 2847) 24 = 19683 * k + 1711 ∧ 19683 * k + 1711 < 32768 * k + 2847) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 2983) 24 = 19683 * k + 1793 ∧ 19683 * k + 1793 < 32768 * k + 2983) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 3163) 24 = 19683 * k + 1901 ∧ 19683 * k + 1901 < 32768 * k + 3163) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 3303) 24 = 19683 * k + 1985 ∧ 19683 * k + 1985 < 32768 * k + 3303) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 3611) 24 = 19683 * k + 2170 ∧ 19683 * k + 2170 < 32768 * k + 3611) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 3743) 24 = 19683 * k + 2249 ∧ 19683 * k + 2249 < 32768 * k + 3743) ∧
  (∀ k : Nat, CollatzM15ShardC.iterate (32768 * k + 4007) 24 = 19683 * k + 2408 ∧ 19683 * k + 2408 < 32768 * k + 4007) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 4031) 24 = 19683 * k + 2422 ∧ 19683 * k + 2422 < 32768 * k + 4031) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 4187) 24 = 19683 * k + 2516 ∧ 19683 * k + 2516 < 32768 * k + 4187) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 4287) 24 = 19683 * k + 2576 ∧ 19683 * k + 2576 < 32768 * k + 4287) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 4655) 24 = 19683 * k + 2797 ∧ 19683 * k + 2797 < 32768 * k + 4655) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 5231) 24 = 19683 * k + 3143 ∧ 19683 * k + 3143 < 32768 * k + 5231) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 5311) 24 = 19683 * k + 3191 ∧ 19683 * k + 3191 < 32768 * k + 5311) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 5599) 24 = 19683 * k + 3364 ∧ 19683 * k + 3364 < 32768 * k + 5599) ∧
  (∀ k : Nat, CollatzM15ShardD.iterate (32768 * k + 5631) 24 = 19683 * k + 3383 ∧ 19683 * k + 3383 < 32768 * k + 5631) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 6175) 24 = 19683 * k + 3710 ∧ 19683 * k + 3710 < 32768 * k + 6175) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 6255) 24 = 19683 * k + 3758 ∧ 19683 * k + 3758 < 32768 * k + 6255) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 6503) 24 = 19683 * k + 3907 ∧ 19683 * k + 3907 < 32768 * k + 6503) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 6759) 24 = 19683 * k + 4061 ∧ 19683 * k + 4061 < 32768 * k + 6759) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 6783) 24 = 19683 * k + 4075 ∧ 19683 * k + 4075 < 32768 * k + 6783) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 6907) 24 = 19683 * k + 4150 ∧ 19683 * k + 4150 < 32768 * k + 6907) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 7163) 24 = 19683 * k + 4304 ∧ 19683 * k + 4304 < 32768 * k + 7163) ∧
  (∀ k : Nat, CollatzM15ShardE.iterate (32768 * k + 7199) 24 = 19683 * k + 4325 ∧ 19683 * k + 4325 < 32768 * k + 7199) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 7487) 24 = 19683 * k + 4498 ∧ 19683 * k + 4498 < 32768 * k + 7487) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 7783) 24 = 19683 * k + 4676 ∧ 19683 * k + 4676 < 32768 * k + 7783) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 8063) 24 = 19683 * k + 4844 ∧ 19683 * k + 4844 < 32768 * k + 8063) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 8187) 24 = 19683 * k + 4919 ∧ 19683 * k + 4919 < 32768 * k + 8187) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 8347) 24 = 19683 * k + 5015 ∧ 19683 * k + 5015 < 32768 * k + 8347) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 8431) 24 = 19683 * k + 5065 ∧ 19683 * k + 5065 < 32768 * k + 8431) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 8795) 24 = 19683 * k + 5284 ∧ 19683 * k + 5284 < 32768 * k + 8795) ∧
  (∀ k : Nat, CollatzM15ShardF.iterate (32768 * k + 9051) 24 = 19683 * k + 5438 ∧ 19683 * k + 5438 < 32768 * k + 9051) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 9087) 24 = 19683 * k + 5459 ∧ 19683 * k + 5459 < 32768 * k + 9087) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 9371) 24 = 19683 * k + 5630 ∧ 19683 * k + 5630 < 32768 * k + 9371) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 9375) 24 = 19683 * k + 5632 ∧ 19683 * k + 5632 < 32768 * k + 9375) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 9679) 24 = 19683 * k + 5815 ∧ 19683 * k + 5815 < 32768 * k + 9679) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 9711) 24 = 19683 * k + 5834 ∧ 19683 * k + 5834 < 32768 * k + 9711) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 9959) 24 = 19683 * k + 5983 ∧ 19683 * k + 5983 < 32768 * k + 9959) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 10055) 24 = 19683 * k + 6041 ∧ 19683 * k + 6041 < 32768 * k + 10055) ∧
  (∀ k : Nat, CollatzM15ShardG.iterate (32768 * k + 10075) 24 = 19683 * k + 6053 ∧ 19683 * k + 6053 < 32768 * k + 10075) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 10655) 24 = 19683 * k + 6401 ∧ 19683 * k + 6401 < 32768 * k + 10655) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 10735) 24 = 19683 * k + 6449 ∧ 19683 * k + 6449 < 32768 * k + 10735) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 10863) 24 = 19683 * k + 6526 ∧ 19683 * k + 6526 < 32768 * k + 10863) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 11079) 24 = 19683 * k + 6656 ∧ 19683 * k + 6656 < 32768 * k + 11079) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 11119) 24 = 19683 * k + 6680 ∧ 19683 * k + 6680 < 32768 * k + 11119) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 11567) 24 = 19683 * k + 6949 ∧ 19683 * k + 6949 < 32768 * k + 11567) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 11679) 24 = 19683 * k + 7016 ∧ 19683 * k + 7016 < 32768 * k + 11679) ∧
  (∀ k : Nat, CollatzM15ShardH.iterate (32768 * k + 11807) 24 = 19683 * k + 7093 ∧ 19683 * k + 7093 < 32768 * k + 11807) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 11943) 24 = 19683 * k + 7175 ∧ 19683 * k + 7175 < 32768 * k + 11943) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 11967) 24 = 19683 * k + 7189 ∧ 19683 * k + 7189 < 32768 * k + 11967) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 12063) 24 = 19683 * k + 7247 ∧ 19683 * k + 7247 < 32768 * k + 12063) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 12143) 24 = 19683 * k + 7295 ∧ 19683 * k + 7295 < 32768 * k + 12143) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 12511) 24 = 19683 * k + 7516 ∧ 19683 * k + 7516 < 32768 * k + 12511) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 12543) 24 = 19683 * k + 7535 ∧ 19683 * k + 7535 < 32768 * k + 12543) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 12571) 24 = 19683 * k + 7552 ∧ 19683 * k + 7552 < 32768 * k + 12571) ∧
  (∀ k : Nat, CollatzM15ShardI.iterate (32768 * k + 12827) 24 = 19683 * k + 7706 ∧ 19683 * k + 7706 < 32768 * k + 12827) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 12967) 24 = 19683 * k + 7790 ∧ 19683 * k + 7790 < 32768 * k + 12967) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 13007) 24 = 19683 * k + 7814 ∧ 19683 * k + 7814 < 32768 * k + 13007) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 13087) 24 = 19683 * k + 7862 ∧ 19683 * k + 7862 < 32768 * k + 13087) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 13567) 24 = 19683 * k + 8150 ∧ 19683 * k + 8150 < 32768 * k + 13567) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 13695) 24 = 19683 * k + 8227 ∧ 19683 * k + 8227 < 32768 * k + 13695) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 13851) 24 = 19683 * k + 8321 ∧ 19683 * k + 8321 < 32768 * k + 13851) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 14031) 24 = 19683 * k + 8429 ∧ 19683 * k + 8429 < 32768 * k + 14031) ∧
  (∀ k : Nat, CollatzM15ShardJ.iterate (32768 * k + 14271) 24 = 19683 * k + 8573 ∧ 19683 * k + 8573 < 32768 * k + 14271) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 14399) 24 = 19683 * k + 8650 ∧ 19683 * k + 8650 < 32768 * k + 14399) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 14439) 24 = 19683 * k + 8674 ∧ 19683 * k + 8674 < 32768 * k + 14439) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 14895) 24 = 19683 * k + 8948 ∧ 19683 * k + 8948 < 32768 * k + 14895) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 15295) 24 = 19683 * k + 9188 ∧ 19683 * k + 9188 < 32768 * k + 15295) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 15343) 24 = 19683 * k + 9217 ∧ 19683 * k + 9217 < 32768 * k + 15343) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 15839) 24 = 19683 * k + 9515 ∧ 19683 * k + 9515 < 32768 * k + 15839) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 15919) 24 = 19683 * k + 9563 ∧ 19683 * k + 9563 < 32768 * k + 15919) ∧
  (∀ k : Nat, CollatzM15ShardK.iterate (32768 * k + 16027) 24 = 19683 * k + 9628 ∧ 19683 * k + 9628 < 32768 * k + 16027) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 16123) 24 = 19683 * k + 9686 ∧ 19683 * k + 9686 < 32768 * k + 16123) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 16287) 24 = 19683 * k + 9784 ∧ 19683 * k + 9784 < 32768 * k + 16287) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 16743) 24 = 19683 * k + 10058 ∧ 19683 * k + 10058 < 32768 * k + 16743) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 16863) 24 = 19683 * k + 10130 ∧ 19683 * k + 10130 < 32768 * k + 16863) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 16871) 24 = 19683 * k + 10135 ∧ 19683 * k + 10135 < 32768 * k + 16871) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 17147) 24 = 19683 * k + 10301 ∧ 19683 * k + 10301 < 32768 * k + 17147) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 17727) 24 = 19683 * k + 10649 ∧ 19683 * k + 10649 < 32768 * k + 17727) ∧
  (∀ k : Nat, CollatzM15ShardL.iterate (32768 * k + 17735) 24 = 19683 * k + 10654 ∧ 19683 * k + 10654 < 32768 * k + 17735) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 17767) 24 = 19683 * k + 10673 ∧ 19683 * k + 10673 < 32768 * k + 17767) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 18011) 24 = 19683 * k + 10820 ∧ 19683 * k + 10820 < 32768 * k + 18011) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 18639) 24 = 19683 * k + 11197 ∧ 19683 * k + 11197 < 32768 * k + 18639) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 18751) 24 = 19683 * k + 11264 ∧ 19683 * k + 11264 < 32768 * k + 18751) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 18895) 24 = 19683 * k + 11351 ∧ 19683 * k + 11351 < 32768 * k + 18895) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 19035) 24 = 19683 * k + 11435 ∧ 19683 * k + 11435 < 32768 * k + 19035) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 19199) 24 = 19683 * k + 11533 ∧ 19683 * k + 11533 < 32768 * k + 19199) ∧
  (∀ k : Nat, CollatzM15ShardM.iterate (32768 * k + 19623) 24 = 19683 * k + 11788 ∧ 19683 * k + 11788 < 32768 * k + 19623) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 19919) 24 = 19683 * k + 11966 ∧ 19683 * k + 11966 < 32768 * k + 19919) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 20079) 24 = 19683 * k + 12062 ∧ 19683 * k + 12062 < 32768 * k + 20079) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 20199) 24 = 19683 * k + 12134 ∧ 19683 * k + 12134 < 32768 * k + 20199) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 20507) 24 = 19683 * k + 12319 ∧ 19683 * k + 12319 < 32768 * k + 20507) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 20527) 24 = 19683 * k + 12331 ∧ 19683 * k + 12331 < 32768 * k + 20527) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 20783) 24 = 19683 * k + 12485 ∧ 19683 * k + 12485 < 32768 * k + 20783) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 20927) 24 = 19683 * k + 12571 ∧ 19683 * k + 12571 < 32768 * k + 20927) ∧
  (∀ k : Nat, CollatzM15ShardN.iterate (32768 * k + 21023) 24 = 19683 * k + 12629 ∧ 19683 * k + 12629 < 32768 * k + 21023) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 21103) 24 = 19683 * k + 12677 ∧ 19683 * k + 12677 < 32768 * k + 21103) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 21223) 24 = 19683 * k + 12749 ∧ 19683 * k + 12749 < 32768 * k + 21223) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 21471) 24 = 19683 * k + 12898 ∧ 19683 * k + 12898 < 32768 * k + 21471) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 21727) 24 = 19683 * k + 13052 ∧ 19683 * k + 13052 < 32768 * k + 21727) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 21807) 24 = 19683 * k + 13100 ∧ 19683 * k + 13100 < 32768 * k + 21807) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 22047) 24 = 19683 * k + 13244 ∧ 19683 * k + 13244 < 32768 * k + 22047) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 22207) 24 = 19683 * k + 13340 ∧ 19683 * k + 13340 < 32768 * k + 22207) ∧
  (∀ k : Nat, CollatzM15ShardO.iterate (32768 * k + 22655) 24 = 19683 * k + 13609 ∧ 19683 * k + 13609 < 32768 * k + 22655) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 22751) 24 = 19683 * k + 13667 ∧ 19683 * k + 13667 < 32768 * k + 22751) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 22811) 24 = 19683 * k + 13703 ∧ 19683 * k + 13703 < 32768 * k + 22811) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 22911) 24 = 19683 * k + 13763 ∧ 19683 * k + 13763 < 32768 * k + 22911) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 22939) 24 = 19683 * k + 13780 ∧ 19683 * k + 13780 < 32768 * k + 22939) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 23231) 24 = 19683 * k + 13955 ∧ 19683 * k + 13955 < 32768 * k + 23231) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 23359) 24 = 19683 * k + 14032 ∧ 19683 * k + 14032 < 32768 * k + 23359) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 23399) 24 = 19683 * k + 14056 ∧ 19683 * k + 14056 < 32768 * k + 23399) ∧
  (∀ k : Nat, CollatzM15ShardP.iterate (32768 * k + 23615) 24 = 19683 * k + 14186 ∧ 19683 * k + 14186 < 32768 * k + 23615) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 23803) 24 = 19683 * k + 14299 ∧ 19683 * k + 14299 < 32768 * k + 23803) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 23835) 24 = 19683 * k + 14318 ∧ 19683 * k + 14318 < 32768 * k + 23835) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 23935) 24 = 19683 * k + 14378 ∧ 19683 * k + 14378 < 32768 * k + 23935) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 24303) 24 = 19683 * k + 14599 ∧ 19683 * k + 14599 < 32768 * k + 24303) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 24559) 24 = 19683 * k + 14753 ∧ 19683 * k + 14753 < 32768 * k + 24559) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 24639) 24 = 19683 * k + 14801 ∧ 19683 * k + 14801 < 32768 * k + 24639) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 24647) 24 = 19683 * k + 14806 ∧ 19683 * k + 14806 < 32768 * k + 24647) ∧
  (∀ k : Nat, CollatzM15ShardQ.iterate (32768 * k + 24679) 24 = 19683 * k + 14825 ∧ 19683 * k + 14825 < 32768 * k + 24679) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 25247) 24 = 19683 * k + 15166 ∧ 19683 * k + 15166 < 32768 * k + 25247) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 25503) 24 = 19683 * k + 15320 ∧ 19683 * k + 15320 < 32768 * k + 25503) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 25583) 24 = 19683 * k + 15368 ∧ 19683 * k + 15368 < 32768 * k + 25583) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 25691) 24 = 19683 * k + 15433 ∧ 19683 * k + 15433 < 32768 * k + 25691) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 25703) 24 = 19683 * k + 15440 ∧ 19683 * k + 15440 < 32768 * k + 25703) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 25831) 24 = 19683 * k + 15517 ∧ 19683 * k + 15517 < 32768 * k + 25831) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 26087) 24 = 19683 * k + 15671 ∧ 19683 * k + 15671 < 32768 * k + 26087) ∧
  (∀ k : Nat, CollatzM15ShardR.iterate (32768 * k + 26267) 24 = 19683 * k + 15779 ∧ 19683 * k + 15779 < 32768 * k + 26267) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 26527) 24 = 19683 * k + 15935 ∧ 19683 * k + 15935 < 32768 * k + 26527) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 26535) 24 = 19683 * k + 15940 ∧ 19683 * k + 15940 < 32768 * k + 26535) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 27111) 24 = 19683 * k + 16286 ∧ 19683 * k + 16286 < 32768 * k + 27111) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 27291) 24 = 19683 * k + 16394 ∧ 19683 * k + 16394 < 32768 * k + 27291) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 27759) 24 = 19683 * k + 16675 ∧ 19683 * k + 16675 < 32768 * k + 27759) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 27839) 24 = 19683 * k + 16723 ∧ 19683 * k + 16723 < 32768 * k + 27839) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 27855) 24 = 19683 * k + 16733 ∧ 19683 * k + 16733 < 32768 * k + 27855) ∧
  (∀ k : Nat, CollatzM15ShardS.iterate (32768 * k + 27975) 24 = 19683 * k + 16805 ∧ 19683 * k + 16805 < 32768 * k + 27975) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 28703) 24 = 19683 * k + 17242 ∧ 19683 * k + 17242 < 32768 * k + 28703) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 28879) 24 = 19683 * k + 17348 ∧ 19683 * k + 17348 < 32768 * k + 28879) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 28999) 24 = 19683 * k + 17420 ∧ 19683 * k + 17420 < 32768 * k + 28999) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 29467) 24 = 19683 * k + 17701 ∧ 19683 * k + 17701 < 32768 * k + 29467) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 29743) 24 = 19683 * k + 17867 ∧ 19683 * k + 17867 < 32768 * k + 29743) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 29863) 24 = 19683 * k + 17939 ∧ 19683 * k + 17939 < 32768 * k + 29863) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 30311) 24 = 19683 * k + 18208 ∧ 19683 * k + 18208 < 32768 * k + 30311) ∧
  (∀ k : Nat, CollatzM15ShardT.iterate (32768 * k + 30591) 24 = 19683 * k + 18376 ∧ 19683 * k + 18376 < 32768 * k + 30591) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 30687) 24 = 19683 * k + 18434 ∧ 19683 * k + 18434 < 32768 * k + 30687) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 30715) 24 = 19683 * k + 18451 ∧ 19683 * k + 18451 < 32768 * k + 30715) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 30747) 24 = 19683 * k + 18470 ∧ 19683 * k + 18470 < 32768 * k + 30747) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 30767) 24 = 19683 * k + 18482 ∧ 19683 * k + 18482 < 32768 * k + 30767) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 30887) 24 = 19683 * k + 18554 ∧ 19683 * k + 18554 < 32768 * k + 30887) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 31711) 24 = 19683 * k + 19049 ∧ 19683 * k + 19049 < 32768 * k + 31711) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 31771) 24 = 19683 * k + 19085 ∧ 19683 * k + 19085 < 32768 * k + 31771) ∧
  (∀ k : Nat, CollatzM15ShardU.iterate (32768 * k + 31899) 24 = 19683 * k + 19162 ∧ 19683 * k + 19162 < 32768 * k + 31899) ∧
  (∀ k : Nat, CollatzM15ShardV.iterate (32768 * k + 32155) 24 = 19683 * k + 19316 ∧ 19683 * k + 19316 < 32768 * k + 32155) ∧
  (∀ k : Nat, CollatzM15ShardV.iterate (32768 * k + 32239) 24 = 19683 * k + 19366 ∧ 19683 * k + 19366 < 32768 * k + 32239) ∧
  (∀ k : Nat, CollatzM15ShardV.iterate (32768 * k + 32575) 24 = 19683 * k + 19568 ∧ 19683 * k + 19568 < 32768 * k + 32575) ∧
  (∀ k : Nat, CollatzM15ShardV.iterate (32768 * k + 32603) 24 = 19683 * k + 19585 ∧ 19683 * k + 19585 < 32768 * k + 32603) := by
  exact And.intro
    CollatzR127.descent_mod32768_127
    (And.intro
    CollatzM15ShardA.descent_mod32768_411
    (And.intro
    CollatzM15ShardA.descent_mod32768_415
    (And.intro
    CollatzM15ShardA.descent_mod32768_831
    (And.intro
    CollatzM15ShardA.descent_mod32768_839
    (And.intro
    CollatzM15ShardA.descent_mod32768_1095
    (And.intro
    CollatzM15ShardA.descent_mod32768_1151
    (And.intro
    CollatzM15ShardA.descent_mod32768_1275
    (And.intro
    CollatzM15ShardA.descent_mod32768_1775
    (And.intro
    CollatzM15ShardB.descent_mod32768_1903
    (And.intro
    CollatzM15ShardB.descent_mod32768_2119
    (And.intro
    CollatzM15ShardB.descent_mod32768_2279
    (And.intro
    CollatzM15ShardB.descent_mod32768_2299
    (And.intro
    CollatzM15ShardB.descent_mod32768_2303
    (And.intro
    CollatzM15ShardB.descent_mod32768_2719
    (And.intro
    CollatzM15ShardB.descent_mod32768_2727
    (And.intro
    CollatzM15ShardB.descent_mod32768_2767
    (And.intro
    CollatzM15ShardC.descent_mod32768_2799
    (And.intro
    CollatzM15ShardC.descent_mod32768_2847
    (And.intro
    CollatzM15ShardC.descent_mod32768_2983
    (And.intro
    CollatzM15ShardC.descent_mod32768_3163
    (And.intro
    CollatzM15ShardC.descent_mod32768_3303
    (And.intro
    CollatzM15ShardC.descent_mod32768_3611
    (And.intro
    CollatzM15ShardC.descent_mod32768_3743
    (And.intro
    CollatzM15ShardC.descent_mod32768_4007
    (And.intro
    CollatzM15ShardD.descent_mod32768_4031
    (And.intro
    CollatzM15ShardD.descent_mod32768_4187
    (And.intro
    CollatzM15ShardD.descent_mod32768_4287
    (And.intro
    CollatzM15ShardD.descent_mod32768_4655
    (And.intro
    CollatzM15ShardD.descent_mod32768_5231
    (And.intro
    CollatzM15ShardD.descent_mod32768_5311
    (And.intro
    CollatzM15ShardD.descent_mod32768_5599
    (And.intro
    CollatzM15ShardD.descent_mod32768_5631
    (And.intro
    CollatzM15ShardE.descent_mod32768_6175
    (And.intro
    CollatzM15ShardE.descent_mod32768_6255
    (And.intro
    CollatzM15ShardE.descent_mod32768_6503
    (And.intro
    CollatzM15ShardE.descent_mod32768_6759
    (And.intro
    CollatzM15ShardE.descent_mod32768_6783
    (And.intro
    CollatzM15ShardE.descent_mod32768_6907
    (And.intro
    CollatzM15ShardE.descent_mod32768_7163
    (And.intro
    CollatzM15ShardE.descent_mod32768_7199
    (And.intro
    CollatzM15ShardF.descent_mod32768_7487
    (And.intro
    CollatzM15ShardF.descent_mod32768_7783
    (And.intro
    CollatzM15ShardF.descent_mod32768_8063
    (And.intro
    CollatzM15ShardF.descent_mod32768_8187
    (And.intro
    CollatzM15ShardF.descent_mod32768_8347
    (And.intro
    CollatzM15ShardF.descent_mod32768_8431
    (And.intro
    CollatzM15ShardF.descent_mod32768_8795
    (And.intro
    CollatzM15ShardF.descent_mod32768_9051
    (And.intro
    CollatzM15ShardG.descent_mod32768_9087
    (And.intro
    CollatzM15ShardG.descent_mod32768_9371
    (And.intro
    CollatzM15ShardG.descent_mod32768_9375
    (And.intro
    CollatzM15ShardG.descent_mod32768_9679
    (And.intro
    CollatzM15ShardG.descent_mod32768_9711
    (And.intro
    CollatzM15ShardG.descent_mod32768_9959
    (And.intro
    CollatzM15ShardG.descent_mod32768_10055
    (And.intro
    CollatzM15ShardG.descent_mod32768_10075
    (And.intro
    CollatzM15ShardH.descent_mod32768_10655
    (And.intro
    CollatzM15ShardH.descent_mod32768_10735
    (And.intro
    CollatzM15ShardH.descent_mod32768_10863
    (And.intro
    CollatzM15ShardH.descent_mod32768_11079
    (And.intro
    CollatzM15ShardH.descent_mod32768_11119
    (And.intro
    CollatzM15ShardH.descent_mod32768_11567
    (And.intro
    CollatzM15ShardH.descent_mod32768_11679
    (And.intro
    CollatzM15ShardH.descent_mod32768_11807
    (And.intro
    CollatzM15ShardI.descent_mod32768_11943
    (And.intro
    CollatzM15ShardI.descent_mod32768_11967
    (And.intro
    CollatzM15ShardI.descent_mod32768_12063
    (And.intro
    CollatzM15ShardI.descent_mod32768_12143
    (And.intro
    CollatzM15ShardI.descent_mod32768_12511
    (And.intro
    CollatzM15ShardI.descent_mod32768_12543
    (And.intro
    CollatzM15ShardI.descent_mod32768_12571
    (And.intro
    CollatzM15ShardI.descent_mod32768_12827
    (And.intro
    CollatzM15ShardJ.descent_mod32768_12967
    (And.intro
    CollatzM15ShardJ.descent_mod32768_13007
    (And.intro
    CollatzM15ShardJ.descent_mod32768_13087
    (And.intro
    CollatzM15ShardJ.descent_mod32768_13567
    (And.intro
    CollatzM15ShardJ.descent_mod32768_13695
    (And.intro
    CollatzM15ShardJ.descent_mod32768_13851
    (And.intro
    CollatzM15ShardJ.descent_mod32768_14031
    (And.intro
    CollatzM15ShardJ.descent_mod32768_14271
    (And.intro
    CollatzM15ShardK.descent_mod32768_14399
    (And.intro
    CollatzM15ShardK.descent_mod32768_14439
    (And.intro
    CollatzM15ShardK.descent_mod32768_14895
    (And.intro
    CollatzM15ShardK.descent_mod32768_15295
    (And.intro
    CollatzM15ShardK.descent_mod32768_15343
    (And.intro
    CollatzM15ShardK.descent_mod32768_15839
    (And.intro
    CollatzM15ShardK.descent_mod32768_15919
    (And.intro
    CollatzM15ShardK.descent_mod32768_16027
    (And.intro
    CollatzM15ShardL.descent_mod32768_16123
    (And.intro
    CollatzM15ShardL.descent_mod32768_16287
    (And.intro
    CollatzM15ShardL.descent_mod32768_16743
    (And.intro
    CollatzM15ShardL.descent_mod32768_16863
    (And.intro
    CollatzM15ShardL.descent_mod32768_16871
    (And.intro
    CollatzM15ShardL.descent_mod32768_17147
    (And.intro
    CollatzM15ShardL.descent_mod32768_17727
    (And.intro
    CollatzM15ShardL.descent_mod32768_17735
    (And.intro
    CollatzM15ShardM.descent_mod32768_17767
    (And.intro
    CollatzM15ShardM.descent_mod32768_18011
    (And.intro
    CollatzM15ShardM.descent_mod32768_18639
    (And.intro
    CollatzM15ShardM.descent_mod32768_18751
    (And.intro
    CollatzM15ShardM.descent_mod32768_18895
    (And.intro
    CollatzM15ShardM.descent_mod32768_19035
    (And.intro
    CollatzM15ShardM.descent_mod32768_19199
    (And.intro
    CollatzM15ShardM.descent_mod32768_19623
    (And.intro
    CollatzM15ShardN.descent_mod32768_19919
    (And.intro
    CollatzM15ShardN.descent_mod32768_20079
    (And.intro
    CollatzM15ShardN.descent_mod32768_20199
    (And.intro
    CollatzM15ShardN.descent_mod32768_20507
    (And.intro
    CollatzM15ShardN.descent_mod32768_20527
    (And.intro
    CollatzM15ShardN.descent_mod32768_20783
    (And.intro
    CollatzM15ShardN.descent_mod32768_20927
    (And.intro
    CollatzM15ShardN.descent_mod32768_21023
    (And.intro
    CollatzM15ShardO.descent_mod32768_21103
    (And.intro
    CollatzM15ShardO.descent_mod32768_21223
    (And.intro
    CollatzM15ShardO.descent_mod32768_21471
    (And.intro
    CollatzM15ShardO.descent_mod32768_21727
    (And.intro
    CollatzM15ShardO.descent_mod32768_21807
    (And.intro
    CollatzM15ShardO.descent_mod32768_22047
    (And.intro
    CollatzM15ShardO.descent_mod32768_22207
    (And.intro
    CollatzM15ShardO.descent_mod32768_22655
    (And.intro
    CollatzM15ShardP.descent_mod32768_22751
    (And.intro
    CollatzM15ShardP.descent_mod32768_22811
    (And.intro
    CollatzM15ShardP.descent_mod32768_22911
    (And.intro
    CollatzM15ShardP.descent_mod32768_22939
    (And.intro
    CollatzM15ShardP.descent_mod32768_23231
    (And.intro
    CollatzM15ShardP.descent_mod32768_23359
    (And.intro
    CollatzM15ShardP.descent_mod32768_23399
    (And.intro
    CollatzM15ShardP.descent_mod32768_23615
    (And.intro
    CollatzM15ShardQ.descent_mod32768_23803
    (And.intro
    CollatzM15ShardQ.descent_mod32768_23835
    (And.intro
    CollatzM15ShardQ.descent_mod32768_23935
    (And.intro
    CollatzM15ShardQ.descent_mod32768_24303
    (And.intro
    CollatzM15ShardQ.descent_mod32768_24559
    (And.intro
    CollatzM15ShardQ.descent_mod32768_24639
    (And.intro
    CollatzM15ShardQ.descent_mod32768_24647
    (And.intro
    CollatzM15ShardQ.descent_mod32768_24679
    (And.intro
    CollatzM15ShardR.descent_mod32768_25247
    (And.intro
    CollatzM15ShardR.descent_mod32768_25503
    (And.intro
    CollatzM15ShardR.descent_mod32768_25583
    (And.intro
    CollatzM15ShardR.descent_mod32768_25691
    (And.intro
    CollatzM15ShardR.descent_mod32768_25703
    (And.intro
    CollatzM15ShardR.descent_mod32768_25831
    (And.intro
    CollatzM15ShardR.descent_mod32768_26087
    (And.intro
    CollatzM15ShardR.descent_mod32768_26267
    (And.intro
    CollatzM15ShardS.descent_mod32768_26527
    (And.intro
    CollatzM15ShardS.descent_mod32768_26535
    (And.intro
    CollatzM15ShardS.descent_mod32768_27111
    (And.intro
    CollatzM15ShardS.descent_mod32768_27291
    (And.intro
    CollatzM15ShardS.descent_mod32768_27759
    (And.intro
    CollatzM15ShardS.descent_mod32768_27839
    (And.intro
    CollatzM15ShardS.descent_mod32768_27855
    (And.intro
    CollatzM15ShardS.descent_mod32768_27975
    (And.intro
    CollatzM15ShardT.descent_mod32768_28703
    (And.intro
    CollatzM15ShardT.descent_mod32768_28879
    (And.intro
    CollatzM15ShardT.descent_mod32768_28999
    (And.intro
    CollatzM15ShardT.descent_mod32768_29467
    (And.intro
    CollatzM15ShardT.descent_mod32768_29743
    (And.intro
    CollatzM15ShardT.descent_mod32768_29863
    (And.intro
    CollatzM15ShardT.descent_mod32768_30311
    (And.intro
    CollatzM15ShardT.descent_mod32768_30591
    (And.intro
    CollatzM15ShardU.descent_mod32768_30687
    (And.intro
    CollatzM15ShardU.descent_mod32768_30715
    (And.intro
    CollatzM15ShardU.descent_mod32768_30747
    (And.intro
    CollatzM15ShardU.descent_mod32768_30767
    (And.intro
    CollatzM15ShardU.descent_mod32768_30887
    (And.intro
    CollatzM15ShardU.descent_mod32768_31711
    (And.intro
    CollatzM15ShardU.descent_mod32768_31771
    (And.intro
    CollatzM15ShardU.descent_mod32768_31899
    (And.intro
    CollatzM15ShardV.descent_mod32768_32155
    (And.intro
    CollatzM15ShardV.descent_mod32768_32239
    (And.intro
    CollatzM15ShardV.descent_mod32768_32575
    (CollatzM15ShardV.descent_mod32768_32603))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

#print axioms all_scanned_m15_families_descend

end CollatzM15AllFamilies
