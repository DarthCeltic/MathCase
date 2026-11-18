import M20Shard001
import M20Shard002
import M20Shard003
import M20Shard004
import M20Shard005
import M20Shard006
import M20Shard007
import M20Shard008
import M20Shard009
import M20Shard010
import M20Shard011
import M20Shard012
import M20Shard013
import M20Shard014
import M20Shard015
import M20Shard016
import M20Shard017
import M20Shard018
import M20Shard019
import M20Shard020
import M20Shard021
import M20Shard022
import M20Shard023
import M20Shard024
import M20Shard025
import M20Shard026
import M20Shard027
import M20Shard028
import M20Shard029
import M20Shard030
import M20Shard031
import M20Shard032
import M20Shard033
import M20Shard034
import M20Shard035
import M20Shard036
import M20Shard037
import M20Shard038
import M20Shard039
import M20Shard040
import M20Shard041
import M20Shard042
import M20Shard043
import M20Shard044
import M20Shard045
import M20Shard046
import M20Shard047
import M20Shard048
import M20Shard049
import M20Shard050
import M20Shard051
import M20Shard052
import M20Shard053
import M20Shard054
import M20Shard055
import M20Shard056
import M20Shard057
import M20Shard058
import M20Shard059
import M20Shard060
import M20Shard061
import M20Shard062
import M20Shard063
import M20Shard064
import M20Shard065
import M20Shard066
import M20Shard067
import M20Shard068
import M20Shard069
import M20Shard070
import M20Shard071
import M20Shard072
import M20Shard073
import M20Shard074
import M20Shard075
import M20Shard076
import M20Shard077
import M20Shard078
import M20Shard079
import M20Shard080
import M20Shard081
import M20Shard082
import M20Shard083
import M20Shard084
import M20Shard085
import M20Shard086
import M20Shard087
import M20Shard088
import M20Shard089
import M20Shard090
import M20Shard091
import M20Shard092
import M20Shard093
import M20Shard094
import M20Shard095
import M20Shard096
import M20Shard097
import M20Shard098
import M20Shard099
import M20Shard100
import M20Shard101
import M20Shard102
import M20Shard103
import M20Shard104
import M20Shard105
import M20Shard106
import M20Shard107
import M20Shard108
import M20Shard109
import M20Shard110
import M20Shard111
import M20Shard112
import M20Shard113
import M20Shard114
import M20Shard115
import M20Shard116
import M20Shard117
import M20Shard118
import M20Shard119
import M20Shard120
import M20Shard121
import M20Shard122
import M20Shard123
import M20Shard124
import M20Shard125
import M20Shard126
import M20Shard127
import M20Shard128
import M20Shard129
import M20Shard130
import M20Shard131
import M20Shard132
import M20Shard133

set_option maxRecDepth 32768

namespace CollatzM20AllFamilies

theorem all_scanned_m20_families_descend :
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 239) 32 = 531441 * k + 122 ∧ 531441 * k + 122 < 1048576 * k + 239) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 487) 32 = 531441 * k + 248 ∧ 531441 * k + 248 < 1048576 * k + 487) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 763) 32 = 531441 * k + 388 ∧ 531441 * k + 388 < 1048576 * k + 763) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1127) 32 = 531441 * k + 572 ∧ 531441 * k + 572 < 1048576 * k + 1127) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1255) 32 = 531441 * k + 637 ∧ 531441 * k + 637 < 1048576 * k + 1255) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1439) 32 = 531441 * k + 730 ∧ 531441 * k + 730 < 1048576 * k + 1439) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 1511) 32 = 531441 * k + 767 ∧ 531441 * k + 767 < 1048576 * k + 1511) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2139) 32 = 531441 * k + 1085 ∧ 531441 * k + 1085 < 1048576 * k + 2139) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2175) 32 = 531441 * k + 1103 ∧ 531441 * k + 1103 < 1048576 * k + 2175) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2255) 32 = 531441 * k + 1144 ∧ 531441 * k + 1144 < 1048576 * k + 2255) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2511) 32 = 531441 * k + 1274 ∧ 531441 * k + 1274 < 1048576 * k + 2511) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 2879) 32 = 531441 * k + 1460 ∧ 531441 * k + 1460 < 1048576 * k + 2879) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 3199) 32 = 531441 * k + 1622 ∧ 531441 * k + 1622 < 1048576 * k + 3199) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 3279) 32 = 531441 * k + 1663 ∧ 531441 * k + 1663 < 1048576 * k + 3279) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 3871) 32 = 531441 * k + 1963 ∧ 531441 * k + 1963 < 1048576 * k + 3871) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 4167) 32 = 531441 * k + 2113 ∧ 531441 * k + 2113 < 1048576 * k + 4167) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 4351) 32 = 531441 * k + 2206 ∧ 531441 * k + 2206 < 1048576 * k + 4351) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 4511) 32 = 531441 * k + 2287 ∧ 531441 * k + 2287 < 1048576 * k + 4511) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 5211) 32 = 531441 * k + 2642 ∧ 531441 * k + 2642 < 1048576 * k + 5211) ∧
  (∀ k : Nat, CollatzM20Shard001.iterate (1048576 * k + 5223) 32 = 531441 * k + 2648 ∧ 531441 * k + 2648 < 1048576 * k + 5223) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 5247) 32 = 531441 * k + 2660 ∧ 531441 * k + 2660 < 1048576 * k + 5247) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 5679) 32 = 531441 * k + 2879 ∧ 531441 * k + 2879 < 1048576 * k + 5679) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 6235) 32 = 531441 * k + 3161 ∧ 531441 * k + 3161 < 1048576 * k + 6235) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7271) 32 = 531441 * k + 3686 ∧ 531441 * k + 3686 < 1048576 * k + 7271) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7583) 32 = 531441 * k + 3844 ∧ 531441 * k + 3844 < 1048576 * k + 7583) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7615) 32 = 531441 * k + 3860 ∧ 531441 * k + 3860 < 1048576 * k + 7615) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7707) 32 = 531441 * k + 3907 ∧ 531441 * k + 3907 < 1048576 * k + 7707) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 7999) 32 = 531441 * k + 4055 ∧ 531441 * k + 4055 < 1048576 * k + 7999) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8039) 32 = 531441 * k + 4075 ∧ 531441 * k + 4075 < 1048576 * k + 8039) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8283) 32 = 531441 * k + 4199 ∧ 531441 * k + 4199 < 1048576 * k + 8283) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8319) 32 = 531441 * k + 4217 ∧ 531441 * k + 4217 < 1048576 * k + 8319) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8607) 32 = 531441 * k + 4363 ∧ 531441 * k + 4363 < 1048576 * k + 8607) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 8751) 32 = 531441 * k + 4436 ∧ 531441 * k + 4436 < 1048576 * k + 8751) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9023) 32 = 531441 * k + 4574 ∧ 531441 * k + 4574 < 1048576 * k + 9023) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9063) 32 = 531441 * k + 4594 ∧ 531441 * k + 4594 < 1048576 * k + 9063) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9343) 32 = 531441 * k + 4736 ∧ 531441 * k + 4736 < 1048576 * k + 9343) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9447) 32 = 531441 * k + 4789 ∧ 531441 * k + 4789 < 1048576 * k + 9447) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 9703) 32 = 531441 * k + 4919 ∧ 531441 * k + 4919 < 1048576 * k + 9703) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 10311) 32 = 531441 * k + 5227 ∧ 531441 * k + 5227 < 1048576 * k + 10311) ∧
  (∀ k : Nat, CollatzM20Shard002.iterate (1048576 * k + 10343) 32 = 531441 * k + 5243 ∧ 531441 * k + 5243 < 1048576 * k + 10343) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 10471) 32 = 531441 * k + 5308 ∧ 531441 * k + 5308 < 1048576 * k + 10471) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 10687) 32 = 531441 * k + 5417 ∧ 531441 * k + 5417 < 1048576 * k + 10687) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11111) 32 = 531441 * k + 5632 ∧ 531441 * k + 5632 < 1048576 * k + 11111) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11355) 32 = 531441 * k + 5756 ∧ 531441 * k + 5756 < 1048576 * k + 11355) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11471) 32 = 531441 * k + 5815 ∧ 531441 * k + 5815 < 1048576 * k + 11471) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11711) 32 = 531441 * k + 5936 ∧ 531441 * k + 5936 < 1048576 * k + 11711) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 11803) 32 = 531441 * k + 5983 ∧ 531441 * k + 5983 < 1048576 * k + 11803) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 12379) 32 = 531441 * k + 6275 ∧ 531441 * k + 6275 < 1048576 * k + 12379) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 12847) 32 = 531441 * k + 6512 ∧ 531441 * k + 6512 < 1048576 * k + 12847) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 13159) 32 = 531441 * k + 6670 ∧ 531441 * k + 6670 < 1048576 * k + 13159) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 13871) 32 = 531441 * k + 7031 ∧ 531441 * k + 7031 < 1048576 * k + 13871) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 14183) 32 = 531441 * k + 7189 ∧ 531441 * k + 7189 < 1048576 * k + 14183) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 14463) 32 = 531441 * k + 7331 ∧ 531441 * k + 7331 < 1048576 * k + 14463) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 14587) 32 = 531441 * k + 7394 ∧ 531441 * k + 7394 < 1048576 * k + 14587) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 15231) 32 = 531441 * k + 7720 ∧ 531441 * k + 7720 < 1048576 * k + 15231) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 15807) 32 = 531441 * k + 8012 ∧ 531441 * k + 8012 < 1048576 * k + 15807) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16079) 32 = 531441 * k + 8150 ∧ 531441 * k + 8150 < 1048576 * k + 16079) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16487) 32 = 531441 * k + 8357 ∧ 531441 * k + 8357 < 1048576 * k + 16487) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16799) 32 = 531441 * k + 8515 ∧ 531441 * k + 8515 < 1048576 * k + 16799) ∧
  (∀ k : Nat, CollatzM20Shard003.iterate (1048576 * k + 16943) 32 = 531441 * k + 8588 ∧ 531441 * k + 8588 < 1048576 * k + 16943) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17215) 32 = 531441 * k + 8726 ∧ 531441 * k + 8726 < 1048576 * k + 17215) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17375) 32 = 531441 * k + 8807 ∧ 531441 * k + 8807 < 1048576 * k + 17375) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17499) 32 = 531441 * k + 8870 ∧ 531441 * k + 8870 < 1048576 * k + 17499) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 17535) 32 = 531441 * k + 8888 ∧ 531441 * k + 8888 < 1048576 * k + 17535) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18127) 32 = 531441 * k + 9188 ∧ 531441 * k + 9188 < 1048576 * k + 18127) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18303) 32 = 531441 * k + 9277 ∧ 531441 * k + 9277 < 1048576 * k + 18303) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18503) 32 = 531441 * k + 9379 ∧ 531441 * k + 9379 < 1048576 * k + 18503) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18663) 32 = 531441 * k + 9460 ∧ 531441 * k + 9460 < 1048576 * k + 18663) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 18879) 32 = 531441 * k + 9569 ∧ 531441 * k + 9569 < 1048576 * k + 18879) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 19303) 32 = 531441 * k + 9784 ∧ 531441 * k + 9784 < 1048576 * k + 19303) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 19995) 32 = 531441 * k + 10135 ∧ 531441 * k + 10135 < 1048576 * k + 19995) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 20223) 32 = 531441 * k + 10250 ∧ 531441 * k + 10250 < 1048576 * k + 20223) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 20571) 32 = 531441 * k + 10427 ∧ 531441 * k + 10427 < 1048576 * k + 20571) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 21019) 32 = 531441 * k + 10654 ∧ 531441 * k + 10654 < 1048576 * k + 21019) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 21247) 32 = 531441 * k + 10769 ∧ 531441 * k + 10769 < 1048576 * k + 21247) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 21375) 32 = 531441 * k + 10834 ∧ 531441 * k + 10834 < 1048576 * k + 21375) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 22223) 32 = 531441 * k + 11264 ∧ 531441 * k + 11264 < 1048576 * k + 22223) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 23087) 32 = 531441 * k + 11702 ∧ 531441 * k + 11702 < 1048576 * k + 23087) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 23271) 32 = 531441 * k + 11795 ∧ 531441 * k + 11795 < 1048576 * k + 23271) ∧
  (∀ k : Nat, CollatzM20Shard004.iterate (1048576 * k + 23295) 32 = 531441 * k + 11807 ∧ 531441 * k + 11807 < 1048576 * k + 23295) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 23423) 32 = 531441 * k + 11872 ∧ 531441 * k + 11872 < 1048576 * k + 23423) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 23519) 32 = 531441 * k + 11921 ∧ 531441 * k + 11921 < 1048576 * k + 23519) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 25319) 32 = 531441 * k + 12833 ∧ 531441 * k + 12833 < 1048576 * k + 25319) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 25631) 32 = 531441 * k + 12991 ∧ 531441 * k + 12991 < 1048576 * k + 25631) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 26319) 32 = 531441 * k + 13340 ∧ 531441 * k + 13340 < 1048576 * k + 26319) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 26495) 32 = 531441 * k + 13429 ∧ 531441 * k + 13429 < 1048576 * k + 26495) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 26875) 32 = 531441 * k + 13622 ∧ 531441 * k + 13622 < 1048576 * k + 26875) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 27035) 32 = 531441 * k + 13703 ∧ 531441 * k + 13703 < 1048576 * k + 27035) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 27391) 32 = 531441 * k + 13883 ∧ 531441 * k + 13883 < 1048576 * k + 27391) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 27679) 32 = 531441 * k + 14029 ∧ 531441 * k + 14029 < 1048576 * k + 27679) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 28367) 32 = 531441 * k + 14378 ∧ 531441 * k + 14378 < 1048576 * k + 28367) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 29211) 32 = 531441 * k + 14806 ∧ 531441 * k + 14806 < 1048576 * k + 29211) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 29415) 32 = 531441 * k + 14909 ∧ 531441 * k + 14909 < 1048576 * k + 29415) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 29727) 32 = 531441 * k + 15067 ∧ 531441 * k + 15067 < 1048576 * k + 29727) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31131) 32 = 531441 * k + 15779 ∧ 531441 * k + 15779 < 1048576 * k + 31131) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31279) 32 = 531441 * k + 15854 ∧ 531441 * k + 15854 < 1048576 * k + 31279) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31439) 32 = 531441 * k + 15935 ∧ 531441 * k + 15935 < 1048576 * k + 31439) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 31487) 32 = 531441 * k + 15959 ∧ 531441 * k + 15959 < 1048576 * k + 31487) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 32047) 32 = 531441 * k + 16243 ∧ 531441 * k + 16243 < 1048576 * k + 32047) ∧
  (∀ k : Nat, CollatzM20Shard005.iterate (1048576 * k + 32639) 32 = 531441 * k + 16543 ∧ 531441 * k + 16543 < 1048576 * k + 32639) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 32799) 32 = 531441 * k + 16624 ∧ 531441 * k + 16624 < 1048576 * k + 32799) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 32935) 32 = 531441 * k + 16693 ∧ 531441 * k + 16693 < 1048576 * k + 32935) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 33511) 32 = 531441 * k + 16985 ∧ 531441 * k + 16985 < 1048576 * k + 33511) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 33535) 32 = 531441 * k + 16997 ∧ 531441 * k + 16997 < 1048576 * k + 33535) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 33819) 32 = 531441 * k + 17141 ∧ 531441 * k + 17141 < 1048576 * k + 33819) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 34983) 32 = 531441 * k + 17731 ∧ 531441 * k + 17731 < 1048576 * k + 34983) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35327) 32 = 531441 * k + 17905 ∧ 531441 * k + 17905 < 1048576 * k + 35327) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35559) 32 = 531441 * k + 18023 ∧ 531441 * k + 18023 < 1048576 * k + 35559) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35867) 32 = 531441 * k + 18179 ∧ 531441 * k + 18179 < 1048576 * k + 35867) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35871) 32 = 531441 * k + 18181 ∧ 531441 * k + 18181 < 1048576 * k + 35871) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 35995) 32 = 531441 * k + 18244 ∧ 531441 * k + 18244 < 1048576 * k + 35995) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 36895) 32 = 531441 * k + 18700 ∧ 531441 * k + 18700 < 1048576 * k + 36895) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 37359) 32 = 531441 * k + 18935 ∧ 531441 * k + 18935 < 1048576 * k + 37359) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 37375) 32 = 531441 * k + 18943 ∧ 531441 * k + 18943 < 1048576 * k + 37375) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 37583) 32 = 531441 * k + 19049 ∧ 531441 * k + 19049 < 1048576 * k + 37583) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 38631) 32 = 531441 * k + 19580 ∧ 531441 * k + 19580 < 1048576 * k + 38631) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39079) 32 = 531441 * k + 19807 ∧ 531441 * k + 19807 < 1048576 * k + 39079) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39323) 32 = 531441 * k + 19931 ∧ 531441 * k + 19931 < 1048576 * k + 39323) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39423) 32 = 531441 * k + 19981 ∧ 531441 * k + 19981 < 1048576 * k + 39423) ∧
  (∀ k : Nat, CollatzM20Shard006.iterate (1048576 * k + 39963) 32 = 531441 * k + 20255 ∧ 531441 * k + 20255 < 1048576 * k + 39963) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40091) 32 = 531441 * k + 20320 ∧ 531441 * k + 20320 < 1048576 * k + 40091) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40127) 32 = 531441 * k + 20338 ∧ 531441 * k + 20338 < 1048576 * k + 40127) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40239) 32 = 531441 * k + 20395 ∧ 531441 * k + 20395 < 1048576 * k + 40239) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40347) 32 = 531441 * k + 20450 ∧ 531441 * k + 20450 < 1048576 * k + 40347) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 40447) 32 = 531441 * k + 20500 ∧ 531441 * k + 20500 < 1048576 * k + 40447) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 41455) 32 = 531441 * k + 21011 ∧ 531441 * k + 21011 < 1048576 * k + 41455) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 42495) 32 = 531441 * k + 21538 ∧ 531441 * k + 21538 < 1048576 * k + 42495) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 43003) 32 = 531441 * k + 21796 ∧ 531441 * k + 21796 < 1048576 * k + 43003) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44059) 32 = 531441 * k + 22331 ∧ 531441 * k + 22331 < 1048576 * k + 44059) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44199) 32 = 531441 * k + 22402 ∧ 531441 * k + 22402 < 1048576 * k + 44199) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44391) 32 = 531441 * k + 22499 ∧ 531441 * k + 22499 < 1048576 * k + 44391) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44527) 32 = 531441 * k + 22568 ∧ 531441 * k + 22568 < 1048576 * k + 44527) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 44775) 32 = 531441 * k + 22694 ∧ 531441 * k + 22694 < 1048576 * k + 44775) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 45087) 32 = 531441 * k + 22852 ∧ 531441 * k + 22852 < 1048576 * k + 45087) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 45551) 32 = 531441 * k + 23087 ∧ 531441 * k + 23087 < 1048576 * k + 45551) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 45567) 32 = 531441 * k + 23095 ∧ 531441 * k + 23095 < 1048576 * k + 45567) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46107) 32 = 531441 * k + 23369 ∧ 531441 * k + 23369 < 1048576 * k + 46107) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46271) 32 = 531441 * k + 23452 ∧ 531441 * k + 23452 < 1048576 * k + 46271) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46383) 32 = 531441 * k + 23509 ∧ 531441 * k + 23509 < 1048576 * k + 46383) ∧
  (∀ k : Nat, CollatzM20Shard007.iterate (1048576 * k + 46543) 32 = 531441 * k + 23590 ∧ 531441 * k + 23590 < 1048576 * k + 46543) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 46591) 32 = 531441 * k + 23614 ∧ 531441 * k + 23614 < 1048576 * k + 46591) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 46875) 32 = 531441 * k + 23758 ∧ 531441 * k + 23758 < 1048576 * k + 46875) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 47271) 32 = 531441 * k + 23959 ∧ 531441 * k + 23959 < 1048576 * k + 47271) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 47599) 32 = 531441 * k + 24125 ∧ 531441 * k + 24125 < 1048576 * k + 47599) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 47899) 32 = 531441 * k + 24277 ∧ 531441 * k + 24277 < 1048576 * k + 47899) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 48283) 32 = 531441 * k + 24472 ∧ 531441 * k + 24472 < 1048576 * k + 48283) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 48487) 32 = 531441 * k + 24575 ∧ 531441 * k + 24575 < 1048576 * k + 48487) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 48539) 32 = 531441 * k + 24602 ∧ 531441 * k + 24602 < 1048576 * k + 48539) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49147) 32 = 531441 * k + 24910 ∧ 531441 * k + 24910 < 1048576 * k + 49147) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49179) 32 = 531441 * k + 24926 ∧ 531441 * k + 24926 < 1048576 * k + 49179) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49307) 32 = 531441 * k + 24991 ∧ 531441 * k + 24991 < 1048576 * k + 49307) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 49947) 32 = 531441 * k + 25315 ∧ 531441 * k + 25315 < 1048576 * k + 49947) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 50639) 32 = 531441 * k + 25666 ∧ 531441 * k + 25666 < 1048576 * k + 50639) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 50671) 32 = 531441 * k + 25682 ∧ 531441 * k + 25682 < 1048576 * k + 50671) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51263) 32 = 531441 * k + 25982 ∧ 531441 * k + 25982 < 1048576 * k + 51263) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51559) 32 = 531441 * k + 26132 ∧ 531441 * k + 26132 < 1048576 * k + 51559) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51695) 32 = 531441 * k + 26201 ∧ 531441 * k + 26201 < 1048576 * k + 51695) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 51995) 32 = 531441 * k + 26353 ∧ 531441 * k + 26353 < 1048576 * k + 51995) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 52463) 32 = 531441 * k + 26590 ∧ 531441 * k + 26590 < 1048576 * k + 52463) ∧
  (∀ k : Nat, CollatzM20Shard008.iterate (1048576 * k + 52583) 32 = 531441 * k + 26651 ∧ 531441 * k + 26651 < 1048576 * k + 52583) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 53019) 32 = 531441 * k + 26872 ∧ 531441 * k + 26872 < 1048576 * k + 53019) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 53575) 32 = 531441 * k + 27154 ∧ 531441 * k + 27154 < 1048576 * k + 53575) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 53735) 32 = 531441 * k + 27235 ∧ 531441 * k + 27235 < 1048576 * k + 53735) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 54463) 32 = 531441 * k + 27604 ∧ 531441 * k + 27604 < 1048576 * k + 54463) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 54631) 32 = 531441 * k + 27689 ∧ 531441 * k + 27689 < 1048576 * k + 54631) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 54783) 32 = 531441 * k + 27766 ∧ 531441 * k + 27766 < 1048576 * k + 54783) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 55323) 32 = 531441 * k + 28040 ∧ 531441 * k + 28040 < 1048576 * k + 55323) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 55359) 32 = 531441 * k + 28058 ∧ 531441 * k + 28058 < 1048576 * k + 55359) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 56559) 32 = 531441 * k + 28666 ∧ 531441 * k + 28666 < 1048576 * k + 56559) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 56815) 32 = 531441 * k + 28796 ∧ 531441 * k + 28796 < 1048576 * k + 56815) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57339) 32 = 531441 * k + 29062 ∧ 531441 * k + 29062 < 1048576 * k + 57339) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57499) 32 = 531441 * k + 29143 ∧ 531441 * k + 29143 < 1048576 * k + 57499) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57703) 32 = 531441 * k + 29246 ∧ 531441 * k + 29246 < 1048576 * k + 57703) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 57831) 32 = 531441 * k + 29311 ∧ 531441 * k + 29311 < 1048576 * k + 57831) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58139) 32 = 531441 * k + 29467 ∧ 531441 * k + 29467 < 1048576 * k + 58139) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58727) 32 = 531441 * k + 29765 ∧ 531441 * k + 29765 < 1048576 * k + 58727) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58751) 32 = 531441 * k + 29777 ∧ 531441 * k + 29777 < 1048576 * k + 58751) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 58831) 32 = 531441 * k + 29818 ∧ 531441 * k + 29818 < 1048576 * k + 58831) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 59455) 32 = 531441 * k + 30134 ∧ 531441 * k + 30134 < 1048576 * k + 59455) ∧
  (∀ k : Nat, CollatzM20Shard009.iterate (1048576 * k + 59855) 32 = 531441 * k + 30337 ∧ 531441 * k + 30337 < 1048576 * k + 59855) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 59887) 32 = 531441 * k + 30353 ∧ 531441 * k + 30353 < 1048576 * k + 59887) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 61087) 32 = 531441 * k + 30961 ∧ 531441 * k + 30961 < 1048576 * k + 61087) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 62107) 32 = 531441 * k + 31478 ∧ 531441 * k + 31478 < 1048576 * k + 62107) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 63847) 32 = 531441 * k + 32360 ∧ 531441 * k + 32360 < 1048576 * k + 63847) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64155) 32 = 531441 * k + 32516 ∧ 531441 * k + 32516 < 1048576 * k + 64155) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64575) 32 = 531441 * k + 32729 ∧ 531441 * k + 32729 < 1048576 * k + 64575) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64615) 32 = 531441 * k + 32749 ∧ 531441 * k + 32749 < 1048576 * k + 64615) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 64895) 32 = 531441 * k + 32891 ∧ 531441 * k + 32891 < 1048576 * k + 64895) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 65599) 32 = 531441 * k + 33248 ∧ 531441 * k + 33248 < 1048576 * k + 65599) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 65647) 32 = 531441 * k + 33272 ∧ 531441 * k + 33272 < 1048576 * k + 65647) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 65775) 32 = 531441 * k + 33337 ∧ 531441 * k + 33337 < 1048576 * k + 65775) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 66023) 32 = 531441 * k + 33463 ∧ 531441 * k + 33463 < 1048576 * k + 66023) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 66919) 32 = 531441 * k + 33917 ∧ 531441 * k + 33917 < 1048576 * k + 66919) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 67047) 32 = 531441 * k + 33982 ∧ 531441 * k + 33982 < 1048576 * k + 67047) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 67687) 32 = 531441 * k + 34306 ∧ 531441 * k + 34306 < 1048576 * k + 67687) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68047) 32 = 531441 * k + 34489 ∧ 531441 * k + 34489 < 1048576 * k + 68047) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68251) 32 = 531441 * k + 34592 ∧ 531441 * k + 34592 < 1048576 * k + 68251) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68287) 32 = 531441 * k + 34610 ∧ 531441 * k + 34610 < 1048576 * k + 68287) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68415) 32 = 531441 * k + 34675 ∧ 531441 * k + 34675 < 1048576 * k + 68415) ∧
  (∀ k : Nat, CollatzM20Shard010.iterate (1048576 * k + 68735) 32 = 531441 * k + 34837 ∧ 531441 * k + 34837 < 1048576 * k + 68735) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 69631) 32 = 531441 * k + 35291 ∧ 531441 * k + 35291 < 1048576 * k + 69631) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 69743) 32 = 531441 * k + 35348 ∧ 531441 * k + 35348 < 1048576 * k + 69743) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 70655) 32 = 531441 * k + 35810 ∧ 531441 * k + 35810 < 1048576 * k + 70655) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 70759) 32 = 531441 * k + 35863 ∧ 531441 * k + 35863 < 1048576 * k + 70759) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 70783) 32 = 531441 * k + 35875 ∧ 531441 * k + 35875 < 1048576 * k + 70783) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 71039) 32 = 531441 * k + 36005 ∧ 531441 * k + 36005 < 1048576 * k + 71039) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 71679) 32 = 531441 * k + 36329 ∧ 531441 * k + 36329 < 1048576 * k + 71679) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 71771) 32 = 531441 * k + 36376 ∧ 531441 * k + 36376 < 1048576 * k + 71771) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72347) 32 = 531441 * k + 36668 ∧ 531441 * k + 36668 < 1048576 * k + 72347) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72359) 32 = 531441 * k + 36674 ∧ 531441 * k + 36674 < 1048576 * k + 72359) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72807) 32 = 531441 * k + 36901 ∧ 531441 * k + 36901 < 1048576 * k + 72807) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 72815) 32 = 531441 * k + 36905 ∧ 531441 * k + 36905 < 1048576 * k + 72815) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73791) 32 = 531441 * k + 37400 ∧ 531441 * k + 37400 < 1048576 * k + 73791) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73819) 32 = 531441 * k + 37414 ∧ 531441 * k + 37414 < 1048576 * k + 73819) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73839) 32 = 531441 * k + 37424 ∧ 531441 * k + 37424 < 1048576 * k + 73839) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 73951) 32 = 531441 * k + 37481 ∧ 531441 * k + 37481 < 1048576 * k + 73951) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74395) 32 = 531441 * k + 37706 ∧ 531441 * k + 37706 < 1048576 * k + 74395) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74559) 32 = 531441 * k + 37789 ∧ 531441 * k + 37789 < 1048576 * k + 74559) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74719) 32 = 531441 * k + 37870 ∧ 531441 * k + 37870 < 1048576 * k + 74719) ∧
  (∀ k : Nat, CollatzM20Shard011.iterate (1048576 * k + 74751) 32 = 531441 * k + 37886 ∧ 531441 * k + 37886 < 1048576 * k + 74751) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 74879) 32 = 531441 * k + 37951 ∧ 531441 * k + 37951 < 1048576 * k + 74879) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 75239) 32 = 531441 * k + 38134 ∧ 531441 * k + 38134 < 1048576 * k + 75239) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 75879) 32 = 531441 * k + 38458 ∧ 531441 * k + 38458 < 1048576 * k + 75879) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 75887) 32 = 531441 * k + 38462 ∧ 531441 * k + 38462 < 1048576 * k + 75887) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 76455) 32 = 531441 * k + 38750 ∧ 531441 * k + 38750 < 1048576 * k + 76455) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 77467) 32 = 531441 * k + 39263 ∧ 531441 * k + 39263 < 1048576 * k + 77467) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 77915) 32 = 531441 * k + 39490 ∧ 531441 * k + 39490 < 1048576 * k + 77915) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 78847) 32 = 531441 * k + 39962 ∧ 531441 * k + 39962 < 1048576 * k + 78847) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 78959) 32 = 531441 * k + 40019 ∧ 531441 * k + 40019 < 1048576 * k + 78959) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 79407) 32 = 531441 * k + 40246 ∧ 531441 * k + 40246 < 1048576 * k + 79407) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 79983) 32 = 531441 * k + 40538 ∧ 531441 * k + 40538 < 1048576 * k + 79983) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 79999) 32 = 531441 * k + 40546 ∧ 531441 * k + 40546 < 1048576 * k + 79999) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80095) 32 = 531441 * k + 40595 ∧ 531441 * k + 40595 < 1048576 * k + 80095) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80255) 32 = 531441 * k + 40676 ∧ 531441 * k + 40676 < 1048576 * k + 80255) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80551) 32 = 531441 * k + 40826 ∧ 531441 * k + 40826 < 1048576 * k + 80551) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 80575) 32 = 531441 * k + 40838 ∧ 531441 * k + 40838 < 1048576 * k + 80575) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 81343) 32 = 531441 * k + 41227 ∧ 531441 * k + 41227 < 1048576 * k + 81343) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 82023) 32 = 531441 * k + 41572 ∧ 531441 * k + 41572 < 1048576 * k + 82023) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 82479) 32 = 531441 * k + 41803 ∧ 531441 * k + 41803 < 1048576 * k + 82479) ∧
  (∀ k : Nat, CollatzM20Shard012.iterate (1048576 * k + 82751) 32 = 531441 * k + 41941 ∧ 531441 * k + 41941 < 1048576 * k + 82751) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 82911) 32 = 531441 * k + 42022 ∧ 531441 * k + 42022 < 1048576 * k + 82911) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83035) 32 = 531441 * k + 42085 ∧ 531441 * k + 42085 < 1048576 * k + 83035) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83071) 32 = 531441 * k + 42103 ∧ 531441 * k + 42103 < 1048576 * k + 83071) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83227) 32 = 531441 * k + 42182 ∧ 531441 * k + 42182 < 1048576 * k + 83227) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 83611) 32 = 531441 * k + 42377 ∧ 531441 * k + 42377 < 1048576 * k + 83611) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 84415) 32 = 531441 * k + 42784 ∧ 531441 * k + 42784 < 1048576 * k + 84415) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 85103) 32 = 531441 * k + 43133 ∧ 531441 * k + 43133 < 1048576 * k + 85103) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 85671) 32 = 531441 * k + 43421 ∧ 531441 * k + 43421 < 1048576 * k + 85671) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 85711) 32 = 531441 * k + 43441 ∧ 531441 * k + 43441 < 1048576 * k + 85711) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 86107) 32 = 531441 * k + 43642 ∧ 531441 * k + 43642 < 1048576 * k + 86107) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 86695) 32 = 531441 * k + 43940 ∧ 531441 * k + 43940 < 1048576 * k + 86695) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 87199) 32 = 531441 * k + 44195 ∧ 531441 * k + 44195 < 1048576 * k + 87199) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 87323) 32 = 531441 * k + 44258 ∧ 531441 * k + 44258 < 1048576 * k + 87323) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 88175) 32 = 531441 * k + 44690 ∧ 531441 * k + 44690 < 1048576 * k + 88175) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 88623) 32 = 531441 * k + 44917 ∧ 531441 * k + 44917 < 1048576 * k + 88623) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 88783) 32 = 531441 * k + 44998 ∧ 531441 * k + 44998 < 1048576 * k + 88783) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 89055) 32 = 531441 * k + 45136 ∧ 531441 * k + 45136 < 1048576 * k + 89055) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 90271) 32 = 531441 * k + 45752 ∧ 531441 * k + 45752 < 1048576 * k + 90271) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 90395) 32 = 531441 * k + 45815 ∧ 531441 * k + 45815 < 1048576 * k + 90395) ∧
  (∀ k : Nat, CollatzM20Shard013.iterate (1048576 * k + 90863) 32 = 531441 * k + 46052 ∧ 531441 * k + 46052 < 1048576 * k + 90863) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 90879) 32 = 531441 * k + 46060 ∧ 531441 * k + 46060 < 1048576 * k + 90879) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 91419) 32 = 531441 * k + 46334 ∧ 531441 * k + 46334 < 1048576 * k + 91419) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 91855) 32 = 531441 * k + 46555 ∧ 531441 * k + 46555 < 1048576 * k + 91855) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 92411) 32 = 531441 * k + 46837 ∧ 531441 * k + 46837 < 1048576 * k + 92411) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 92571) 32 = 531441 * k + 46918 ∧ 531441 * k + 46918 < 1048576 * k + 92571) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 92903) 32 = 531441 * k + 47086 ∧ 531441 * k + 47086 < 1048576 * k + 92903) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 93467) 32 = 531441 * k + 47372 ∧ 531441 * k + 47372 < 1048576 * k + 93467) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 93903) 32 = 531441 * k + 47593 ∧ 531441 * k + 47593 < 1048576 * k + 93903) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 93935) 32 = 531441 * k + 47609 ∧ 531441 * k + 47609 < 1048576 * k + 93935) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 94887) 32 = 531441 * k + 48092 ∧ 531441 * k + 48092 < 1048576 * k + 94887) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 95047) 32 = 531441 * k + 48173 ∧ 531441 * k + 48173 < 1048576 * k + 95047) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 95975) 32 = 531441 * k + 48643 ∧ 531441 * k + 48643 < 1048576 * k + 95975) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96539) 32 = 531441 * k + 48929 ∧ 531441 * k + 48929 < 1048576 * k + 96539) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96575) 32 = 531441 * k + 48947 ∧ 531441 * k + 48947 < 1048576 * k + 96575) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96667) 32 = 531441 * k + 48994 ∧ 531441 * k + 48994 < 1048576 * k + 96667) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96815) 32 = 531441 * k + 49069 ∧ 531441 * k + 49069 < 1048576 * k + 96815) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 96975) 32 = 531441 * k + 49150 ∧ 531441 * k + 49150 < 1048576 * k + 96975) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 97023) 32 = 531441 * k + 49174 ∧ 531441 * k + 49174 < 1048576 * k + 97023) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 97563) 32 = 531441 * k + 49448 ∧ 531441 * k + 49448 < 1048576 * k + 97563) ∧
  (∀ k : Nat, CollatzM20Shard014.iterate (1048576 * k + 97919) 32 = 531441 * k + 49628 ∧ 531441 * k + 49628 < 1048576 * k + 97919) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 98031) 32 = 531441 * k + 49685 ∧ 531441 * k + 49685 < 1048576 * k + 98031) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 98943) 32 = 531441 * k + 50147 ∧ 531441 * k + 50147 < 1048576 * k + 98943) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99047) 32 = 531441 * k + 50200 ∧ 531441 * k + 50200 < 1048576 * k + 99047) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99055) 32 = 531441 * k + 50204 ∧ 531441 * k + 50204 < 1048576 * k + 99055) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99071) 32 = 531441 * k + 50212 ∧ 531441 * k + 50212 < 1048576 * k + 99071) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99487) 32 = 531441 * k + 50423 ∧ 531441 * k + 50423 < 1048576 * k + 99487) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 99967) 32 = 531441 * k + 50666 ∧ 531441 * k + 50666 < 1048576 * k + 99967) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 101095) 32 = 531441 * k + 51238 ∧ 531441 * k + 51238 < 1048576 * k + 101095) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 101191) 32 = 531441 * k + 51287 ∧ 531441 * k + 51287 < 1048576 * k + 101191) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 102127) 32 = 531441 * k + 51761 ∧ 531441 * k + 51761 < 1048576 * k + 102127) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 102683) 32 = 531441 * k + 52043 ∧ 531441 * k + 52043 < 1048576 * k + 102683) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 103039) 32 = 531441 * k + 52223 ∧ 531441 * k + 52223 < 1048576 * k + 103039) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 103119) 32 = 531441 * k + 52264 ∧ 531441 * k + 52264 < 1048576 * k + 103119) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 103451) 32 = 531441 * k + 52432 ∧ 531441 * k + 52432 < 1048576 * k + 103451) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 104167) 32 = 531441 * k + 52795 ∧ 531441 * k + 52795 < 1048576 * k + 104167) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 104859) 32 = 531441 * k + 53146 ∧ 531441 * k + 53146 < 1048576 * k + 104859) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 104927) 32 = 531441 * k + 53180 ∧ 531441 * k + 53180 < 1048576 * k + 104927) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 105755) 32 = 531441 * k + 53600 ∧ 531441 * k + 53600 < 1048576 * k + 105755) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 105883) 32 = 531441 * k + 53665 ∧ 531441 * k + 53665 < 1048576 * k + 105883) ∧
  (∀ k : Nat, CollatzM20Shard015.iterate (1048576 * k + 106111) 32 = 531441 * k + 53780 ∧ 531441 * k + 53780 < 1048576 * k + 106111) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 106523) 32 = 531441 * k + 53989 ∧ 531441 * k + 53989 < 1048576 * k + 106523) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 107135) 32 = 531441 * k + 54299 ∧ 531441 * k + 54299 < 1048576 * k + 107135) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 107999) 32 = 531441 * k + 54737 ∧ 531441 * k + 54737 < 1048576 * k + 107999) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 108135) 32 = 531441 * k + 54806 ∧ 531441 * k + 54806 < 1048576 * k + 108135) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 108271) 32 = 531441 * k + 54875 ∧ 531441 * k + 54875 < 1048576 * k + 108271) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 108863) 32 = 531441 * k + 55175 ∧ 531441 * k + 55175 < 1048576 * k + 108863) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 109183) 32 = 531441 * k + 55337 ∧ 531441 * k + 55337 < 1048576 * k + 109183) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 109595) 32 = 531441 * k + 55546 ∧ 531441 * k + 55546 < 1048576 * k + 109595) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 110311) 32 = 531441 * k + 55909 ∧ 531441 * k + 55909 < 1048576 * k + 110311) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 111087) 32 = 531441 * k + 56302 ∧ 531441 * k + 56302 < 1048576 * k + 111087) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 111195) 32 = 531441 * k + 56357 ∧ 531441 * k + 56357 < 1048576 * k + 111195) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 111643) 32 = 531441 * k + 56584 ∧ 531441 * k + 56584 < 1048576 * k + 111643) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 112095) 32 = 531441 * k + 56813 ∧ 531441 * k + 56813 < 1048576 * k + 112095) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 112255) 32 = 531441 * k + 56894 ∧ 531441 * k + 56894 < 1048576 * k + 112255) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 113119) 32 = 531441 * k + 57332 ∧ 531441 * k + 57332 < 1048576 * k + 113119) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 113135) 32 = 531441 * k + 57340 ∧ 531441 * k + 57340 < 1048576 * k + 113135) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 113279) 32 = 531441 * k + 57413 ∧ 531441 * k + 57413 < 1048576 * k + 113279) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 114075) 32 = 531441 * k + 57817 ∧ 531441 * k + 57817 < 1048576 * k + 114075) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 114279) 32 = 531441 * k + 57920 ∧ 531441 * k + 57920 < 1048576 * k + 114279) ∧
  (∀ k : Nat, CollatzM20Shard016.iterate (1048576 * k + 114715) 32 = 531441 * k + 58141 ∧ 531441 * k + 58141 < 1048576 * k + 114715) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 115291) 32 = 531441 * k + 58433 ∧ 531441 * k + 58433 < 1048576 * k + 115291) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 115647) 32 = 531441 * k + 58613 ∧ 531441 * k + 58613 < 1048576 * k + 115647) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 116191) 32 = 531441 * k + 58889 ∧ 531441 * k + 58889 < 1048576 * k + 116191) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 116463) 32 = 531441 * k + 59027 ∧ 531441 * k + 59027 < 1048576 * k + 116463) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 117231) 32 = 531441 * k + 59416 ∧ 531441 * k + 59416 < 1048576 * k + 117231) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 117695) 32 = 531441 * k + 59651 ∧ 531441 * k + 59651 < 1048576 * k + 117695) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 118119) 32 = 531441 * k + 59866 ∧ 531441 * k + 59866 < 1048576 * k + 118119) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 119387) 32 = 531441 * k + 60509 ∧ 531441 * k + 60509 < 1048576 * k + 119387) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 120167) 32 = 531441 * k + 60904 ∧ 531441 * k + 60904 < 1048576 * k + 120167) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 120423) 32 = 531441 * k + 61034 ∧ 531441 * k + 61034 < 1048576 * k + 120423) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 120859) 32 = 531441 * k + 61255 ∧ 531441 * k + 61255 < 1048576 * k + 120859) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 121471) 32 = 531441 * k + 61565 ∧ 531441 * k + 61565 < 1048576 * k + 121471) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 121791) 32 = 531441 * k + 61727 ∧ 531441 * k + 61727 < 1048576 * k + 121791) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 122335) 32 = 531441 * k + 62003 ∧ 531441 * k + 62003 < 1048576 * k + 122335) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 122351) 32 = 531441 * k + 62011 ∧ 531441 * k + 62011 < 1048576 * k + 122351) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 122927) 32 = 531441 * k + 62303 ∧ 531441 * k + 62303 < 1048576 * k + 122927) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 124263) 32 = 531441 * k + 62980 ∧ 531441 * k + 62980 < 1048576 * k + 124263) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 124507) 32 = 531441 * k + 63104 ∧ 531441 * k + 63104 < 1048576 * k + 124507) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 124991) 32 = 531441 * k + 63349 ∧ 531441 * k + 63349 < 1048576 * k + 124991) ∧
  (∀ k : Nat, CollatzM20Shard017.iterate (1048576 * k + 125423) 32 = 531441 * k + 63568 ∧ 531441 * k + 63568 < 1048576 * k + 125423) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 125531) 32 = 531441 * k + 63623 ∧ 531441 * k + 63623 < 1048576 * k + 125531) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 125887) 32 = 531441 * k + 63803 ∧ 531441 * k + 63803 < 1048576 * k + 125887) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 127023) 32 = 531441 * k + 64379 ∧ 531441 * k + 64379 < 1048576 * k + 127023) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 127935) 32 = 531441 * k + 64841 ∧ 531441 * k + 64841 < 1048576 * k + 127935) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 128935) 32 = 531441 * k + 65348 ∧ 531441 * k + 65348 < 1048576 * k + 128935) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 129231) 32 = 531441 * k + 65498 ∧ 531441 * k + 65498 < 1048576 * k + 129231) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 129383) 32 = 531441 * k + 65575 ∧ 531441 * k + 65575 < 1048576 * k + 129383) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 129639) 32 = 531441 * k + 65705 ∧ 531441 * k + 65705 < 1048576 * k + 129639) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 130527) 32 = 531441 * k + 66155 ∧ 531441 * k + 66155 < 1048576 * k + 130527) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131007) 32 = 531441 * k + 66398 ∧ 531441 * k + 66398 < 1048576 * k + 131007) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131135) 32 = 531441 * k + 66463 ∧ 531441 * k + 66463 < 1048576 * k + 131135) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131295) 32 = 531441 * k + 66544 ∧ 531441 * k + 66544 < 1048576 * k + 131295) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 131739) 32 = 531441 * k + 66769 ∧ 531441 * k + 66769 < 1048576 * k + 131739) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 132455) 32 = 531441 * k + 67132 ∧ 531441 * k + 67132 < 1048576 * k + 132455) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 133031) 32 = 531441 * k + 67424 ∧ 531441 * k + 67424 < 1048576 * k + 133031) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 133723) 32 = 531441 * k + 67775 ∧ 531441 * k + 67775 < 1048576 * k + 133723) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 133883) 32 = 531441 * k + 67856 ∧ 531441 * k + 67856 < 1048576 * k + 133883) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 134399) 32 = 531441 * k + 68117 ∧ 531441 * k + 68117 < 1048576 * k + 134399) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 134811) 32 = 531441 * k + 68326 ∧ 531441 * k + 68326 < 1048576 * k + 134811) ∧
  (∀ k : Nat, CollatzM20Shard018.iterate (1048576 * k + 135215) 32 = 531441 * k + 68531 ∧ 531441 * k + 68531 < 1048576 * k + 135215) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 135375) 32 = 531441 * k + 68612 ∧ 531441 * k + 68612 < 1048576 * k + 135375) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136239) 32 = 531441 * k + 69050 ∧ 531441 * k + 69050 < 1048576 * k + 136239) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136423) 32 = 531441 * k + 69143 ∧ 531441 * k + 69143 < 1048576 * k + 136423) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136575) 32 = 531441 * k + 69220 ∧ 531441 * k + 69220 < 1048576 * k + 136575) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 136607) 32 = 531441 * k + 69236 ∧ 531441 * k + 69236 < 1048576 * k + 136607) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137127) 32 = 531441 * k + 69500 ∧ 531441 * k + 69500 < 1048576 * k + 137127) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137151) 32 = 531441 * k + 69512 ∧ 531441 * k + 69512 < 1048576 * k + 137151) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137471) 32 = 531441 * k + 69674 ∧ 531441 * k + 69674 < 1048576 * k + 137471) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 137883) 32 = 531441 * k + 69883 ∧ 531441 * k + 69883 < 1048576 * k + 137883) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139327) 32 = 531441 * k + 70615 ∧ 531441 * k + 70615 < 1048576 * k + 139327) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139375) 32 = 531441 * k + 70639 ∧ 531441 * k + 70639 < 1048576 * k + 139375) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139487) 32 = 531441 * k + 70696 ∧ 531441 * k + 70696 < 1048576 * k + 139487) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 139931) 32 = 531441 * k + 70921 ∧ 531441 * k + 70921 < 1048576 * k + 139931) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 140027) 32 = 531441 * k + 70970 ∧ 531441 * k + 70970 < 1048576 * k + 140027) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 140543) 32 = 531441 * k + 71231 ∧ 531441 * k + 71231 < 1048576 * k + 140543) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 140703) 32 = 531441 * k + 71312 ∧ 531441 * k + 71312 < 1048576 * k + 140703) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 141423) 32 = 531441 * k + 71677 ∧ 531441 * k + 71677 < 1048576 * k + 141423) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 141519) 32 = 531441 * k + 71726 ∧ 531441 * k + 71726 < 1048576 * k + 141519) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 141567) 32 = 531441 * k + 71750 ∧ 531441 * k + 71750 < 1048576 * k + 141567) ∧
  (∀ k : Nat, CollatzM20Shard019.iterate (1048576 * k + 142247) 32 = 531441 * k + 72095 ∧ 531441 * k + 72095 < 1048576 * k + 142247) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 142567) 32 = 531441 * k + 72257 ∧ 531441 * k + 72257 < 1048576 * k + 142567) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 143003) 32 = 531441 * k + 72478 ∧ 531441 * k + 72478 < 1048576 * k + 143003) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 143271) 32 = 531441 * k + 72614 ∧ 531441 * k + 72614 < 1048576 * k + 143271) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 143775) 32 = 531441 * k + 72869 ∧ 531441 * k + 72869 < 1048576 * k + 143775) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 144383) 32 = 531441 * k + 73177 ∧ 531441 * k + 73177 < 1048576 * k + 144383) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 144431) 32 = 531441 * k + 73202 ∧ 531441 * k + 73202 < 1048576 * k + 144431) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 144799) 32 = 531441 * k + 73388 ∧ 531441 * k + 73388 < 1048576 * k + 144799) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 145519) 32 = 531441 * k + 73753 ∧ 531441 * k + 73753 < 1048576 * k + 145519) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 145631) 32 = 531441 * k + 73810 ∧ 531441 * k + 73810 < 1048576 * k + 145631) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 145791) 32 = 531441 * k + 73891 ∧ 531441 * k + 73891 < 1048576 * k + 145791) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146087) 32 = 531441 * k + 74041 ∧ 531441 * k + 74041 < 1048576 * k + 146087) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146111) 32 = 531441 * k + 74053 ∧ 531441 * k + 74053 < 1048576 * k + 146111) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146847) 32 = 531441 * k + 74426 ∧ 531441 * k + 74426 < 1048576 * k + 146847) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 146971) 32 = 531441 * k + 74489 ∧ 531441 * k + 74489 < 1048576 * k + 146971) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 147303) 32 = 531441 * k + 74657 ∧ 531441 * k + 74657 < 1048576 * k + 147303) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 148327) 32 = 531441 * k + 75176 ∧ 531441 * k + 75176 < 1048576 * k + 148327) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 148711) 32 = 531441 * k + 75371 ∧ 531441 * k + 75371 < 1048576 * k + 148711) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 149147) 32 = 531441 * k + 75592 ∧ 531441 * k + 75592 < 1048576 * k + 149147) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 149351) 32 = 531441 * k + 75695 ∧ 531441 * k + 75695 < 1048576 * k + 149351) ∧
  (∀ k : Nat, CollatzM20Shard020.iterate (1048576 * k + 149759) 32 = 531441 * k + 75902 ∧ 531441 * k + 75902 < 1048576 * k + 149759) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 149919) 32 = 531441 * k + 75983 ∧ 531441 * k + 75983 < 1048576 * k + 149919) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150511) 32 = 531441 * k + 76283 ∧ 531441 * k + 76283 < 1048576 * k + 150511) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150639) 32 = 531441 * k + 76348 ∧ 531441 * k + 76348 < 1048576 * k + 150639) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150735) 32 = 531441 * k + 76397 ∧ 531441 * k + 76397 < 1048576 * k + 150735) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 150943) 32 = 531441 * k + 76502 ∧ 531441 * k + 76502 < 1048576 * k + 150943) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 151463) 32 = 531441 * k + 76766 ∧ 531441 * k + 76766 < 1048576 * k + 151463) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 151623) 32 = 531441 * k + 76847 ∧ 531441 * k + 76847 < 1048576 * k + 151623) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 151711) 32 = 531441 * k + 76891 ∧ 531441 * k + 76891 < 1048576 * k + 151711) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 152231) 32 = 531441 * k + 77155 ∧ 531441 * k + 77155 < 1048576 * k + 152231) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 152391) 32 = 531441 * k + 77236 ∧ 531441 * k + 77236 < 1048576 * k + 152391) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 152423) 32 = 531441 * k + 77252 ∧ 531441 * k + 77252 < 1048576 * k + 152423) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 153115) 32 = 531441 * k + 77603 ∧ 531441 * k + 77603 < 1048576 * k + 153115) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 153711) 32 = 531441 * k + 77905 ∧ 531441 * k + 77905 < 1048576 * k + 153711) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 154607) 32 = 531441 * k + 78359 ∧ 531441 * k + 78359 < 1048576 * k + 154607) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 155495) 32 = 531441 * k + 78809 ∧ 531441 * k + 78809 < 1048576 * k + 155495) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 155807) 32 = 531441 * k + 78967 ∧ 531441 * k + 78967 < 1048576 * k + 155807) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 156063) 32 = 531441 * k + 79097 ∧ 531441 * k + 79097 < 1048576 * k + 156063) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 156519) 32 = 531441 * k + 79328 ∧ 531441 * k + 79328 < 1048576 * k + 156519) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 156955) 32 = 531441 * k + 79549 ∧ 531441 * k + 79549 < 1048576 * k + 156955) ∧
  (∀ k : Nat, CollatzM20Shard021.iterate (1048576 * k + 157767) 32 = 531441 * k + 79961 ∧ 531441 * k + 79961 < 1048576 * k + 157767) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 157927) 32 = 531441 * k + 80042 ∧ 531441 * k + 80042 < 1048576 * k + 157927) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 158567) 32 = 531441 * k + 80366 ∧ 531441 * k + 80366 < 1048576 * k + 158567) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 158703) 32 = 531441 * k + 80435 ∧ 531441 * k + 80435 < 1048576 * k + 158703) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 159003) 32 = 531441 * k + 80587 ∧ 531441 * k + 80587 < 1048576 * k + 159003) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 159135) 32 = 531441 * k + 80654 ∧ 531441 * k + 80654 < 1048576 * k + 159135) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 159259) 32 = 531441 * k + 80717 ∧ 531441 * k + 80717 < 1048576 * k + 159259) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 160423) 32 = 531441 * k + 81307 ∧ 531441 * k + 81307 < 1048576 * k + 160423) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 160583) 32 = 531441 * k + 81388 ∧ 531441 * k + 81388 < 1048576 * k + 160583) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 161639) 32 = 531441 * k + 81923 ∧ 531441 * k + 81923 < 1048576 * k + 161639) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 162663) 32 = 531441 * k + 82442 ∧ 531441 * k + 82442 < 1048576 * k + 162663) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 162687) 32 = 531441 * k + 82454 ∧ 531441 * k + 82454 < 1048576 * k + 162687) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 163099) 32 = 531441 * k + 82663 ∧ 531441 * k + 82663 < 1048576 * k + 163099) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 163823) 32 = 531441 * k + 83030 ∧ 531441 * k + 83030 < 1048576 * k + 163823) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 164591) 32 = 531441 * k + 83419 ∧ 531441 * k + 83419 < 1048576 * k + 164591) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 164847) 32 = 531441 * k + 83549 ∧ 531441 * k + 83549 < 1048576 * k + 164847) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 164895) 32 = 531441 * k + 83573 ∧ 531441 * k + 83573 < 1048576 * k + 164895) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 165023) 32 = 531441 * k + 83638 ∧ 531441 * k + 83638 < 1048576 * k + 165023) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 165759) 32 = 531441 * k + 84011 ∧ 531441 * k + 84011 < 1048576 * k + 165759) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 166727) 32 = 531441 * k + 84502 ∧ 531441 * k + 84502 < 1048576 * k + 166727) ∧
  (∀ k : Nat, CollatzM20Shard022.iterate (1048576 * k + 167551) 32 = 531441 * k + 84919 ∧ 531441 * k + 84919 < 1048576 * k + 167551) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 167663) 32 = 531441 * k + 84976 ∧ 531441 * k + 84976 < 1048576 * k + 167663) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 167771) 32 = 531441 * k + 85031 ∧ 531441 * k + 85031 < 1048576 * k + 167771) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168219) 32 = 531441 * k + 85258 ∧ 531441 * k + 85258 < 1048576 * k + 168219) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168475) 32 = 531441 * k + 85388 ∧ 531441 * k + 85388 < 1048576 * k + 168475) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168831) 32 = 531441 * k + 85568 ∧ 531441 * k + 85568 < 1048576 * k + 168831) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 168991) 32 = 531441 * k + 85649 ∧ 531441 * k + 85649 < 1048576 * k + 168991) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 169599) 32 = 531441 * k + 85957 ∧ 531441 * k + 85957 < 1048576 * k + 169599) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 169855) 32 = 531441 * k + 86087 ∧ 531441 * k + 86087 < 1048576 * k + 169855) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 170855) 32 = 531441 * k + 86594 ∧ 531441 * k + 86594 < 1048576 * k + 170855) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 171291) 32 = 531441 * k + 86815 ∧ 531441 * k + 86815 < 1048576 * k + 171291) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 171647) 32 = 531441 * k + 86995 ∧ 531441 * k + 86995 < 1048576 * k + 171647) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 171867) 32 = 531441 * k + 87107 ∧ 531441 * k + 87107 < 1048576 * k + 171867) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 172063) 32 = 531441 * k + 87206 ∧ 531441 * k + 87206 < 1048576 * k + 172063) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 172671) 32 = 531441 * k + 87514 ∧ 531441 * k + 87514 < 1048576 * k + 172671) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 173039) 32 = 531441 * k + 87701 ∧ 531441 * k + 87701 < 1048576 * k + 173039) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 173087) 32 = 531441 * k + 87725 ∧ 531441 * k + 87725 < 1048576 * k + 173087) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 173807) 32 = 531441 * k + 88090 ∧ 531441 * k + 88090 < 1048576 * k + 173807) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 174247) 32 = 531441 * k + 88313 ∧ 531441 * k + 88313 < 1048576 * k + 174247) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 174399) 32 = 531441 * k + 88390 ∧ 531441 * k + 88390 < 1048576 * k + 174399) ∧
  (∀ k : Nat, CollatzM20Shard023.iterate (1048576 * k + 174719) 32 = 531441 * k + 88552 ∧ 531441 * k + 88552 < 1048576 * k + 174719) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 175135) 32 = 531441 * k + 88763 ∧ 531441 * k + 88763 < 1048576 * k + 175135) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 175259) 32 = 531441 * k + 88826 ∧ 531441 * k + 88826 < 1048576 * k + 175259) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 175963) 32 = 531441 * k + 89183 ∧ 531441 * k + 89183 < 1048576 * k + 175963) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 177791) 32 = 531441 * k + 90109 ∧ 531441 * k + 90109 < 1048576 * k + 177791) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178047) 32 = 531441 * k + 90239 ∧ 531441 * k + 90239 < 1048576 * k + 178047) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178207) 32 = 531441 * k + 90320 ∧ 531441 * k + 90320 < 1048576 * k + 178207) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178655) 32 = 531441 * k + 90547 ∧ 531441 * k + 90547 < 1048576 * k + 178655) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178799) 32 = 531441 * k + 90620 ∧ 531441 * k + 90620 < 1048576 * k + 178799) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 178815) 32 = 531441 * k + 90628 ∧ 531441 * k + 90628 < 1048576 * k + 178815) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 179231) 32 = 531441 * k + 90839 ∧ 531441 * k + 90839 < 1048576 * k + 179231) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 179503) 32 = 531441 * k + 90977 ∧ 531441 * k + 90977 < 1048576 * k + 179503) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181083) 32 = 531441 * k + 91778 ∧ 531441 * k + 91778 < 1048576 * k + 181083) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181403) 32 = 531441 * k + 91940 ∧ 531441 * k + 91940 < 1048576 * k + 181403) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181727) 32 = 531441 * k + 92104 ∧ 531441 * k + 92104 < 1048576 * k + 181727) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181759) 32 = 531441 * k + 92120 ∧ 531441 * k + 92120 < 1048576 * k + 181759) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 181999) 32 = 531441 * k + 92242 ∧ 531441 * k + 92242 < 1048576 * k + 181999) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 182107) 32 = 531441 * k + 92297 ∧ 531441 * k + 92297 < 1048576 * k + 182107) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 182599) 32 = 531441 * k + 92546 ∧ 531441 * k + 92546 < 1048576 * k + 182599) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 182895) 32 = 531441 * k + 92696 ∧ 531441 * k + 92696 < 1048576 * k + 182895) ∧
  (∀ k : Nat, CollatzM20Shard024.iterate (1048576 * k + 183599) 32 = 531441 * k + 93053 ∧ 531441 * k + 93053 < 1048576 * k + 183599) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 184351) 32 = 531441 * k + 93434 ∧ 531441 * k + 93434 < 1048576 * k + 184351) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 184831) 32 = 531441 * k + 93677 ∧ 531441 * k + 93677 < 1048576 * k + 184831) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 184923) 32 = 531441 * k + 93724 ∧ 531441 * k + 93724 < 1048576 * k + 184923) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185279) 32 = 531441 * k + 93904 ∧ 531441 * k + 93904 < 1048576 * k + 185279) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185671) 32 = 531441 * k + 94103 ∧ 531441 * k + 94103 < 1048576 * k + 185671) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185807) 32 = 531441 * k + 94172 ∧ 531441 * k + 94172 < 1048576 * k + 185807) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 185959) 32 = 531441 * k + 94249 ∧ 531441 * k + 94249 < 1048576 * k + 185959) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 186139) 32 = 531441 * k + 94340 ∧ 531441 * k + 94340 < 1048576 * k + 186139) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 186535) 32 = 531441 * k + 94541 ∧ 531441 * k + 94541 < 1048576 * k + 186535) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 186991) 32 = 531441 * k + 94772 ∧ 531441 * k + 94772 < 1048576 * k + 186991) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187007) 32 = 531441 * k + 94780 ∧ 531441 * k + 94780 < 1048576 * k + 187007) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187163) 32 = 531441 * k + 94859 ∧ 531441 * k + 94859 < 1048576 * k + 187163) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187423) 32 = 531441 * k + 94991 ∧ 531441 * k + 94991 < 1048576 * k + 187423) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187547) 32 = 531441 * k + 95054 ∧ 531441 * k + 95054 < 1048576 * k + 187547) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187583) 32 = 531441 * k + 95072 ∧ 531441 * k + 95072 < 1048576 * k + 187583) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 187871) 32 = 531441 * k + 95218 ∧ 531441 * k + 95218 < 1048576 * k + 187871) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 188187) 32 = 531441 * k + 95378 ∧ 531441 * k + 95378 < 1048576 * k + 188187) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 188351) 32 = 531441 * k + 95461 ∧ 531441 * k + 95461 < 1048576 * k + 188351) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 188463) 32 = 531441 * k + 95518 ∧ 531441 * k + 95518 < 1048576 * k + 188463) ∧
  (∀ k : Nat, CollatzM20Shard025.iterate (1048576 * k + 189767) 32 = 531441 * k + 96179 ∧ 531441 * k + 96179 < 1048576 * k + 189767) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190111) 32 = 531441 * k + 96353 ∧ 531441 * k + 96353 < 1048576 * k + 190111) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190299) 32 = 531441 * k + 96449 ∧ 531441 * k + 96449 < 1048576 * k + 190299) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190459) 32 = 531441 * k + 96530 ∧ 531441 * k + 96530 < 1048576 * k + 190459) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 190791) 32 = 531441 * k + 96698 ∧ 531441 * k + 96698 < 1048576 * k + 190791) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191067) 32 = 531441 * k + 96838 ∧ 531441 * k + 96838 < 1048576 * k + 191067) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191227) 32 = 531441 * k + 96919 ∧ 531441 * k + 96919 < 1048576 * k + 191227) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191259) 32 = 531441 * k + 96935 ∧ 531441 * k + 96935 < 1048576 * k + 191259) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191423) 32 = 531441 * k + 97018 ∧ 531441 * k + 97018 < 1048576 * k + 191423) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191727) 32 = 531441 * k + 97172 ∧ 531441 * k + 97172 < 1048576 * k + 191727) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191791) 32 = 531441 * k + 97205 ∧ 531441 * k + 97205 < 1048576 * k + 191791) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 191951) 32 = 531441 * k + 97286 ∧ 531441 * k + 97286 < 1048576 * k + 191951) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192111) 32 = 531441 * k + 97367 ∧ 531441 * k + 97367 < 1048576 * k + 192111) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192559) 32 = 531441 * k + 97594 ∧ 531441 * k + 97594 < 1048576 * k + 192559) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192815) 32 = 531441 * k + 97724 ∧ 531441 * k + 97724 < 1048576 * k + 192815) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 192999) 32 = 531441 * k + 97817 ∧ 531441 * k + 97817 < 1048576 * k + 192999) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193135) 32 = 531441 * k + 97886 ∧ 531441 * k + 97886 < 1048576 * k + 193135) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193183) 32 = 531441 * k + 97910 ∧ 531441 * k + 97910 < 1048576 * k + 193183) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193471) 32 = 531441 * k + 98056 ∧ 531441 * k + 98056 < 1048576 * k + 193471) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193727) 32 = 531441 * k + 98186 ∧ 531441 * k + 98186 < 1048576 * k + 193727) ∧
  (∀ k : Nat, CollatzM20Shard026.iterate (1048576 * k + 193863) 32 = 531441 * k + 98255 ∧ 531441 * k + 98255 < 1048576 * k + 193863) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 194047) 32 = 531441 * k + 98348 ∧ 531441 * k + 98348 < 1048576 * k + 194047) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 194331) 32 = 531441 * k + 98492 ∧ 531441 * k + 98492 < 1048576 * k + 194331) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 194799) 32 = 531441 * k + 98729 ∧ 531441 * k + 98729 < 1048576 * k + 194799) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195175) 32 = 531441 * k + 98920 ∧ 531441 * k + 98920 < 1048576 * k + 195175) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195355) 32 = 531441 * k + 99011 ∧ 531441 * k + 99011 < 1048576 * k + 195355) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195823) 32 = 531441 * k + 99248 ∧ 531441 * k + 99248 < 1048576 * k + 195823) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 195839) 32 = 531441 * k + 99256 ∧ 531441 * k + 99256 < 1048576 * k + 195839) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196063) 32 = 531441 * k + 99370 ∧ 531441 * k + 99370 < 1048576 * k + 196063) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196543) 32 = 531441 * k + 99613 ∧ 531441 * k + 99613 < 1048576 * k + 196543) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196603) 32 = 531441 * k + 99644 ∧ 531441 * k + 99644 < 1048576 * k + 196603) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 196763) 32 = 531441 * k + 99725 ∧ 531441 * k + 99725 < 1048576 * k + 196763) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 197279) 32 = 531441 * k + 99986 ∧ 531441 * k + 99986 < 1048576 * k + 197279) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 197403) 32 = 531441 * k + 100049 ∧ 531441 * k + 100049 < 1048576 * k + 197403) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 197887) 32 = 531441 * k + 100294 ∧ 531441 * k + 100294 < 1048576 * k + 197887) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 198095) 32 = 531441 * k + 100400 ∧ 531441 * k + 100400 < 1048576 * k + 198095) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 198303) 32 = 531441 * k + 100505 ∧ 531441 * k + 100505 < 1048576 * k + 198303) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199143) 32 = 531441 * k + 100931 ∧ 531441 * k + 100931 < 1048576 * k + 199143) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199259) 32 = 531441 * k + 100990 ∧ 531441 * k + 100990 < 1048576 * k + 199259) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199419) 32 = 531441 * k + 101071 ∧ 531441 * k + 101071 < 1048576 * k + 199419) ∧
  (∀ k : Nat, CollatzM20Shard027.iterate (1048576 * k + 199919) 32 = 531441 * k + 101324 ∧ 531441 * k + 101324 < 1048576 * k + 199919) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 199935) 32 = 531441 * k + 101332 ∧ 531441 * k + 101332 < 1048576 * k + 199935) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 200007) 32 = 531441 * k + 101369 ∧ 531441 * k + 101369 < 1048576 * k + 200007) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 200475) 32 = 531441 * k + 101606 ∧ 531441 * k + 101606 < 1048576 * k + 200475) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 200751) 32 = 531441 * k + 101746 ∧ 531441 * k + 101746 < 1048576 * k + 200751) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201007) 32 = 531441 * k + 101876 ∧ 531441 * k + 101876 < 1048576 * k + 201007) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201327) 32 = 531441 * k + 102038 ∧ 531441 * k + 102038 < 1048576 * k + 201327) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201375) 32 = 531441 * k + 102062 ∧ 531441 * k + 102062 < 1048576 * k + 201375) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201499) 32 = 531441 * k + 102125 ∧ 531441 * k + 102125 < 1048576 * k + 201499) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 201775) 32 = 531441 * k + 102265 ∧ 531441 * k + 102265 < 1048576 * k + 201775) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 202663) 32 = 531441 * k + 102715 ∧ 531441 * k + 102715 < 1048576 * k + 202663) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 202687) 32 = 531441 * k + 102727 ∧ 531441 * k + 102727 < 1048576 * k + 202687) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 202991) 32 = 531441 * k + 102881 ∧ 531441 * k + 102881 < 1048576 * k + 202991) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 203007) 32 = 531441 * k + 102889 ∧ 531441 * k + 102889 < 1048576 * k + 203007) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 205287) 32 = 531441 * k + 104045 ∧ 531441 * k + 104045 < 1048576 * k + 205287) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 205563) 32 = 531441 * k + 104185 ∧ 531441 * k + 104185 < 1048576 * k + 205563) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 206079) 32 = 531441 * k + 104446 ∧ 531441 * k + 104446 < 1048576 * k + 206079) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207055) 32 = 531441 * k + 104941 ∧ 531441 * k + 104941 < 1048576 * k + 207055) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207103) 32 = 531441 * k + 104965 ∧ 531441 * k + 104965 < 1048576 * k + 207103) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207311) 32 = 531441 * k + 105071 ∧ 531441 * k + 105071 < 1048576 * k + 207311) ∧
  (∀ k : Nat, CollatzM20Shard028.iterate (1048576 * k + 207519) 32 = 531441 * k + 105176 ∧ 531441 * k + 105176 < 1048576 * k + 207519) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 208199) 32 = 531441 * k + 105521 ∧ 531441 * k + 105521 < 1048576 * k + 208199) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 208807) 32 = 531441 * k + 105829 ∧ 531441 * k + 105829 < 1048576 * k + 208807) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 208967) 32 = 531441 * k + 105910 ∧ 531441 * k + 105910 < 1048576 * k + 208967) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 209691) 32 = 531441 * k + 106277 ∧ 531441 * k + 106277 < 1048576 * k + 209691) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 209967) 32 = 531441 * k + 106417 ∧ 531441 * k + 106417 < 1048576 * k + 209967) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 210047) 32 = 531441 * k + 106457 ∧ 531441 * k + 106457 < 1048576 * k + 210047) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 210335) 32 = 531441 * k + 106603 ∧ 531441 * k + 106603 < 1048576 * k + 210335) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 212071) 32 = 531441 * k + 107483 ∧ 531441 * k + 107483 < 1048576 * k + 212071) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 212383) 32 = 531441 * k + 107641 ∧ 531441 * k + 107641 < 1048576 * k + 212383) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 213083) 32 = 531441 * k + 107996 ∧ 531441 * k + 107996 < 1048576 * k + 213083) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 214247) 32 = 531441 * k + 108586 ∧ 531441 * k + 108586 < 1048576 * k + 214247) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 214503) 32 = 531441 * k + 108716 ∧ 531441 * k + 108716 < 1048576 * k + 214503) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 214575) 32 = 531441 * k + 108752 ∧ 531441 * k + 108752 < 1048576 * k + 214575) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215143) 32 = 531441 * k + 109040 ∧ 531441 * k + 109040 < 1048576 * k + 215143) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215295) 32 = 531441 * k + 109117 ∧ 531441 * k + 109117 < 1048576 * k + 215295) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215711) 32 = 531441 * k + 109328 ∧ 531441 * k + 109328 < 1048576 * k + 215711) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 215871) 32 = 531441 * k + 109409 ∧ 531441 * k + 109409 < 1048576 * k + 215871) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 216271) 32 = 531441 * k + 109612 ∧ 531441 * k + 109612 < 1048576 * k + 216271) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 216479) 32 = 531441 * k + 109717 ∧ 531441 * k + 109717 < 1048576 * k + 216479) ∧
  (∀ k : Nat, CollatzM20Shard029.iterate (1048576 * k + 216623) 32 = 531441 * k + 109790 ∧ 531441 * k + 109790 < 1048576 * k + 216623) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 216935) 32 = 531441 * k + 109948 ∧ 531441 * k + 109948 < 1048576 * k + 216935) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 216999) 32 = 531441 * k + 109981 ∧ 531441 * k + 109981 < 1048576 * k + 216999) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 217159) 32 = 531441 * k + 110062 ∧ 531441 * k + 110062 < 1048576 * k + 217159) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 218215) 32 = 531441 * k + 110597 ∧ 531441 * k + 110597 < 1048576 * k + 218215) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 218559) 32 = 531441 * k + 110771 ∧ 531441 * k + 110771 < 1048576 * k + 218559) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 218983) 32 = 531441 * k + 110986 ∧ 531441 * k + 110986 < 1048576 * k + 218983) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 219239) 32 = 531441 * k + 111116 ∧ 531441 * k + 111116 < 1048576 * k + 219239) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 219583) 32 = 531441 * k + 111290 ∧ 531441 * k + 111290 < 1048576 * k + 219583) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 220719) 32 = 531441 * k + 111866 ∧ 531441 * k + 111866 < 1048576 * k + 220719) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221031) 32 = 531441 * k + 112024 ∧ 531441 * k + 112024 < 1048576 * k + 221031) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221435) 32 = 531441 * k + 112229 ∧ 531441 * k + 112229 < 1048576 * k + 221435) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221599) 32 = 531441 * k + 112312 ∧ 531441 * k + 112312 < 1048576 * k + 221599) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 221631) 32 = 531441 * k + 112328 ∧ 531441 * k + 112328 < 1048576 * k + 221631) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222015) 32 = 531441 * k + 112523 ∧ 531441 * k + 112523 < 1048576 * k + 222015) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222055) 32 = 531441 * k + 112543 ∧ 531441 * k + 112543 < 1048576 * k + 222055) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222175) 32 = 531441 * k + 112604 ∧ 531441 * k + 112604 < 1048576 * k + 222175) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 222335) 32 = 531441 * k + 112685 ∧ 531441 * k + 112685 < 1048576 * k + 222335) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 223303) 32 = 531441 * k + 113176 ∧ 531441 * k + 113176 < 1048576 * k + 223303) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 223463) 32 = 531441 * k + 113257 ∧ 531441 * k + 113257 < 1048576 * k + 223463) ∧
  (∀ k : Nat, CollatzM20Shard030.iterate (1048576 * k + 224103) 32 = 531441 * k + 113581 ∧ 531441 * k + 113581 < 1048576 * k + 224103) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224127) 32 = 531441 * k + 113593 ∧ 531441 * k + 113593 < 1048576 * k + 224127) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224239) 32 = 531441 * k + 113650 ∧ 531441 * k + 113650 < 1048576 * k + 224239) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224507) 32 = 531441 * k + 113786 ∧ 531441 * k + 113786 < 1048576 * k + 224507) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224671) 32 = 531441 * k + 113869 ∧ 531441 * k + 113869 < 1048576 * k + 224671) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224795) 32 = 531441 * k + 113932 ∧ 531441 * k + 113932 < 1048576 * k + 224795) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 224815) 32 = 531441 * k + 113942 ∧ 531441 * k + 113942 < 1048576 * k + 224815) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 225371) 32 = 531441 * k + 114224 ∧ 531441 * k + 114224 < 1048576 * k + 225371) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 225727) 32 = 531441 * k + 114404 ∧ 531441 * k + 114404 < 1048576 * k + 225727) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 226175) 32 = 531441 * k + 114631 ∧ 531441 * k + 114631 < 1048576 * k + 226175) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 226271) 32 = 531441 * k + 114680 ∧ 531441 * k + 114680 < 1048576 * k + 226271) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 226863) 32 = 531441 * k + 114980 ∧ 531441 * k + 114980 < 1048576 * k + 226863) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 227175) 32 = 531441 * k + 115138 ∧ 531441 * k + 115138 < 1048576 * k + 227175) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 227431) 32 = 531441 * k + 115268 ∧ 531441 * k + 115268 < 1048576 * k + 227431) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 228199) 32 = 531441 * k + 115657 ∧ 531441 * k + 115657 < 1048576 * k + 228199) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 228223) 32 = 531441 * k + 115669 ∧ 531441 * k + 115669 < 1048576 * k + 228223) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 228603) 32 = 531441 * k + 115862 ∧ 531441 * k + 115862 < 1048576 * k + 228603) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 229627) 32 = 531441 * k + 116381 ∧ 531441 * k + 116381 < 1048576 * k + 229627) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 229823) 32 = 531441 * k + 116480 ∧ 531441 * k + 116480 < 1048576 * k + 229823) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 229935) 32 = 531441 * k + 116537 ∧ 531441 * k + 116537 < 1048576 * k + 229935) ∧
  (∀ k : Nat, CollatzM20Shard031.iterate (1048576 * k + 230383) 32 = 531441 * k + 116764 ∧ 531441 * k + 116764 < 1048576 * k + 230383) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231167) 32 = 531441 * k + 117161 ∧ 531441 * k + 117161 < 1048576 * k + 231167) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231295) 32 = 531441 * k + 117226 ∧ 531441 * k + 117226 < 1048576 * k + 231295) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231835) 32 = 531441 * k + 117500 ∧ 531441 * k + 117500 < 1048576 * k + 231835) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 231871) 32 = 531441 * k + 117518 ∧ 531441 * k + 117518 < 1048576 * k + 231871) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 232699) 32 = 531441 * k + 117938 ∧ 531441 * k + 117938 < 1048576 * k + 232699) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 233167) 32 = 531441 * k + 118175 ∧ 531441 * k + 118175 < 1048576 * k + 233167) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 234011) 32 = 531441 * k + 118603 ∧ 531441 * k + 118603 < 1048576 * k + 234011) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 234367) 32 = 531441 * k + 118783 ∧ 531441 * k + 118783 < 1048576 * k + 234367) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 234463) 32 = 531441 * k + 118832 ∧ 531441 * k + 118832 < 1048576 * k + 234463) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 235375) 32 = 531441 * k + 119294 ∧ 531441 * k + 119294 < 1048576 * k + 235375) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 235391) 32 = 531441 * k + 119302 ∧ 531441 * k + 119302 < 1048576 * k + 235391) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 235487) 32 = 531441 * k + 119351 ∧ 531441 * k + 119351 < 1048576 * k + 235487) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 236079) 32 = 531441 * k + 119651 ∧ 531441 * k + 119651 < 1048576 * k + 236079) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 236239) 32 = 531441 * k + 119732 ∧ 531441 * k + 119732 < 1048576 * k + 236239) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 236391) 32 = 531441 * k + 119809 ∧ 531441 * k + 119809 < 1048576 * k + 236391) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 237979) 32 = 531441 * k + 120614 ∧ 531441 * k + 120614 < 1048576 * k + 237979) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238335) 32 = 531441 * k + 120794 ∧ 531441 * k + 120794 < 1048576 * k + 238335) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238575) 32 = 531441 * k + 120916 ∧ 531441 * k + 120916 < 1048576 * k + 238575) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238623) 32 = 531441 * k + 120940 ∧ 531441 * k + 120940 < 1048576 * k + 238623) ∧
  (∀ k : Nat, CollatzM20Shard032.iterate (1048576 * k + 238843) 32 = 531441 * k + 121052 ∧ 531441 * k + 121052 < 1048576 * k + 238843) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 239311) 32 = 531441 * k + 121289 ∧ 531441 * k + 121289 < 1048576 * k + 239311) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 239359) 32 = 531441 * k + 121313 ∧ 531441 * k + 121313 < 1048576 * k + 239359) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 239471) 32 = 531441 * k + 121370 ∧ 531441 * k + 121370 < 1048576 * k + 239471) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 240335) 32 = 531441 * k + 121808 ∧ 531441 * k + 121808 < 1048576 * k + 240335) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 240359) 32 = 531441 * k + 121820 ∧ 531441 * k + 121820 < 1048576 * k + 240359) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 240671) 32 = 531441 * k + 121978 ∧ 531441 * k + 121978 < 1048576 * k + 240671) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 241499) 32 = 531441 * k + 122398 ∧ 531441 * k + 122398 < 1048576 * k + 241499) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243431) 32 = 531441 * k + 123377 ∧ 531441 * k + 123377 < 1048576 * k + 243431) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243567) 32 = 531441 * k + 123446 ∧ 531441 * k + 123446 < 1048576 * k + 243567) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243583) 32 = 531441 * k + 123454 ∧ 531441 * k + 123454 < 1048576 * k + 243583) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 243679) 32 = 531441 * k + 123503 ∧ 531441 * k + 123503 < 1048576 * k + 243679) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244123) 32 = 531441 * k + 123728 ∧ 531441 * k + 123728 < 1048576 * k + 244123) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244479) 32 = 531441 * k + 123908 ∧ 531441 * k + 123908 < 1048576 * k + 244479) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244767) 32 = 531441 * k + 124054 ∧ 531441 * k + 124054 < 1048576 * k + 244767) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 244927) 32 = 531441 * k + 124135 ∧ 531441 * k + 124135 < 1048576 * k + 244927) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 245039) 32 = 531441 * k + 124192 ∧ 531441 * k + 124192 < 1048576 * k + 245039) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 246271) 32 = 531441 * k + 124816 ∧ 531441 * k + 124816 < 1048576 * k + 246271) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 246503) 32 = 531441 * k + 124934 ∧ 531441 * k + 124934 < 1048576 * k + 246503) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 247035) 32 = 531441 * k + 125204 ∧ 531441 * k + 125204 < 1048576 * k + 247035) ∧
  (∀ k : Nat, CollatzM20Shard033.iterate (1048576 * k + 247527) 32 = 531441 * k + 125453 ∧ 531441 * k + 125453 < 1048576 * k + 247527) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 247643) 32 = 531441 * k + 125512 ∧ 531441 * k + 125512 < 1048576 * k + 247643) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 247803) 32 = 531441 * k + 125593 ∧ 531441 * k + 125593 < 1048576 * k + 247803) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 248527) 32 = 531441 * k + 125960 ∧ 531441 * k + 125960 < 1048576 * k + 248527) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 248687) 32 = 531441 * k + 126041 ∧ 531441 * k + 126041 < 1048576 * k + 248687) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249135) 32 = 531441 * k + 126268 ∧ 531441 * k + 126268 < 1048576 * k + 249135) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249711) 32 = 531441 * k + 126560 ∧ 531441 * k + 126560 < 1048576 * k + 249711) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249759) 32 = 531441 * k + 126584 ∧ 531441 * k + 126584 < 1048576 * k + 249759) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 249887) 32 = 531441 * k + 126649 ∧ 531441 * k + 126649 < 1048576 * k + 249887) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 250367) 32 = 531441 * k + 126892 ∧ 531441 * k + 126892 < 1048576 * k + 250367) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 250907) 32 = 531441 * k + 127166 ∧ 531441 * k + 127166 < 1048576 * k + 250907) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252071) 32 = 531441 * k + 127756 ∧ 531441 * k + 127756 < 1048576 * k + 252071) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252399) 32 = 531441 * k + 127922 ∧ 531441 * k + 127922 < 1048576 * k + 252399) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252527) 32 = 531441 * k + 127987 ∧ 531441 * k + 127987 < 1048576 * k + 252527) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 252959) 32 = 531441 * k + 128206 ∧ 531441 * k + 128206 < 1048576 * k + 252959) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253083) 32 = 531441 * k + 128269 ∧ 531441 * k + 128269 < 1048576 * k + 253083) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253119) 32 = 531441 * k + 128287 ∧ 531441 * k + 128287 < 1048576 * k + 253119) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253339) 32 = 531441 * k + 128399 ∧ 531441 * k + 128399 < 1048576 * k + 253339) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253855) 32 = 531441 * k + 128660 ∧ 531441 * k + 128660 < 1048576 * k + 253855) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 253979) 32 = 531441 * k + 128723 ∧ 531441 * k + 128723 < 1048576 * k + 253979) ∧
  (∀ k : Nat, CollatzM20Shard034.iterate (1048576 * k + 255719) 32 = 531441 * k + 129605 ∧ 531441 * k + 129605 < 1048576 * k + 255719) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 255771) 32 = 531441 * k + 129631 ∧ 531441 * k + 129631 < 1048576 * k + 255771) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 255835) 32 = 531441 * k + 129664 ∧ 531441 * k + 129664 < 1048576 * k + 255835) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 255995) 32 = 531441 * k + 129745 ∧ 531441 * k + 129745 < 1048576 * k + 255995) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 256327) 32 = 531441 * k + 129913 ∧ 531441 * k + 129913 < 1048576 * k + 256327) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257051) 32 = 531441 * k + 130280 ∧ 531441 * k + 130280 < 1048576 * k + 257051) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257327) 32 = 531441 * k + 130420 ∧ 531441 * k + 130420 < 1048576 * k + 257327) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257819) 32 = 531441 * k + 130669 ∧ 531441 * k + 130669 < 1048576 * k + 257819) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257903) 32 = 531441 * k + 130712 ∧ 531441 * k + 130712 < 1048576 * k + 257903) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 257951) 32 = 531441 * k + 130736 ∧ 531441 * k + 130736 < 1048576 * k + 257951) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 258075) 32 = 531441 * k + 130799 ∧ 531441 * k + 130799 < 1048576 * k + 258075) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 258351) 32 = 531441 * k + 130939 ∧ 531441 * k + 130939 < 1048576 * k + 258351) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 258671) 32 = 531441 * k + 131101 ∧ 531441 * k + 131101 < 1048576 * k + 258671) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259263) 32 = 531441 * k + 131401 ∧ 531441 * k + 131401 < 1048576 * k + 259263) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259399) 32 = 531441 * k + 131470 ∧ 531441 * k + 131470 < 1048576 * k + 259399) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259431) 32 = 531441 * k + 131486 ∧ 531441 * k + 131486 < 1048576 * k + 259431) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259583) 32 = 531441 * k + 131563 ∧ 531441 * k + 131563 < 1048576 * k + 259583) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 259867) 32 = 531441 * k + 131707 ∧ 531441 * k + 131707 < 1048576 * k + 259867) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 260891) 32 = 531441 * k + 132226 ∧ 531441 * k + 132226 < 1048576 * k + 260891) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 262139) 32 = 531441 * k + 132859 ∧ 531441 * k + 132859 < 1048576 * k + 262139) ∧
  (∀ k : Nat, CollatzM20Shard035.iterate (1048576 * k + 262299) 32 = 531441 * k + 132940 ∧ 531441 * k + 132940 < 1048576 * k + 262299) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 262939) 32 = 531441 * k + 133264 ∧ 531441 * k + 133264 < 1048576 * k + 262939) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 263071) 32 = 531441 * k + 133331 ∧ 531441 * k + 133331 < 1048576 * k + 263071) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 263631) 32 = 531441 * k + 133615 ∧ 531441 * k + 133615 < 1048576 * k + 263631) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 263839) 32 = 531441 * k + 133720 ∧ 531441 * k + 133720 < 1048576 * k + 263839) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 264095) 32 = 531441 * k + 133850 ∧ 531441 * k + 133850 < 1048576 * k + 264095) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 264687) 32 = 531441 * k + 134150 ∧ 531441 * k + 134150 < 1048576 * k + 264687) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 265455) 32 = 531441 * k + 134539 ∧ 531441 * k + 134539 < 1048576 * k + 265455) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 265543) 32 = 531441 * k + 134584 ∧ 531441 * k + 134584 < 1048576 * k + 265543) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266011) 32 = 531441 * k + 134821 ∧ 531441 * k + 134821 < 1048576 * k + 266011) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266267) 32 = 531441 * k + 134951 ∧ 531441 * k + 134951 < 1048576 * k + 266267) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266543) 32 = 531441 * k + 135091 ∧ 531441 * k + 135091 < 1048576 * k + 266543) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266863) 32 = 531441 * k + 135253 ∧ 531441 * k + 135253 < 1048576 * k + 266863) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 266911) 32 = 531441 * k + 135277 ∧ 531441 * k + 135277 < 1048576 * k + 266911) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 267035) 32 = 531441 * k + 135340 ∧ 531441 * k + 135340 < 1048576 * k + 267035) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 268527) 32 = 531441 * k + 136096 ∧ 531441 * k + 136096 < 1048576 * k + 268527) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 270823) 32 = 531441 * k + 137260 ∧ 531441 * k + 137260 < 1048576 * k + 270823) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 271719) 32 = 531441 * k + 137714 ∧ 531441 * k + 137714 < 1048576 * k + 271719) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 272287) 32 = 531441 * k + 138002 ∧ 531441 * k + 138002 < 1048576 * k + 272287) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 272447) 32 = 531441 * k + 138083 ∧ 531441 * k + 138083 < 1048576 * k + 272447) ∧
  (∀ k : Nat, CollatzM20Shard036.iterate (1048576 * k + 272847) 32 = 531441 * k + 138286 ∧ 531441 * k + 138286 < 1048576 * k + 272847) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273055) 32 = 531441 * k + 138391 ∧ 531441 * k + 138391 < 1048576 * k + 273055) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273215) 32 = 531441 * k + 138472 ∧ 531441 * k + 138472 < 1048576 * k + 273215) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273511) 32 = 531441 * k + 138622 ∧ 531441 * k + 138622 < 1048576 * k + 273511) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 273735) 32 = 531441 * k + 138736 ∧ 531441 * k + 138736 < 1048576 * k + 273735) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 275135) 32 = 531441 * k + 139445 ∧ 531441 * k + 139445 < 1048576 * k + 275135) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 275227) 32 = 531441 * k + 139492 ∧ 531441 * k + 139492 < 1048576 * k + 275227) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 275559) 32 = 531441 * k + 139660 ∧ 531441 * k + 139660 < 1048576 * k + 275559) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 277607) 32 = 531441 * k + 140698 ∧ 531441 * k + 140698 < 1048576 * k + 277607) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278047) 32 = 531441 * k + 140921 ∧ 531441 * k + 140921 < 1048576 * k + 278047) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278207) 32 = 531441 * k + 141002 ∧ 531441 * k + 141002 < 1048576 * k + 278207) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278591) 32 = 531441 * k + 141197 ∧ 531441 * k + 141197 < 1048576 * k + 278591) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 278751) 32 = 531441 * k + 141278 ∧ 531441 * k + 141278 < 1048576 * k + 278751) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 279195) 32 = 531441 * k + 141503 ∧ 531441 * k + 141503 < 1048576 * k + 279195) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 280039) 32 = 531441 * k + 141931 ∧ 531441 * k + 141931 < 1048576 * k + 280039) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 280679) 32 = 531441 * k + 142255 ∧ 531441 * k + 142255 < 1048576 * k + 280679) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 280687) 32 = 531441 * k + 142259 ∧ 531441 * k + 142259 < 1048576 * k + 280687) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 281247) 32 = 531441 * k + 142543 ∧ 531441 * k + 142543 < 1048576 * k + 281247) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 281407) 32 = 531441 * k + 142624 ∧ 531441 * k + 142624 < 1048576 * k + 281407) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 281599) 32 = 531441 * k + 142721 ∧ 531441 * k + 142721 < 1048576 * k + 281599) ∧
  (∀ k : Nat, CollatzM20Shard037.iterate (1048576 * k + 282143) 32 = 531441 * k + 142997 ∧ 531441 * k + 142997 < 1048576 * k + 282143) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 282267) 32 = 531441 * k + 143060 ∧ 531441 * k + 143060 < 1048576 * k + 282267) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 282303) 32 = 531441 * k + 143078 ∧ 531441 * k + 143078 < 1048576 * k + 282303) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 282847) 32 = 531441 * k + 143354 ∧ 531441 * k + 143354 < 1048576 * k + 282847) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 283327) 32 = 531441 * k + 143597 ∧ 531441 * k + 143597 < 1048576 * k + 283327) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 283751) 32 = 531441 * k + 143812 ∧ 531441 * k + 143812 < 1048576 * k + 283751) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 284207) 32 = 531441 * k + 144043 ∧ 531441 * k + 144043 < 1048576 * k + 284207) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 284775) 32 = 531441 * k + 144331 ∧ 531441 * k + 144331 < 1048576 * k + 284775) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 285339) 32 = 531441 * k + 144617 ∧ 531441 * k + 144617 < 1048576 * k + 285339) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 286239) 32 = 531441 * k + 145073 ∧ 531441 * k + 145073 < 1048576 * k + 286239) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 286363) 32 = 531441 * k + 145136 ∧ 531441 * k + 145136 < 1048576 * k + 286363) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 286399) 32 = 531441 * k + 145154 ∧ 531441 * k + 145154 < 1048576 * k + 286399) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287279) 32 = 531441 * k + 145600 ∧ 531441 * k + 145600 < 1048576 * k + 287279) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287551) 32 = 531441 * k + 145738 ∧ 531441 * k + 145738 < 1048576 * k + 287551) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287711) 32 = 531441 * k + 145819 ∧ 531441 * k + 145819 < 1048576 * k + 287711) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 287871) 32 = 531441 * k + 145900 ∧ 531441 * k + 145900 < 1048576 * k + 287871) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 289215) 32 = 531441 * k + 146581 ∧ 531441 * k + 146581 < 1048576 * k + 289215) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 290351) 32 = 531441 * k + 147157 ∧ 531441 * k + 147157 < 1048576 * k + 290351) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 290907) 32 = 531441 * k + 147439 ∧ 531441 * k + 147439 < 1048576 * k + 290907) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 290975) 32 = 531441 * k + 147473 ∧ 531441 * k + 147473 < 1048576 * k + 290975) ∧
  (∀ k : Nat, CollatzM20Shard038.iterate (1048576 * k + 291039) 32 = 531441 * k + 147506 ∧ 531441 * k + 147506 < 1048576 * k + 291039) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 291359) 32 = 531441 * k + 147668 ∧ 531441 * k + 147668 < 1048576 * k + 291359) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 291807) 32 = 531441 * k + 147895 ∧ 531441 * k + 147895 < 1048576 * k + 291807) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292063) 32 = 531441 * k + 148025 ∧ 531441 * k + 148025 < 1048576 * k + 292063) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292383) 32 = 531441 * k + 148187 ∧ 531441 * k + 148187 < 1048576 * k + 292383) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292399) 32 = 531441 * k + 148195 ∧ 531441 * k + 148195 < 1048576 * k + 292399) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292543) 32 = 531441 * k + 148268 ∧ 531441 * k + 148268 < 1048576 * k + 292543) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292967) 32 = 531441 * k + 148483 ∧ 531441 * k + 148483 < 1048576 * k + 292967) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 292975) 32 = 531441 * k + 148487 ∧ 531441 * k + 148487 < 1048576 * k + 292975) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 293543) 32 = 531441 * k + 148775 ∧ 531441 * k + 148775 < 1048576 * k + 293543) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 294047) 32 = 531441 * k + 149030 ∧ 531441 * k + 149030 < 1048576 * k + 294047) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 294555) 32 = 531441 * k + 149288 ∧ 531441 * k + 149288 < 1048576 * k + 294555) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 294607) 32 = 531441 * k + 149314 ∧ 531441 * k + 149314 < 1048576 * k + 294607) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295071) 32 = 531441 * k + 149549 ∧ 531441 * k + 149549 < 1048576 * k + 295071) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295163) 32 = 531441 * k + 149596 ∧ 531441 * k + 149596 < 1048576 * k + 295163) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295359) 32 = 531441 * k + 149695 ∧ 531441 * k + 149695 < 1048576 * k + 295359) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 295471) 32 = 531441 * k + 149752 ∧ 531441 * k + 149752 < 1048576 * k + 295471) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 296655) 32 = 531441 * k + 150352 ∧ 531441 * k + 150352 < 1048576 * k + 296655) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 297407) 32 = 531441 * k + 150733 ∧ 531441 * k + 150733 < 1048576 * k + 297407) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 298235) 32 = 531441 * k + 151153 ∧ 531441 * k + 151153 < 1048576 * k + 298235) ∧
  (∀ k : Nat, CollatzM20Shard039.iterate (1048576 * k + 298267) 32 = 531441 * k + 151169 ∧ 531441 * k + 151169 < 1048576 * k + 298267) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 298703) 32 = 531441 * k + 151390 ∧ 531441 * k + 151390 < 1048576 * k + 298703) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 298751) 32 = 531441 * k + 151414 ∧ 531441 * k + 151414 < 1048576 * k + 298751) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299167) 32 = 531441 * k + 151625 ∧ 531441 * k + 151625 < 1048576 * k + 299167) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299687) 32 = 531441 * k + 151889 ∧ 531441 * k + 151889 < 1048576 * k + 299687) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299759) 32 = 531441 * k + 151925 ∧ 531441 * k + 151925 < 1048576 * k + 299759) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299775) 32 = 531441 * k + 151933 ∧ 531441 * k + 151933 < 1048576 * k + 299775) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299847) 32 = 531441 * k + 151970 ∧ 531441 * k + 151970 < 1048576 * k + 299847) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 299999) 32 = 531441 * k + 152047 ∧ 531441 * k + 152047 < 1048576 * k + 299999) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 300255) 32 = 531441 * k + 152177 ∧ 531441 * k + 152177 < 1048576 * k + 300255) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 300575) 32 = 531441 * k + 152339 ∧ 531441 * k + 152339 < 1048576 * k + 300575) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 300735) 32 = 531441 * k + 152420 ∧ 531441 * k + 152420 < 1048576 * k + 300735) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301023) 32 = 531441 * k + 152566 ∧ 531441 * k + 152566 < 1048576 * k + 301023) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301615) 32 = 531441 * k + 152866 ∧ 531441 * k + 152866 < 1048576 * k + 301615) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301775) 32 = 531441 * k + 152947 ∧ 531441 * k + 152947 < 1048576 * k + 301775) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301799) 32 = 531441 * k + 152959 ∧ 531441 * k + 152959 < 1048576 * k + 301799) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301807) 32 = 531441 * k + 152963 ∧ 531441 * k + 152963 < 1048576 * k + 301807) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 301823) 32 = 531441 * k + 152971 ∧ 531441 * k + 152971 < 1048576 * k + 301823) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 302239) 32 = 531441 * k + 153182 ∧ 531441 * k + 153182 < 1048576 * k + 302239) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 303423) 32 = 531441 * k + 153782 ∧ 531441 * k + 153782 < 1048576 * k + 303423) ∧
  (∀ k : Nat, CollatzM20Shard040.iterate (1048576 * k + 303847) 32 = 531441 * k + 153997 ∧ 531441 * k + 153997 < 1048576 * k + 303847) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 303871) 32 = 531441 * k + 154009 ∧ 531441 * k + 154009 < 1048576 * k + 303871) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 303943) 32 = 531441 * k + 154046 ∧ 531441 * k + 154046 < 1048576 * k + 303943) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 304379) 32 = 531441 * k + 154267 ∧ 531441 * k + 154267 < 1048576 * k + 304379) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 304847) 32 = 531441 * k + 154504 ∧ 531441 * k + 154504 < 1048576 * k + 304847) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 304895) 32 = 531441 * k + 154528 ∧ 531441 * k + 154528 < 1048576 * k + 304895) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 305871) 32 = 531441 * k + 155023 ∧ 531441 * k + 155023 < 1048576 * k + 305871) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 305895) 32 = 531441 * k + 155035 ∧ 531441 * k + 155035 < 1048576 * k + 305895) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 305903) 32 = 531441 * k + 155039 ∧ 531441 * k + 155039 < 1048576 * k + 305903) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 306495) 32 = 531441 * k + 155339 ∧ 531441 * k + 155339 < 1048576 * k + 306495) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 308967) 32 = 531441 * k + 156592 ∧ 531441 * k + 156592 < 1048576 * k + 308967) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309103) 32 = 531441 * k + 156661 ∧ 531441 * k + 156661 < 1048576 * k + 309103) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309215) 32 = 531441 * k + 156718 ∧ 531441 * k + 156718 < 1048576 * k + 309215) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309659) 32 = 531441 * k + 156943 ∧ 531441 * k + 156943 < 1048576 * k + 309659) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 309999) 32 = 531441 * k + 157115 ∧ 531441 * k + 157115 < 1048576 * k + 309999) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 310015) 32 = 531441 * k + 157123 ∧ 531441 * k + 157123 < 1048576 * k + 310015) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 310555) 32 = 531441 * k + 157397 ∧ 531441 * k + 157397 < 1048576 * k + 310555) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 310591) 32 = 531441 * k + 157415 ∧ 531441 * k + 157415 < 1048576 * k + 310591) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 311615) 32 = 531441 * k + 157934 ∧ 531441 * k + 157934 < 1048576 * k + 311615) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 312039) 32 = 531441 * k + 158149 ∧ 531441 * k + 158149 < 1048576 * k + 312039) ∧
  (∀ k : Nat, CollatzM20Shard041.iterate (1048576 * k + 312047) 32 = 531441 * k + 158153 ∧ 531441 * k + 158153 < 1048576 * k + 312047) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 312135) 32 = 531441 * k + 158198 ∧ 531441 * k + 158198 < 1048576 * k + 312135) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 312347) 32 = 531441 * k + 158305 ∧ 531441 * k + 158305 < 1048576 * k + 312347) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 312571) 32 = 531441 * k + 158419 ∧ 531441 * k + 158419 < 1048576 * k + 312571) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313063) 32 = 531441 * k + 158668 ∧ 531441 * k + 158668 < 1048576 * k + 313063) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313159) 32 = 531441 * k + 158717 ∧ 531441 * k + 158717 < 1048576 * k + 313159) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313823) 32 = 531441 * k + 159053 ∧ 531441 * k + 159053 < 1048576 * k + 313823) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 313983) 32 = 531441 * k + 159134 ∧ 531441 * k + 159134 < 1048576 * k + 313983) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 314063) 32 = 531441 * k + 159175 ∧ 531441 * k + 159175 < 1048576 * k + 314063) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 314395) 32 = 531441 * k + 159343 ∧ 531441 * k + 159343 < 1048576 * k + 314395) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 314687) 32 = 531441 * k + 159491 ∧ 531441 * k + 159491 < 1048576 * k + 314687) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 315119) 32 = 531441 * k + 159710 ∧ 531441 * k + 159710 < 1048576 * k + 315119) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 315247) 32 = 531441 * k + 159775 ∧ 531441 * k + 159775 < 1048576 * k + 315247) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 315871) 32 = 531441 * k + 160091 ∧ 531441 * k + 160091 < 1048576 * k + 315871) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 316443) 32 = 531441 * k + 160381 ∧ 531441 * k + 160381 < 1048576 * k + 316443) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 317055) 32 = 531441 * k + 160691 ∧ 531441 * k + 160691 < 1048576 * k + 317055) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 318875) 32 = 531441 * k + 161614 ∧ 531441 * k + 161614 < 1048576 * k + 318875) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 319515) 32 = 531441 * k + 161938 ∧ 531441 * k + 161938 < 1048576 * k + 319515) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 319967) 32 = 531441 * k + 162167 ∧ 531441 * k + 162167 < 1048576 * k + 319967) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 320831) 32 = 531441 * k + 162605 ∧ 531441 * k + 162605 < 1048576 * k + 320831) ∧
  (∀ k : Nat, CollatzM20Shard042.iterate (1048576 * k + 321255) 32 = 531441 * k + 162820 ∧ 531441 * k + 162820 < 1048576 * k + 321255) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 321263) 32 = 531441 * k + 162824 ∧ 531441 * k + 162824 < 1048576 * k + 321263) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 321351) 32 = 531441 * k + 162869 ∧ 531441 * k + 162869 < 1048576 * k + 321351) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 322587) 32 = 531441 * k + 163495 ∧ 531441 * k + 163495 < 1048576 * k + 322587) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 323439) 32 = 531441 * k + 163927 ∧ 531441 * k + 163927 < 1048576 * k + 323439) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 323487) 32 = 531441 * k + 163951 ∧ 531441 * k + 163951 < 1048576 * k + 323487) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 323611) 32 = 531441 * k + 164014 ∧ 531441 * k + 164014 < 1048576 * k + 323611) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 324063) 32 = 531441 * k + 164243 ∧ 531441 * k + 164243 < 1048576 * k + 324063) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 326111) 32 = 531441 * k + 165281 ∧ 531441 * k + 165281 < 1048576 * k + 326111) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 326271) 32 = 531441 * k + 165362 ∧ 531441 * k + 165362 < 1048576 * k + 326271) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 327727) 32 = 531441 * k + 166100 ∧ 531441 * k + 166100 < 1048576 * k + 327727) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329023) 32 = 531441 * k + 166757 ∧ 531441 * k + 166757 < 1048576 * k + 329023) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329183) 32 = 531441 * k + 166838 ∧ 531441 * k + 166838 < 1048576 * k + 329183) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329631) 32 = 531441 * k + 167065 ∧ 531441 * k + 167065 < 1048576 * k + 329631) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 329791) 32 = 531441 * k + 167146 ∧ 531441 * k + 167146 < 1048576 * k + 329791) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 330223) 32 = 531441 * k + 167365 ∧ 531441 * k + 167365 < 1048576 * k + 330223) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 331803) 32 = 531441 * k + 168166 ∧ 531441 * k + 168166 < 1048576 * k + 331803) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 332379) 32 = 531441 * k + 168458 ∧ 531441 * k + 168458 < 1048576 * k + 332379) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 332735) 32 = 531441 * k + 168638 ∧ 531441 * k + 168638 < 1048576 * k + 332735) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 333871) 32 = 531441 * k + 169214 ∧ 531441 * k + 169214 < 1048576 * k + 333871) ∧
  (∀ k : Nat, CollatzM20Shard043.iterate (1048576 * k + 334623) 32 = 531441 * k + 169595 ∧ 531441 * k + 169595 < 1048576 * k + 334623) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 335103) 32 = 531441 * k + 169838 ∧ 531441 * k + 169838 < 1048576 * k + 335103) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 335327) 32 = 531441 * k + 169952 ∧ 531441 * k + 169952 < 1048576 * k + 335327) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 335807) 32 = 531441 * k + 170195 ∧ 531441 * k + 170195 < 1048576 * k + 335807) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 337255) 32 = 531441 * k + 170929 ∧ 531441 * k + 170929 < 1048576 * k + 337255) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 337823) 32 = 531441 * k + 171217 ∧ 531441 * k + 171217 < 1048576 * k + 337823) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 337983) 32 = 531441 * k + 171298 ∧ 531441 * k + 171298 < 1048576 * k + 337983) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338523) 32 = 531441 * k + 171572 ∧ 531441 * k + 171572 < 1048576 * k + 338523) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338683) 32 = 531441 * k + 171653 ∧ 531441 * k + 171653 < 1048576 * k + 338683) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338719) 32 = 531441 * k + 171671 ∧ 531441 * k + 171671 < 1048576 * k + 338719) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 338879) 32 = 531441 * k + 171752 ∧ 531441 * k + 171752 < 1048576 * k + 338879) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 339199) 32 = 531441 * k + 171914 ∧ 531441 * k + 171914 < 1048576 * k + 339199) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 339903) 32 = 531441 * k + 172271 ∧ 531441 * k + 172271 < 1048576 * k + 339903) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 340015) 32 = 531441 * k + 172328 ∧ 531441 * k + 172328 < 1048576 * k + 340015) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 340635) 32 = 531441 * k + 172642 ∧ 531441 * k + 172642 < 1048576 * k + 340635) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342271) 32 = 531441 * k + 173471 ∧ 531441 * k + 173471 < 1048576 * k + 342271) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342683) 32 = 531441 * k + 173680 ∧ 531441 * k + 173680 < 1048576 * k + 342683) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342779) 32 = 531441 * k + 173729 ∧ 531441 * k + 173729 < 1048576 * k + 342779) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 342815) 32 = 531441 * k + 173747 ∧ 531441 * k + 173747 < 1048576 * k + 342815) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 343295) 32 = 531441 * k + 173990 ∧ 531441 * k + 173990 < 1048576 * k + 343295) ∧
  (∀ k : Nat, CollatzM20Shard044.iterate (1048576 * k + 344127) 32 = 531441 * k + 174412 ∧ 531441 * k + 174412 < 1048576 * k + 344127) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 344287) 32 = 531441 * k + 174493 ∧ 531441 * k + 174493 < 1048576 * k + 344287) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 344731) 32 = 531441 * k + 174718 ∧ 531441 * k + 174718 < 1048576 * k + 344731) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 345343) 32 = 531441 * k + 175028 ∧ 531441 * k + 175028 < 1048576 * k + 345343) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 347803) 32 = 531441 * k + 176275 ∧ 531441 * k + 176275 < 1048576 * k + 347803) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 347935) 32 = 531441 * k + 176342 ∧ 531441 * k + 176342 < 1048576 * k + 347935) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348095) 32 = 531441 * k + 176423 ∧ 531441 * k + 176423 < 1048576 * k + 348095) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348383) 32 = 531441 * k + 176569 ∧ 531441 * k + 176569 < 1048576 * k + 348383) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348415) 32 = 531441 * k + 176585 ∧ 531441 * k + 176585 < 1048576 * k + 348415) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348863) 32 = 531441 * k + 176812 ∧ 531441 * k + 176812 < 1048576 * k + 348863) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 348959) 32 = 531441 * k + 176861 ∧ 531441 * k + 176861 < 1048576 * k + 348959) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 349231) 32 = 531441 * k + 176999 ∧ 531441 * k + 176999 < 1048576 * k + 349231) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 349439) 32 = 531441 * k + 177104 ∧ 531441 * k + 177104 < 1048576 * k + 349439) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350119) 32 = 531441 * k + 177449 ∧ 531441 * k + 177449 < 1048576 * k + 350119) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350207) 32 = 531441 * k + 177493 ∧ 531441 * k + 177493 < 1048576 * k + 350207) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350875) 32 = 531441 * k + 177832 ∧ 531441 * k + 177832 < 1048576 * k + 350875) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350887) 32 = 531441 * k + 177838 ∧ 531441 * k + 177838 < 1048576 * k + 350887) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 350971) 32 = 531441 * k + 177881 ∧ 531441 * k + 177881 < 1048576 * k + 350971) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 351647) 32 = 531441 * k + 178223 ∧ 531441 * k + 178223 < 1048576 * k + 351647) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 351775) 32 = 531441 * k + 178288 ∧ 531441 * k + 178288 < 1048576 * k + 351775) ∧
  (∀ k : Nat, CollatzM20Shard045.iterate (1048576 * k + 351899) 32 = 531441 * k + 178351 ∧ 531441 * k + 178351 < 1048576 * k + 351899) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 351935) 32 = 531441 * k + 178369 ∧ 531441 * k + 178369 < 1048576 * k + 351935) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 351995) 32 = 531441 * k + 178400 ∧ 531441 * k + 178400 < 1048576 * k + 351995) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 354559) 32 = 531441 * k + 179699 ∧ 531441 * k + 179699 < 1048576 * k + 354559) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 356263) 32 = 531441 * k + 180563 ∧ 531441 * k + 180563 < 1048576 * k + 356263) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 356423) 32 = 531441 * k + 180644 ∧ 531441 * k + 180644 < 1048576 * k + 356423) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 356575) 32 = 531441 * k + 180721 ∧ 531441 * k + 180721 < 1048576 * k + 356575) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357151) 32 = 531441 * k + 181013 ∧ 531441 * k + 181013 < 1048576 * k + 357151) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357599) 32 = 531441 * k + 181240 ∧ 531441 * k + 181240 < 1048576 * k + 357599) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357631) 32 = 531441 * k + 181256 ∧ 531441 * k + 181256 < 1048576 * k + 357631) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 357919) 32 = 531441 * k + 181402 ∧ 531441 * k + 181402 < 1048576 * k + 357919) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 358079) 32 = 531441 * k + 181483 ∧ 531441 * k + 181483 < 1048576 * k + 358079) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 358511) 32 = 531441 * k + 181702 ∧ 531441 * k + 181702 < 1048576 * k + 358511) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 359079) 32 = 531441 * k + 181990 ∧ 531441 * k + 181990 < 1048576 * k + 359079) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 360091) 32 = 531441 * k + 182503 ∧ 531441 * k + 182503 < 1048576 * k + 360091) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 360187) 32 = 531441 * k + 182552 ∧ 531441 * k + 182552 < 1048576 * k + 360187) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 360519) 32 = 531441 * k + 182720 ∧ 531441 * k + 182720 < 1048576 * k + 360519) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 363367) 32 = 531441 * k + 184163 ∧ 531441 * k + 184163 < 1048576 * k + 363367) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 363391) 32 = 531441 * k + 184175 ∧ 531441 * k + 184175 < 1048576 * k + 363391) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 363935) 32 = 531441 * k + 184451 ∧ 531441 * k + 184451 < 1048576 * k + 363935) ∧
  (∀ k : Nat, CollatzM20Shard046.iterate (1048576 * k + 364703) 32 = 531441 * k + 184840 ∧ 531441 * k + 184840 < 1048576 * k + 364703) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 365223) 32 = 531441 * k + 185104 ∧ 531441 * k + 185104 < 1048576 * k + 365223) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 365383) 32 = 531441 * k + 185185 ∧ 531441 * k + 185185 < 1048576 * k + 365383) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 365791) 32 = 531441 * k + 185392 ∧ 531441 * k + 185392 < 1048576 * k + 365791) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 366111) 32 = 531441 * k + 185554 ∧ 531441 * k + 185554 < 1048576 * k + 366111) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 366271) 32 = 531441 * k + 185635 ∧ 531441 * k + 185635 < 1048576 * k + 366271) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 366439) 32 = 531441 * k + 185720 ∧ 531441 * k + 185720 < 1048576 * k + 366439) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 367487) 32 = 531441 * k + 186251 ∧ 531441 * k + 186251 < 1048576 * k + 367487) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 367775) 32 = 531441 * k + 186397 ∧ 531441 * k + 186397 < 1048576 * k + 367775) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 368711) 32 = 531441 * k + 186872 ∧ 531441 * k + 186872 < 1048576 * k + 368711) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 369391) 32 = 531441 * k + 187216 ∧ 531441 * k + 187216 < 1048576 * k + 369391) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 369479) 32 = 531441 * k + 187261 ∧ 531441 * k + 187261 < 1048576 * k + 369479) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 369735) 32 = 531441 * k + 187391 ∧ 531441 * k + 187391 < 1048576 * k + 369735) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 370559) 32 = 531441 * k + 187808 ∧ 531441 * k + 187808 < 1048576 * k + 370559) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 371583) 32 = 531441 * k + 188327 ∧ 531441 * k + 188327 < 1048576 * k + 371583) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 371695) 32 = 531441 * k + 188384 ∧ 531441 * k + 188384 < 1048576 * k + 371695) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 372463) 32 = 531441 * k + 188773 ∧ 531441 * k + 188773 < 1048576 * k + 372463) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 373631) 32 = 531441 * k + 189365 ∧ 531441 * k + 189365 < 1048576 * k + 373631) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 375535) 32 = 531441 * k + 190330 ∧ 531441 * k + 190330 < 1048576 * k + 375535) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 375655) 32 = 531441 * k + 190391 ∧ 531441 * k + 190391 < 1048576 * k + 375655) ∧
  (∀ k : Nat, CollatzM20Shard047.iterate (1048576 * k + 376091) 32 = 531441 * k + 190612 ∧ 531441 * k + 190612 < 1048576 * k + 376091) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 376703) 32 = 531441 * k + 190922 ∧ 531441 * k + 190922 < 1048576 * k + 376703) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377151) 32 = 531441 * k + 191149 ∧ 531441 * k + 191149 < 1048576 * k + 377151) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377583) 32 = 531441 * k + 191368 ∧ 531441 * k + 191368 < 1048576 * k + 377583) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377671) 32 = 531441 * k + 191413 ∧ 531441 * k + 191413 < 1048576 * k + 377671) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377727) 32 = 531441 * k + 191441 ∧ 531441 * k + 191441 < 1048576 * k + 377727) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377839) 32 = 531441 * k + 191498 ∧ 531441 * k + 191498 < 1048576 * k + 377839) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 377927) 32 = 531441 * k + 191543 ∧ 531441 * k + 191543 < 1048576 * k + 377927) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 378495) 32 = 531441 * k + 191830 ∧ 531441 * k + 191830 < 1048576 * k + 378495) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 378695) 32 = 531441 * k + 191932 ∧ 531441 * k + 191932 < 1048576 * k + 378695) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 379935) 32 = 531441 * k + 192560 ∧ 531441 * k + 192560 < 1048576 * k + 379935) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 380223) 32 = 531441 * k + 192706 ∧ 531441 * k + 192706 < 1048576 * k + 380223) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 380655) 32 = 531441 * k + 192925 ∧ 531441 * k + 192925 < 1048576 * k + 380655) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 381095) 32 = 531441 * k + 193148 ∧ 531441 * k + 193148 < 1048576 * k + 381095) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 382591) 32 = 531441 * k + 193906 ∧ 531441 * k + 193906 < 1048576 * k + 382591) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 382847) 32 = 531441 * k + 194036 ∧ 531441 * k + 194036 < 1048576 * k + 382847) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 383455) 32 = 531441 * k + 194344 ∧ 531441 * k + 194344 < 1048576 * k + 383455) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 384167) 32 = 531441 * k + 194705 ∧ 531441 * k + 194705 < 1048576 * k + 384167) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 384303) 32 = 531441 * k + 194774 ∧ 531441 * k + 194774 < 1048576 * k + 384303) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 385535) 32 = 531441 * k + 195398 ∧ 531441 * k + 195398 < 1048576 * k + 385535) ∧
  (∀ k : Nat, CollatzM20Shard048.iterate (1048576 * k + 385919) 32 = 531441 * k + 195593 ∧ 531441 * k + 195593 < 1048576 * k + 385919) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386367) 32 = 531441 * k + 195820 ∧ 531441 * k + 195820 < 1048576 * k + 386367) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386527) 32 = 531441 * k + 195901 ∧ 531441 * k + 195901 < 1048576 * k + 386527) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386799) 32 = 531441 * k + 196039 ∧ 531441 * k + 196039 < 1048576 * k + 386799) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 386887) 32 = 531441 * k + 196084 ∧ 531441 * k + 196084 < 1048576 * k + 386887) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 388263) 32 = 531441 * k + 196781 ∧ 531441 * k + 196781 < 1048576 * k + 388263) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 388607) 32 = 531441 * k + 196955 ∧ 531441 * k + 196955 < 1048576 * k + 388607) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 388955) 32 = 531441 * k + 197132 ∧ 531441 * k + 197132 < 1048576 * k + 388955) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389287) 32 = 531441 * k + 197300 ∧ 531441 * k + 197300 < 1048576 * k + 389287) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389599) 32 = 531441 * k + 197458 ∧ 531441 * k + 197458 < 1048576 * k + 389599) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389631) 32 = 531441 * k + 197474 ∧ 531441 * k + 197474 < 1048576 * k + 389631) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 389723) 32 = 531441 * k + 197521 ∧ 531441 * k + 197521 < 1048576 * k + 389723) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 390447) 32 = 531441 * k + 197888 ∧ 531441 * k + 197888 < 1048576 * k + 390447) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 391495) 32 = 531441 * k + 198419 ∧ 531441 * k + 198419 < 1048576 * k + 391495) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 391647) 32 = 531441 * k + 198496 ∧ 531441 * k + 198496 < 1048576 * k + 391647) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 391807) 32 = 531441 * k + 198577 ∧ 531441 * k + 198577 < 1048576 * k + 391807) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 392223) 32 = 531441 * k + 198788 ∧ 531441 * k + 198788 < 1048576 * k + 392223) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 392359) 32 = 531441 * k + 198857 ∧ 531441 * k + 198857 < 1048576 * k + 392359) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 392383) 32 = 531441 * k + 198869 ∧ 531441 * k + 198869 < 1048576 * k + 392383) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 393543) 32 = 531441 * k + 199457 ∧ 531441 * k + 199457 < 1048576 * k + 393543) ∧
  (∀ k : Nat, CollatzM20Shard049.iterate (1048576 * k + 393727) 32 = 531441 * k + 199550 ∧ 531441 * k + 199550 < 1048576 * k + 393727) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 394175) 32 = 531441 * k + 199777 ∧ 531441 * k + 199777 < 1048576 * k + 394175) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 394559) 32 = 531441 * k + 199972 ∧ 531441 * k + 199972 < 1048576 * k + 394559) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 394719) 32 = 531441 * k + 200053 ∧ 531441 * k + 200053 < 1048576 * k + 394719) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 395099) 32 = 531441 * k + 200246 ∧ 531441 * k + 200246 < 1048576 * k + 395099) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 395259) 32 = 531441 * k + 200327 ∧ 531441 * k + 200327 < 1048576 * k + 395259) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396223) 32 = 531441 * k + 200815 ∧ 531441 * k + 200815 < 1048576 * k + 396223) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396479) 32 = 531441 * k + 200945 ∧ 531441 * k + 200945 < 1048576 * k + 396479) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396591) 32 = 531441 * k + 201002 ∧ 531441 * k + 201002 < 1048576 * k + 396591) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 396799) 32 = 531441 * k + 201107 ∧ 531441 * k + 201107 < 1048576 * k + 396799) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 397639) 32 = 531441 * k + 201533 ∧ 531441 * k + 201533 < 1048576 * k + 397639) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 397915) 32 = 531441 * k + 201673 ∧ 531441 * k + 201673 < 1048576 * k + 397915) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 398271) 32 = 531441 * k + 201853 ∧ 531441 * k + 201853 < 1048576 * k + 398271) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 398503) 32 = 531441 * k + 201971 ∧ 531441 * k + 201971 < 1048576 * k + 398503) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 399007) 32 = 531441 * k + 202226 ∧ 531441 * k + 202226 < 1048576 * k + 399007) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 399355) 32 = 531441 * k + 202403 ∧ 531441 * k + 202403 < 1048576 * k + 399355) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 399983) 32 = 531441 * k + 202721 ∧ 531441 * k + 202721 < 1048576 * k + 399983) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 400863) 32 = 531441 * k + 203167 ∧ 531441 * k + 203167 < 1048576 * k + 400863) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 401055) 32 = 531441 * k + 203264 ∧ 531441 * k + 203264 < 1048576 * k + 401055) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 401343) 32 = 531441 * k + 203410 ∧ 531441 * k + 203410 < 1048576 * k + 401343) ∧
  (∀ k : Nat, CollatzM20Shard050.iterate (1048576 * k + 401735) 32 = 531441 * k + 203609 ∧ 531441 * k + 203609 < 1048576 * k + 401735) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 402203) 32 = 531441 * k + 203846 ∧ 531441 * k + 203846 < 1048576 * k + 402203) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 402671) 32 = 531441 * k + 204083 ∧ 531441 * k + 204083 < 1048576 * k + 402671) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 403695) 32 = 531441 * k + 204602 ∧ 531441 * k + 204602 < 1048576 * k + 403695) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 403783) 32 = 531441 * k + 204647 ∧ 531441 * k + 204647 < 1048576 * k + 403783) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404059) 32 = 531441 * k + 204787 ∧ 531441 * k + 204787 < 1048576 * k + 404059) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404219) 32 = 531441 * k + 204868 ∧ 531441 * k + 204868 < 1048576 * k + 404219) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404415) 32 = 531441 * k + 204967 ∧ 531441 * k + 204967 < 1048576 * k + 404415) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 404671) 32 = 531441 * k + 205097 ∧ 531441 * k + 205097 < 1048576 * k + 404671) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405151) 32 = 531441 * k + 205340 ∧ 531441 * k + 205340 < 1048576 * k + 405151) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405275) 32 = 531441 * k + 205403 ∧ 531441 * k + 205403 < 1048576 * k + 405275) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405439) 32 = 531441 * k + 205486 ∧ 531441 * k + 205486 < 1048576 * k + 405439) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405551) 32 = 531441 * k + 205543 ∧ 531441 * k + 205543 < 1048576 * k + 405551) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405695) 32 = 531441 * k + 205616 ∧ 531441 * k + 205616 < 1048576 * k + 405695) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405743) 32 = 531441 * k + 205640 ∧ 531441 * k + 205640 < 1048576 * k + 405743) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 405807) 32 = 531441 * k + 205673 ∧ 531441 * k + 205673 < 1048576 * k + 405807) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 406127) 32 = 531441 * k + 205835 ∧ 531441 * k + 205835 < 1048576 * k + 406127) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 406695) 32 = 531441 * k + 206123 ∧ 531441 * k + 206123 < 1048576 * k + 406695) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 406855) 32 = 531441 * k + 206204 ∧ 531441 * k + 206204 < 1048576 * k + 406855) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 407463) 32 = 531441 * k + 206512 ∧ 531441 * k + 206512 < 1048576 * k + 407463) ∧
  (∀ k : Nat, CollatzM20Shard051.iterate (1048576 * k + 407547) 32 = 531441 * k + 206555 ∧ 531441 * k + 206555 < 1048576 * k + 407547) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408315) 32 = 531441 * k + 206944 ∧ 531441 * k + 206944 < 1048576 * k + 408315) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408351) 32 = 531441 * k + 206962 ∧ 531441 * k + 206962 < 1048576 * k + 408351) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408571) 32 = 531441 * k + 207074 ∧ 531441 * k + 207074 < 1048576 * k + 408571) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 408831) 32 = 531441 * k + 207205 ∧ 531441 * k + 207205 < 1048576 * k + 408831) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 409247) 32 = 531441 * k + 207416 ∧ 531441 * k + 207416 < 1048576 * k + 409247) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 409839) 32 = 531441 * k + 207716 ∧ 531441 * k + 207716 < 1048576 * k + 409839) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 410879) 32 = 531441 * k + 208243 ∧ 531441 * k + 208243 < 1048576 * k + 410879) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 411295) 32 = 531441 * k + 208454 ∧ 531441 * k + 208454 < 1048576 * k + 411295) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 412775) 32 = 531441 * k + 209204 ∧ 531441 * k + 209204 < 1048576 * k + 412775) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 412999) 32 = 531441 * k + 209318 ∧ 531441 * k + 209318 < 1048576 * k + 412999) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 413631) 32 = 531441 * k + 209638 ∧ 531441 * k + 209638 < 1048576 * k + 413631) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 413887) 32 = 531441 * k + 209768 ∧ 531441 * k + 209768 < 1048576 * k + 413887) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 413935) 32 = 531441 * k + 209792 ∧ 531441 * k + 209792 < 1048576 * k + 413935) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414367) 32 = 531441 * k + 210011 ∧ 531441 * k + 210011 < 1048576 * k + 414367) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414491) 32 = 531441 * k + 210074 ∧ 531441 * k + 210074 < 1048576 * k + 414491) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414495) 32 = 531441 * k + 210076 ∧ 531441 * k + 210076 < 1048576 * k + 414495) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414767) 32 = 531441 * k + 210214 ∧ 531441 * k + 210214 < 1048576 * k + 414767) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 414975) 32 = 531441 * k + 210319 ∧ 531441 * k + 210319 < 1048576 * k + 414975) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 415655) 32 = 531441 * k + 210664 ∧ 531441 * k + 210664 < 1048576 * k + 415655) ∧
  (∀ k : Nat, CollatzM20Shard052.iterate (1048576 * k + 415983) 32 = 531441 * k + 210830 ∧ 531441 * k + 210830 < 1048576 * k + 415983) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416507) 32 = 531441 * k + 211096 ∧ 531441 * k + 211096 < 1048576 * k + 416507) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416763) 32 = 531441 * k + 211226 ∧ 531441 * k + 211226 < 1048576 * k + 416763) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416871) 32 = 531441 * k + 211280 ∧ 531441 * k + 211280 < 1048576 * k + 416871) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 416895) 32 = 531441 * k + 211292 ∧ 531441 * k + 211292 < 1048576 * k + 416895) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 417531) 32 = 531441 * k + 211615 ∧ 531441 * k + 211615 < 1048576 * k + 417531) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 419931) 32 = 531441 * k + 212831 ∧ 531441 * k + 212831 < 1048576 * k + 419931) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 419943) 32 = 531441 * k + 212837 ∧ 531441 * k + 212837 < 1048576 * k + 419943) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 419967) 32 = 531441 * k + 212849 ∧ 531441 * k + 212849 < 1048576 * k + 419967) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420095) 32 = 531441 * k + 212914 ∧ 531441 * k + 212914 < 1048576 * k + 420095) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420511) 32 = 531441 * k + 213125 ∧ 531441 * k + 213125 < 1048576 * k + 420511) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420671) 32 = 531441 * k + 213206 ∧ 531441 * k + 213206 < 1048576 * k + 420671) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 420967) 32 = 531441 * k + 213356 ∧ 531441 * k + 213356 < 1048576 * k + 420967) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 421799) 32 = 531441 * k + 213778 ∧ 531441 * k + 213778 < 1048576 * k + 421799) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 421959) 32 = 531441 * k + 213859 ∧ 531441 * k + 213859 < 1048576 * k + 421959) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 422687) 32 = 531441 * k + 214228 ∧ 531441 * k + 214228 < 1048576 * k + 422687) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 423003) 32 = 531441 * k + 214388 ∧ 531441 * k + 214388 < 1048576 * k + 423003) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 423015) 32 = 531441 * k + 214394 ∧ 531441 * k + 214394 < 1048576 * k + 423015) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 423167) 32 = 531441 * k + 214471 ∧ 531441 * k + 214471 < 1048576 * k + 423167) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 424063) 32 = 531441 * k + 214925 ∧ 531441 * k + 214925 < 1048576 * k + 424063) ∧
  (∀ k : Nat, CollatzM20Shard053.iterate (1048576 * k + 424767) 32 = 531441 * k + 215282 ∧ 531441 * k + 215282 < 1048576 * k + 424767) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 425087) 32 = 531441 * k + 215444 ∧ 531441 * k + 215444 < 1048576 * k + 425087) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 425723) 32 = 531441 * k + 215767 ∧ 531441 * k + 215767 < 1048576 * k + 425723) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 426055) 32 = 531441 * k + 215935 ∧ 531441 * k + 215935 < 1048576 * k + 426055) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 426087) 32 = 531441 * k + 215951 ∧ 531441 * k + 215951 < 1048576 * k + 426087) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 426975) 32 = 531441 * k + 216401 ∧ 531441 * k + 216401 < 1048576 * k + 426975) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 427099) 32 = 531441 * k + 216464 ∧ 531441 * k + 216464 < 1048576 * k + 427099) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 427111) 32 = 531441 * k + 216470 ∧ 531441 * k + 216470 < 1048576 * k + 427111) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 427879) 32 = 531441 * k + 216859 ∧ 531441 * k + 216859 < 1048576 * k + 427879) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 428123) 32 = 531441 * k + 216983 ∧ 531441 * k + 216983 < 1048576 * k + 428123) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 428159) 32 = 531441 * k + 217001 ∧ 531441 * k + 217001 < 1048576 * k + 428159) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 429039) 32 = 531441 * k + 217447 ∧ 531441 * k + 217447 < 1048576 * k + 429039) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 429471) 32 = 531441 * k + 217666 ∧ 531441 * k + 217666 < 1048576 * k + 429471) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 429503) 32 = 531441 * k + 217682 ∧ 531441 * k + 217682 < 1048576 * k + 429503) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 430331) 32 = 531441 * k + 218102 ∧ 531441 * k + 218102 < 1048576 * k + 430331) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 431195) 32 = 531441 * k + 218540 ∧ 531441 * k + 218540 < 1048576 * k + 431195) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 431663) 32 = 531441 * k + 218777 ∧ 531441 * k + 218777 < 1048576 * k + 431663) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 431975) 32 = 531441 * k + 218935 ∧ 531441 * k + 218935 < 1048576 * k + 431975) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 432231) 32 = 531441 * k + 219065 ∧ 531441 * k + 219065 < 1048576 * k + 432231) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 432379) 32 = 531441 * k + 219140 ∧ 531441 * k + 219140 < 1048576 * k + 432379) ∧
  (∀ k : Nat, CollatzM20Shard054.iterate (1048576 * k + 432959) 32 = 531441 * k + 219434 ∧ 531441 * k + 219434 < 1048576 * k + 432959) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 433119) 32 = 531441 * k + 219515 ∧ 531441 * k + 219515 < 1048576 * k + 433119) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 433871) 32 = 531441 * k + 219896 ∧ 531441 * k + 219896 < 1048576 * k + 433871) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 433983) 32 = 531441 * k + 219953 ∧ 531441 * k + 219953 < 1048576 * k + 433983) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 434247) 32 = 531441 * k + 220087 ∧ 531441 * k + 220087 < 1048576 * k + 434247) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 434303) 32 = 531441 * k + 220115 ∧ 531441 * k + 220115 < 1048576 * k + 434303) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 434735) 32 = 531441 * k + 220334 ∧ 531441 * k + 220334 < 1048576 * k + 434735) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 435271) 32 = 531441 * k + 220606 ∧ 531441 * k + 220606 < 1048576 * k + 435271) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 435303) 32 = 531441 * k + 220622 ∧ 531441 * k + 220622 < 1048576 * k + 435303) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 436475) 32 = 531441 * k + 221216 ∧ 531441 * k + 221216 < 1048576 * k + 436475) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 436671) 32 = 531441 * k + 221315 ∧ 531441 * k + 221315 < 1048576 * k + 436671) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437119) 32 = 531441 * k + 221542 ∧ 531441 * k + 221542 < 1048576 * k + 437119) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437231) 32 = 531441 * k + 221599 ∧ 531441 * k + 221599 < 1048576 * k + 437231) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437339) 32 = 531441 * k + 221654 ∧ 531441 * k + 221654 < 1048576 * k + 437339) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437695) 32 = 531441 * k + 221834 ∧ 531441 * k + 221834 < 1048576 * k + 437695) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437807) 32 = 531441 * k + 221891 ∧ 531441 * k + 221891 < 1048576 * k + 437807) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 437967) 32 = 531441 * k + 221972 ∧ 531441 * k + 221972 < 1048576 * k + 437967) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 438015) 32 = 531441 * k + 221996 ∧ 531441 * k + 221996 < 1048576 * k + 438015) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 438831) 32 = 531441 * k + 222410 ∧ 531441 * k + 222410 < 1048576 * k + 438831) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 439039) 32 = 531441 * k + 222515 ∧ 531441 * k + 222515 < 1048576 * k + 439039) ∧
  (∀ k : Nat, CollatzM20Shard055.iterate (1048576 * k + 439167) 32 = 531441 * k + 222580 ∧ 531441 * k + 222580 < 1048576 * k + 439167) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 439263) 32 = 531441 * k + 222629 ∧ 531441 * k + 222629 < 1048576 * k + 439263) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 440063) 32 = 531441 * k + 223034 ∧ 531441 * k + 223034 < 1048576 * k + 440063) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 440571) 32 = 531441 * k + 223292 ∧ 531441 * k + 223292 < 1048576 * k + 440571) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 441039) 32 = 531441 * k + 223529 ∧ 531441 * k + 223529 < 1048576 * k + 441039) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 441063) 32 = 531441 * k + 223541 ∧ 531441 * k + 223541 < 1048576 * k + 441063) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 441191) 32 = 531441 * k + 223606 ∧ 531441 * k + 223606 < 1048576 * k + 441191) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442063) 32 = 531441 * k + 224048 ∧ 531441 * k + 224048 < 1048576 * k + 442063) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442175) 32 = 531441 * k + 224105 ∧ 531441 * k + 224105 < 1048576 * k + 442175) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442495) 32 = 531441 * k + 224267 ∧ 531441 * k + 224267 < 1048576 * k + 442495) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442619) 32 = 531441 * k + 224330 ∧ 531441 * k + 224330 < 1048576 * k + 442619) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 442815) 32 = 531441 * k + 224429 ∧ 531441 * k + 224429 < 1048576 * k + 442815) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443135) 32 = 531441 * k + 224591 ∧ 531441 * k + 224591 < 1048576 * k + 443135) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443263) 32 = 531441 * k + 224656 ∧ 531441 * k + 224656 < 1048576 * k + 443263) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443375) 32 = 531441 * k + 224713 ∧ 531441 * k + 224713 < 1048576 * k + 443375) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 443463) 32 = 531441 * k + 224758 ∧ 531441 * k + 224758 < 1048576 * k + 443463) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 444111) 32 = 531441 * k + 225086 ∧ 531441 * k + 225086 < 1048576 * k + 444111) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 445159) 32 = 531441 * k + 225617 ∧ 531441 * k + 225617 < 1048576 * k + 445159) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 445531) 32 = 531441 * k + 225806 ∧ 531441 * k + 225806 < 1048576 * k + 445531) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 445691) 32 = 531441 * k + 225887 ∧ 531441 * k + 225887 < 1048576 * k + 445691) ∧
  (∀ k : Nat, CollatzM20Shard056.iterate (1048576 * k + 446207) 32 = 531441 * k + 226148 ∧ 531441 * k + 226148 < 1048576 * k + 446207) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 446299) 32 = 531441 * k + 226195 ∧ 531441 * k + 226195 < 1048576 * k + 446299) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 447023) 32 = 531441 * k + 226562 ∧ 531441 * k + 226562 < 1048576 * k + 447023) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 447183) 32 = 531441 * k + 226643 ∧ 531441 * k + 226643 < 1048576 * k + 447183) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 447231) 32 = 531441 * k + 226667 ∧ 531441 * k + 226667 < 1048576 * k + 447231) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448207) 32 = 531441 * k + 227162 ∧ 531441 * k + 227162 < 1048576 * k + 448207) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448231) 32 = 531441 * k + 227174 ∧ 531441 * k + 227174 < 1048576 * k + 448231) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448383) 32 = 531441 * k + 227251 ∧ 531441 * k + 227251 < 1048576 * k + 448383) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 448479) 32 = 531441 * k + 227300 ∧ 531441 * k + 227300 < 1048576 * k + 448479) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 449255) 32 = 531441 * k + 227693 ∧ 531441 * k + 227693 < 1048576 * k + 449255) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 449279) 32 = 531441 * k + 227705 ∧ 531441 * k + 227705 < 1048576 * k + 449279) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451303) 32 = 531441 * k + 228731 ∧ 531441 * k + 228731 < 1048576 * k + 451303) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451455) 32 = 531441 * k + 228808 ∧ 531441 * k + 228808 < 1048576 * k + 451455) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451611) 32 = 531441 * k + 228887 ∧ 531441 * k + 228887 < 1048576 * k + 451611) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 451835) 32 = 531441 * k + 229001 ∧ 531441 * k + 229001 < 1048576 * k + 451835) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 452351) 32 = 531441 * k + 229262 ∧ 531441 * k + 229262 < 1048576 * k + 452351) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 453327) 32 = 531441 * k + 229757 ∧ 531441 * k + 229757 < 1048576 * k + 453327) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 453375) 32 = 531441 * k + 229781 ∧ 531441 * k + 229781 < 1048576 * k + 453375) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 454375) 32 = 531441 * k + 230288 ∧ 531441 * k + 230288 < 1048576 * k + 454375) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 454491) 32 = 531441 * k + 230347 ∧ 531441 * k + 230347 < 1048576 * k + 454491) ∧
  (∀ k : Nat, CollatzM20Shard057.iterate (1048576 * k + 454823) 32 = 531441 * k + 230515 ∧ 531441 * k + 230515 < 1048576 * k + 454823) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 455399) 32 = 531441 * k + 230807 ∧ 531441 * k + 230807 < 1048576 * k + 455399) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 455707) 32 = 531441 * k + 230963 ∧ 531441 * k + 230963 < 1048576 * k + 455707) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 456399) 32 = 531441 * k + 231314 ∧ 531441 * k + 231314 < 1048576 * k + 456399) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 456559) 32 = 531441 * k + 231395 ∧ 531441 * k + 231395 < 1048576 * k + 456559) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457327) 32 = 531441 * k + 231784 ∧ 531441 * k + 231784 < 1048576 * k + 457327) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457759) 32 = 531441 * k + 232003 ∧ 531441 * k + 232003 < 1048576 * k + 457759) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457895) 32 = 531441 * k + 232072 ∧ 531441 * k + 232072 < 1048576 * k + 457895) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 457919) 32 = 531441 * k + 232084 ∧ 531441 * k + 232084 < 1048576 * k + 457919) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 458779) 32 = 531441 * k + 232520 ∧ 531441 * k + 232520 < 1048576 * k + 458779) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 459247) 32 = 531441 * k + 232757 ∧ 531441 * k + 232757 < 1048576 * k + 459247) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 459263) 32 = 531441 * k + 232765 ∧ 531441 * k + 232765 < 1048576 * k + 459263) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 459803) 32 = 531441 * k + 233039 ∧ 531441 * k + 233039 < 1048576 * k + 459803) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 460519) 32 = 531441 * k + 233402 ∧ 531441 * k + 233402 < 1048576 * k + 460519) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 460635) 32 = 531441 * k + 233461 ∧ 531441 * k + 233461 < 1048576 * k + 460635) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 460795) 32 = 531441 * k + 233542 ∧ 531441 * k + 233542 < 1048576 * k + 460795) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 461127) 32 = 531441 * k + 233710 ∧ 531441 * k + 233710 < 1048576 * k + 461127) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 461567) 32 = 531441 * k + 233933 ∧ 531441 * k + 233933 < 1048576 * k + 461567) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 461851) 32 = 531441 * k + 234077 ∧ 531441 * k + 234077 < 1048576 * k + 461851) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 462015) 32 = 531441 * k + 234160 ∧ 531441 * k + 234160 < 1048576 * k + 462015) ∧
  (∀ k : Nat, CollatzM20Shard058.iterate (1048576 * k + 462127) 32 = 531441 * k + 234217 ∧ 531441 * k + 234217 < 1048576 * k + 462127) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 462319) 32 = 531441 * k + 234314 ∧ 531441 * k + 234314 < 1048576 * k + 462319) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 462335) 32 = 531441 * k + 234322 ∧ 531441 * k + 234322 < 1048576 * k + 462335) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 462703) 32 = 531441 * k + 234509 ∧ 531441 * k + 234509 < 1048576 * k + 462703) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 463591) 32 = 531441 * k + 234959 ∧ 531441 * k + 234959 < 1048576 * k + 463591) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464039) 32 = 531441 * k + 235186 ∧ 531441 * k + 235186 < 1048576 * k + 464039) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464199) 32 = 531441 * k + 235267 ∧ 531441 * k + 235267 < 1048576 * k + 464199) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464891) 32 = 531441 * k + 235618 ∧ 531441 * k + 235618 < 1048576 * k + 464891) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 464923) 32 = 531441 * k + 235634 ∧ 531441 * k + 235634 < 1048576 * k + 464923) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 465519) 32 = 531441 * k + 235936 ∧ 531441 * k + 235936 < 1048576 * k + 465519) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 465947) 32 = 531441 * k + 236153 ∧ 531441 * k + 236153 < 1048576 * k + 465947) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 466279) 32 = 531441 * k + 236321 ∧ 531441 * k + 236321 < 1048576 * k + 466279) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 466415) 32 = 531441 * k + 236390 ∧ 531441 * k + 236390 < 1048576 * k + 466415) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 466715) 32 = 531441 * k + 236542 ∧ 531441 * k + 236542 < 1048576 * k + 466715) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 467271) 32 = 531441 * k + 236824 ∧ 531441 * k + 236824 < 1048576 * k + 467271) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 467439) 32 = 531441 * k + 236909 ∧ 531441 * k + 236909 < 1048576 * k + 467439) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 468639) 32 = 531441 * k + 237517 ∧ 531441 * k + 237517 < 1048576 * k + 468639) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 469319) 32 = 531441 * k + 237862 ∧ 531441 * k + 237862 < 1048576 * k + 469319) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 469351) 32 = 531441 * k + 237878 ∧ 531441 * k + 237878 < 1048576 * k + 469351) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 470207) 32 = 531441 * k + 238312 ∧ 531441 * k + 238312 < 1048576 * k + 470207) ∧
  (∀ k : Nat, CollatzM20Shard059.iterate (1048576 * k + 470511) 32 = 531441 * k + 238466 ∧ 531441 * k + 238466 < 1048576 * k + 470511) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 470811) 32 = 531441 * k + 238618 ∧ 531441 * k + 238618 < 1048576 * k + 470811) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 470943) 32 = 531441 * k + 238685 ∧ 531441 * k + 238685 < 1048576 * k + 470943) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471067) 32 = 531441 * k + 238748 ∧ 531441 * k + 238748 < 1048576 * k + 471067) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471231) 32 = 531441 * k + 238831 ∧ 531441 * k + 238831 < 1048576 * k + 471231) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471343) 32 = 531441 * k + 238888 ∧ 531441 * k + 238888 < 1048576 * k + 471343) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471663) 32 = 531441 * k + 239050 ∧ 531441 * k + 239050 < 1048576 * k + 471663) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 471711) 32 = 531441 * k + 239074 ∧ 531441 * k + 239074 < 1048576 * k + 471711) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 472231) 32 = 531441 * k + 239338 ∧ 531441 * k + 239338 < 1048576 * k + 472231) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 472391) 32 = 531441 * k + 239419 ∧ 531441 * k + 239419 < 1048576 * k + 472391) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 473083) 32 = 531441 * k + 239770 ∧ 531441 * k + 239770 < 1048576 * k + 473083) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 473327) 32 = 531441 * k + 239893 ∧ 531441 * k + 239893 < 1048576 * k + 473327) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 473447) 32 = 531441 * k + 239954 ∧ 531441 * k + 239954 < 1048576 * k + 473447) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474107) 32 = 531441 * k + 240289 ∧ 531441 * k + 240289 < 1048576 * k + 474107) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474139) 32 = 531441 * k + 240305 ∧ 531441 * k + 240305 < 1048576 * k + 474139) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474471) 32 = 531441 * k + 240473 ∧ 531441 * k + 240473 < 1048576 * k + 474471) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 474783) 32 = 531441 * k + 240631 ∧ 531441 * k + 240631 < 1048576 * k + 474783) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 476543) 32 = 531441 * k + 241523 ∧ 531441 * k + 241523 < 1048576 * k + 476543) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 476655) 32 = 531441 * k + 241580 ∧ 531441 * k + 241580 < 1048576 * k + 476655) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 476831) 32 = 531441 * k + 241669 ∧ 531441 * k + 241669 < 1048576 * k + 476831) ∧
  (∀ k : Nat, CollatzM20Shard060.iterate (1048576 * k + 477087) 32 = 531441 * k + 241799 ∧ 531441 * k + 241799 < 1048576 * k + 477087) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 477247) 32 = 531441 * k + 241880 ∧ 531441 * k + 241880 < 1048576 * k + 477247) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 477543) 32 = 531441 * k + 242030 ∧ 531441 * k + 242030 < 1048576 * k + 477543) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 478535) 32 = 531441 * k + 242533 ∧ 531441 * k + 242533 < 1048576 * k + 478535) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479423) 32 = 531441 * k + 242983 ∧ 531441 * k + 242983 < 1048576 * k + 479423) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479471) 32 = 531441 * k + 243007 ∧ 531441 * k + 243007 < 1048576 * k + 479471) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479899) 32 = 531441 * k + 243224 ∧ 531441 * k + 243224 < 1048576 * k + 479899) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 479903) 32 = 531441 * k + 243226 ∧ 531441 * k + 243226 < 1048576 * k + 479903) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 480027) 32 = 531441 * k + 243289 ∧ 531441 * k + 243289 < 1048576 * k + 480027) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 480639) 32 = 531441 * k + 243599 ∧ 531441 * k + 243599 < 1048576 * k + 480639) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 481343) 32 = 531441 * k + 243956 ∧ 531441 * k + 243956 < 1048576 * k + 481343) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 481519) 32 = 531441 * k + 244045 ∧ 531441 * k + 244045 < 1048576 * k + 481519) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 482299) 32 = 531441 * k + 244441 ∧ 531441 * k + 244441 < 1048576 * k + 482299) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 483551) 32 = 531441 * k + 245075 ∧ 531441 * k + 245075 < 1048576 * k + 483551) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 483687) 32 = 531441 * k + 245144 ∧ 531441 * k + 245144 < 1048576 * k + 483687) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 483995) 32 = 531441 * k + 245300 ∧ 531441 * k + 245300 < 1048576 * k + 483995) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 484031) 32 = 531441 * k + 245318 ∧ 531441 * k + 245318 < 1048576 * k + 484031) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 484735) 32 = 531441 * k + 245675 ∧ 531441 * k + 245675 < 1048576 * k + 484735) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 484847) 32 = 531441 * k + 245732 ∧ 531441 * k + 245732 < 1048576 * k + 484847) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 486047) 32 = 531441 * k + 246340 ∧ 531441 * k + 246340 < 1048576 * k + 486047) ∧
  (∀ k : Nat, CollatzM20Shard061.iterate (1048576 * k + 486079) 32 = 531441 * k + 246356 ∧ 531441 * k + 246356 < 1048576 * k + 486079) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 486207) 32 = 531441 * k + 246421 ∧ 531441 * k + 246421 < 1048576 * k + 486207) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 486503) 32 = 531441 * k + 246571 ∧ 531441 * k + 246571 < 1048576 * k + 486503) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 487067) 32 = 531441 * k + 246857 ∧ 531441 * k + 246857 < 1048576 * k + 487067) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 487535) 32 = 531441 * k + 247094 ∧ 531441 * k + 247094 < 1048576 * k + 487535) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 488091) 32 = 531441 * k + 247376 ∧ 531441 * k + 247376 < 1048576 * k + 488091) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 488551) 32 = 531441 * k + 247609 ∧ 531441 * k + 247609 < 1048576 * k + 488551) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489471) 32 = 531441 * k + 248075 ∧ 531441 * k + 248075 < 1048576 * k + 489471) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489535) 32 = 531441 * k + 248108 ∧ 531441 * k + 248108 < 1048576 * k + 489535) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489695) 32 = 531441 * k + 248189 ∧ 531441 * k + 248189 < 1048576 * k + 489695) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 489855) 32 = 531441 * k + 248270 ∧ 531441 * k + 248270 < 1048576 * k + 489855) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490139) 32 = 531441 * k + 248414 ∧ 531441 * k + 248414 < 1048576 * k + 490139) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490175) 32 = 531441 * k + 248432 ∧ 531441 * k + 248432 < 1048576 * k + 490175) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490303) 32 = 531441 * k + 248497 ∧ 531441 * k + 248497 < 1048576 * k + 490303) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490559) 32 = 531441 * k + 248627 ∧ 531441 * k + 248627 < 1048576 * k + 490559) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490607) 32 = 531441 * k + 248651 ∧ 531441 * k + 248651 < 1048576 * k + 490607) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490623) 32 = 531441 * k + 248659 ∧ 531441 * k + 248659 < 1048576 * k + 490623) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 490879) 32 = 531441 * k + 248789 ∧ 531441 * k + 248789 < 1048576 * k + 490879) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 491879) 32 = 531441 * k + 249296 ∧ 531441 * k + 249296 < 1048576 * k + 491879) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 492543) 32 = 531441 * k + 249632 ∧ 531441 * k + 249632 < 1048576 * k + 492543) ∧
  (∀ k : Nat, CollatzM20Shard062.iterate (1048576 * k + 492647) 32 = 531441 * k + 249685 ∧ 531441 * k + 249685 < 1048576 * k + 492647) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493103) 32 = 531441 * k + 249916 ∧ 531441 * k + 249916 < 1048576 * k + 493103) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493211) 32 = 531441 * k + 249971 ∧ 531441 * k + 249971 < 1048576 * k + 493211) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493659) 32 = 531441 * k + 250198 ∧ 531441 * k + 250198 < 1048576 * k + 493659) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 493695) 32 = 531441 * k + 250216 ∧ 531441 * k + 250216 < 1048576 * k + 493695) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 494235) 32 = 531441 * k + 250490 ∧ 531441 * k + 250490 < 1048576 * k + 494235) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 494271) 32 = 531441 * k + 250508 ∧ 531441 * k + 250508 < 1048576 * k + 494271) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 494703) 32 = 531441 * k + 250727 ∧ 531441 * k + 250727 < 1048576 * k + 494703) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 495151) 32 = 531441 * k + 250954 ∧ 531441 * k + 250954 < 1048576 * k + 495151) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 495727) 32 = 531441 * k + 251246 ∧ 531441 * k + 251246 < 1048576 * k + 495727) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 495839) 32 = 531441 * k + 251303 ∧ 531441 * k + 251303 < 1048576 * k + 495839) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 496319) 32 = 531441 * k + 251546 ∧ 531441 * k + 251546 < 1048576 * k + 496319) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 496731) 32 = 531441 * k + 251755 ∧ 531441 * k + 251755 < 1048576 * k + 496731) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497087) 32 = 531441 * k + 251935 ∧ 531441 * k + 251935 < 1048576 * k + 497087) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497199) 32 = 531441 * k + 251992 ∧ 531441 * k + 251992 < 1048576 * k + 497199) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497663) 32 = 531441 * k + 252227 ∧ 531441 * k + 252227 < 1048576 * k + 497663) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 497767) 32 = 531441 * k + 252280 ∧ 531441 * k + 252280 < 1048576 * k + 497767) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498111) 32 = 531441 * k + 252454 ∧ 531441 * k + 252454 < 1048576 * k + 498111) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498343) 32 = 531441 * k + 252572 ∧ 531441 * k + 252572 < 1048576 * k + 498343) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498495) 32 = 531441 * k + 252649 ∧ 531441 * k + 252649 < 1048576 * k + 498495) ∧
  (∀ k : Nat, CollatzM20Shard063.iterate (1048576 * k + 498751) 32 = 531441 * k + 252779 ∧ 531441 * k + 252779 < 1048576 * k + 498751) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 498799) 32 = 531441 * k + 252803 ∧ 531441 * k + 252803 < 1048576 * k + 498799) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499071) 32 = 531441 * k + 252941 ∧ 531441 * k + 252941 < 1048576 * k + 499071) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499231) 32 = 531441 * k + 253022 ∧ 531441 * k + 253022 < 1048576 * k + 499231) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499355) 32 = 531441 * k + 253085 ∧ 531441 * k + 253085 < 1048576 * k + 499355) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499391) 32 = 531441 * k + 253103 ∧ 531441 * k + 253103 < 1048576 * k + 499391) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499519) 32 = 531441 * k + 253168 ∧ 531441 * k + 253168 < 1048576 * k + 499519) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499839) 32 = 531441 * k + 253330 ∧ 531441 * k + 253330 < 1048576 * k + 499839) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 499963) 32 = 531441 * k + 253393 ∧ 531441 * k + 253393 < 1048576 * k + 499963) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500159) 32 = 531441 * k + 253492 ∧ 531441 * k + 253492 < 1048576 * k + 500159) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500271) 32 = 531441 * k + 253549 ∧ 531441 * k + 253549 < 1048576 * k + 500271) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500735) 32 = 531441 * k + 253784 ∧ 531441 * k + 253784 < 1048576 * k + 500735) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 500839) 32 = 531441 * k + 253837 ∧ 531441 * k + 253837 < 1048576 * k + 500839) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 501919) 32 = 531441 * k + 254384 ∧ 531441 * k + 254384 < 1048576 * k + 501919) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502207) 32 = 531441 * k + 254530 ∧ 531441 * k + 254530 < 1048576 * k + 502207) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502427) 32 = 531441 * k + 254642 ∧ 531441 * k + 254642 < 1048576 * k + 502427) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502439) 32 = 531441 * k + 254648 ∧ 531441 * k + 254648 < 1048576 * k + 502439) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502875) 32 = 531441 * k + 254869 ∧ 531441 * k + 254869 < 1048576 * k + 502875) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 502943) 32 = 531441 * k + 254903 ∧ 531441 * k + 254903 < 1048576 * k + 502943) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 503035) 32 = 531441 * k + 254950 ∧ 531441 * k + 254950 < 1048576 * k + 503035) ∧
  (∀ k : Nat, CollatzM20Shard064.iterate (1048576 * k + 503231) 32 = 531441 * k + 255049 ∧ 531441 * k + 255049 < 1048576 * k + 503231) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 503343) 32 = 531441 * k + 255106 ∧ 531441 * k + 255106 < 1048576 * k + 503343) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504367) 32 = 531441 * k + 255625 ∧ 531441 * k + 255625 < 1048576 * k + 504367) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504647) 32 = 531441 * k + 255767 ∧ 531441 * k + 255767 < 1048576 * k + 504647) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504799) 32 = 531441 * k + 255844 ∧ 531441 * k + 255844 < 1048576 * k + 504799) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504943) 32 = 531441 * k + 255917 ∧ 531441 * k + 255917 < 1048576 * k + 504943) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 504991) 32 = 531441 * k + 255941 ∧ 531441 * k + 255941 < 1048576 * k + 504991) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505055) 32 = 531441 * k + 255974 ∧ 531441 * k + 255974 < 1048576 * k + 505055) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505115) 32 = 531441 * k + 256004 ∧ 531441 * k + 256004 < 1048576 * k + 505115) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505375) 32 = 531441 * k + 256136 ∧ 531441 * k + 256136 < 1048576 * k + 505375) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 505535) 32 = 531441 * k + 256217 ∧ 531441 * k + 256217 < 1048576 * k + 505535) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 506107) 32 = 531441 * k + 256507 ∧ 531441 * k + 256507 < 1048576 * k + 506107) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 507599) 32 = 531441 * k + 257263 ∧ 531441 * k + 257263 < 1048576 * k + 507599) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 507647) 32 = 531441 * k + 257287 ∧ 531441 * k + 257287 < 1048576 * k + 507647) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 507711) 32 = 531441 * k + 257320 ∧ 531441 * k + 257320 < 1048576 * k + 507711) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508031) 32 = 531441 * k + 257482 ∧ 531441 * k + 257482 < 1048576 * k + 508031) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508155) 32 = 531441 * k + 257545 ∧ 531441 * k + 257545 < 1048576 * k + 508155) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508187) 32 = 531441 * k + 257561 ∧ 531441 * k + 257561 < 1048576 * k + 508187) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 508351) 32 = 531441 * k + 257644 ∧ 531441 * k + 257644 < 1048576 * k + 508351) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 509087) 32 = 531441 * k + 258017 ∧ 531441 * k + 258017 < 1048576 * k + 509087) ∧
  (∀ k : Nat, CollatzM20Shard065.iterate (1048576 * k + 509647) 32 = 531441 * k + 258301 ∧ 531441 * k + 258301 < 1048576 * k + 509647) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 509695) 32 = 531441 * k + 258325 ∧ 531441 * k + 258325 < 1048576 * k + 509695) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 510631) 32 = 531441 * k + 258800 ∧ 531441 * k + 258800 < 1048576 * k + 510631) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 510791) 32 = 531441 * k + 258881 ∧ 531441 * k + 258881 < 1048576 * k + 510791) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511067) 32 = 531441 * k + 259021 ∧ 531441 * k + 259021 < 1048576 * k + 511067) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511227) 32 = 531441 * k + 259102 ∧ 531441 * k + 259102 < 1048576 * k + 511227) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511655) 32 = 531441 * k + 259319 ∧ 531441 * k + 259319 < 1048576 * k + 511655) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 511743) 32 = 531441 * k + 259363 ∧ 531441 * k + 259363 < 1048576 * k + 511743) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512283) 32 = 531441 * k + 259637 ∧ 531441 * k + 259637 < 1048576 * k + 512283) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512319) 32 = 531441 * k + 259655 ∧ 531441 * k + 259655 < 1048576 * k + 512319) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512559) 32 = 531441 * k + 259777 ∧ 531441 * k + 259777 < 1048576 * k + 512559) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 512767) 32 = 531441 * k + 259882 ∧ 531441 * k + 259882 < 1048576 * k + 512767) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513135) 32 = 531441 * k + 260069 ∧ 531441 * k + 260069 < 1048576 * k + 513135) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513183) 32 = 531441 * k + 260093 ∧ 531441 * k + 260093 < 1048576 * k + 513183) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513307) 32 = 531441 * k + 260156 ∧ 531441 * k + 260156 < 1048576 * k + 513307) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513743) 32 = 531441 * k + 260377 ∧ 531441 * k + 260377 < 1048576 * k + 513743) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 513903) 32 = 531441 * k + 260458 ∧ 531441 * k + 260458 < 1048576 * k + 513903) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514015) 32 = 531441 * k + 260515 ∧ 531441 * k + 260515 < 1048576 * k + 514015) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514367) 32 = 531441 * k + 260693 ∧ 531441 * k + 260693 < 1048576 * k + 514367) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514791) 32 = 531441 * k + 260908 ∧ 531441 * k + 260908 < 1048576 * k + 514791) ∧
  (∀ k : Nat, CollatzM20Shard066.iterate (1048576 * k + 514815) 32 = 531441 * k + 260920 ∧ 531441 * k + 260920 < 1048576 * k + 514815) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 515231) 32 = 531441 * k + 261131 ∧ 531441 * k + 261131 < 1048576 * k + 515231) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516379) 32 = 531441 * k + 261713 ∧ 531441 * k + 261713 < 1048576 * k + 516379) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516839) 32 = 531441 * k + 261946 ∧ 531441 * k + 261946 < 1048576 * k + 516839) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516847) 32 = 531441 * k + 261950 ∧ 531441 * k + 261950 < 1048576 * k + 516847) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 516935) 32 = 531441 * k + 261995 ∧ 531441 * k + 261995 < 1048576 * k + 516935) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 517371) 32 = 531441 * k + 262216 ∧ 531441 * k + 262216 < 1048576 * k + 517371) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 517759) 32 = 531441 * k + 262412 ∧ 531441 * k + 262412 < 1048576 * k + 517759) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 517887) 32 = 531441 * k + 262477 ∧ 531441 * k + 262477 < 1048576 * k + 517887) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 518463) 32 = 531441 * k + 262769 ∧ 531441 * k + 262769 < 1048576 * k + 518463) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 518863) 32 = 531441 * k + 262972 ∧ 531441 * k + 262972 < 1048576 * k + 518863) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 518911) 32 = 531441 * k + 262996 ∧ 531441 * k + 262996 < 1048576 * k + 518911) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 519847) 32 = 531441 * k + 263471 ∧ 531441 * k + 263471 < 1048576 * k + 519847) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 519919) 32 = 531441 * k + 263507 ∧ 531441 * k + 263507 < 1048576 * k + 519919) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 520831) 32 = 531441 * k + 263969 ∧ 531441 * k + 263969 < 1048576 * k + 520831) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 520935) 32 = 531441 * k + 264022 ∧ 531441 * k + 264022 < 1048576 * k + 520935) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 521855) 32 = 531441 * k + 264488 ∧ 531441 * k + 264488 < 1048576 * k + 521855) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 521935) 32 = 531441 * k + 264529 ∧ 531441 * k + 264529 < 1048576 * k + 521935) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 522095) 32 = 531441 * k + 264610 ∧ 531441 * k + 264610 < 1048576 * k + 522095) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 522523) 32 = 531441 * k + 264827 ∧ 531441 * k + 264827 < 1048576 * k + 522523) ∧
  (∀ k : Nat, CollatzM20Shard067.iterate (1048576 * k + 522559) 32 = 531441 * k + 264845 ∧ 531441 * k + 264845 < 1048576 * k + 522559) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 522991) 32 = 531441 * k + 265064 ∧ 531441 * k + 265064 < 1048576 * k + 522991) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 524015) 32 = 531441 * k + 265583 ∧ 531441 * k + 265583 < 1048576 * k + 524015) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 524607) 32 = 531441 * k + 265883 ∧ 531441 * k + 265883 < 1048576 * k + 524607) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 525339) 32 = 531441 * k + 266254 ∧ 531441 * k + 266254 < 1048576 * k + 525339) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 525927) 32 = 531441 * k + 266552 ∧ 531441 * k + 266552 < 1048576 * k + 525927) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 525951) 32 = 531441 * k + 266564 ∧ 531441 * k + 266564 < 1048576 * k + 525951) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 526055) 32 = 531441 * k + 266617 ∧ 531441 * k + 266617 < 1048576 * k + 526055) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 526151) 32 = 531441 * k + 266666 ∧ 531441 * k + 266666 < 1048576 * k + 526151) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 527103) 32 = 531441 * k + 267148 ∧ 531441 * k + 267148 < 1048576 * k + 527103) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 527387) 32 = 531441 * k + 267292 ∧ 531441 * k + 267292 < 1048576 * k + 527387) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 527679) 32 = 531441 * k + 267440 ∧ 531441 * k + 267440 < 1048576 * k + 527679) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 528239) 32 = 531441 * k + 267724 ∧ 531441 * k + 267724 < 1048576 * k + 528239) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 528287) 32 = 531441 * k + 267748 ∧ 531441 * k + 267748 < 1048576 * k + 528287) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 529023) 32 = 531441 * k + 268121 ∧ 531441 * k + 268121 < 1048576 * k + 529023) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 529127) 32 = 531441 * k + 268174 ∧ 531441 * k + 268174 < 1048576 * k + 529127) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 530023) 32 = 531441 * k + 268628 ∧ 531441 * k + 268628 < 1048576 * k + 530023) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 530715) 32 = 531441 * k + 268979 ∧ 531441 * k + 268979 < 1048576 * k + 530715) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 530911) 32 = 531441 * k + 269078 ∧ 531441 * k + 269078 < 1048576 * k + 530911) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 531483) 32 = 531441 * k + 269368 ∧ 531441 * k + 269368 < 1048576 * k + 531483) ∧
  (∀ k : Nat, CollatzM20Shard068.iterate (1048576 * k + 532207) 32 = 531441 * k + 269735 ∧ 531441 * k + 269735 < 1048576 * k + 532207) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 532975) 32 = 531441 * k + 270124 ∧ 531441 * k + 270124 < 1048576 * k + 532975) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 533439) 32 = 531441 * k + 270359 ∧ 531441 * k + 270359 < 1048576 * k + 533439) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 533823) 32 = 531441 * k + 270554 ∧ 531441 * k + 270554 < 1048576 * k + 533823) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 533983) 32 = 531441 * k + 270635 ∧ 531441 * k + 270635 < 1048576 * k + 533983) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 534119) 32 = 531441 * k + 270704 ∧ 531441 * k + 270704 < 1048576 * k + 534119) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 536047) 32 = 531441 * k + 271681 ∧ 531441 * k + 271681 < 1048576 * k + 536047) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 536479) 32 = 531441 * k + 271900 ∧ 531441 * k + 271900 < 1048576 * k + 536479) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 536603) 32 = 531441 * k + 271963 ∧ 531441 * k + 271963 < 1048576 * k + 536603) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 537055) 32 = 531441 * k + 272192 ∧ 531441 * k + 272192 < 1048576 * k + 537055) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 537179) 32 = 531441 * k + 272255 ∧ 531441 * k + 272255 < 1048576 * k + 537179) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 537535) 32 = 531441 * k + 272435 ∧ 531441 * k + 272435 < 1048576 * k + 537535) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 538079) 32 = 531441 * k + 272711 ∧ 531441 * k + 272711 < 1048576 * k + 538079) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 539239) 32 = 531441 * k + 273299 ∧ 531441 * k + 273299 < 1048576 * k + 539239) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 539675) 32 = 531441 * k + 273520 ∧ 531441 * k + 273520 < 1048576 * k + 539675) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 540007) 32 = 531441 * k + 273688 ∧ 531441 * k + 273688 < 1048576 * k + 540007) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 540263) 32 = 531441 * k + 273818 ∧ 531441 * k + 273818 < 1048576 * k + 540263) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 540607) 32 = 531441 * k + 273992 ∧ 531441 * k + 273992 < 1048576 * k + 540607) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 541275) 32 = 531441 * k + 274331 ∧ 531441 * k + 274331 < 1048576 * k + 541275) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 541631) 32 = 531441 * k + 274511 ∧ 531441 * k + 274511 < 1048576 * k + 541631) ∧
  (∀ k : Nat, CollatzM20Shard069.iterate (1048576 * k + 542191) 32 = 531441 * k + 274795 ∧ 531441 * k + 274795 < 1048576 * k + 542191) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 542623) 32 = 531441 * k + 275014 ∧ 531441 * k + 275014 < 1048576 * k + 542623) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 542783) 32 = 531441 * k + 275095 ∧ 531441 * k + 275095 < 1048576 * k + 542783) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 543079) 32 = 531441 * k + 275245 ∧ 531441 * k + 275245 < 1048576 * k + 543079) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 543483) 32 = 531441 * k + 275450 ∧ 531441 * k + 275450 < 1048576 * k + 543483) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 543679) 32 = 531441 * k + 275549 ∧ 531441 * k + 275549 < 1048576 * k + 543679) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 546271) 32 = 531441 * k + 276863 ∧ 531441 * k + 276863 < 1048576 * k + 546271) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 546751) 32 = 531441 * k + 277106 ∧ 531441 * k + 277106 < 1048576 * k + 546751) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 546879) 32 = 531441 * k + 277171 ∧ 531441 * k + 277171 < 1048576 * k + 546879) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 547023) 32 = 531441 * k + 277244 ∧ 531441 * k + 277244 < 1048576 * k + 547023) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 547775) 32 = 531441 * k + 277625 ∧ 531441 * k + 277625 < 1048576 * k + 547775) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 548455) 32 = 531441 * k + 277970 ∧ 531441 * k + 277970 < 1048576 * k + 548455) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 549223) 32 = 531441 * k + 278359 ∧ 531441 * k + 278359 < 1048576 * k + 549223) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 549467) 32 = 531441 * k + 278483 ∧ 531441 * k + 278483 < 1048576 * k + 549467) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 549627) 32 = 531441 * k + 278564 ∧ 531441 * k + 278564 < 1048576 * k + 549627) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550143) 32 = 531441 * k + 278825 ∧ 531441 * k + 278825 < 1048576 * k + 550143) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550271) 32 = 531441 * k + 278890 ∧ 531441 * k + 278890 < 1048576 * k + 550271) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550383) 32 = 531441 * k + 278947 ∧ 531441 * k + 278947 < 1048576 * k + 550383) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 550491) 32 = 531441 * k + 279002 ∧ 531441 * k + 279002 < 1048576 * k + 550491) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 551119) 32 = 531441 * k + 279320 ∧ 531441 * k + 279320 < 1048576 * k + 551119) ∧
  (∀ k : Nat, CollatzM20Shard070.iterate (1048576 * k + 552895) 32 = 531441 * k + 280220 ∧ 531441 * k + 280220 < 1048576 * k + 552895) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 553627) 32 = 531441 * k + 280591 ∧ 531441 * k + 280591 < 1048576 * k + 553627) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 553663) 32 = 531441 * k + 280609 ∧ 531441 * k + 280609 < 1048576 * k + 553663) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 554215) 32 = 531441 * k + 280889 ∧ 531441 * k + 280889 < 1048576 * k + 554215) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 554919) 32 = 531441 * k + 281246 ∧ 531441 * k + 281246 < 1048576 * k + 554919) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555071) 32 = 531441 * k + 281323 ∧ 531441 * k + 281323 < 1048576 * k + 555071) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555215) 32 = 531441 * k + 281396 ∧ 531441 * k + 281396 < 1048576 * k + 555215) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555675) 32 = 531441 * k + 281629 ∧ 531441 * k + 281629 < 1048576 * k + 555675) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555771) 32 = 531441 * k + 281678 ∧ 531441 * k + 281678 < 1048576 * k + 555771) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555807) 32 = 531441 * k + 281696 ∧ 531441 * k + 281696 < 1048576 * k + 555807) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 555967) 32 = 531441 * k + 281777 ∧ 531441 * k + 281777 < 1048576 * k + 555967) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556095) 32 = 531441 * k + 281842 ∧ 531441 * k + 281842 < 1048576 * k + 556095) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556415) 32 = 531441 * k + 282004 ∧ 531441 * k + 282004 < 1048576 * k + 556415) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556575) 32 = 531441 * k + 282085 ∧ 531441 * k + 282085 < 1048576 * k + 556575) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 556735) 32 = 531441 * k + 282166 ∧ 531441 * k + 282166 < 1048576 * k + 556735) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 557415) 32 = 531441 * k + 282511 ∧ 531441 * k + 282511 < 1048576 * k + 557415) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 558311) 32 = 531441 * k + 282965 ∧ 531441 * k + 282965 < 1048576 * k + 558311) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 558495) 32 = 531441 * k + 283058 ∧ 531441 * k + 283058 < 1048576 * k + 558495) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 558683) 32 = 531441 * k + 283154 ∧ 531441 * k + 283154 < 1048576 * k + 558683) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 559015) 32 = 531441 * k + 283322 ∧ 531441 * k + 283322 < 1048576 * k + 559015) ∧
  (∀ k : Nat, CollatzM20Shard071.iterate (1048576 * k + 559103) 32 = 531441 * k + 283366 ∧ 531441 * k + 283366 < 1048576 * k + 559103) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 559771) 32 = 531441 * k + 283705 ∧ 531441 * k + 283705 < 1048576 * k + 559771) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 559807) 32 = 531441 * k + 283723 ∧ 531441 * k + 283723 < 1048576 * k + 559807) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 560127) 32 = 531441 * k + 283885 ∧ 531441 * k + 283885 < 1048576 * k + 560127) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 560335) 32 = 531441 * k + 283991 ∧ 531441 * k + 283991 < 1048576 * k + 560335) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561223) 32 = 531441 * k + 284441 ∧ 531441 * k + 284441 < 1048576 * k + 561223) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561263) 32 = 531441 * k + 284461 ∧ 531441 * k + 284461 < 1048576 * k + 561263) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561359) 32 = 531441 * k + 284510 ∧ 531441 * k + 284510 < 1048576 * k + 561359) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561375) 32 = 531441 * k + 284518 ∧ 531441 * k + 284518 < 1048576 * k + 561375) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561567) 32 = 531441 * k + 284615 ∧ 531441 * k + 284615 < 1048576 * k + 561567) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561855) 32 = 531441 * k + 284761 ∧ 531441 * k + 284761 < 1048576 * k + 561855) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 561951) 32 = 531441 * k + 284810 ∧ 531441 * k + 284810 < 1048576 * k + 561951) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 562407) 32 = 531441 * k + 285041 ∧ 531441 * k + 285041 < 1048576 * k + 562407) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 562431) 32 = 531441 * k + 285053 ∧ 531441 * k + 285053 < 1048576 * k + 562431) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 563199) 32 = 531441 * k + 285442 ∧ 531441 * k + 285442 < 1048576 * k + 563199) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 563879) 32 = 531441 * k + 285787 ∧ 531441 * k + 285787 < 1048576 * k + 563879) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564287) 32 = 531441 * k + 285994 ∧ 531441 * k + 285994 < 1048576 * k + 564287) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564335) 32 = 531441 * k + 286018 ∧ 531441 * k + 286018 < 1048576 * k + 564335) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564607) 32 = 531441 * k + 286156 ∧ 531441 * k + 286156 < 1048576 * k + 564607) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564763) 32 = 531441 * k + 286235 ∧ 531441 * k + 286235 < 1048576 * k + 564763) ∧
  (∀ k : Nat, CollatzM20Shard072.iterate (1048576 * k + 564767) 32 = 531441 * k + 286237 ∧ 531441 * k + 286237 < 1048576 * k + 564767) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 564891) 32 = 531441 * k + 286300 ∧ 531441 * k + 286300 < 1048576 * k + 564891) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 564927) 32 = 531441 * k + 286318 ∧ 531441 * k + 286318 < 1048576 * k + 564927) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 564987) 32 = 531441 * k + 286349 ∧ 531441 * k + 286349 < 1048576 * k + 564987) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 565663) 32 = 531441 * k + 286691 ∧ 531441 * k + 286691 < 1048576 * k + 565663) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 566271) 32 = 531441 * k + 286999 ∧ 531441 * k + 286999 < 1048576 * k + 566271) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 566687) 32 = 531441 * k + 287210 ∧ 531441 * k + 287210 < 1048576 * k + 566687) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567143) 32 = 531441 * k + 287441 ∧ 531441 * k + 287441 < 1048576 * k + 567143) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567207) 32 = 531441 * k + 287474 ∧ 531441 * k + 287474 < 1048576 * k + 567207) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567367) 32 = 531441 * k + 287555 ∧ 531441 * k + 287555 < 1048576 * k + 567367) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567527) 32 = 531441 * k + 287636 ∧ 531441 * k + 287636 < 1048576 * k + 567527) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567963) 32 = 531441 * k + 287857 ∧ 531441 * k + 287857 < 1048576 * k + 567963) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 567975) 32 = 531441 * k + 287863 ∧ 531441 * k + 287863 < 1048576 * k + 567975) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 568231) 32 = 531441 * k + 287993 ∧ 531441 * k + 287993 < 1048576 * k + 568231) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 568551) 32 = 531441 * k + 288155 ∧ 531441 * k + 288155 < 1048576 * k + 568551) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 568859) 32 = 531441 * k + 288311 ∧ 531441 * k + 288311 < 1048576 * k + 568859) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 569551) 32 = 531441 * k + 288662 ∧ 531441 * k + 288662 < 1048576 * k + 569551) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 569759) 32 = 531441 * k + 288767 ∧ 531441 * k + 288767 < 1048576 * k + 569759) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 570215) 32 = 531441 * k + 288998 ∧ 531441 * k + 288998 < 1048576 * k + 570215) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 570479) 32 = 531441 * k + 289132 ∧ 531441 * k + 289132 < 1048576 * k + 570479) ∧
  (∀ k : Nat, CollatzM20Shard073.iterate (1048576 * k + 570591) 32 = 531441 * k + 289189 ∧ 531441 * k + 289189 < 1048576 * k + 570591) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 570911) 32 = 531441 * k + 289351 ∧ 531441 * k + 289351 < 1048576 * k + 570911) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 571071) 32 = 531441 * k + 289432 ∧ 531441 * k + 289432 < 1048576 * k + 571071) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 571239) 32 = 531441 * k + 289517 ∧ 531441 * k + 289517 < 1048576 * k + 571239) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 572575) 32 = 531441 * k + 290194 ∧ 531441 * k + 290194 < 1048576 * k + 572575) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 572955) 32 = 531441 * k + 290387 ∧ 531441 * k + 290387 < 1048576 * k + 572955) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 573511) 32 = 531441 * k + 290669 ∧ 531441 * k + 290669 < 1048576 * k + 573511) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 575335) 32 = 531441 * k + 291593 ∧ 531441 * k + 291593 < 1048576 * k + 575335) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 575903) 32 = 531441 * k + 291881 ∧ 531441 * k + 291881 < 1048576 * k + 575903) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576167) 32 = 531441 * k + 292015 ∧ 531441 * k + 292015 < 1048576 * k + 576167) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576423) 32 = 531441 * k + 292145 ∧ 531441 * k + 292145 < 1048576 * k + 576423) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576495) 32 = 531441 * k + 292181 ∧ 531441 * k + 292181 < 1048576 * k + 576495) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 576743) 32 = 531441 * k + 292307 ∧ 531441 * k + 292307 < 1048576 * k + 576743) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 577191) 32 = 531441 * k + 292534 ∧ 531441 * k + 292534 < 1048576 * k + 577191) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578075) 32 = 531441 * k + 292982 ∧ 531441 * k + 292982 < 1048576 * k + 578075) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578287) 32 = 531441 * k + 293089 ∧ 531441 * k + 293089 < 1048576 * k + 578287) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578407) 32 = 531441 * k + 293150 ∧ 531441 * k + 293150 < 1048576 * k + 578407) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578431) 32 = 531441 * k + 293162 ∧ 531441 * k + 293162 < 1048576 * k + 578431) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578671) 32 = 531441 * k + 293284 ∧ 531441 * k + 293284 < 1048576 * k + 578671) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578719) 32 = 531441 * k + 293308 ∧ 531441 * k + 293308 < 1048576 * k + 578719) ∧
  (∀ k : Nat, CollatzM20Shard074.iterate (1048576 * k + 578843) 32 = 531441 * k + 293371 ∧ 531441 * k + 293371 < 1048576 * k + 578843) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 579099) 32 = 531441 * k + 293501 ∧ 531441 * k + 293501 < 1048576 * k + 579099) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 580335) 32 = 531441 * k + 294127 ∧ 531441 * k + 294127 < 1048576 * k + 580335) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 580591) 32 = 531441 * k + 294257 ∧ 531441 * k + 294257 < 1048576 * k + 580591) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 580767) 32 = 531441 * k + 294346 ∧ 531441 * k + 294346 < 1048576 * k + 580767) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 581915) 32 = 531441 * k + 294928 ∧ 531441 * k + 294928 < 1048576 * k + 581915) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 581951) 32 = 531441 * k + 294946 ∧ 531441 * k + 294946 < 1048576 * k + 581951) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 582383) 32 = 531441 * k + 295165 ∧ 531441 * k + 295165 < 1048576 * k + 582383) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 582471) 32 = 531441 * k + 295210 ∧ 531441 * k + 295210 < 1048576 * k + 582471) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 582727) 32 = 531441 * k + 295340 ∧ 531441 * k + 295340 < 1048576 * k + 582727) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 584095) 32 = 531441 * k + 296033 ∧ 531441 * k + 296033 < 1048576 * k + 584095) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 585023) 32 = 531441 * k + 296503 ∧ 531441 * k + 296503 < 1048576 * k + 585023) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 585383) 32 = 531441 * k + 296686 ∧ 531441 * k + 296686 < 1048576 * k + 585383) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 585455) 32 = 531441 * k + 296722 ∧ 531441 * k + 296722 < 1048576 * k + 585455) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 586783) 32 = 531441 * k + 297395 ∧ 531441 * k + 297395 < 1048576 * k + 586783) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 587291) 32 = 531441 * k + 297653 ∧ 531441 * k + 297653 < 1048576 * k + 587291) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588059) 32 = 531441 * k + 298042 ∧ 531441 * k + 298042 < 1048576 * k + 588059) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588095) 32 = 531441 * k + 298060 ∧ 531441 * k + 298060 < 1048576 * k + 588095) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588527) 32 = 531441 * k + 298279 ∧ 531441 * k + 298279 < 1048576 * k + 588527) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 588783) 32 = 531441 * k + 298409 ∧ 531441 * k + 298409 < 1048576 * k + 588783) ∧
  (∀ k : Nat, CollatzM20Shard075.iterate (1048576 * k + 589551) 32 = 531441 * k + 298798 ∧ 531441 * k + 298798 < 1048576 * k + 589551) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 589807) 32 = 531441 * k + 298928 ∧ 531441 * k + 298928 < 1048576 * k + 589807) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 589855) 32 = 531441 * k + 298952 ∧ 531441 * k + 298952 < 1048576 * k + 589855) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 589991) 32 = 531441 * k + 299021 ∧ 531441 * k + 299021 < 1048576 * k + 589991) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 590143) 32 = 531441 * k + 299098 ∧ 531441 * k + 299098 < 1048576 * k + 590143) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 590719) 32 = 531441 * k + 299390 ∧ 531441 * k + 299390 < 1048576 * k + 590719) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 591487) 32 = 531441 * k + 299779 ∧ 531441 * k + 299779 < 1048576 * k + 591487) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 591687) 32 = 531441 * k + 299881 ∧ 531441 * k + 299881 < 1048576 * k + 591687) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 592039) 32 = 531441 * k + 300059 ∧ 531441 * k + 300059 < 1048576 * k + 592039) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 592351) 32 = 531441 * k + 300217 ∧ 531441 * k + 300217 < 1048576 * k + 592351) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593051) 32 = 531441 * k + 300572 ∧ 531441 * k + 300572 < 1048576 * k + 593051) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593215) 32 = 531441 * k + 300655 ∧ 531441 * k + 300655 < 1048576 * k + 593215) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593755) 32 = 531441 * k + 300929 ∧ 531441 * k + 300929 < 1048576 * k + 593755) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 593951) 32 = 531441 * k + 301028 ∧ 531441 * k + 301028 < 1048576 * k + 593951) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 594399) 32 = 531441 * k + 301255 ∧ 531441 * k + 301255 < 1048576 * k + 594399) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 594559) 32 = 531441 * k + 301336 ∧ 531441 * k + 301336 < 1048576 * k + 594559) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 594975) 32 = 531441 * k + 301547 ∧ 531441 * k + 301547 < 1048576 * k + 594975) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596135) 32 = 531441 * k + 302135 ∧ 531441 * k + 302135 < 1048576 * k + 596135) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596251) 32 = 531441 * k + 302194 ∧ 531441 * k + 302194 < 1048576 * k + 596251) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596447) 32 = 531441 * k + 302293 ∧ 531441 * k + 302293 < 1048576 * k + 596447) ∧
  (∀ k : Nat, CollatzM20Shard076.iterate (1048576 * k + 596479) 32 = 531441 * k + 302309 ∧ 531441 * k + 302309 < 1048576 * k + 596479) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597147) 32 = 531441 * k + 302648 ∧ 531441 * k + 302648 < 1048576 * k + 597147) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597183) 32 = 531441 * k + 302666 ∧ 531441 * k + 302666 < 1048576 * k + 597183) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597503) 32 = 531441 * k + 302828 ∧ 531441 * k + 302828 < 1048576 * k + 597503) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597743) 32 = 531441 * k + 302950 ∧ 531441 * k + 302950 < 1048576 * k + 597743) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597851) 32 = 531441 * k + 303005 ∧ 531441 * k + 303005 < 1048576 * k + 597851) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 597999) 32 = 531441 * k + 303080 ∧ 531441 * k + 303080 < 1048576 * k + 597999) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 598047) 32 = 531441 * k + 303104 ∧ 531441 * k + 303104 < 1048576 * k + 598047) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599359) 32 = 531441 * k + 303769 ∧ 531441 * k + 303769 < 1048576 * k + 599359) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599519) 32 = 531441 * k + 303850 ∧ 531441 * k + 303850 < 1048576 * k + 599519) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599551) 32 = 531441 * k + 303866 ∧ 531441 * k + 303866 < 1048576 * k + 599551) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 599655) 32 = 531441 * k + 303919 ∧ 531441 * k + 303919 < 1048576 * k + 599655) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 600059) 32 = 531441 * k + 304124 ∧ 531441 * k + 304124 < 1048576 * k + 600059) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 600231) 32 = 531441 * k + 304211 ∧ 531441 * k + 304211 < 1048576 * k + 600231) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 601243) 32 = 531441 * k + 304724 ∧ 531441 * k + 304724 < 1048576 * k + 601243) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 602279) 32 = 531441 * k + 305249 ∧ 531441 * k + 305249 < 1048576 * k + 602279) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 602591) 32 = 531441 * k + 305407 ∧ 531441 * k + 305407 < 1048576 * k + 602591) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 602715) 32 = 531441 * k + 305470 ∧ 531441 * k + 305470 < 1048576 * k + 602715) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 603327) 32 = 531441 * k + 305780 ∧ 531441 * k + 305780 < 1048576 * k + 603327) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 603599) 32 = 531441 * k + 305918 ∧ 531441 * k + 305918 < 1048576 * k + 603599) ∧
  (∀ k : Nat, CollatzM20Shard077.iterate (1048576 * k + 603615) 32 = 531441 * k + 305926 ∧ 531441 * k + 305926 < 1048576 * k + 603615) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 603647) 32 = 531441 * k + 305942 ∧ 531441 * k + 305942 < 1048576 * k + 603647) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 604191) 32 = 531441 * k + 306218 ∧ 531441 * k + 306218 < 1048576 * k + 604191) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 604783) 32 = 531441 * k + 306518 ∧ 531441 * k + 306518 < 1048576 * k + 604783) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 605351) 32 = 531441 * k + 306806 ∧ 531441 * k + 306806 < 1048576 * k + 605351) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 605799) 32 = 531441 * k + 307033 ∧ 531441 * k + 307033 < 1048576 * k + 605799) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 605979) 32 = 531441 * k + 307124 ∧ 531441 * k + 307124 < 1048576 * k + 605979) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606043) 32 = 531441 * k + 307157 ∧ 531441 * k + 307157 < 1048576 * k + 606043) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606203) 32 = 531441 * k + 307238 ∧ 531441 * k + 307238 < 1048576 * k + 606203) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606363) 32 = 531441 * k + 307319 ∧ 531441 * k + 307319 < 1048576 * k + 606363) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 606811) 32 = 531441 * k + 307546 ∧ 531441 * k + 307546 < 1048576 * k + 606811) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607067) 32 = 531441 * k + 307676 ∧ 531441 * k + 307676 < 1048576 * k + 607067) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607167) 32 = 531441 * k + 307726 ∧ 531441 * k + 307726 < 1048576 * k + 607167) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607387) 32 = 531441 * k + 307838 ∧ 531441 * k + 307838 < 1048576 * k + 607387) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607695) 32 = 531441 * k + 307994 ∧ 531441 * k + 307994 < 1048576 * k + 607695) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 607743) 32 = 531441 * k + 308018 ∧ 531441 * k + 308018 < 1048576 * k + 607743) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 608583) 32 = 531441 * k + 308444 ∧ 531441 * k + 308444 < 1048576 * k + 608583) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 608879) 32 = 531441 * k + 308594 ∧ 531441 * k + 308594 < 1048576 * k + 608879) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 609051) 32 = 531441 * k + 308681 ∧ 531441 * k + 308681 < 1048576 * k + 609051) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 609215) 32 = 531441 * k + 308764 ∧ 531441 * k + 308764 < 1048576 * k + 609215) ∧
  (∀ k : Nat, CollatzM20Shard078.iterate (1048576 * k + 609471) 32 = 531441 * k + 308894 ∧ 531441 * k + 308894 < 1048576 * k + 609471) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 609791) 32 = 531441 * k + 309056 ∧ 531441 * k + 309056 < 1048576 * k + 609791) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 610075) 32 = 531441 * k + 309200 ∧ 531441 * k + 309200 < 1048576 * k + 610075) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 610791) 32 = 531441 * k + 309563 ∧ 531441 * k + 309563 < 1048576 * k + 610791) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611495) 32 = 531441 * k + 309920 ∧ 531441 * k + 309920 < 1048576 * k + 611495) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611655) 32 = 531441 * k + 310001 ∧ 531441 * k + 310001 < 1048576 * k + 611655) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611791) 32 = 531441 * k + 310070 ∧ 531441 * k + 310070 < 1048576 * k + 611791) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 611807) 32 = 531441 * k + 310078 ∧ 531441 * k + 310078 < 1048576 * k + 611807) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 612347) 32 = 531441 * k + 310352 ∧ 531441 * k + 310352 < 1048576 * k + 612347) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 612383) 32 = 531441 * k + 310370 ∧ 531441 * k + 310370 < 1048576 * k + 612383) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613151) 32 = 531441 * k + 310759 ∧ 531441 * k + 310759 < 1048576 * k + 613151) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613311) 32 = 531441 * k + 310840 ∧ 531441 * k + 310840 < 1048576 * k + 613311) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613615) 32 = 531441 * k + 310994 ∧ 531441 * k + 310994 < 1048576 * k + 613615) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 613991) 32 = 531441 * k + 311185 ∧ 531441 * k + 311185 < 1048576 * k + 613991) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 614171) 32 = 531441 * k + 311276 ∧ 531441 * k + 311276 < 1048576 * k + 614171) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 614727) 32 = 531441 * k + 311558 ∧ 531441 * k + 311558 < 1048576 * k + 614727) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 614887) 32 = 531441 * k + 311639 ∧ 531441 * k + 311639 < 1048576 * k + 614887) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615003) 32 = 531441 * k + 311698 ∧ 531441 * k + 311698 < 1048576 * k + 615003) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615259) 32 = 531441 * k + 311828 ∧ 531441 * k + 311828 < 1048576 * k + 615259) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615579) 32 = 531441 * k + 311990 ∧ 531441 * k + 311990 < 1048576 * k + 615579) ∧
  (∀ k : Nat, CollatzM20Shard079.iterate (1048576 * k + 615751) 32 = 531441 * k + 312077 ∧ 531441 * k + 312077 < 1048576 * k + 615751) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 616027) 32 = 531441 * k + 312217 ∧ 531441 * k + 312217 < 1048576 * k + 616027) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 616095) 32 = 531441 * k + 312251 ∧ 531441 * k + 312251 < 1048576 * k + 616095) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 616911) 32 = 531441 * k + 312665 ∧ 531441 * k + 312665 < 1048576 * k + 616911) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 617071) 32 = 531441 * k + 312746 ∧ 531441 * k + 312746 < 1048576 * k + 617071) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 617243) 32 = 531441 * k + 312833 ∧ 531441 * k + 312833 < 1048576 * k + 617243) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 617935) 32 = 531441 * k + 313184 ∧ 531441 * k + 313184 < 1048576 * k + 617935) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618095) 32 = 531441 * k + 313265 ∧ 531441 * k + 313265 < 1048576 * k + 618095) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618431) 32 = 531441 * k + 313435 ∧ 531441 * k + 313435 < 1048576 * k + 618431) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618687) 32 = 531441 * k + 313565 ∧ 531441 * k + 313565 < 1048576 * k + 618687) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 618983) 32 = 531441 * k + 313715 ∧ 531441 * k + 313715 < 1048576 * k + 618983) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 619167) 32 = 531441 * k + 313808 ∧ 531441 * k + 313808 < 1048576 * k + 619167) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 620455) 32 = 531441 * k + 314461 ∧ 531441 * k + 314461 < 1048576 * k + 620455) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 620751) 32 = 531441 * k + 314611 ∧ 531441 * k + 314611 < 1048576 * k + 620751) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 620783) 32 = 531441 * k + 314627 ∧ 531441 * k + 314627 < 1048576 * k + 620783) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621307) 32 = 531441 * k + 314893 ∧ 531441 * k + 314893 < 1048576 * k + 621307) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621343) 32 = 531441 * k + 314911 ∧ 531441 * k + 314911 < 1048576 * k + 621343) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621503) 32 = 531441 * k + 314992 ∧ 531441 * k + 314992 < 1048576 * k + 621503) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621563) 32 = 531441 * k + 315023 ∧ 531441 * k + 315023 < 1048576 * k + 621563) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 621807) 32 = 531441 * k + 315146 ∧ 531441 * k + 315146 < 1048576 * k + 621807) ∧
  (∀ k : Nat, CollatzM20Shard080.iterate (1048576 * k + 622239) 32 = 531441 * k + 315365 ∧ 531441 * k + 315365 < 1048576 * k + 622239) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 623263) 32 = 531441 * k + 315884 ∧ 531441 * k + 315884 < 1048576 * k + 623263) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 623943) 32 = 531441 * k + 316229 ∧ 531441 * k + 316229 < 1048576 * k + 623943) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 624103) 32 = 531441 * k + 316310 ∧ 531441 * k + 316310 < 1048576 * k + 624103) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 624219) 32 = 531441 * k + 316369 ∧ 531441 * k + 316369 < 1048576 * k + 624219) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 624551) 32 = 531441 * k + 316537 ∧ 531441 * k + 316537 < 1048576 * k + 624551) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 625127) 32 = 531441 * k + 316829 ∧ 531441 * k + 316829 < 1048576 * k + 625127) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 625471) 32 = 531441 * k + 317003 ∧ 531441 * k + 317003 < 1048576 * k + 625471) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 625791) 32 = 531441 * k + 317165 ∧ 531441 * k + 317165 < 1048576 * k + 625791) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626127) 32 = 531441 * k + 317336 ∧ 531441 * k + 317336 < 1048576 * k + 626127) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626287) 32 = 531441 * k + 317417 ∧ 531441 * k + 317417 < 1048576 * k + 626287) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626895) 32 = 531441 * k + 317725 ∧ 531441 * k + 317725 < 1048576 * k + 626895) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 626927) 32 = 531441 * k + 317741 ∧ 531441 * k + 317741 < 1048576 * k + 626927) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627487) 32 = 531441 * k + 318025 ∧ 531441 * k + 318025 < 1048576 * k + 627487) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627815) 32 = 531441 * k + 318191 ∧ 531441 * k + 318191 < 1048576 * k + 627815) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627839) 32 = 531441 * k + 318203 ∧ 531441 * k + 318203 < 1048576 * k + 627839) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627943) 32 = 531441 * k + 318256 ∧ 531441 * k + 318256 < 1048576 * k + 627943) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 627967) 32 = 531441 * k + 318268 ∧ 531441 * k + 318268 < 1048576 * k + 627967) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 628827) 32 = 531441 * k + 318704 ∧ 531441 * k + 318704 < 1048576 * k + 628827) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 630523) 32 = 531441 * k + 319564 ∧ 531441 * k + 319564 < 1048576 * k + 630523) ∧
  (∀ k : Nat, CollatzM20Shard081.iterate (1048576 * k + 630875) 32 = 531441 * k + 319742 ∧ 531441 * k + 319742 < 1048576 * k + 630875) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 631455) 32 = 531441 * k + 320036 ∧ 531441 * k + 320036 < 1048576 * k + 631455) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 631615) 32 = 531441 * k + 320117 ∧ 531441 * k + 320117 < 1048576 * k + 631615) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 631935) 32 = 531441 * k + 320279 ∧ 531441 * k + 320279 < 1048576 * k + 631935) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 632223) 32 = 531441 * k + 320425 ∧ 531441 * k + 320425 < 1048576 * k + 632223) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 632367) 32 = 531441 * k + 320498 ∧ 531441 * k + 320498 < 1048576 * k + 632367) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 632743) 32 = 531441 * k + 320689 ∧ 531441 * k + 320689 < 1048576 * k + 632743) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 633319) 32 = 531441 * k + 320981 ∧ 531441 * k + 320981 < 1048576 * k + 633319) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 633767) 32 = 531441 * k + 321208 ∧ 531441 * k + 321208 < 1048576 * k + 633767) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 634087) 32 = 531441 * k + 321370 ∧ 531441 * k + 321370 < 1048576 * k + 634087) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 634971) 32 = 531441 * k + 321818 ∧ 531441 * k + 321818 < 1048576 * k + 634971) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 635087) 32 = 531441 * k + 321877 ∧ 531441 * k + 321877 < 1048576 * k + 635087) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 635295) 32 = 531441 * k + 321982 ∧ 531441 * k + 321982 < 1048576 * k + 635295) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 636031) 32 = 531441 * k + 322355 ∧ 531441 * k + 322355 < 1048576 * k + 636031) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 636351) 32 = 531441 * k + 322517 ∧ 531441 * k + 322517 < 1048576 * k + 636351) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 636463) 32 = 531441 * k + 322574 ∧ 531441 * k + 322574 < 1048576 * k + 636463) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 637375) 32 = 531441 * k + 323036 ∧ 531441 * k + 323036 < 1048576 * k + 637375) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 637759) 32 = 531441 * k + 323231 ∧ 531441 * k + 323231 < 1048576 * k + 637759) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 638079) 32 = 531441 * k + 323393 ∧ 531441 * k + 323393 < 1048576 * k + 638079) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 638399) 32 = 531441 * k + 323555 ∧ 531441 * k + 323555 < 1048576 * k + 638399) ∧
  (∀ k : Nat, CollatzM20Shard082.iterate (1048576 * k + 638491) 32 = 531441 * k + 323602 ∧ 531441 * k + 323602 < 1048576 * k + 638491) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 639047) 32 = 531441 * k + 323884 ∧ 531441 * k + 323884 < 1048576 * k + 639047) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 639067) 32 = 531441 * k + 323894 ∧ 531441 * k + 323894 < 1048576 * k + 639067) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 639535) 32 = 531441 * k + 324131 ∧ 531441 * k + 324131 < 1048576 * k + 639535) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 640103) 32 = 531441 * k + 324419 ∧ 531441 * k + 324419 < 1048576 * k + 640103) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 640559) 32 = 531441 * k + 324650 ∧ 531441 * k + 324650 < 1048576 * k + 640559) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 640871) 32 = 531441 * k + 324808 ∧ 531441 * k + 324808 < 1048576 * k + 640871) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641115) 32 = 531441 * k + 324932 ∧ 531441 * k + 324932 < 1048576 * k + 641115) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641151) 32 = 531441 * k + 324950 ∧ 531441 * k + 324950 < 1048576 * k + 641151) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641439) 32 = 531441 * k + 325096 ∧ 531441 * k + 325096 < 1048576 * k + 641439) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641471) 32 = 531441 * k + 325112 ∧ 531441 * k + 325112 < 1048576 * k + 641471) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 641959) 32 = 531441 * k + 325360 ∧ 531441 * k + 325360 < 1048576 * k + 641959) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 642031) 32 = 531441 * k + 325396 ∧ 531441 * k + 325396 < 1048576 * k + 642031) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 642279) 32 = 531441 * k + 325522 ∧ 531441 * k + 325522 < 1048576 * k + 642279) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 642607) 32 = 531441 * k + 325688 ∧ 531441 * k + 325688 < 1048576 * k + 642607) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 643943) 32 = 531441 * k + 326365 ∧ 531441 * k + 326365 < 1048576 * k + 643943) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 644187) 32 = 531441 * k + 326489 ∧ 531441 * k + 326489 < 1048576 * k + 644187) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 644543) 32 = 531441 * k + 326669 ∧ 531441 * k + 326669 < 1048576 * k + 644543) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 644635) 32 = 531441 * k + 326716 ∧ 531441 * k + 326716 < 1048576 * k + 644635) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 645567) 32 = 531441 * k + 327188 ∧ 531441 * k + 327188 < 1048576 * k + 645567) ∧
  (∀ k : Nat, CollatzM20Shard083.iterate (1048576 * k + 645679) 32 = 531441 * k + 327245 ∧ 531441 * k + 327245 < 1048576 * k + 645679) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 646127) 32 = 531441 * k + 327472 ∧ 531441 * k + 327472 < 1048576 * k + 646127) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 646703) 32 = 531441 * k + 327764 ∧ 531441 * k + 327764 < 1048576 * k + 646703) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 646975) 32 = 531441 * k + 327902 ∧ 531441 * k + 327902 < 1048576 * k + 646975) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 647295) 32 = 531441 * k + 328064 ∧ 531441 * k + 328064 < 1048576 * k + 647295) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 647419) 32 = 531441 * k + 328127 ∧ 531441 * k + 328127 < 1048576 * k + 647419) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 647615) 32 = 531441 * k + 328226 ∧ 531441 * k + 328226 < 1048576 * k + 647615) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 648263) 32 = 531441 * k + 328555 ∧ 531441 * k + 328555 < 1048576 * k + 648263) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 648911) 32 = 531441 * k + 328883 ∧ 531441 * k + 328883 < 1048576 * k + 648911) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 649627) 32 = 531441 * k + 329246 ∧ 531441 * k + 329246 < 1048576 * k + 649627) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 649631) 32 = 531441 * k + 329248 ∧ 531441 * k + 329248 < 1048576 * k + 649631) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 650331) 32 = 531441 * k + 329603 ∧ 531441 * k + 329603 < 1048576 * k + 650331) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 650491) 32 = 531441 * k + 329684 ∧ 531441 * k + 329684 < 1048576 * k + 650491) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 650687) 32 = 531441 * k + 329783 ∧ 531441 * k + 329783 < 1048576 * k + 650687) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 651711) 32 = 531441 * k + 330302 ∧ 531441 * k + 330302 < 1048576 * k + 651711) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 651823) 32 = 531441 * k + 330359 ∧ 531441 * k + 330359 < 1048576 * k + 651823) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 652827) 32 = 531441 * k + 330868 ∧ 531441 * k + 330868 < 1048576 * k + 652827) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 653563) 32 = 531441 * k + 331241 ∧ 531441 * k + 331241 < 1048576 * k + 653563) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 653723) 32 = 531441 * k + 331322 ∧ 531441 * k + 331322 < 1048576 * k + 653723) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 654079) 32 = 531441 * k + 331502 ∧ 531441 * k + 331502 < 1048576 * k + 654079) ∧
  (∀ k : Nat, CollatzM20Shard084.iterate (1048576 * k + 654319) 32 = 531441 * k + 331624 ∧ 531441 * k + 331624 < 1048576 * k + 654319) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 654587) 32 = 531441 * k + 331760 ∧ 531441 * k + 331760 < 1048576 * k + 654587) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 654895) 32 = 531441 * k + 331916 ∧ 531441 * k + 331916 < 1048576 * k + 654895) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 655343) 32 = 531441 * k + 332143 ∧ 531441 * k + 332143 < 1048576 * k + 655343) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 656103) 32 = 531441 * k + 332528 ∧ 531441 * k + 332528 < 1048576 * k + 656103) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 656255) 32 = 531441 * k + 332605 ∧ 531441 * k + 332605 < 1048576 * k + 656255) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 657151) 32 = 531441 * k + 333059 ∧ 531441 * k + 333059 < 1048576 * k + 657151) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 657819) 32 = 531441 * k + 333398 ∧ 531441 * k + 333398 < 1048576 * k + 657819) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 659291) 32 = 531441 * k + 334144 ∧ 531441 * k + 334144 < 1048576 * k + 659291) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 659623) 32 = 531441 * k + 334312 ∧ 531441 * k + 334312 < 1048576 * k + 659623) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 659903) 32 = 531441 * k + 334454 ∧ 531441 * k + 334454 < 1048576 * k + 659903) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 660511) 32 = 531441 * k + 334762 ∧ 531441 * k + 334762 < 1048576 * k + 660511) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 661199) 32 = 531441 * k + 335111 ∧ 531441 * k + 335111 < 1048576 * k + 661199) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 661359) 32 = 531441 * k + 335192 ∧ 531441 * k + 335192 < 1048576 * k + 661359) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 662695) 32 = 531441 * k + 335869 ∧ 531441 * k + 335869 < 1048576 * k + 662695) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 662779) 32 = 531441 * k + 335912 ∧ 531441 * k + 335912 < 1048576 * k + 662779) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 662939) 32 = 531441 * k + 335993 ∧ 531441 * k + 335993 < 1048576 * k + 662939) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663387) 32 = 531441 * k + 336220 ∧ 531441 * k + 336220 < 1048576 * k + 663387) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663535) 32 = 531441 * k + 336295 ∧ 531441 * k + 336295 < 1048576 * k + 663535) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663583) 32 = 531441 * k + 336319 ∧ 531441 * k + 336319 < 1048576 * k + 663583) ∧
  (∀ k : Nat, CollatzM20Shard085.iterate (1048576 * k + 663963) 32 = 531441 * k + 336512 ∧ 531441 * k + 336512 < 1048576 * k + 663963) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 665455) 32 = 531441 * k + 337268 ∧ 531441 * k + 337268 < 1048576 * k + 665455) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 665767) 32 = 531441 * k + 337426 ∧ 531441 * k + 337426 < 1048576 * k + 665767) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 666367) 32 = 531441 * k + 337730 ∧ 531441 * k + 337730 < 1048576 * k + 666367) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 666651) 32 = 531441 * k + 337874 ∧ 531441 * k + 337874 < 1048576 * k + 666651) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 666779) 32 = 531441 * k + 337939 ∧ 531441 * k + 337939 < 1048576 * k + 666779) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 667135) 32 = 531441 * k + 338119 ∧ 531441 * k + 338119 < 1048576 * k + 667135) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 667815) 32 = 531441 * k + 338464 ∧ 531441 * k + 338464 < 1048576 * k + 667815) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 668143) 32 = 531441 * k + 338630 ∧ 531441 * k + 338630 < 1048576 * k + 668143) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 668391) 32 = 531441 * k + 338756 ∧ 531441 * k + 338756 < 1048576 * k + 668391) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 669727) 32 = 531441 * k + 339433 ∧ 531441 * k + 339433 < 1048576 * k + 669727) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670023) 32 = 531441 * k + 339583 ∧ 531441 * k + 339583 < 1048576 * k + 670023) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670191) 32 = 531441 * k + 339668 ∧ 531441 * k + 339668 < 1048576 * k + 670191) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670319) 32 = 531441 * k + 339733 ∧ 531441 * k + 339733 < 1048576 * k + 670319) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 670887) 32 = 531441 * k + 340021 ∧ 531441 * k + 340021 < 1048576 * k + 670887) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 671579) 32 = 531441 * k + 340372 ∧ 531441 * k + 340372 < 1048576 * k + 671579) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672071) 32 = 531441 * k + 340621 ∧ 531441 * k + 340621 < 1048576 * k + 672071) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672155) 32 = 531441 * k + 340664 ∧ 531441 * k + 340664 < 1048576 * k + 672155) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672603) 32 = 531441 * k + 340891 ∧ 531441 * k + 340891 < 1048576 * k + 672603) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 672923) 32 = 531441 * k + 341053 ∧ 531441 * k + 341053 < 1048576 * k + 672923) ∧
  (∀ k : Nat, CollatzM20Shard086.iterate (1048576 * k + 673279) 32 = 531441 * k + 341233 ∧ 531441 * k + 341233 < 1048576 * k + 673279) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 673647) 32 = 531441 * k + 341420 ∧ 531441 * k + 341420 < 1048576 * k + 673647) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674119) 32 = 531441 * k + 341659 ∧ 531441 * k + 341659 < 1048576 * k + 674119) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674287) 32 = 531441 * k + 341744 ∧ 531441 * k + 341744 < 1048576 * k + 674287) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674415) 32 = 531441 * k + 341809 ∧ 531441 * k + 341809 < 1048576 * k + 674415) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 674671) 32 = 531441 * k + 341939 ∧ 531441 * k + 341939 < 1048576 * k + 674671) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675007) 32 = 531441 * k + 342109 ∧ 531441 * k + 342109 < 1048576 * k + 675007) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675175) 32 = 531441 * k + 342194 ∧ 531441 * k + 342194 < 1048576 * k + 675175) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675327) 32 = 531441 * k + 342271 ∧ 531441 * k + 342271 < 1048576 * k + 675327) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 675743) 32 = 531441 * k + 342482 ∧ 531441 * k + 342482 < 1048576 * k + 675743) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677031) 32 = 531441 * k + 343135 ∧ 531441 * k + 343135 < 1048576 * k + 677031) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677191) 32 = 531441 * k + 343216 ∧ 531441 * k + 343216 < 1048576 * k + 677191) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677223) 32 = 531441 * k + 343232 ∧ 531441 * k + 343232 < 1048576 * k + 677223) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677327) 32 = 531441 * k + 343285 ∧ 531441 * k + 343285 < 1048576 * k + 677327) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677535) 32 = 531441 * k + 343390 ∧ 531441 * k + 343390 < 1048576 * k + 677535) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677883) 32 = 531441 * k + 343567 ∧ 531441 * k + 343567 < 1048576 * k + 677883) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 677919) 32 = 531441 * k + 343585 ∧ 531441 * k + 343585 < 1048576 * k + 677919) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 678383) 32 = 531441 * k + 343820 ∧ 531441 * k + 343820 < 1048576 * k + 678383) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 678939) 32 = 531441 * k + 344102 ∧ 531441 * k + 344102 < 1048576 * k + 678939) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 679583) 32 = 531441 * k + 344428 ∧ 531441 * k + 344428 < 1048576 * k + 679583) ∧
  (∀ k : Nat, CollatzM20Shard087.iterate (1048576 * k + 679707) 32 = 531441 * k + 344491 ∧ 531441 * k + 344491 < 1048576 * k + 679707) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 679839) 32 = 531441 * k + 344558 ∧ 531441 * k + 344558 < 1048576 * k + 679839) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 680263) 32 = 531441 * k + 344773 ∧ 531441 * k + 344773 < 1048576 * k + 680263) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 680431) 32 = 531441 * k + 344858 ∧ 531441 * k + 344858 < 1048576 * k + 680431) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 680795) 32 = 531441 * k + 345043 ∧ 531441 * k + 345043 < 1048576 * k + 680795) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681115) 32 = 531441 * k + 345205 ∧ 531441 * k + 345205 < 1048576 * k + 681115) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681199) 32 = 531441 * k + 345247 ∧ 531441 * k + 345247 < 1048576 * k + 681199) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681287) 32 = 531441 * k + 345292 ∧ 531441 * k + 345292 < 1048576 * k + 681287) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681319) 32 = 531441 * k + 345308 ∧ 531441 * k + 345308 < 1048576 * k + 681319) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 681631) 32 = 531441 * k + 345466 ∧ 531441 * k + 345466 < 1048576 * k + 681631) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682047) 32 = 531441 * k + 345677 ∧ 531441 * k + 345677 < 1048576 * k + 682047) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682223) 32 = 531441 * k + 345766 ∧ 531441 * k + 345766 < 1048576 * k + 682223) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682607) 32 = 531441 * k + 345961 ∧ 531441 * k + 345961 < 1048576 * k + 682607) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682779) 32 = 531441 * k + 346048 ∧ 531441 * k + 346048 < 1048576 * k + 682779) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 682863) 32 = 531441 * k + 346091 ∧ 531441 * k + 346091 < 1048576 * k + 682863) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 683471) 32 = 531441 * k + 346399 ∧ 531441 * k + 346399 < 1048576 * k + 683471) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 683503) 32 = 531441 * k + 346415 ∧ 531441 * k + 346415 < 1048576 * k + 683503) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 683631) 32 = 531441 * k + 346480 ∧ 531441 * k + 346480 < 1048576 * k + 683631) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 684223) 32 = 531441 * k + 346780 ∧ 531441 * k + 346780 < 1048576 * k + 684223) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 684271) 32 = 531441 * k + 346804 ∧ 531441 * k + 346804 < 1048576 * k + 684271) ∧
  (∀ k : Nat, CollatzM20Shard088.iterate (1048576 * k + 684519) 32 = 531441 * k + 346930 ∧ 531441 * k + 346930 < 1048576 * k + 684519) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 684703) 32 = 531441 * k + 347023 ∧ 531441 * k + 347023 < 1048576 * k + 684703) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 685415) 32 = 531441 * k + 347384 ∧ 531441 * k + 347384 < 1048576 * k + 685415) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 686319) 32 = 531441 * k + 347842 ∧ 531441 * k + 347842 < 1048576 * k + 686319) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687099) 32 = 531441 * k + 348238 ∧ 531441 * k + 348238 < 1048576 * k + 687099) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687343) 32 = 531441 * k + 348361 ∧ 531441 * k + 348361 < 1048576 * k + 687343) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687463) 32 = 531441 * k + 348422 ∧ 531441 * k + 348422 < 1048576 * k + 687463) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 687775) 32 = 531441 * k + 348580 ∧ 531441 * k + 348580 < 1048576 * k + 687775) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 688031) 32 = 531441 * k + 348710 ∧ 531441 * k + 348710 < 1048576 * k + 688031) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 688191) 32 = 531441 * k + 348791 ∧ 531441 * k + 348791 < 1048576 * k + 688191) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 688799) 32 = 531441 * k + 349099 ∧ 531441 * k + 349099 < 1048576 * k + 688799) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 689055) 32 = 531441 * k + 349229 ∧ 531441 * k + 349229 < 1048576 * k + 689055) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 689479) 32 = 531441 * k + 349444 ∧ 531441 * k + 349444 < 1048576 * k + 689479) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 689647) 32 = 531441 * k + 349529 ∧ 531441 * k + 349529 < 1048576 * k + 689647) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 690535) 32 = 531441 * k + 349979 ∧ 531441 * k + 349979 < 1048576 * k + 690535) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 690663) 32 = 531441 * k + 350044 ∧ 531441 * k + 350044 < 1048576 * k + 690663) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 691663) 32 = 531441 * k + 350551 ∧ 531441 * k + 350551 < 1048576 * k + 691663) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 691823) 32 = 531441 * k + 350632 ∧ 531441 * k + 350632 < 1048576 * k + 691823) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 692463) 32 = 531441 * k + 350956 ∧ 531441 * k + 350956 < 1048576 * k + 692463) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 694335) 32 = 531441 * k + 351905 ∧ 531441 * k + 351905 < 1048576 * k + 694335) ∧
  (∀ k : Nat, CollatzM20Shard089.iterate (1048576 * k + 694939) 32 = 531441 * k + 352211 ∧ 531441 * k + 352211 < 1048576 * k + 694939) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 695423) 32 = 531441 * k + 352456 ∧ 531441 * k + 352456 < 1048576 * k + 695423) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 696431) 32 = 531441 * k + 352967 ∧ 531441 * k + 352967 < 1048576 * k + 696431) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 696679) 32 = 531441 * k + 353093 ∧ 531441 * k + 353093 < 1048576 * k + 696679) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 696991) 32 = 531441 * k + 353251 ∧ 531441 * k + 353251 < 1048576 * k + 696991) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 697247) 32 = 531441 * k + 353381 ∧ 531441 * k + 353381 < 1048576 * k + 697247) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 697727) 32 = 531441 * k + 353624 ∧ 531441 * k + 353624 < 1048576 * k + 697727) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698459) 32 = 531441 * k + 353995 ∧ 531441 * k + 353995 < 1048576 * k + 698459) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698479) 32 = 531441 * k + 354005 ∧ 531441 * k + 354005 < 1048576 * k + 698479) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698495) 32 = 531441 * k + 354013 ∧ 531441 * k + 354013 < 1048576 * k + 698495) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 698855) 32 = 531441 * k + 354196 ∧ 531441 * k + 354196 < 1048576 * k + 698855) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 699391) 32 = 531441 * k + 354467 ∧ 531441 * k + 354467 < 1048576 * k + 699391) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701119) 32 = 531441 * k + 355343 ∧ 531441 * k + 355343 < 1048576 * k + 701119) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701439) 32 = 531441 * k + 355505 ∧ 531441 * k + 355505 < 1048576 * k + 701439) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701531) 32 = 531441 * k + 355552 ∧ 531441 * k + 355552 < 1048576 * k + 701531) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 701567) 32 = 531441 * k + 355570 ∧ 531441 * k + 355570 < 1048576 * k + 701567) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 702575) 32 = 531441 * k + 356081 ∧ 531441 * k + 356081 < 1048576 * k + 702575) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703143) 32 = 531441 * k + 356369 ∧ 531441 * k + 356369 < 1048576 * k + 703143) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703295) 32 = 531441 * k + 356446 ∧ 531441 * k + 356446 < 1048576 * k + 703295) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703551) 32 = 531441 * k + 356576 ∧ 531441 * k + 356576 < 1048576 * k + 703551) ∧
  (∀ k : Nat, CollatzM20Shard090.iterate (1048576 * k + 703615) 32 = 531441 * k + 356608 ∧ 531441 * k + 356608 < 1048576 * k + 703615) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 703871) 32 = 531441 * k + 356738 ∧ 531441 * k + 356738 < 1048576 * k + 703871) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 704031) 32 = 531441 * k + 356819 ∧ 531441 * k + 356819 < 1048576 * k + 704031) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 704191) 32 = 531441 * k + 356900 ∧ 531441 * k + 356900 < 1048576 * k + 704191) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 704603) 32 = 531441 * k + 357109 ∧ 531441 * k + 357109 < 1048576 * k + 704603) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 705639) 32 = 531441 * k + 357634 ∧ 531441 * k + 357634 < 1048576 * k + 705639) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 705983) 32 = 531441 * k + 357808 ∧ 531441 * k + 357808 < 1048576 * k + 705983) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706095) 32 = 531441 * k + 357865 ∧ 531441 * k + 357865 < 1048576 * k + 706095) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706651) 32 = 531441 * k + 358147 ∧ 531441 * k + 358147 < 1048576 * k + 706651) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706671) 32 = 531441 * k + 358157 ∧ 531441 * k + 358157 < 1048576 * k + 706671) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 706687) 32 = 531441 * k + 358165 ∧ 531441 * k + 358165 < 1048576 * k + 706687) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 707227) 32 = 531441 * k + 358439 ∧ 531441 * k + 358439 < 1048576 * k + 707227) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 707263) 32 = 531441 * k + 358457 ∧ 531441 * k + 358457 < 1048576 * k + 707263) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 707583) 32 = 531441 * k + 358619 ∧ 531441 * k + 358619 < 1048576 * k + 707583) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708031) 32 = 531441 * k + 358846 ∧ 531441 * k + 358846 < 1048576 * k + 708031) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708127) 32 = 531441 * k + 358895 ∧ 531441 * k + 358895 < 1048576 * k + 708127) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708143) 32 = 531441 * k + 358903 ∧ 531441 * k + 358903 < 1048576 * k + 708143) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708287) 32 = 531441 * k + 358976 ∧ 531441 * k + 358976 < 1048576 * k + 708287) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708719) 32 = 531441 * k + 359195 ∧ 531441 * k + 359195 < 1048576 * k + 708719) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 708859) 32 = 531441 * k + 359266 ∧ 531441 * k + 359266 < 1048576 * k + 708859) ∧
  (∀ k : Nat, CollatzM20Shard091.iterate (1048576 * k + 709287) 32 = 531441 * k + 359483 ∧ 531441 * k + 359483 < 1048576 * k + 709287) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 709723) 32 = 531441 * k + 359704 ∧ 531441 * k + 359704 < 1048576 * k + 709723) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 710079) 32 = 531441 * k + 359884 ∧ 531441 * k + 359884 < 1048576 * k + 710079) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 710907) 32 = 531441 * k + 360304 ∧ 531441 * k + 360304 < 1048576 * k + 710907) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 711103) 32 = 531441 * k + 360403 ∧ 531441 * k + 360403 < 1048576 * k + 711103) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 711791) 32 = 531441 * k + 360752 ∧ 531441 * k + 360752 < 1048576 * k + 711791) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712239) 32 = 531441 * k + 360979 ∧ 531441 * k + 360979 < 1048576 * k + 712239) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712511) 32 = 531441 * k + 361117 ∧ 531441 * k + 361117 < 1048576 * k + 712511) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712831) 32 = 531441 * k + 361279 ∧ 531441 * k + 361279 < 1048576 * k + 712831) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712863) 32 = 531441 * k + 361295 ∧ 531441 * k + 361295 < 1048576 * k + 712863) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 712955) 32 = 531441 * k + 361342 ∧ 531441 * k + 361342 < 1048576 * k + 712955) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 713151) 32 = 531441 * k + 361441 ∧ 531441 * k + 361441 < 1048576 * k + 713151) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 713727) 32 = 531441 * k + 361733 ∧ 531441 * k + 361733 < 1048576 * k + 713727) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 714011) 32 = 531441 * k + 361877 ∧ 531441 * k + 361877 < 1048576 * k + 714011) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 715431) 32 = 531441 * k + 362597 ∧ 531441 * k + 362597 < 1048576 * k + 715431) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 715867) 32 = 531441 * k + 362818 ∧ 531441 * k + 362818 < 1048576 * k + 715867) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716027) 32 = 531441 * k + 362899 ∧ 531441 * k + 362899 < 1048576 * k + 716027) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716059) 32 = 531441 * k + 362915 ∧ 531441 * k + 362915 < 1048576 * k + 716059) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716223) 32 = 531441 * k + 362998 ∧ 531441 * k + 362998 < 1048576 * k + 716223) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716319) 32 = 531441 * k + 363047 ∧ 531441 * k + 363047 < 1048576 * k + 716319) ∧
  (∀ k : Nat, CollatzM20Shard092.iterate (1048576 * k + 716479) 32 = 531441 * k + 363128 ∧ 531441 * k + 363128 < 1048576 * k + 716479) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717247) 32 = 531441 * k + 363517 ∧ 531441 * k + 363517 < 1048576 * k + 717247) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717343) 32 = 531441 * k + 363566 ∧ 531441 * k + 363566 < 1048576 * k + 717343) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717359) 32 = 531441 * k + 363574 ∧ 531441 * k + 363574 < 1048576 * k + 717359) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717551) 32 = 531441 * k + 363671 ∧ 531441 * k + 363671 < 1048576 * k + 717551) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 717935) 32 = 531441 * k + 363866 ∧ 531441 * k + 363866 < 1048576 * k + 717935) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 718591) 32 = 531441 * k + 364198 ∧ 531441 * k + 364198 < 1048576 * k + 718591) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 719099) 32 = 531441 * k + 364456 ∧ 531441 * k + 364456 < 1048576 * k + 719099) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720031) 32 = 531441 * k + 364928 ∧ 531441 * k + 364928 < 1048576 * k + 720031) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720123) 32 = 531441 * k + 364975 ∧ 531441 * k + 364975 < 1048576 * k + 720123) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720155) 32 = 531441 * k + 364991 ∧ 531441 * k + 364991 < 1048576 * k + 720155) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 720431) 32 = 531441 * k + 365131 ∧ 531441 * k + 365131 < 1048576 * k + 720431) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 721055) 32 = 531441 * k + 365447 ∧ 531441 * k + 365447 < 1048576 * k + 721055) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 721647) 32 = 531441 * k + 365747 ∧ 531441 * k + 365747 < 1048576 * k + 721647) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 722687) 32 = 531441 * k + 366274 ∧ 531441 * k + 366274 < 1048576 * k + 722687) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 723355) 32 = 531441 * k + 366613 ∧ 531441 * k + 366613 < 1048576 * k + 723355) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 724251) 32 = 531441 * k + 367067 ∧ 531441 * k + 367067 < 1048576 * k + 724251) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 724647) 32 = 531441 * k + 367268 ∧ 531441 * k + 367268 < 1048576 * k + 724647) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 724719) 32 = 531441 * k + 367304 ∧ 531441 * k + 367304 < 1048576 * k + 724719) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 725439) 32 = 531441 * k + 367669 ∧ 531441 * k + 367669 < 1048576 * k + 725439) ∧
  (∀ k : Nat, CollatzM20Shard093.iterate (1048576 * k + 725535) 32 = 531441 * k + 367718 ∧ 531441 * k + 367718 < 1048576 * k + 725535) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 725743) 32 = 531441 * k + 367823 ∧ 531441 * k + 367823 < 1048576 * k + 725743) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726175) 32 = 531441 * k + 368042 ∧ 531441 * k + 368042 < 1048576 * k + 726175) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726299) 32 = 531441 * k + 368105 ∧ 531441 * k + 368105 < 1048576 * k + 726299) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726735) 32 = 531441 * k + 368326 ∧ 531441 * k + 368326 < 1048576 * k + 726735) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 726895) 32 = 531441 * k + 368407 ∧ 531441 * k + 368407 < 1048576 * k + 726895) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 727791) 32 = 531441 * k + 368861 ∧ 531441 * k + 368861 < 1048576 * k + 727791) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 728315) 32 = 531441 * k + 369127 ∧ 531441 * k + 369127 < 1048576 * k + 728315) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 728703) 32 = 531441 * k + 369323 ∧ 531441 * k + 369323 < 1048576 * k + 728703) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729371) 32 = 531441 * k + 369662 ∧ 531441 * k + 369662 < 1048576 * k + 729371) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729407) 32 = 531441 * k + 369680 ∧ 531441 * k + 369680 < 1048576 * k + 729407) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729499) 32 = 531441 * k + 369727 ∧ 531441 * k + 369727 < 1048576 * k + 729499) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 729727) 32 = 531441 * k + 369842 ∧ 531441 * k + 369842 < 1048576 * k + 729727) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 730863) 32 = 531441 * k + 370418 ∧ 531441 * k + 370418 < 1048576 * k + 730863) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 730991) 32 = 531441 * k + 370483 ∧ 531441 * k + 370483 < 1048576 * k + 730991) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731615) 32 = 531441 * k + 370799 ∧ 531441 * k + 370799 < 1048576 * k + 731615) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731775) 32 = 531441 * k + 370880 ∧ 531441 * k + 370880 < 1048576 * k + 731775) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731887) 32 = 531441 * k + 370937 ∧ 531441 * k + 370937 < 1048576 * k + 731887) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 731903) 32 = 531441 * k + 370945 ∧ 531441 * k + 370945 < 1048576 * k + 731903) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 732479) 32 = 531441 * k + 371237 ∧ 531441 * k + 371237 < 1048576 * k + 732479) ∧
  (∀ k : Nat, CollatzM20Shard094.iterate (1048576 * k + 733927) 32 = 531441 * k + 371971 ∧ 531441 * k + 371971 < 1048576 * k + 733927) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735515) 32 = 531441 * k + 372776 ∧ 531441 * k + 372776 < 1048576 * k + 735515) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735551) 32 = 531441 * k + 372794 ∧ 531441 * k + 372794 < 1048576 * k + 735551) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735711) 32 = 531441 * k + 372875 ∧ 531441 * k + 372875 < 1048576 * k + 735711) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 735871) 32 = 531441 * k + 372956 ∧ 531441 * k + 372956 < 1048576 * k + 735871) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 736575) 32 = 531441 * k + 373313 ∧ 531441 * k + 373313 < 1048576 * k + 736575) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 737007) 32 = 531441 * k + 373532 ∧ 531441 * k + 373532 < 1048576 * k + 737007) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 737691) 32 = 531441 * k + 373879 ∧ 531441 * k + 373879 < 1048576 * k + 737691) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 737775) 32 = 531441 * k + 373921 ∧ 531441 * k + 373921 < 1048576 * k + 737775) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 738783) 32 = 531441 * k + 374432 ∧ 531441 * k + 374432 < 1048576 * k + 738783) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 739183) 32 = 531441 * k + 374635 ∧ 531441 * k + 374635 < 1048576 * k + 739183) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 739807) 32 = 531441 * k + 374951 ∧ 531441 * k + 374951 < 1048576 * k + 739807) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 739967) 32 = 531441 * k + 375032 ∧ 531441 * k + 375032 < 1048576 * k + 739967) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 740079) 32 = 531441 * k + 375089 ∧ 531441 * k + 375089 < 1048576 * k + 740079) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 740207) 32 = 531441 * k + 375154 ∧ 531441 * k + 375154 < 1048576 * k + 740207) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 740847) 32 = 531441 * k + 375478 ∧ 531441 * k + 375478 < 1048576 * k + 740847) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 741279) 32 = 531441 * k + 375697 ∧ 531441 * k + 375697 < 1048576 * k + 741279) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 741855) 32 = 531441 * k + 375989 ∧ 531441 * k + 375989 < 1048576 * k + 741855) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 741979) 32 = 531441 * k + 376052 ∧ 531441 * k + 376052 < 1048576 * k + 741979) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 742015) 32 = 531441 * k + 376070 ∧ 531441 * k + 376070 < 1048576 * k + 742015) ∧
  (∀ k : Nat, CollatzM20Shard095.iterate (1048576 * k + 743919) 32 = 531441 * k + 377035 ∧ 531441 * k + 377035 < 1048576 * k + 743919) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744475) 32 = 531441 * k + 377317 ∧ 531441 * k + 377317 < 1048576 * k + 744475) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744767) 32 = 531441 * k + 377465 ∧ 531441 * k + 377465 < 1048576 * k + 744767) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744807) 32 = 531441 * k + 377485 ∧ 531441 * k + 377485 < 1048576 * k + 744807) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 744927) 32 = 531441 * k + 377546 ∧ 531441 * k + 377546 < 1048576 * k + 744927) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745375) 32 = 531441 * k + 377773 ∧ 531441 * k + 377773 < 1048576 * k + 745375) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745519) 32 = 531441 * k + 377846 ∧ 531441 * k + 377846 < 1048576 * k + 745519) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745951) 32 = 531441 * k + 378065 ∧ 531441 * k + 378065 < 1048576 * k + 745951) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 745967) 32 = 531441 * k + 378073 ∧ 531441 * k + 378073 < 1048576 * k + 745967) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 747111) 32 = 531441 * k + 378653 ∧ 531441 * k + 378653 < 1048576 * k + 747111) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 747879) 32 = 531441 * k + 379042 ∧ 531441 * k + 379042 < 1048576 * k + 747879) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 748123) 32 = 531441 * k + 379166 ∧ 531441 * k + 379166 < 1048576 * k + 748123) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 748399) 32 = 531441 * k + 379306 ∧ 531441 * k + 379306 < 1048576 * k + 748399) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 748479) 32 = 531441 * k + 379346 ∧ 531441 * k + 379346 < 1048576 * k + 748479) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 749039) 32 = 531441 * k + 379630 ∧ 531441 * k + 379630 < 1048576 * k + 749039) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 749615) 32 = 531441 * k + 379922 ∧ 531441 * k + 379922 < 1048576 * k + 749615) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 750951) 32 = 531441 * k + 380599 ∧ 531441 * k + 380599 < 1048576 * k + 750951) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 751071) 32 = 531441 * k + 380660 ∧ 531441 * k + 380660 < 1048576 * k + 751071) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 752999) 32 = 531441 * k + 381637 ∧ 531441 * k + 381637 < 1048576 * k + 752999) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 753255) 32 = 531441 * k + 381767 ∧ 531441 * k + 381767 < 1048576 * k + 753255) ∧
  (∀ k : Nat, CollatzM20Shard096.iterate (1048576 * k + 753567) 32 = 531441 * k + 381925 ∧ 531441 * k + 381925 < 1048576 * k + 753567) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 753711) 32 = 531441 * k + 381998 ∧ 531441 * k + 381998 < 1048576 * k + 753711) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 754143) 32 = 531441 * k + 382217 ∧ 531441 * k + 382217 < 1048576 * k + 754143) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 754267) 32 = 531441 * k + 382280 ∧ 531441 * k + 382280 < 1048576 * k + 754267) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 754591) 32 = 531441 * k + 382444 ∧ 531441 * k + 382444 < 1048576 * k + 754591) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 755071) 32 = 531441 * k + 382687 ∧ 531441 * k + 382687 < 1048576 * k + 755071) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 755183) 32 = 531441 * k + 382744 ∧ 531441 * k + 382744 < 1048576 * k + 755183) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 756071) 32 = 531441 * k + 383194 ∧ 531441 * k + 383194 < 1048576 * k + 756071) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 756991) 32 = 531441 * k + 383660 ∧ 531441 * k + 383660 < 1048576 * k + 756991) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 758831) 32 = 531441 * k + 384593 ∧ 531441 * k + 384593 < 1048576 * k + 758831) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 759719) 32 = 531441 * k + 385043 ∧ 531441 * k + 385043 < 1048576 * k + 759719) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 759855) 32 = 531441 * k + 385112 ∧ 531441 * k + 385112 < 1048576 * k + 759855) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 759871) 32 = 531441 * k + 385120 ∧ 531441 * k + 385120 < 1048576 * k + 759871) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 760063) 32 = 531441 * k + 385217 ∧ 531441 * k + 385217 < 1048576 * k + 760063) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 760607) 32 = 531441 * k + 385493 ∧ 531441 * k + 385493 < 1048576 * k + 760607) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 760767) 32 = 531441 * k + 385574 ∧ 531441 * k + 385574 < 1048576 * k + 760767) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 762215) 32 = 531441 * k + 386308 ∧ 531441 * k + 386308 < 1048576 * k + 762215) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 762559) 32 = 531441 * k + 386482 ∧ 531441 * k + 386482 < 1048576 * k + 762559) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 762783) 32 = 531441 * k + 386596 ∧ 531441 * k + 386596 < 1048576 * k + 762783) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 763263) 32 = 531441 * k + 386839 ∧ 531441 * k + 386839 < 1048576 * k + 763263) ∧
  (∀ k : Nat, CollatzM20Shard097.iterate (1048576 * k + 763483) 32 = 531441 * k + 386951 ∧ 531441 * k + 386951 < 1048576 * k + 763483) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 764159) 32 = 531441 * k + 387293 ∧ 531441 * k + 387293 < 1048576 * k + 764159) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 764607) 32 = 531441 * k + 387520 ∧ 531441 * k + 387520 < 1048576 * k + 764607) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 764703) 32 = 531441 * k + 387569 ∧ 531441 * k + 387569 < 1048576 * k + 764703) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 765183) 32 = 531441 * k + 387812 ∧ 531441 * k + 387812 < 1048576 * k + 765183) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 765863) 32 = 531441 * k + 388157 ∧ 531441 * k + 388157 < 1048576 * k + 765863) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 766063) 32 = 531441 * k + 388258 ∧ 531441 * k + 388258 < 1048576 * k + 766063) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 766655) 32 = 531441 * k + 388558 ∧ 531441 * k + 388558 < 1048576 * k + 766655) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 767391) 32 = 531441 * k + 388931 ∧ 531441 * k + 388931 < 1048576 * k + 767391) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 768047) 32 = 531441 * k + 389264 ∧ 531441 * k + 389264 < 1048576 * k + 768047) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 768207) 32 = 531441 * k + 389345 ∧ 531441 * k + 389345 < 1048576 * k + 768207) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 768255) 32 = 531441 * k + 389369 ∧ 531441 * k + 389369 < 1048576 * k + 768255) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769023) 32 = 531441 * k + 389758 ∧ 531441 * k + 389758 < 1048576 * k + 769023) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769087) 32 = 531441 * k + 389791 ∧ 531441 * k + 389791 < 1048576 * k + 769087) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769135) 32 = 531441 * k + 389815 ∧ 531441 * k + 389815 < 1048576 * k + 769135) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769407) 32 = 531441 * k + 389953 ∧ 531441 * k + 389953 < 1048576 * k + 769407) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769439) 32 = 531441 * k + 389969 ∧ 531441 * k + 389969 < 1048576 * k + 769439) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769567) 32 = 531441 * k + 390034 ∧ 531441 * k + 390034 < 1048576 * k + 769567) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 769727) 32 = 531441 * k + 390115 ∧ 531441 * k + 390115 < 1048576 * k + 769727) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 771071) 32 = 531441 * k + 390796 ∧ 531441 * k + 390796 < 1048576 * k + 771071) ∧
  (∀ k : Nat, CollatzM20Shard098.iterate (1048576 * k + 772007) 32 = 531441 * k + 391271 ∧ 531441 * k + 391271 < 1048576 * k + 772007) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772207) 32 = 531441 * k + 391372 ∧ 531441 * k + 391372 < 1048576 * k + 772207) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772763) 32 = 531441 * k + 391654 ∧ 531441 * k + 391654 < 1048576 * k + 772763) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772799) 32 = 531441 * k + 391672 ∧ 531441 * k + 391672 < 1048576 * k + 772799) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 772895) 32 = 531441 * k + 391721 ∧ 531441 * k + 391721 < 1048576 * k + 772895) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773119) 32 = 531441 * k + 391834 ∧ 531441 * k + 391834 < 1048576 * k + 773119) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773535) 32 = 531441 * k + 392045 ∧ 531441 * k + 392045 < 1048576 * k + 773535) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773663) 32 = 531441 * k + 392110 ∧ 531441 * k + 392110 < 1048576 * k + 773663) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773823) 32 = 531441 * k + 392191 ∧ 531441 * k + 392191 < 1048576 * k + 773823) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 773919) 32 = 531441 * k + 392240 ∧ 531441 * k + 392240 < 1048576 * k + 773919) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 774255) 32 = 531441 * k + 392410 ∧ 531441 * k + 392410 < 1048576 * k + 774255) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 774351) 32 = 531441 * k + 392459 ∧ 531441 * k + 392459 < 1048576 * k + 774351) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 774399) 32 = 531441 * k + 392483 ∧ 531441 * k + 392483 < 1048576 * k + 774399) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 775399) 32 = 531441 * k + 392990 ∧ 531441 * k + 392990 < 1048576 * k + 775399) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 777327) 32 = 531441 * k + 393967 ∧ 531441 * k + 393967 < 1048576 * k + 777327) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 777631) 32 = 531441 * k + 394121 ∧ 531441 * k + 394121 < 1048576 * k + 777631) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 778087) 32 = 531441 * k + 394352 ∧ 531441 * k + 394352 < 1048576 * k + 778087) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 779111) 32 = 531441 * k + 394871 ∧ 531441 * k + 394871 < 1048576 * k + 779111) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 779263) 32 = 531441 * k + 394948 ∧ 531441 * k + 394948 < 1048576 * k + 779263) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 779679) 32 = 531441 * k + 395159 ∧ 531441 * k + 395159 < 1048576 * k + 779679) ∧
  (∀ k : Nat, CollatzM20Shard099.iterate (1048576 * k + 780447) 32 = 531441 * k + 395548 ∧ 531441 * k + 395548 < 1048576 * k + 780447) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 780967) 32 = 531441 * k + 395812 ∧ 531441 * k + 395812 < 1048576 * k + 780967) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781159) 32 = 531441 * k + 395909 ∧ 531441 * k + 395909 < 1048576 * k + 781159) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781223) 32 = 531441 * k + 395942 ∧ 531441 * k + 395942 < 1048576 * k + 781223) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781295) 32 = 531441 * k + 395978 ∧ 531441 * k + 395978 < 1048576 * k + 781295) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781471) 32 = 531441 * k + 396067 ∧ 531441 * k + 396067 < 1048576 * k + 781471) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781543) 32 = 531441 * k + 396104 ∧ 531441 * k + 396104 < 1048576 * k + 781543) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 781855) 32 = 531441 * k + 396262 ∧ 531441 * k + 396262 < 1048576 * k + 781855) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782015) 32 = 531441 * k + 396343 ∧ 531441 * k + 396343 < 1048576 * k + 782015) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782111) 32 = 531441 * k + 396392 ∧ 531441 * k + 396392 < 1048576 * k + 782111) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782591) 32 = 531441 * k + 396635 ∧ 531441 * k + 396635 < 1048576 * k + 782591) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782751) 32 = 531441 * k + 396716 ∧ 531441 * k + 396716 < 1048576 * k + 782751) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 782879) 32 = 531441 * k + 396781 ∧ 531441 * k + 396781 < 1048576 * k + 782879) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 783471) 32 = 531441 * k + 397081 ∧ 531441 * k + 397081 < 1048576 * k + 783471) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 783519) 32 = 531441 * k + 397105 ∧ 531441 * k + 397105 < 1048576 * k + 783519) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 783643) 32 = 531441 * k + 397168 ∧ 531441 * k + 397168 < 1048576 * k + 783643) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785255) 32 = 531441 * k + 397985 ∧ 531441 * k + 397985 < 1048576 * k + 785255) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785279) 32 = 531441 * k + 397997 ∧ 531441 * k + 397997 < 1048576 * k + 785279) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785567) 32 = 531441 * k + 398143 ∧ 531441 * k + 398143 < 1048576 * k + 785567) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 785947) 32 = 531441 * k + 398336 ∧ 531441 * k + 398336 < 1048576 * k + 785947) ∧
  (∀ k : Nat, CollatzM20Shard100.iterate (1048576 * k + 786591) 32 = 531441 * k + 398662 ∧ 531441 * k + 398662 < 1048576 * k + 786591) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 786715) 32 = 531441 * k + 398725 ∧ 531441 * k + 398725 < 1048576 * k + 786715) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 787439) 32 = 531441 * k + 399092 ∧ 531441 * k + 399092 < 1048576 * k + 787439) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 788351) 32 = 531441 * k + 399554 ∧ 531441 * k + 399554 < 1048576 * k + 788351) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 788895) 32 = 531441 * k + 399830 ∧ 531441 * k + 399830 < 1048576 * k + 788895) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 789351) 32 = 531441 * k + 400061 ∧ 531441 * k + 400061 < 1048576 * k + 789351) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 789787) 32 = 531441 * k + 400282 ∧ 531441 * k + 400282 < 1048576 * k + 789787) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 790183) 32 = 531441 * k + 400483 ∧ 531441 * k + 400483 < 1048576 * k + 790183) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 790847) 32 = 531441 * k + 400819 ∧ 531441 * k + 400819 < 1048576 * k + 790847) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791071) 32 = 531441 * k + 400933 ∧ 531441 * k + 400933 < 1048576 * k + 791071) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791279) 32 = 531441 * k + 401038 ∧ 531441 * k + 401038 < 1048576 * k + 791279) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791399) 32 = 531441 * k + 401099 ∧ 531441 * k + 401099 < 1048576 * k + 791399) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791711) 32 = 531441 * k + 401257 ∧ 531441 * k + 401257 < 1048576 * k + 791711) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 791835) 32 = 531441 * k + 401320 ∧ 531441 * k + 401320 < 1048576 * k + 791835) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 792091) 32 = 531441 * k + 401450 ∧ 531441 * k + 401450 < 1048576 * k + 792091) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 792447) 32 = 531441 * k + 401630 ∧ 531441 * k + 401630 < 1048576 * k + 792447) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 792895) 32 = 531441 * k + 401857 ∧ 531441 * k + 401857 < 1048576 * k + 792895) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 793327) 32 = 531441 * k + 402076 ∧ 531441 * k + 402076 < 1048576 * k + 793327) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 793471) 32 = 531441 * k + 402149 ∧ 531441 * k + 402149 < 1048576 * k + 793471) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 793583) 32 = 531441 * k + 402206 ∧ 531441 * k + 402206 < 1048576 * k + 793583) ∧
  (∀ k : Nat, CollatzM20Shard101.iterate (1048576 * k + 794907) 32 = 531441 * k + 402877 ∧ 531441 * k + 402877 < 1048576 * k + 794907) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 794943) 32 = 531441 * k + 402895 ∧ 531441 * k + 402895 < 1048576 * k + 794943) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 795679) 32 = 531441 * k + 403268 ∧ 531441 * k + 403268 < 1048576 * k + 795679) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 796543) 32 = 531441 * k + 403706 ∧ 531441 * k + 403706 < 1048576 * k + 796543) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 797423) 32 = 531441 * k + 404152 ∧ 531441 * k + 404152 < 1048576 * k + 797423) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 797727) 32 = 531441 * k + 404306 ∧ 531441 * k + 404306 < 1048576 * k + 797727) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 798015) 32 = 531441 * k + 404452 ∧ 531441 * k + 404452 < 1048576 * k + 798015) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 798555) 32 = 531441 * k + 404726 ∧ 531441 * k + 404726 < 1048576 * k + 798555) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 799359) 32 = 531441 * k + 405133 ∧ 531441 * k + 405133 < 1048576 * k + 799359) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 801051) 32 = 531441 * k + 405991 ∧ 531441 * k + 405991 < 1048576 * k + 801051) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 801087) 32 = 531441 * k + 406009 ∧ 531441 * k + 406009 < 1048576 * k + 801087) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 801823) 32 = 531441 * k + 406382 ∧ 531441 * k + 406382 < 1048576 * k + 801823) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802095) 32 = 531441 * k + 406520 ∧ 531441 * k + 406520 < 1048576 * k + 802095) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802111) 32 = 531441 * k + 406528 ∧ 531441 * k + 406528 < 1048576 * k + 802111) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802543) 32 = 531441 * k + 406747 ∧ 531441 * k + 406747 < 1048576 * k + 802543) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802687) 32 = 531441 * k + 406820 ∧ 531441 * k + 406820 < 1048576 * k + 802687) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 802799) 32 = 531441 * k + 406877 ∧ 531441 * k + 406877 < 1048576 * k + 802799) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 804455) 32 = 531441 * k + 407716 ∧ 531441 * k + 407716 < 1048576 * k + 804455) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 804699) 32 = 531441 * k + 407840 ∧ 531441 * k + 407840 < 1048576 * k + 804699) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 805343) 32 = 531441 * k + 408166 ∧ 531441 * k + 408166 < 1048576 * k + 805343) ∧
  (∀ k : Nat, CollatzM20Shard102.iterate (1048576 * k + 805503) 32 = 531441 * k + 408247 ∧ 531441 * k + 408247 < 1048576 * k + 805503) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 805615) 32 = 531441 * k + 408304 ∧ 531441 * k + 408304 < 1048576 * k + 805615) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 805919) 32 = 531441 * k + 408458 ∧ 531441 * k + 408458 < 1048576 * k + 805919) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 806191) 32 = 531441 * k + 408596 ∧ 531441 * k + 408596 < 1048576 * k + 806191) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807079) 32 = 531441 * k + 409046 ∧ 531441 * k + 409046 < 1048576 * k + 807079) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807391) 32 = 531441 * k + 409204 ∧ 531441 * k + 409204 < 1048576 * k + 807391) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807423) 32 = 531441 * k + 409220 ∧ 531441 * k + 409220 < 1048576 * k + 807423) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807551) 32 = 531441 * k + 409285 ∧ 531441 * k + 409285 < 1048576 * k + 807551) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 807967) 32 = 531441 * k + 409496 ∧ 531441 * k + 409496 < 1048576 * k + 807967) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 809287) 32 = 531441 * k + 410165 ∧ 531441 * k + 410165 < 1048576 * k + 809287) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 809583) 32 = 531441 * k + 410315 ∧ 531441 * k + 410315 < 1048576 * k + 809583) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810151) 32 = 531441 * k + 410603 ∧ 531441 * k + 410603 < 1048576 * k + 810151) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810287) 32 = 531441 * k + 410672 ∧ 531441 * k + 410672 < 1048576 * k + 810287) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810303) 32 = 531441 * k + 410680 ∧ 531441 * k + 410680 < 1048576 * k + 810303) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810843) 32 = 531441 * k + 410954 ∧ 531441 * k + 410954 < 1048576 * k + 810843) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 810879) 32 = 531441 * k + 410972 ∧ 531441 * k + 410972 < 1048576 * k + 810879) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 811039) 32 = 531441 * k + 411053 ∧ 531441 * k + 411053 < 1048576 * k + 811039) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 811487) 32 = 531441 * k + 411280 ∧ 531441 * k + 411280 < 1048576 * k + 811487) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 812647) 32 = 531441 * k + 411868 ∧ 531441 * k + 411868 < 1048576 * k + 812647) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 813223) 32 = 531441 * k + 412160 ∧ 531441 * k + 412160 < 1048576 * k + 813223) ∧
  (∀ k : Nat, CollatzM20Shard103.iterate (1048576 * k + 813383) 32 = 531441 * k + 412241 ∧ 531441 * k + 412241 < 1048576 * k + 813383) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 814235) 32 = 531441 * k + 412673 ∧ 531441 * k + 412673 < 1048576 * k + 814235) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 814247) 32 = 531441 * k + 412679 ∧ 531441 * k + 412679 < 1048576 * k + 814247) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 814591) 32 = 531441 * k + 412853 ∧ 531441 * k + 412853 < 1048576 * k + 814591) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 815407) 32 = 531441 * k + 413267 ∧ 531441 * k + 413267 < 1048576 * k + 815407) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 815615) 32 = 531441 * k + 413372 ∧ 531441 * k + 413372 < 1048576 * k + 815615) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 815727) 32 = 531441 * k + 413429 ∧ 531441 * k + 413429 < 1048576 * k + 815727) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816431) 32 = 531441 * k + 413786 ∧ 531441 * k + 413786 < 1048576 * k + 816431) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816455) 32 = 531441 * k + 413798 ∧ 531441 * k + 413798 < 1048576 * k + 816455) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816607) 32 = 531441 * k + 413875 ∧ 531441 * k + 413875 < 1048576 * k + 816607) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816799) 32 = 531441 * k + 413972 ∧ 531441 * k + 413972 < 1048576 * k + 816799) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 816923) 32 = 531441 * k + 414035 ∧ 531441 * k + 414035 < 1048576 * k + 816923) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 817183) 32 = 531441 * k + 414167 ∧ 531441 * k + 414167 < 1048576 * k + 817183) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 817479) 32 = 531441 * k + 414317 ∧ 531441 * k + 414317 < 1048576 * k + 817479) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 817947) 32 = 531441 * k + 414554 ∧ 531441 * k + 414554 < 1048576 * k + 817947) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 818791) 32 = 531441 * k + 414982 ∧ 531441 * k + 414982 < 1048576 * k + 818791) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819247) 32 = 531441 * k + 415213 ∧ 531441 * k + 415213 < 1048576 * k + 819247) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819527) 32 = 531441 * k + 415355 ∧ 531441 * k + 415355 < 1048576 * k + 819527) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819679) 32 = 531441 * k + 415432 ∧ 531441 * k + 415432 < 1048576 * k + 819679) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819803) 32 = 531441 * k + 415495 ∧ 531441 * k + 415495 < 1048576 * k + 819803) ∧
  (∀ k : Nat, CollatzM20Shard104.iterate (1048576 * k + 819995) 32 = 531441 * k + 415592 ∧ 531441 * k + 415592 < 1048576 * k + 819995) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820059) 32 = 531441 * k + 415625 ∧ 531441 * k + 415625 < 1048576 * k + 820059) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820379) 32 = 531441 * k + 415787 ∧ 531441 * k + 415787 < 1048576 * k + 820379) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820463) 32 = 531441 * k + 415829 ∧ 531441 * k + 415829 < 1048576 * k + 820463) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820735) 32 = 531441 * k + 415967 ∧ 531441 * k + 415967 < 1048576 * k + 820735) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 820895) 32 = 531441 * k + 416048 ∧ 531441 * k + 416048 < 1048576 * k + 820895) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 821487) 32 = 531441 * k + 416348 ∧ 531441 * k + 416348 < 1048576 * k + 821487) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 821871) 32 = 531441 * k + 416543 ∧ 531441 * k + 416543 < 1048576 * k + 821871) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 822439) 32 = 531441 * k + 416831 ∧ 531441 * k + 416831 < 1048576 * k + 822439) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 822511) 32 = 531441 * k + 416867 ∧ 531441 * k + 416867 < 1048576 * k + 822511) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 822599) 32 = 531441 * k + 416912 ∧ 531441 * k + 416912 < 1048576 * k + 822599) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 823623) 32 = 531441 * k + 417431 ∧ 531441 * k + 417431 < 1048576 * k + 823623) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 823967) 32 = 531441 * k + 417605 ∧ 531441 * k + 417605 < 1048576 * k + 823967) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824091) 32 = 531441 * k + 417668 ∧ 531441 * k + 417668 < 1048576 * k + 824091) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824623) 32 = 531441 * k + 417938 ∧ 531441 * k + 417938 < 1048576 * k + 824623) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824783) 32 = 531441 * k + 418019 ∧ 531441 * k + 418019 < 1048576 * k + 824783) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 824991) 32 = 531441 * k + 418124 ∧ 531441 * k + 418124 < 1048576 * k + 824991) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 825391) 32 = 531441 * k + 418327 ∧ 531441 * k + 418327 < 1048576 * k + 825391) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 825551) 32 = 531441 * k + 418408 ∧ 531441 * k + 418408 < 1048576 * k + 825551) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 825583) 32 = 531441 * k + 418424 ∧ 531441 * k + 418424 < 1048576 * k + 825583) ∧
  (∀ k : Nat, CollatzM20Shard105.iterate (1048576 * k + 826143) 32 = 531441 * k + 418708 ∧ 531441 * k + 418708 < 1048576 * k + 826143) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 826303) 32 = 531441 * k + 418789 ∧ 531441 * k + 418789 < 1048576 * k + 826303) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 827039) 32 = 531441 * k + 419162 ∧ 531441 * k + 419162 < 1048576 * k + 827039) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 828187) 32 = 531441 * k + 419744 ∧ 531441 * k + 419744 < 1048576 * k + 828187) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 828655) 32 = 531441 * k + 419981 ∧ 531441 * k + 419981 < 1048576 * k + 828655) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 828743) 32 = 531441 * k + 420026 ∧ 531441 * k + 420026 < 1048576 * k + 828743) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 829019) 32 = 531441 * k + 420166 ∧ 531441 * k + 420166 < 1048576 * k + 829019) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 829679) 32 = 531441 * k + 420500 ∧ 531441 * k + 420500 < 1048576 * k + 829679) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830111) 32 = 531441 * k + 420719 ∧ 531441 * k + 420719 < 1048576 * k + 830111) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830235) 32 = 531441 * k + 420782 ∧ 531441 * k + 420782 < 1048576 * k + 830235) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830239) 32 = 531441 * k + 420784 ∧ 531441 * k + 420784 < 1048576 * k + 830239) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830719) 32 = 531441 * k + 421027 ∧ 531441 * k + 421027 < 1048576 * k + 830719) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 830927) 32 = 531441 * k + 421133 ∧ 531441 * k + 421133 < 1048576 * k + 830927) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831087) 32 = 531441 * k + 421214 ∧ 531441 * k + 421214 < 1048576 * k + 831087) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831135) 32 = 531441 * k + 421238 ∧ 531441 * k + 421238 < 1048576 * k + 831135) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831727) 32 = 531441 * k + 421538 ∧ 531441 * k + 421538 < 1048576 * k + 831727) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831815) 32 = 531441 * k + 421583 ∧ 531441 * k + 421583 < 1048576 * k + 831815) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 831975) 32 = 531441 * k + 421664 ∧ 531441 * k + 421664 < 1048576 * k + 831975) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 832743) 32 = 531441 * k + 422053 ∧ 531441 * k + 422053 < 1048576 * k + 832743) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 833583) 32 = 531441 * k + 422479 ∧ 531441 * k + 422479 < 1048576 * k + 833583) ∧
  (∀ k : Nat, CollatzM20Shard106.iterate (1048576 * k + 833743) 32 = 531441 * k + 422560 ∧ 531441 * k + 422560 < 1048576 * k + 833743) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 833791) 32 = 531441 * k + 422584 ∧ 531441 * k + 422584 < 1048576 * k + 833791) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 834663) 32 = 531441 * k + 423026 ∧ 531441 * k + 423026 < 1048576 * k + 834663) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 834799) 32 = 531441 * k + 423095 ∧ 531441 * k + 423095 < 1048576 * k + 834799) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 835823) 32 = 531441 * k + 423614 ∧ 531441 * k + 423614 < 1048576 * k + 835823) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 836255) 32 = 531441 * k + 423833 ∧ 531441 * k + 423833 < 1048576 * k + 836255) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 837023) 32 = 531441 * k + 424222 ∧ 531441 * k + 424222 < 1048576 * k + 837023) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 837543) 32 = 531441 * k + 424486 ∧ 531441 * k + 424486 < 1048576 * k + 837543) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 837735) 32 = 531441 * k + 424583 ∧ 531441 * k + 424583 < 1048576 * k + 837735) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 838119) 32 = 531441 * k + 424778 ∧ 531441 * k + 424778 < 1048576 * k + 838119) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 838431) 32 = 531441 * k + 424936 ∧ 531441 * k + 424936 < 1048576 * k + 838431) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839327) 32 = 531441 * k + 425390 ∧ 531441 * k + 425390 < 1048576 * k + 839327) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839455) 32 = 531441 * k + 425455 ∧ 531441 * k + 425455 < 1048576 * k + 839455) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839887) 32 = 531441 * k + 425674 ∧ 531441 * k + 425674 < 1048576 * k + 839887) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 839935) 32 = 531441 * k + 425698 ∧ 531441 * k + 425698 < 1048576 * k + 839935) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 840095) 32 = 531441 * k + 425779 ∧ 531441 * k + 425779 < 1048576 * k + 840095) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 840935) 32 = 531441 * k + 426205 ∧ 531441 * k + 426205 < 1048576 * k + 840935) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 841831) 32 = 531441 * k + 426659 ∧ 531441 * k + 426659 < 1048576 * k + 841831) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 842855) 32 = 531441 * k + 427178 ∧ 531441 * k + 427178 < 1048576 * k + 842855) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 842879) 32 = 531441 * k + 427190 ∧ 531441 * k + 427190 < 1048576 * k + 842879) ∧
  (∀ k : Nat, CollatzM20Shard107.iterate (1048576 * k + 843167) 32 = 531441 * k + 427336 ∧ 531441 * k + 427336 < 1048576 * k + 843167) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 843291) 32 = 531441 * k + 427399 ∧ 531441 * k + 427399 < 1048576 * k + 843291) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 844015) 32 = 531441 * k + 427766 ∧ 531441 * k + 427766 < 1048576 * k + 844015) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 844767) 32 = 531441 * k + 428147 ∧ 531441 * k + 428147 < 1048576 * k + 844767) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845215) 32 = 531441 * k + 428374 ∧ 531441 * k + 428374 < 1048576 * k + 845215) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845915) 32 = 531441 * k + 428729 ∧ 531441 * k + 428729 < 1048576 * k + 845915) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845927) 32 = 531441 * k + 428735 ∧ 531441 * k + 428735 < 1048576 * k + 845927) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 845951) 32 = 531441 * k + 428747 ∧ 531441 * k + 428747 < 1048576 * k + 845951) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 846759) 32 = 531441 * k + 429157 ∧ 531441 * k + 429157 < 1048576 * k + 846759) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 847079) 32 = 531441 * k + 429319 ∧ 531441 * k + 429319 < 1048576 * k + 847079) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 847407) 32 = 531441 * k + 429485 ∧ 531441 * k + 429485 < 1048576 * k + 847407) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 847647) 32 = 531441 * k + 429607 ∧ 531441 * k + 429607 < 1048576 * k + 847647) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848123) 32 = 531441 * k + 429848 ∧ 531441 * k + 429848 < 1048576 * k + 848123) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848127) 32 = 531441 * k + 429850 ∧ 531441 * k + 429850 < 1048576 * k + 848127) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848287) 32 = 531441 * k + 429931 ∧ 531441 * k + 429931 < 1048576 * k + 848287) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848743) 32 = 531441 * k + 430162 ∧ 531441 * k + 430162 < 1048576 * k + 848743) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848863) 32 = 531441 * k + 430223 ∧ 531441 * k + 430223 < 1048576 * k + 848863) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 848987) 32 = 531441 * k + 430286 ∧ 531441 * k + 430286 < 1048576 * k + 848987) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 849023) 32 = 531441 * k + 430304 ∧ 531441 * k + 430304 < 1048576 * k + 849023) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 850047) 32 = 531441 * k + 430823 ∧ 531441 * k + 430823 < 1048576 * k + 850047) ∧
  (∀ k : Nat, CollatzM20Shard108.iterate (1048576 * k + 851483) 32 = 531441 * k + 431551 ∧ 531441 * k + 431551 < 1048576 * k + 851483) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852059) 32 = 531441 * k + 431843 ∧ 531441 * k + 431843 < 1048576 * k + 852059) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852071) 32 = 531441 * k + 431849 ∧ 531441 * k + 431849 < 1048576 * k + 852071) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852219) 32 = 531441 * k + 431924 ∧ 531441 * k + 431924 < 1048576 * k + 852219) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852415) 32 = 531441 * k + 432023 ∧ 531441 * k + 432023 < 1048576 * k + 852415) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 852959) 32 = 531441 * k + 432299 ∧ 531441 * k + 432299 < 1048576 * k + 852959) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 853083) 32 = 531441 * k + 432362 ∧ 531441 * k + 432362 < 1048576 * k + 853083) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 854431) 32 = 531441 * k + 433045 ∧ 531441 * k + 433045 < 1048576 * k + 854431) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 854887) 32 = 531441 * k + 433276 ∧ 531441 * k + 433276 < 1048576 * k + 854887) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 855291) 32 = 531441 * k + 433481 ∧ 531441 * k + 433481 < 1048576 * k + 855291) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 855487) 32 = 531441 * k + 433580 ∧ 531441 * k + 433580 < 1048576 * k + 855487) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 855759) 32 = 531441 * k + 433718 ∧ 531441 * k + 433718 < 1048576 * k + 855759) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 856315) 32 = 531441 * k + 434000 ∧ 531441 * k + 434000 < 1048576 * k + 856315) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 856935) 32 = 531441 * k + 434314 ∧ 531441 * k + 434314 < 1048576 * k + 856935) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 857627) 32 = 531441 * k + 434665 ∧ 531441 * k + 434665 < 1048576 * k + 857627) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 857855) 32 = 531441 * k + 434780 ∧ 531441 * k + 434780 < 1048576 * k + 857855) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858079) 32 = 531441 * k + 434894 ∧ 531441 * k + 434894 < 1048576 * k + 858079) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858239) 32 = 531441 * k + 434975 ∧ 531441 * k + 434975 < 1048576 * k + 858239) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858363) 32 = 531441 * k + 435038 ∧ 531441 * k + 435038 < 1048576 * k + 858363) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 858831) 32 = 531441 * k + 435275 ∧ 531441 * k + 435275 < 1048576 * k + 858831) ∧
  (∀ k : Nat, CollatzM20Shard109.iterate (1048576 * k + 859007) 32 = 531441 * k + 435364 ∧ 531441 * k + 435364 < 1048576 * k + 859007) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 859103) 32 = 531441 * k + 435413 ∧ 531441 * k + 435413 < 1048576 * k + 859103) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 859119) 32 = 531441 * k + 435421 ∧ 531441 * k + 435421 < 1048576 * k + 859119) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 859695) 32 = 531441 * k + 435713 ∧ 531441 * k + 435713 < 1048576 * k + 859695) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 860263) 32 = 531441 * k + 436001 ∧ 531441 * k + 436001 < 1048576 * k + 860263) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 860927) 32 = 531441 * k + 436337 ∧ 531441 * k + 436337 < 1048576 * k + 860927) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 861275) 32 = 531441 * k + 436514 ∧ 531441 * k + 436514 < 1048576 * k + 861275) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 861435) 32 = 531441 * k + 436595 ∧ 531441 * k + 436595 < 1048576 * k + 861435) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 861951) 32 = 531441 * k + 436856 ∧ 531441 * k + 436856 < 1048576 * k + 861951) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862079) 32 = 531441 * k + 436921 ∧ 531441 * k + 436921 < 1048576 * k + 862079) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862459) 32 = 531441 * k + 437114 ∧ 531441 * k + 437114 < 1048576 * k + 862459) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862927) 32 = 531441 * k + 437351 ∧ 531441 * k + 437351 < 1048576 * k + 862927) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 862951) 32 = 531441 * k + 437363 ∧ 531441 * k + 437363 < 1048576 * k + 862951) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 863951) 32 = 531441 * k + 437870 ∧ 531441 * k + 437870 < 1048576 * k + 863951) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 864703) 32 = 531441 * k + 438251 ∧ 531441 * k + 438251 < 1048576 * k + 864703) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 865311) 32 = 531441 * k + 438559 ∧ 531441 * k + 438559 < 1048576 * k + 865311) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 866023) 32 = 531441 * k + 438920 ∧ 531441 * k + 438920 < 1048576 * k + 866023) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 866047) 32 = 531441 * k + 438932 ∧ 531441 * k + 438932 < 1048576 * k + 866047) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 866159) 32 = 531441 * k + 438989 ∧ 531441 * k + 438989 < 1048576 * k + 866159) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 867023) 32 = 531441 * k + 439427 ∧ 531441 * k + 439427 < 1048576 * k + 867023) ∧
  (∀ k : Nat, CollatzM20Shard110.iterate (1048576 * k + 867295) 32 = 531441 * k + 439565 ∧ 531441 * k + 439565 < 1048576 * k + 867295) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 867579) 32 = 531441 * k + 439709 ∧ 531441 * k + 439709 < 1048576 * k + 867579) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868223) 32 = 531441 * k + 440035 ∧ 531441 * k + 440035 < 1048576 * k + 868223) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868335) 32 = 531441 * k + 440092 ∧ 531441 * k + 440092 < 1048576 * k + 868335) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868383) 32 = 531441 * k + 440116 ∧ 531441 * k + 440116 < 1048576 * k + 868383) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 868519) 32 = 531441 * k + 440185 ∧ 531441 * k + 440185 < 1048576 * k + 868519) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 869119) 32 = 531441 * k + 440489 ∧ 531441 * k + 440489 < 1048576 * k + 869119) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870119) 32 = 531441 * k + 440996 ∧ 531441 * k + 440996 < 1048576 * k + 870119) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870567) 32 = 531441 * k + 441223 ∧ 531441 * k + 441223 < 1048576 * k + 870567) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870651) 32 = 531441 * k + 441266 ∧ 531441 * k + 441266 < 1048576 * k + 870651) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 870811) 32 = 531441 * k + 441347 ∧ 531441 * k + 441347 < 1048576 * k + 870811) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 871143) 32 = 531441 * k + 441515 ∧ 531441 * k + 441515 < 1048576 * k + 871143) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 871455) 32 = 531441 * k + 441673 ∧ 531441 * k + 441673 < 1048576 * k + 871455) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 871579) 32 = 531441 * k + 441736 ∧ 531441 * k + 441736 < 1048576 * k + 871579) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 872303) 32 = 531441 * k + 442103 ∧ 531441 * k + 442103 < 1048576 * k + 872303) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 872615) 32 = 531441 * k + 442261 ∧ 531441 * k + 442261 < 1048576 * k + 872615) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 873167) 32 = 531441 * k + 442541 ∧ 531441 * k + 442541 < 1048576 * k + 873167) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 873499) 32 = 531441 * k + 442709 ∧ 531441 * k + 442709 < 1048576 * k + 873499) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 873503) 32 = 531441 * k + 442711 ∧ 531441 * k + 442711 < 1048576 * k + 873503) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 874215) 32 = 531441 * k + 443072 ∧ 531441 * k + 443072 < 1048576 * k + 874215) ∧
  (∀ k : Nat, CollatzM20Shard111.iterate (1048576 * k + 875007) 32 = 531441 * k + 443473 ∧ 531441 * k + 443473 < 1048576 * k + 875007) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 875687) 32 = 531441 * k + 443818 ∧ 531441 * k + 443818 < 1048576 * k + 875687) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 875823) 32 = 531441 * k + 443887 ∧ 531441 * k + 443887 < 1048576 * k + 875823) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876031) 32 = 531441 * k + 443992 ∧ 531441 * k + 443992 < 1048576 * k + 876031) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876379) 32 = 531441 * k + 444169 ∧ 531441 * k + 444169 < 1048576 * k + 876379) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876415) 32 = 531441 * k + 444187 ∧ 531441 * k + 444187 < 1048576 * k + 876415) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876571) 32 = 531441 * k + 444266 ∧ 531441 * k + 444266 < 1048576 * k + 876571) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876575) 32 = 531441 * k + 444268 ∧ 531441 * k + 444268 < 1048576 * k + 876575) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 876955) 32 = 531441 * k + 444461 ∧ 531441 * k + 444461 < 1048576 * k + 876955) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 878079) 32 = 531441 * k + 445030 ∧ 531441 * k + 445030 < 1048576 * k + 878079) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 878447) 32 = 531441 * k + 445217 ∧ 531441 * k + 445217 < 1048576 * k + 878447) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 878759) 32 = 531441 * k + 445375 ∧ 531441 * k + 445375 < 1048576 * k + 878759) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 879771) 32 = 531441 * k + 445888 ∧ 531441 * k + 445888 < 1048576 * k + 879771) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 879783) 32 = 531441 * k + 445894 ∧ 531441 * k + 445894 < 1048576 * k + 879783) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880127) 32 = 531441 * k + 446068 ∧ 531441 * k + 446068 < 1048576 * k + 880127) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880359) 32 = 531441 * k + 446186 ∧ 531441 * k + 446186 < 1048576 * k + 880359) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880543) 32 = 531441 * k + 446279 ∧ 531441 * k + 446279 < 1048576 * k + 880543) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 880667) 32 = 531441 * k + 446342 ∧ 531441 * k + 446342 < 1048576 * k + 880667) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 881151) 32 = 531441 * k + 446587 ∧ 531441 * k + 446587 < 1048576 * k + 881151) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 881359) 32 = 531441 * k + 446693 ∧ 531441 * k + 446693 < 1048576 * k + 881359) ∧
  (∀ k : Nat, CollatzM20Shard112.iterate (1048576 * k + 881691) 32 = 531441 * k + 446861 ∧ 531441 * k + 446861 < 1048576 * k + 881691) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 881967) 32 = 531441 * k + 447001 ∧ 531441 * k + 447001 < 1048576 * k + 881967) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 882127) 32 = 531441 * k + 447082 ∧ 531441 * k + 447082 < 1048576 * k + 882127) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 882719) 32 = 531441 * k + 447382 ∧ 531441 * k + 447382 < 1048576 * k + 882719) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 883015) 32 = 531441 * k + 447532 ∧ 531441 * k + 447532 < 1048576 * k + 883015) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 884763) 32 = 531441 * k + 448418 ∧ 531441 * k + 448418 < 1048576 * k + 884763) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885063) 32 = 531441 * k + 448570 ∧ 531441 * k + 448570 < 1048576 * k + 885063) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885231) 32 = 531441 * k + 448655 ∧ 531441 * k + 448655 < 1048576 * k + 885231) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885595) 32 = 531441 * k + 448840 ∧ 531441 * k + 448840 < 1048576 * k + 885595) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 885915) 32 = 531441 * k + 449002 ∧ 531441 * k + 449002 < 1048576 * k + 885915) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 886271) 32 = 531441 * k + 449182 ∧ 531441 * k + 449182 < 1048576 * k + 886271) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 886687) 32 = 531441 * k + 449393 ∧ 531441 * k + 449393 < 1048576 * k + 886687) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887407) 32 = 531441 * k + 449758 ∧ 531441 * k + 449758 < 1048576 * k + 887407) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887579) 32 = 531441 * k + 449845 ∧ 531441 * k + 449845 < 1048576 * k + 887579) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887663) 32 = 531441 * k + 449888 ∧ 531441 * k + 449888 < 1048576 * k + 887663) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 887975) 32 = 531441 * k + 450046 ∧ 531441 * k + 450046 < 1048576 * k + 887975) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 888303) 32 = 531441 * k + 450212 ∧ 531441 * k + 450212 < 1048576 * k + 888303) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 888551) 32 = 531441 * k + 450338 ∧ 531441 * k + 450338 < 1048576 * k + 888551) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 889159) 32 = 531441 * k + 450646 ∧ 531441 * k + 450646 < 1048576 * k + 889159) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 889319) 32 = 531441 * k + 450727 ∧ 531441 * k + 450727 < 1048576 * k + 889319) ∧
  (∀ k : Nat, CollatzM20Shard113.iterate (1048576 * k + 890095) 32 = 531441 * k + 451120 ∧ 531441 * k + 451120 < 1048576 * k + 890095) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890159) 32 = 531441 * k + 451153 ∧ 531441 * k + 451153 < 1048576 * k + 890159) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890319) 32 = 531441 * k + 451234 ∧ 531441 * k + 451234 < 1048576 * k + 890319) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890527) 32 = 531441 * k + 451339 ∧ 531441 * k + 451339 < 1048576 * k + 890527) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 890907) 32 = 531441 * k + 451532 ∧ 531441 * k + 451532 < 1048576 * k + 890907) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 891375) 32 = 531441 * k + 451769 ∧ 531441 * k + 451769 < 1048576 * k + 891375) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892143) 32 = 531441 * k + 452158 ∧ 531441 * k + 452158 < 1048576 * k + 892143) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892263) 32 = 531441 * k + 452219 ∧ 531441 * k + 452219 < 1048576 * k + 892263) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892399) 32 = 531441 * k + 452288 ∧ 531441 * k + 452288 < 1048576 * k + 892399) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892575) 32 = 531441 * k + 452377 ∧ 531441 * k + 452377 < 1048576 * k + 892575) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 892831) 32 = 531441 * k + 452507 ∧ 531441 * k + 452507 < 1048576 * k + 892831) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 893723) 32 = 531441 * k + 452959 ∧ 531441 * k + 452959 < 1048576 * k + 893723) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 894191) 32 = 531441 * k + 453196 ∧ 531441 * k + 453196 < 1048576 * k + 894191) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 894279) 32 = 531441 * k + 453241 ∧ 531441 * k + 453241 < 1048576 * k + 894279) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 895215) 32 = 531441 * k + 453715 ∧ 531441 * k + 453715 < 1048576 * k + 895215) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 895335) 32 = 531441 * k + 453776 ∧ 531441 * k + 453776 < 1048576 * k + 895335) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 895771) 32 = 531441 * k + 453997 ∧ 531441 * k + 453997 < 1048576 * k + 895771) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 896463) 32 = 531441 * k + 454348 ∧ 531441 * k + 454348 < 1048576 * k + 896463) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 896623) 32 = 531441 * k + 454429 ∧ 531441 * k + 454429 < 1048576 * k + 896623) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 896671) 32 = 531441 * k + 454453 ∧ 531441 * k + 454453 < 1048576 * k + 896671) ∧
  (∀ k : Nat, CollatzM20Shard114.iterate (1048576 * k + 897263) 32 = 531441 * k + 454753 ∧ 531441 * k + 454753 < 1048576 * k + 897263) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 897351) 32 = 531441 * k + 454798 ∧ 531441 * k + 454798 < 1048576 * k + 897351) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 897511) 32 = 531441 * k + 454879 ∧ 531441 * k + 454879 < 1048576 * k + 897511) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 898407) 32 = 531441 * k + 455333 ∧ 531441 * k + 455333 < 1048576 * k + 898407) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 899099) 32 = 531441 * k + 455684 ∧ 531441 * k + 455684 < 1048576 * k + 899099) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 899431) 32 = 531441 * k + 455852 ∧ 531441 * k + 455852 < 1048576 * k + 899431) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 900335) 32 = 531441 * k + 456310 ∧ 531441 * k + 456310 < 1048576 * k + 900335) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 900591) 32 = 531441 * k + 456440 ∧ 531441 * k + 456440 < 1048576 * k + 900591) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901343) 32 = 531441 * k + 456821 ∧ 531441 * k + 456821 < 1048576 * k + 901343) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901359) 32 = 531441 * k + 456829 ∧ 531441 * k + 456829 < 1048576 * k + 901359) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901787) 32 = 531441 * k + 457046 ∧ 531441 * k + 457046 < 1048576 * k + 901787) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901791) 32 = 531441 * k + 457048 ∧ 531441 * k + 457048 < 1048576 * k + 901791) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 901823) 32 = 531441 * k + 457064 ∧ 531441 * k + 457064 < 1048576 * k + 901823) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 902047) 32 = 531441 * k + 457178 ∧ 531441 * k + 457178 < 1048576 * k + 902047) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 902527) 32 = 531441 * k + 457421 ∧ 531441 * k + 457421 < 1048576 * k + 902527) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 903655) 32 = 531441 * k + 457993 ∧ 531441 * k + 457993 < 1048576 * k + 903655) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 904319) 32 = 531441 * k + 458329 ∧ 531441 * k + 458329 < 1048576 * k + 904319) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 904859) 32 = 531441 * k + 458603 ∧ 531441 * k + 458603 < 1048576 * k + 904859) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 904863) 32 = 531441 * k + 458605 ∧ 531441 * k + 458605 < 1048576 * k + 904863) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 905439) 32 = 531441 * k + 458897 ∧ 531441 * k + 458897 < 1048576 * k + 905439) ∧
  (∀ k : Nat, CollatzM20Shard115.iterate (1048576 * k + 905919) 32 = 531441 * k + 459140 ∧ 531441 * k + 459140 < 1048576 * k + 905919) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 906367) 32 = 531441 * k + 459367 ∧ 531441 * k + 459367 < 1048576 * k + 906367) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 906623) 32 = 531441 * k + 459497 ∧ 531441 * k + 459497 < 1048576 * k + 906623) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 907355) 32 = 531441 * k + 459868 ∧ 531441 * k + 459868 < 1048576 * k + 907355) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 907623) 32 = 531441 * k + 460004 ∧ 531441 * k + 460004 < 1048576 * k + 907623) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908391) 32 = 531441 * k + 460393 ∧ 531441 * k + 460393 < 1048576 * k + 908391) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908415) 32 = 531441 * k + 460405 ∧ 531441 * k + 460405 < 1048576 * k + 908415) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908831) 32 = 531441 * k + 460616 ∧ 531441 * k + 460616 < 1048576 * k + 908831) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908955) 32 = 531441 * k + 460679 ∧ 531441 * k + 460679 < 1048576 * k + 908955) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 908991) 32 = 531441 * k + 460697 ∧ 531441 * k + 460697 < 1048576 * k + 908991) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909403) 32 = 531441 * k + 460906 ∧ 531441 * k + 460906 < 1048576 * k + 909403) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909535) 32 = 531441 * k + 460973 ∧ 531441 * k + 460973 < 1048576 * k + 909535) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909551) 32 = 531441 * k + 460981 ∧ 531441 * k + 460981 < 1048576 * k + 909551) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 909979) 32 = 531441 * k + 461198 ∧ 531441 * k + 461198 < 1048576 * k + 909979) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 910015) 32 = 531441 * k + 461216 ∧ 531441 * k + 461216 < 1048576 * k + 910015) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 911451) 32 = 531441 * k + 461944 ∧ 531441 * k + 461944 < 1048576 * k + 911451) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 911463) 32 = 531441 * k + 461950 ∧ 531441 * k + 461950 < 1048576 * k + 911463) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 911487) 32 = 531441 * k + 461962 ∧ 531441 * k + 461962 < 1048576 * k + 911487) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 912063) 32 = 531441 * k + 462254 ∧ 531441 * k + 462254 < 1048576 * k + 912063) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 913051) 32 = 531441 * k + 462755 ∧ 531441 * k + 462755 < 1048576 * k + 913051) ∧
  (∀ k : Nat, CollatzM20Shard116.iterate (1048576 * k + 913519) 32 = 531441 * k + 462992 ∧ 531441 * k + 462992 < 1048576 * k + 913519) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914523) 32 = 531441 * k + 463501 ∧ 531441 * k + 463501 < 1048576 * k + 914523) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914559) 32 = 531441 * k + 463519 ∧ 531441 * k + 463519 < 1048576 * k + 914559) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914655) 32 = 531441 * k + 463568 ∧ 531441 * k + 463568 < 1048576 * k + 914655) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914815) 32 = 531441 * k + 463649 ∧ 531441 * k + 463649 < 1048576 * k + 914815) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 914975) 32 = 531441 * k + 463730 ∧ 531441 * k + 463730 < 1048576 * k + 914975) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915135) 32 = 531441 * k + 463811 ∧ 531441 * k + 463811 < 1048576 * k + 915135) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915583) 32 = 531441 * k + 464038 ∧ 531441 * k + 464038 < 1048576 * k + 915583) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915679) 32 = 531441 * k + 464087 ∧ 531441 * k + 464087 < 1048576 * k + 915679) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 915839) 32 = 531441 * k + 464168 ∧ 531441 * k + 464168 < 1048576 * k + 915839) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 916159) 32 = 531441 * k + 464330 ∧ 531441 * k + 464330 < 1048576 * k + 916159) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 916591) 32 = 531441 * k + 464549 ∧ 531441 * k + 464549 < 1048576 * k + 916591) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 916927) 32 = 531441 * k + 464719 ∧ 531441 * k + 464719 < 1048576 * k + 916927) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 917595) 32 = 531441 * k + 465058 ∧ 531441 * k + 465058 < 1048576 * k + 917595) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 917607) 32 = 531441 * k + 465064 ∧ 531441 * k + 465064 < 1048576 * k + 917607) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 918495) 32 = 531441 * k + 465514 ∧ 531441 * k + 465514 < 1048576 * k + 918495) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 918527) 32 = 531441 * k + 465530 ∧ 531441 * k + 465530 < 1048576 * k + 918527) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 918619) 32 = 531441 * k + 465577 ∧ 531441 * k + 465577 < 1048576 * k + 918619) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 919195) 32 = 531441 * k + 465869 ∧ 531441 * k + 465869 < 1048576 * k + 919195) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 919663) 32 = 531441 * k + 466106 ∧ 531441 * k + 466106 < 1048576 * k + 919663) ∧
  (∀ k : Nat, CollatzM20Shard117.iterate (1048576 * k + 919711) 32 = 531441 * k + 466130 ∧ 531441 * k + 466130 < 1048576 * k + 919711) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 920687) 32 = 531441 * k + 466625 ∧ 531441 * k + 466625 < 1048576 * k + 920687) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 920735) 32 = 531441 * k + 466649 ∧ 531441 * k + 466649 < 1048576 * k + 920735) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921023) 32 = 531441 * k + 466795 ∧ 531441 * k + 466795 < 1048576 * k + 921023) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921119) 32 = 531441 * k + 466844 ∧ 531441 * k + 466844 < 1048576 * k + 921119) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921279) 32 = 531441 * k + 466925 ∧ 531441 * k + 466925 < 1048576 * k + 921279) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921759) 32 = 531441 * k + 467168 ∧ 531441 * k + 467168 < 1048576 * k + 921759) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 921851) 32 = 531441 * k + 467215 ∧ 531441 * k + 467215 < 1048576 * k + 921851) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 922439) 32 = 531441 * k + 467513 ∧ 531441 * k + 467513 < 1048576 * k + 922439) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 923775) 32 = 531441 * k + 468190 ∧ 531441 * k + 468190 < 1048576 * k + 923775) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 923871) 32 = 531441 * k + 468239 ∧ 531441 * k + 468239 < 1048576 * k + 923871) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 923899) 32 = 531441 * k + 468253 ∧ 531441 * k + 468253 < 1048576 * k + 923899) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924031) 32 = 531441 * k + 468320 ∧ 531441 * k + 468320 < 1048576 * k + 924031) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924351) 32 = 531441 * k + 468482 ∧ 531441 * k + 468482 < 1048576 * k + 924351) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924639) 32 = 531441 * k + 468628 ∧ 531441 * k + 468628 < 1048576 * k + 924639) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 924831) 32 = 531441 * k + 468725 ∧ 531441 * k + 468725 < 1048576 * k + 924831) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 925231) 32 = 531441 * k + 468928 ∧ 531441 * k + 468928 < 1048576 * k + 925231) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 925799) 32 = 531441 * k + 469216 ∧ 531441 * k + 469216 < 1048576 * k + 925799) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 926535) 32 = 531441 * k + 469589 ∧ 531441 * k + 469589 < 1048576 * k + 926535) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 926811) 32 = 531441 * k + 469729 ∧ 531441 * k + 469729 < 1048576 * k + 926811) ∧
  (∀ k : Nat, CollatzM20Shard118.iterate (1048576 * k + 927387) 32 = 531441 * k + 470021 ∧ 531441 * k + 470021 < 1048576 * k + 927387) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 927903) 32 = 531441 * k + 470282 ∧ 531441 * k + 470282 < 1048576 * k + 927903) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 927995) 32 = 531441 * k + 470329 ∧ 531441 * k + 470329 < 1048576 * k + 927995) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 928155) 32 = 531441 * k + 470410 ∧ 531441 * k + 470410 < 1048576 * k + 928155) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 928879) 32 = 531441 * k + 470777 ∧ 531441 * k + 470777 < 1048576 * k + 928879) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 928927) 32 = 531441 * k + 470801 ∧ 531441 * k + 470801 < 1048576 * k + 928927) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 929487) 32 = 531441 * k + 471085 ∧ 531441 * k + 471085 < 1048576 * k + 929487) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930111) 32 = 531441 * k + 471401 ∧ 531441 * k + 471401 < 1048576 * k + 930111) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930239) 32 = 531441 * k + 471466 ∧ 531441 * k + 471466 < 1048576 * k + 930239) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930335) 32 = 531441 * k + 471515 ∧ 531441 * k + 471515 < 1048576 * k + 930335) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930631) 32 = 531441 * k + 471665 ∧ 531441 * k + 471665 < 1048576 * k + 930631) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 930975) 32 = 531441 * k + 471839 ∧ 531441 * k + 471839 < 1048576 * k + 930975) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 931099) 32 = 531441 * k + 471902 ∧ 531441 * k + 471902 < 1048576 * k + 931099) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 931583) 32 = 531441 * k + 472147 ∧ 531441 * k + 472147 < 1048576 * k + 931583) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 932559) 32 = 531441 * k + 472642 ∧ 531441 * k + 472642 < 1048576 * k + 932559) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 932591) 32 = 531441 * k + 472658 ∧ 531441 * k + 472658 < 1048576 * k + 932591) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 932831) 32 = 531441 * k + 472780 ∧ 531441 * k + 472780 < 1048576 * k + 932831) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 933115) 32 = 531441 * k + 472924 ∧ 531441 * k + 472924 < 1048576 * k + 933115) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 934047) 32 = 531441 * k + 473396 ∧ 531441 * k + 473396 < 1048576 * k + 934047) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 934171) 32 = 531441 * k + 473459 ∧ 531441 * k + 473459 < 1048576 * k + 934171) ∧
  (∀ k : Nat, CollatzM20Shard119.iterate (1048576 * k + 934207) 32 = 531441 * k + 473477 ∧ 531441 * k + 473477 < 1048576 * k + 934207) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 934655) 32 = 531441 * k + 473704 ∧ 531441 * k + 473704 < 1048576 * k + 934655) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 935071) 32 = 531441 * k + 473915 ∧ 531441 * k + 473915 < 1048576 * k + 935071) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 935751) 32 = 531441 * k + 474260 ∧ 531441 * k + 474260 < 1048576 * k + 935751) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936187) 32 = 531441 * k + 474481 ∧ 531441 * k + 474481 < 1048576 * k + 936187) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936347) 32 = 531441 * k + 474562 ∧ 531441 * k + 474562 < 1048576 * k + 936347) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936679) 32 = 531441 * k + 474730 ∧ 531441 * k + 474730 < 1048576 * k + 936679) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 936775) 32 = 531441 * k + 474779 ∧ 531441 * k + 474779 < 1048576 * k + 936775) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 937243) 32 = 531441 * k + 475016 ∧ 531441 * k + 475016 < 1048576 * k + 937243) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 937279) 32 = 531441 * k + 475034 ∧ 531441 * k + 475034 < 1048576 * k + 937279) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 938267) 32 = 531441 * k + 475535 ∧ 531441 * k + 475535 < 1048576 * k + 938267) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 938303) 32 = 531441 * k + 475553 ∧ 531441 * k + 475553 < 1048576 * k + 938303) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 938703) 32 = 531441 * k + 475756 ∧ 531441 * k + 475756 < 1048576 * k + 938703) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 939647) 32 = 531441 * k + 476234 ∧ 531441 * k + 476234 < 1048576 * k + 939647) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 939751) 32 = 531441 * k + 476287 ∧ 531441 * k + 476287 < 1048576 * k + 939751) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 940351) 32 = 531441 * k + 476591 ∧ 531441 * k + 476591 < 1048576 * k + 940351) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 942491) 32 = 531441 * k + 477676 ∧ 531441 * k + 477676 < 1048576 * k + 942491) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 943263) 32 = 531441 * k + 478067 ∧ 531441 * k + 478067 < 1048576 * k + 943263) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 943423) 32 = 531441 * k + 478148 ∧ 531441 * k + 478148 < 1048576 * k + 943423) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 943983) 32 = 531441 * k + 478432 ∧ 531441 * k + 478432 < 1048576 * k + 943983) ∧
  (∀ k : Nat, CollatzM20Shard120.iterate (1048576 * k + 944447) 32 = 531441 * k + 478667 ∧ 531441 * k + 478667 < 1048576 * k + 944447) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 944879) 32 = 531441 * k + 478886 ∧ 531441 * k + 478886 < 1048576 * k + 944879) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 944967) 32 = 531441 * k + 478931 ∧ 531441 * k + 478931 < 1048576 * k + 944967) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 945895) 32 = 531441 * k + 479401 ∧ 531441 * k + 479401 < 1048576 * k + 945895) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946459) 32 = 531441 * k + 479687 ∧ 531441 * k + 479687 < 1048576 * k + 946459) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946655) 32 = 531441 * k + 479786 ∧ 531441 * k + 479786 < 1048576 * k + 946655) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946671) 32 = 531441 * k + 479794 ∧ 531441 * k + 479794 < 1048576 * k + 946671) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946815) 32 = 531441 * k + 479867 ∧ 531441 * k + 479867 < 1048576 * k + 946815) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 946895) 32 = 531441 * k + 479908 ∧ 531441 * k + 479908 < 1048576 * k + 946895) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 947227) 32 = 531441 * k + 480076 ∧ 531441 * k + 480076 < 1048576 * k + 947227) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 947839) 32 = 531441 * k + 480386 ∧ 531441 * k + 480386 < 1048576 * k + 947839) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 948719) 32 = 531441 * k + 480832 ∧ 531441 * k + 480832 < 1048576 * k + 948719) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 949567) 32 = 531441 * k + 481262 ∧ 531441 * k + 481262 < 1048576 * k + 949567) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 950299) 32 = 531441 * k + 481633 ∧ 531441 * k + 481633 < 1048576 * k + 950299) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 950767) 32 = 531441 * k + 481870 ∧ 531441 * k + 481870 < 1048576 * k + 950767) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 951911) 32 = 531441 * k + 482450 ∧ 531441 * k + 482450 < 1048576 * k + 951911) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 952639) 32 = 531441 * k + 482819 ∧ 531441 * k + 482819 < 1048576 * k + 952639) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 952959) 32 = 531441 * k + 482981 ∧ 531441 * k + 482981 < 1048576 * k + 952959) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 953199) 32 = 531441 * k + 483103 ∧ 531441 * k + 483103 < 1048576 * k + 953199) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 953703) 32 = 531441 * k + 483358 ∧ 531441 * k + 483358 < 1048576 * k + 953703) ∧
  (∀ k : Nat, CollatzM20Shard121.iterate (1048576 * k + 953839) 32 = 531441 * k + 483427 ∧ 531441 * k + 483427 < 1048576 * k + 953839) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 954087) 32 = 531441 * k + 483553 ∧ 531441 * k + 483553 < 1048576 * k + 954087) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 955327) 32 = 531441 * k + 484181 ∧ 531441 * k + 484181 < 1048576 * k + 955327) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 955751) 32 = 531441 * k + 484396 ∧ 531441 * k + 484396 < 1048576 * k + 955751) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 956007) 32 = 531441 * k + 484526 ∧ 531441 * k + 484526 < 1048576 * k + 956007) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 956443) 32 = 531441 * k + 484747 ∧ 531441 * k + 484747 < 1048576 * k + 956443) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 956911) 32 = 531441 * k + 484984 ∧ 531441 * k + 484984 < 1048576 * k + 956911) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 957799) 32 = 531441 * k + 485434 ∧ 531441 * k + 485434 < 1048576 * k + 957799) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 957935) 32 = 531441 * k + 485503 ∧ 531441 * k + 485503 < 1048576 * k + 957935) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 958367) 32 = 531441 * k + 485722 ∧ 531441 * k + 485722 < 1048576 * k + 958367) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 958399) 32 = 531441 * k + 485738 ∧ 531441 * k + 485738 < 1048576 * k + 958399) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 958943) 32 = 531441 * k + 486014 ∧ 531441 * k + 486014 < 1048576 * k + 958943) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 960871) 32 = 531441 * k + 486991 ∧ 531441 * k + 486991 < 1048576 * k + 960871) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 961275) 32 = 531441 * k + 487196 ∧ 531441 * k + 487196 < 1048576 * k + 961275) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 962495) 32 = 531441 * k + 487814 ∧ 531441 * k + 487814 < 1048576 * k + 962495) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 963519) 32 = 531441 * k + 488333 ∧ 531441 * k + 488333 < 1048576 * k + 963519) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 963943) 32 = 531441 * k + 488548 ∧ 531441 * k + 488548 < 1048576 * k + 963943) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 964199) 32 = 531441 * k + 488678 ∧ 531441 * k + 488678 < 1048576 * k + 964199) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 964635) 32 = 531441 * k + 488899 ∧ 531441 * k + 488899 < 1048576 * k + 964635) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 964967) 32 = 531441 * k + 489067 ∧ 531441 * k + 489067 < 1048576 * k + 964967) ∧
  (∀ k : Nat, CollatzM20Shard122.iterate (1048576 * k + 965223) 32 = 531441 * k + 489197 ∧ 531441 * k + 489197 < 1048576 * k + 965223) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 965371) 32 = 531441 * k + 489272 ∧ 531441 * k + 489272 < 1048576 * k + 965371) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 965407) 32 = 531441 * k + 489290 ∧ 531441 * k + 489290 < 1048576 * k + 965407) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 965887) 32 = 531441 * k + 489533 ∧ 531441 * k + 489533 < 1048576 * k + 965887) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 966127) 32 = 531441 * k + 489655 ∧ 531441 * k + 489655 < 1048576 * k + 966127) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 966591) 32 = 531441 * k + 489890 ∧ 531441 * k + 489890 < 1048576 * k + 966591) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 966703) 32 = 531441 * k + 489947 ∧ 531441 * k + 489947 < 1048576 * k + 966703) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 967583) 32 = 531441 * k + 490393 ∧ 531441 * k + 490393 < 1048576 * k + 967583) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 967935) 32 = 531441 * k + 490571 ∧ 531441 * k + 490571 < 1048576 * k + 967935) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 968063) 32 = 531441 * k + 490636 ∧ 531441 * k + 490636 < 1048576 * k + 968063) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 969467) 32 = 531441 * k + 491348 ∧ 531441 * k + 491348 < 1048576 * k + 969467) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 971551) 32 = 531441 * k + 492404 ∧ 531441 * k + 492404 < 1048576 * k + 971551) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972031) 32 = 531441 * k + 492647 ∧ 531441 * k + 492647 < 1048576 * k + 972031) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972159) 32 = 531441 * k + 492712 ∧ 531441 * k + 492712 < 1048576 * k + 972159) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972735) 32 = 531441 * k + 493004 ∧ 531441 * k + 493004 < 1048576 * k + 972735) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 972847) 32 = 531441 * k + 493061 ∧ 531441 * k + 493061 < 1048576 * k + 972847) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 973007) 32 = 531441 * k + 493142 ∧ 531441 * k + 493142 < 1048576 * k + 973007) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 973159) 32 = 531441 * k + 493219 ∧ 531441 * k + 493219 < 1048576 * k + 973159) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 973415) 32 = 531441 * k + 493349 ∧ 531441 * k + 493349 < 1048576 * k + 973415) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 974587) 32 = 531441 * k + 493943 ∧ 531441 * k + 493943 < 1048576 * k + 974587) ∧
  (∀ k : Nat, CollatzM20Shard123.iterate (1048576 * k + 974959) 32 = 531441 * k + 494131 ∧ 531441 * k + 494131 < 1048576 * k + 974959) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975071) 32 = 531441 * k + 494188 ∧ 531441 * k + 494188 < 1048576 * k + 975071) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975515) 32 = 531441 * k + 494413 ∧ 531441 * k + 494413 < 1048576 * k + 975515) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975551) 32 = 531441 * k + 494431 ∧ 531441 * k + 494431 < 1048576 * k + 975551) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 975611) 32 = 531441 * k + 494462 ∧ 531441 * k + 494462 < 1048576 * k + 975611) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 976127) 32 = 531441 * k + 494723 ∧ 531441 * k + 494723 < 1048576 * k + 976127) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977007) 32 = 531441 * k + 495169 ∧ 531441 * k + 495169 < 1048576 * k + 977007) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977103) 32 = 531441 * k + 495218 ∧ 531441 * k + 495218 < 1048576 * k + 977103) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977599) 32 = 531441 * k + 495469 ∧ 531441 * k + 495469 < 1048576 * k + 977599) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 977695) 32 = 531441 * k + 495518 ∧ 531441 * k + 495518 < 1048576 * k + 977695) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 978175) 32 = 531441 * k + 495761 ∧ 531441 * k + 495761 < 1048576 * k + 978175) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 978587) 32 = 531441 * k + 495970 ∧ 531441 * k + 495970 < 1048576 * k + 978587) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 979015) 32 = 531441 * k + 496187 ∧ 531441 * k + 496187 < 1048576 * k + 979015) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 979055) 32 = 531441 * k + 496207 ∧ 531441 * k + 496207 < 1048576 * k + 979055) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 979967) 32 = 531441 * k + 496669 ∧ 531441 * k + 496669 < 1048576 * k + 979967) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 980199) 32 = 531441 * k + 496787 ∧ 531441 * k + 496787 < 1048576 * k + 980199) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 980351) 32 = 531441 * k + 496864 ∧ 531441 * k + 496864 < 1048576 * k + 980351) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 980927) 32 = 531441 * k + 497156 ∧ 531441 * k + 497156 < 1048576 * k + 980927) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 981215) 32 = 531441 * k + 497302 ∧ 531441 * k + 497302 < 1048576 * k + 981215) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 981247) 32 = 531441 * k + 497318 ∧ 531441 * k + 497318 < 1048576 * k + 981247) ∧
  (∀ k : Nat, CollatzM20Shard124.iterate (1048576 * k + 981375) 32 = 531441 * k + 497383 ∧ 531441 * k + 497383 < 1048576 * k + 981375) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 981695) 32 = 531441 * k + 497545 ∧ 531441 * k + 497545 < 1048576 * k + 981695) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 982127) 32 = 531441 * k + 497764 ∧ 531441 * k + 497764 < 1048576 * k + 982127) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 983111) 32 = 531441 * k + 498263 ∧ 531441 * k + 498263 < 1048576 * k + 983111) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 983803) 32 = 531441 * k + 498614 ∧ 531441 * k + 498614 < 1048576 * k + 983803) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984063) 32 = 531441 * k + 498745 ∧ 531441 * k + 498745 < 1048576 * k + 984063) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984295) 32 = 531441 * k + 498863 ∧ 531441 * k + 498863 < 1048576 * k + 984295) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984479) 32 = 531441 * k + 498956 ∧ 531441 * k + 498956 < 1048576 * k + 984479) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 984731) 32 = 531441 * k + 499084 ∧ 531441 * k + 499084 < 1048576 * k + 984731) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 985199) 32 = 531441 * k + 499321 ∧ 531441 * k + 499321 < 1048576 * k + 985199) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 985295) 32 = 531441 * k + 499370 ∧ 531441 * k + 499370 < 1048576 * k + 985295) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986223) 32 = 531441 * k + 499840 ∧ 531441 * k + 499840 < 1048576 * k + 986223) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986319) 32 = 531441 * k + 499889 ∧ 531441 * k + 499889 < 1048576 * k + 986319) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986655) 32 = 531441 * k + 500059 ∧ 531441 * k + 500059 < 1048576 * k + 986655) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986815) 32 = 531441 * k + 500140 ∧ 531441 * k + 500140 < 1048576 * k + 986815) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 986911) 32 = 531441 * k + 500189 ∧ 531441 * k + 500189 < 1048576 * k + 986911) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 987207) 32 = 531441 * k + 500339 ∧ 531441 * k + 500339 < 1048576 * k + 987207) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 987391) 32 = 531441 * k + 500432 ∧ 531441 * k + 500432 < 1048576 * k + 987391) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 987551) 32 = 531441 * k + 500513 ∧ 531441 * k + 500513 < 1048576 * k + 987551) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 989031) 32 = 531441 * k + 501263 ∧ 531441 * k + 501263 < 1048576 * k + 989031) ∧
  (∀ k : Nat, CollatzM20Shard125.iterate (1048576 * k + 989343) 32 = 531441 * k + 501421 ∧ 531441 * k + 501421 < 1048576 * k + 989343) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 989407) 32 = 531441 * k + 501454 ∧ 531441 * k + 501454 < 1048576 * k + 989407) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 989567) 32 = 531441 * k + 501535 ∧ 531441 * k + 501535 < 1048576 * k + 989567) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 989887) 32 = 531441 * k + 501697 ∧ 531441 * k + 501697 < 1048576 * k + 989887) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 990623) 32 = 531441 * k + 502070 ∧ 531441 * k + 502070 < 1048576 * k + 990623) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 990747) 32 = 531441 * k + 502133 ∧ 531441 * k + 502133 < 1048576 * k + 990747) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 991391) 32 = 531441 * k + 502459 ∧ 531441 * k + 502459 < 1048576 * k + 991391) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 991647) 32 = 531441 * k + 502589 ∧ 531441 * k + 502589 < 1048576 * k + 991647) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992327) 32 = 531441 * k + 502934 ∧ 531441 * k + 502934 < 1048576 * k + 992327) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992487) 32 = 531441 * k + 503015 ∧ 531441 * k + 503015 < 1048576 * k + 992487) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992539) 32 = 531441 * k + 503041 ∧ 531441 * k + 503041 < 1048576 * k + 992539) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 992923) 32 = 531441 * k + 503236 ∧ 531441 * k + 503236 < 1048576 * k + 992923) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 993351) 32 = 531441 * k + 503453 ∧ 531441 * k + 503453 < 1048576 * k + 993351) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 993439) 32 = 531441 * k + 503497 ∧ 531441 * k + 503497 < 1048576 * k + 993439) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 993511) 32 = 531441 * k + 503534 ∧ 531441 * k + 503534 < 1048576 * k + 993511) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994175) 32 = 531441 * k + 503870 ∧ 531441 * k + 503870 < 1048576 * k + 994175) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994415) 32 = 531441 * k + 503992 ∧ 531441 * k + 503992 < 1048576 * k + 994415) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994463) 32 = 531441 * k + 504016 ∧ 531441 * k + 504016 < 1048576 * k + 994463) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994511) 32 = 531441 * k + 504041 ∧ 531441 * k + 504041 < 1048576 * k + 994511) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994587) 32 = 531441 * k + 504079 ∧ 531441 * k + 504079 < 1048576 * k + 994587) ∧
  (∀ k : Nat, CollatzM20Shard126.iterate (1048576 * k + 994843) 32 = 531441 * k + 504209 ∧ 531441 * k + 504209 < 1048576 * k + 994843) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 995871) 32 = 531441 * k + 504730 ∧ 531441 * k + 504730 < 1048576 * k + 995871) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996167) 32 = 531441 * k + 504880 ∧ 531441 * k + 504880 < 1048576 * k + 996167) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996199) 32 = 531441 * k + 504896 ∧ 531441 * k + 504896 < 1048576 * k + 996199) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996223) 32 = 531441 * k + 504908 ∧ 531441 * k + 504908 < 1048576 * k + 996223) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996511) 32 = 531441 * k + 505054 ∧ 531441 * k + 505054 < 1048576 * k + 996511) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 996635) 32 = 531441 * k + 505117 ∧ 531441 * k + 505117 < 1048576 * k + 996635) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 997223) 32 = 531441 * k + 505415 ∧ 531441 * k + 505415 < 1048576 * k + 997223) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 999583) 32 = 531441 * k + 506611 ∧ 531441 * k + 506611 < 1048576 * k + 999583) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 999707) 32 = 531441 * k + 506674 ∧ 531441 * k + 506674 < 1048576 * k + 999707) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 999839) 32 = 531441 * k + 506741 ∧ 531441 * k + 506741 < 1048576 * k + 999839) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1000319) 32 = 531441 * k + 506984 ∧ 531441 * k + 506984 < 1048576 * k + 1000319) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1000607) 32 = 531441 * k + 507130 ∧ 531441 * k + 507130 < 1048576 * k + 1000607) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1001543) 32 = 531441 * k + 507605 ∧ 531441 * k + 507605 < 1048576 * k + 1001543) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1001703) 32 = 531441 * k + 507686 ∧ 531441 * k + 507686 < 1048576 * k + 1001703) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1002311) 32 = 531441 * k + 507994 ∧ 531441 * k + 507994 < 1048576 * k + 1002311) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1002343) 32 = 531441 * k + 508010 ∧ 531441 * k + 508010 < 1048576 * k + 1002343) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1002779) 32 = 531441 * k + 508231 ∧ 531441 * k + 508231 < 1048576 * k + 1002779) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1003035) 32 = 531441 * k + 508361 ∧ 531441 * k + 508361 < 1048576 * k + 1003035) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1003803) 32 = 531441 * k + 508750 ∧ 531441 * k + 508750 < 1048576 * k + 1003803) ∧
  (∀ k : Nat, CollatzM20Shard127.iterate (1048576 * k + 1003839) 32 = 531441 * k + 508768 ∧ 531441 * k + 508768 < 1048576 * k + 1003839) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1004059) 32 = 531441 * k + 508880 ∧ 531441 * k + 508880 < 1048576 * k + 1004059) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1004415) 32 = 531441 * k + 509060 ∧ 531441 * k + 509060 < 1048576 * k + 1004415) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1005887) 32 = 531441 * k + 509806 ∧ 531441 * k + 509806 < 1048576 * k + 1005887) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1006463) 32 = 531441 * k + 510098 ∧ 531441 * k + 510098 < 1048576 * k + 1006463) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1007231) 32 = 531441 * k + 510487 ∧ 531441 * k + 510487 < 1048576 * k + 1007231) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1007783) 32 = 531441 * k + 510767 ∧ 531441 * k + 510767 < 1048576 * k + 1007783) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1008255) 32 = 531441 * k + 511006 ∧ 531441 * k + 511006 < 1048576 * k + 1008255) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1008799) 32 = 531441 * k + 511282 ∧ 531441 * k + 511282 < 1048576 * k + 1008799) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1009535) 32 = 531441 * k + 511655 ∧ 531441 * k + 511655 < 1048576 * k + 1009535) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1009983) 32 = 531441 * k + 511882 ∧ 531441 * k + 511882 < 1048576 * k + 1009983) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1010303) 32 = 531441 * k + 512044 ∧ 531441 * k + 512044 < 1048576 * k + 1010303) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1010415) 32 = 531441 * k + 512101 ∧ 531441 * k + 512101 < 1048576 * k + 1010415) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1010503) 32 = 531441 * k + 512146 ∧ 531441 * k + 512146 < 1048576 * k + 1010503) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1011879) 32 = 531441 * k + 512843 ∧ 531441 * k + 512843 < 1048576 * k + 1011879) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1011995) 32 = 531441 * k + 512902 ∧ 531441 * k + 512902 < 1048576 * k + 1011995) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1012251) 32 = 531441 * k + 513032 ∧ 531441 * k + 513032 < 1048576 * k + 1012251) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1012351) 32 = 531441 * k + 513082 ∧ 531441 * k + 513082 < 1048576 * k + 1012351) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1012767) 32 = 531441 * k + 513293 ∧ 531441 * k + 513293 < 1048576 * k + 1012767) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1013375) 32 = 531441 * k + 513601 ∧ 531441 * k + 513601 < 1048576 * k + 1013375) ∧
  (∀ k : Nat, CollatzM20Shard128.iterate (1048576 * k + 1014271) 32 = 531441 * k + 514055 ∧ 531441 * k + 514055 < 1048576 * k + 1014271) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1014951) 32 = 531441 * k + 514400 ∧ 531441 * k + 514400 < 1048576 * k + 1014951) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1014975) 32 = 531441 * k + 514412 ∧ 531441 * k + 514412 < 1048576 * k + 1014975) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015103) 32 = 531441 * k + 514477 ∧ 531441 * k + 514477 < 1048576 * k + 1015103) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015295) 32 = 531441 * k + 514574 ∧ 531441 * k + 514574 < 1048576 * k + 1015295) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015679) 32 = 531441 * k + 514769 ∧ 531441 * k + 514769 < 1048576 * k + 1015679) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015839) 32 = 531441 * k + 514850 ∧ 531441 * k + 514850 < 1048576 * k + 1015839) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1015975) 32 = 531441 * k + 514919 ∧ 531441 * k + 514919 < 1048576 * k + 1015975) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1016319) 32 = 531441 * k + 515093 ∧ 531441 * k + 515093 < 1048576 * k + 1016319) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1017447) 32 = 531441 * k + 515665 ∧ 531441 * k + 515665 < 1048576 * k + 1017447) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1017851) 32 = 531441 * k + 515870 ∧ 531441 * k + 515870 < 1048576 * k + 1017851) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018023) 32 = 531441 * k + 515957 ∧ 531441 * k + 515957 < 1048576 * k + 1018023) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018175) 32 = 531441 * k + 516034 ∧ 531441 * k + 516034 < 1048576 * k + 1018175) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018495) 32 = 531441 * k + 516196 ∧ 531441 * k + 516196 < 1048576 * k + 1018495) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1018911) 32 = 531441 * k + 516407 ∧ 531441 * k + 516407 < 1048576 * k + 1018911) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019035) 32 = 531441 * k + 516470 ∧ 531441 * k + 516470 < 1048576 * k + 1019035) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019071) 32 = 531441 * k + 516488 ∧ 531441 * k + 516488 < 1048576 * k + 1019071) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019391) 32 = 531441 * k + 516650 ∧ 531441 * k + 516650 < 1048576 * k + 1019391) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1019935) 32 = 531441 * k + 516926 ∧ 531441 * k + 516926 < 1048576 * k + 1019935) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1021095) 32 = 531441 * k + 517514 ∧ 531441 * k + 517514 < 1048576 * k + 1021095) ∧
  (∀ k : Nat, CollatzM20Shard129.iterate (1048576 * k + 1021543) 32 = 531441 * k + 517741 ∧ 531441 * k + 517741 < 1048576 * k + 1021543) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1021947) 32 = 531441 * k + 517946 ∧ 531441 * k + 517946 < 1048576 * k + 1021947) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1022119) 32 = 531441 * k + 518033 ∧ 531441 * k + 518033 < 1048576 * k + 1022119) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1022463) 32 = 531441 * k + 518207 ∧ 531441 * k + 518207 < 1048576 * k + 1022463) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023131) 32 = 531441 * k + 518546 ∧ 531441 * k + 518546 < 1048576 * k + 1023131) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023167) 32 = 531441 * k + 518564 ∧ 531441 * k + 518564 < 1048576 * k + 1023167) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023279) 32 = 531441 * k + 518621 ∧ 531441 * k + 518621 < 1048576 * k + 1023279) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1023487) 32 = 531441 * k + 518726 ∧ 531441 * k + 518726 < 1048576 * k + 1023487) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1024047) 32 = 531441 * k + 519010 ∧ 531441 * k + 519010 < 1048576 * k + 1024047) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1024327) 32 = 531441 * k + 519152 ∧ 531441 * k + 519152 < 1048576 * k + 1024327) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1024479) 32 = 531441 * k + 519229 ∧ 531441 * k + 519229 < 1048576 * k + 1024479) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1025535) 32 = 531441 * k + 519764 ∧ 531441 * k + 519764 < 1048576 * k + 1025535) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1026043) 32 = 531441 * k + 520022 ∧ 531441 * k + 520022 < 1048576 * k + 1026043) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1027239) 32 = 531441 * k + 520628 ∧ 531441 * k + 520628 < 1048576 * k + 1027239) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1027867) 32 = 531441 * k + 520946 ∧ 531441 * k + 520946 < 1048576 * k + 1027867) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1028127) 32 = 531441 * k + 521078 ∧ 531441 * k + 521078 < 1048576 * k + 1028127) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1028287) 32 = 531441 * k + 521159 ∧ 531441 * k + 521159 < 1048576 * k + 1028287) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1028607) 32 = 531441 * k + 521321 ∧ 531441 * k + 521321 < 1048576 * k + 1028607) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1029055) 32 = 531441 * k + 521548 ∧ 531441 * k + 521548 < 1048576 * k + 1029055) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1029311) 32 = 531441 * k + 521678 ∧ 531441 * k + 521678 < 1048576 * k + 1029311) ∧
  (∀ k : Nat, CollatzM20Shard130.iterate (1048576 * k + 1029423) 32 = 531441 * k + 521735 ∧ 531441 * k + 521735 < 1048576 * k + 1029423) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1029583) 32 = 531441 * k + 521816 ∧ 531441 * k + 521816 < 1048576 * k + 1029583) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1029631) 32 = 531441 * k + 521840 ∧ 531441 * k + 521840 < 1048576 * k + 1029631) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1029735) 32 = 531441 * k + 521893 ∧ 531441 * k + 521893 < 1048576 * k + 1029735) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1030311) 32 = 531441 * k + 522185 ∧ 531441 * k + 522185 < 1048576 * k + 1030311) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1030759) 32 = 531441 * k + 522412 ∧ 531441 * k + 522412 < 1048576 * k + 1030759) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1031163) 32 = 531441 * k + 522617 ∧ 531441 * k + 522617 < 1048576 * k + 1031163) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1031323) 32 = 531441 * k + 522698 ∧ 531441 * k + 522698 < 1048576 * k + 1031323) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1031839) 32 = 531441 * k + 522959 ∧ 531441 * k + 522959 < 1048576 * k + 1031839) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032127) 32 = 531441 * k + 523105 ∧ 531441 * k + 523105 < 1048576 * k + 1032127) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032187) 32 = 531441 * k + 523136 ∧ 531441 * k + 523136 < 1048576 * k + 1032187) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032239) 32 = 531441 * k + 523162 ∧ 531441 * k + 523162 < 1048576 * k + 1032239) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1032347) 32 = 531441 * k + 523217 ∧ 531441 * k + 523217 < 1048576 * k + 1032347) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1033679) 32 = 531441 * k + 523892 ∧ 531441 * k + 523892 < 1048576 * k + 1033679) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1035003) 32 = 531441 * k + 524563 ∧ 531441 * k + 524563 < 1048576 * k + 1035003) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1035035) 32 = 531441 * k + 524579 ∧ 531441 * k + 524579 < 1048576 * k + 1035035) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1035519) 32 = 531441 * k + 524824 ∧ 531441 * k + 524824 < 1048576 * k + 1035519) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036059) 32 = 531441 * k + 525098 ∧ 531441 * k + 525098 < 1048576 * k + 1036059) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036527) 32 = 531441 * k + 525335 ∧ 531441 * k + 525335 < 1048576 * k + 1036527) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036615) 32 = 531441 * k + 525380 ∧ 531441 * k + 525380 < 1048576 * k + 1036615) ∧
  (∀ k : Nat, CollatzM20Shard131.iterate (1048576 * k + 1036775) 32 = 531441 * k + 525461 ∧ 531441 * k + 525461 < 1048576 * k + 1036775) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1037503) 32 = 531441 * k + 525830 ∧ 531441 * k + 525830 < 1048576 * k + 1037503) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1037823) 32 = 531441 * k + 525992 ∧ 531441 * k + 525992 < 1048576 * k + 1037823) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038271) 32 = 531441 * k + 526219 ∧ 531441 * k + 526219 < 1048576 * k + 1038271) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038383) 32 = 531441 * k + 526276 ∧ 531441 * k + 526276 < 1048576 * k + 1038383) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038543) 32 = 531441 * k + 526357 ∧ 531441 * k + 526357 < 1048576 * k + 1038543) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038591) 32 = 531441 * k + 526381 ∧ 531441 * k + 526381 < 1048576 * k + 1038591) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1038951) 32 = 531441 * k + 526564 ∧ 531441 * k + 526564 < 1048576 * k + 1038951) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1039599) 32 = 531441 * k + 526892 ∧ 531441 * k + 526892 < 1048576 * k + 1039599) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1040379) 32 = 531441 * k + 527288 ∧ 531441 * k + 527288 < 1048576 * k + 1040379) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1040539) 32 = 531441 * k + 527369 ∧ 531441 * k + 527369 < 1048576 * k + 1040539) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1040871) 32 = 531441 * k + 527537 ∧ 531441 * k + 527537 < 1048576 * k + 1040871) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041147) 32 = 531441 * k + 527677 ∧ 531441 * k + 527677 < 1048576 * k + 1041147) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041179) 32 = 531441 * k + 527693 ∧ 531441 * k + 527693 < 1048576 * k + 1041179) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041663) 32 = 531441 * k + 527938 ∧ 531441 * k + 527938 < 1048576 * k + 1041663) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1041871) 32 = 531441 * k + 528044 ∧ 531441 * k + 528044 < 1048576 * k + 1041871) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1042639) 32 = 531441 * k + 528433 ∧ 531441 * k + 528433 < 1048576 * k + 1042639) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1042895) 32 = 531441 * k + 528563 ∧ 531441 * k + 528563 < 1048576 * k + 1042895) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1043231) 32 = 531441 * k + 528733 ∧ 531441 * k + 528733 < 1048576 * k + 1043231) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1043263) 32 = 531441 * k + 528749 ∧ 531441 * k + 528749 < 1048576 * k + 1043263) ∧
  (∀ k : Nat, CollatzM20Shard132.iterate (1048576 * k + 1043559) 32 = 531441 * k + 528899 ∧ 531441 * k + 528899 < 1048576 * k + 1043559) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1043583) 32 = 531441 * k + 528911 ∧ 531441 * k + 528911 < 1048576 * k + 1043583) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1043711) 32 = 531441 * k + 528976 ∧ 531441 * k + 528976 < 1048576 * k + 1043711) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1044127) 32 = 531441 * k + 529187 ∧ 531441 * k + 529187 < 1048576 * k + 1044127) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1045607) 32 = 531441 * k + 529937 ∧ 531441 * k + 529937 < 1048576 * k + 1045607) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1045735) 32 = 531441 * k + 530002 ∧ 531441 * k + 530002 < 1048576 * k + 1045735) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1045919) 32 = 531441 * k + 530095 ∧ 531441 * k + 530095 < 1048576 * k + 1045919) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1046463) 32 = 531441 * k + 530371 ∧ 531441 * k + 530371 < 1048576 * k + 1046463) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1046619) 32 = 531441 * k + 530450 ∧ 531441 * k + 530450 < 1048576 * k + 1046619) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1046783) 32 = 531441 * k + 530533 ∧ 531441 * k + 530533 < 1048576 * k + 1046783) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1047359) 32 = 531441 * k + 530825 ∧ 531441 * k + 530825 < 1048576 * k + 1047359) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1047679) 32 = 531441 * k + 530987 ∧ 531441 * k + 530987 < 1048576 * k + 1047679) ∧
  (∀ k : Nat, CollatzM20Shard133.iterate (1048576 * k + 1047967) 32 = 531441 * k + 531133 ∧ 531441 * k + 531133 < 1048576 * k + 1047967) := by
  exact ⟨CollatzM20Shard001.descent_mod1048576_239,
    ⟨CollatzM20Shard001.descent_mod1048576_487,
    ⟨CollatzM20Shard001.descent_mod1048576_763,
    ⟨CollatzM20Shard001.descent_mod1048576_1127,
    ⟨CollatzM20Shard001.descent_mod1048576_1255,
    ⟨CollatzM20Shard001.descent_mod1048576_1439,
    ⟨CollatzM20Shard001.descent_mod1048576_1511,
    ⟨CollatzM20Shard001.descent_mod1048576_2139,
    ⟨CollatzM20Shard001.descent_mod1048576_2175,
    ⟨CollatzM20Shard001.descent_mod1048576_2255,
    ⟨CollatzM20Shard001.descent_mod1048576_2511,
    ⟨CollatzM20Shard001.descent_mod1048576_2879,
    ⟨CollatzM20Shard001.descent_mod1048576_3199,
    ⟨CollatzM20Shard001.descent_mod1048576_3279,
    ⟨CollatzM20Shard001.descent_mod1048576_3871,
    ⟨CollatzM20Shard001.descent_mod1048576_4167,
    ⟨CollatzM20Shard001.descent_mod1048576_4351,
    ⟨CollatzM20Shard001.descent_mod1048576_4511,
    ⟨CollatzM20Shard001.descent_mod1048576_5211,
    ⟨CollatzM20Shard001.descent_mod1048576_5223,
    ⟨CollatzM20Shard002.descent_mod1048576_5247,
    ⟨CollatzM20Shard002.descent_mod1048576_5679,
    ⟨CollatzM20Shard002.descent_mod1048576_6235,
    ⟨CollatzM20Shard002.descent_mod1048576_7271,
    ⟨CollatzM20Shard002.descent_mod1048576_7583,
    ⟨CollatzM20Shard002.descent_mod1048576_7615,
    ⟨CollatzM20Shard002.descent_mod1048576_7707,
    ⟨CollatzM20Shard002.descent_mod1048576_7999,
    ⟨CollatzM20Shard002.descent_mod1048576_8039,
    ⟨CollatzM20Shard002.descent_mod1048576_8283,
    ⟨CollatzM20Shard002.descent_mod1048576_8319,
    ⟨CollatzM20Shard002.descent_mod1048576_8607,
    ⟨CollatzM20Shard002.descent_mod1048576_8751,
    ⟨CollatzM20Shard002.descent_mod1048576_9023,
    ⟨CollatzM20Shard002.descent_mod1048576_9063,
    ⟨CollatzM20Shard002.descent_mod1048576_9343,
    ⟨CollatzM20Shard002.descent_mod1048576_9447,
    ⟨CollatzM20Shard002.descent_mod1048576_9703,
    ⟨CollatzM20Shard002.descent_mod1048576_10311,
    ⟨CollatzM20Shard002.descent_mod1048576_10343,
    ⟨CollatzM20Shard003.descent_mod1048576_10471,
    ⟨CollatzM20Shard003.descent_mod1048576_10687,
    ⟨CollatzM20Shard003.descent_mod1048576_11111,
    ⟨CollatzM20Shard003.descent_mod1048576_11355,
    ⟨CollatzM20Shard003.descent_mod1048576_11471,
    ⟨CollatzM20Shard003.descent_mod1048576_11711,
    ⟨CollatzM20Shard003.descent_mod1048576_11803,
    ⟨CollatzM20Shard003.descent_mod1048576_12379,
    ⟨CollatzM20Shard003.descent_mod1048576_12847,
    ⟨CollatzM20Shard003.descent_mod1048576_13159,
    ⟨CollatzM20Shard003.descent_mod1048576_13871,
    ⟨CollatzM20Shard003.descent_mod1048576_14183,
    ⟨CollatzM20Shard003.descent_mod1048576_14463,
    ⟨CollatzM20Shard003.descent_mod1048576_14587,
    ⟨CollatzM20Shard003.descent_mod1048576_15231,
    ⟨CollatzM20Shard003.descent_mod1048576_15807,
    ⟨CollatzM20Shard003.descent_mod1048576_16079,
    ⟨CollatzM20Shard003.descent_mod1048576_16487,
    ⟨CollatzM20Shard003.descent_mod1048576_16799,
    ⟨CollatzM20Shard003.descent_mod1048576_16943,
    ⟨CollatzM20Shard004.descent_mod1048576_17215,
    ⟨CollatzM20Shard004.descent_mod1048576_17375,
    ⟨CollatzM20Shard004.descent_mod1048576_17499,
    ⟨CollatzM20Shard004.descent_mod1048576_17535,
    ⟨CollatzM20Shard004.descent_mod1048576_18127,
    ⟨CollatzM20Shard004.descent_mod1048576_18303,
    ⟨CollatzM20Shard004.descent_mod1048576_18503,
    ⟨CollatzM20Shard004.descent_mod1048576_18663,
    ⟨CollatzM20Shard004.descent_mod1048576_18879,
    ⟨CollatzM20Shard004.descent_mod1048576_19303,
    ⟨CollatzM20Shard004.descent_mod1048576_19995,
    ⟨CollatzM20Shard004.descent_mod1048576_20223,
    ⟨CollatzM20Shard004.descent_mod1048576_20571,
    ⟨CollatzM20Shard004.descent_mod1048576_21019,
    ⟨CollatzM20Shard004.descent_mod1048576_21247,
    ⟨CollatzM20Shard004.descent_mod1048576_21375,
    ⟨CollatzM20Shard004.descent_mod1048576_22223,
    ⟨CollatzM20Shard004.descent_mod1048576_23087,
    ⟨CollatzM20Shard004.descent_mod1048576_23271,
    ⟨CollatzM20Shard004.descent_mod1048576_23295,
    ⟨CollatzM20Shard005.descent_mod1048576_23423,
    ⟨CollatzM20Shard005.descent_mod1048576_23519,
    ⟨CollatzM20Shard005.descent_mod1048576_25319,
    ⟨CollatzM20Shard005.descent_mod1048576_25631,
    ⟨CollatzM20Shard005.descent_mod1048576_26319,
    ⟨CollatzM20Shard005.descent_mod1048576_26495,
    ⟨CollatzM20Shard005.descent_mod1048576_26875,
    ⟨CollatzM20Shard005.descent_mod1048576_27035,
    ⟨CollatzM20Shard005.descent_mod1048576_27391,
    ⟨CollatzM20Shard005.descent_mod1048576_27679,
    ⟨CollatzM20Shard005.descent_mod1048576_28367,
    ⟨CollatzM20Shard005.descent_mod1048576_29211,
    ⟨CollatzM20Shard005.descent_mod1048576_29415,
    ⟨CollatzM20Shard005.descent_mod1048576_29727,
    ⟨CollatzM20Shard005.descent_mod1048576_31131,
    ⟨CollatzM20Shard005.descent_mod1048576_31279,
    ⟨CollatzM20Shard005.descent_mod1048576_31439,
    ⟨CollatzM20Shard005.descent_mod1048576_31487,
    ⟨CollatzM20Shard005.descent_mod1048576_32047,
    ⟨CollatzM20Shard005.descent_mod1048576_32639,
    ⟨CollatzM20Shard006.descent_mod1048576_32799,
    ⟨CollatzM20Shard006.descent_mod1048576_32935,
    ⟨CollatzM20Shard006.descent_mod1048576_33511,
    ⟨CollatzM20Shard006.descent_mod1048576_33535,
    ⟨CollatzM20Shard006.descent_mod1048576_33819,
    ⟨CollatzM20Shard006.descent_mod1048576_34983,
    ⟨CollatzM20Shard006.descent_mod1048576_35327,
    ⟨CollatzM20Shard006.descent_mod1048576_35559,
    ⟨CollatzM20Shard006.descent_mod1048576_35867,
    ⟨CollatzM20Shard006.descent_mod1048576_35871,
    ⟨CollatzM20Shard006.descent_mod1048576_35995,
    ⟨CollatzM20Shard006.descent_mod1048576_36895,
    ⟨CollatzM20Shard006.descent_mod1048576_37359,
    ⟨CollatzM20Shard006.descent_mod1048576_37375,
    ⟨CollatzM20Shard006.descent_mod1048576_37583,
    ⟨CollatzM20Shard006.descent_mod1048576_38631,
    ⟨CollatzM20Shard006.descent_mod1048576_39079,
    ⟨CollatzM20Shard006.descent_mod1048576_39323,
    ⟨CollatzM20Shard006.descent_mod1048576_39423,
    ⟨CollatzM20Shard006.descent_mod1048576_39963,
    ⟨CollatzM20Shard007.descent_mod1048576_40091,
    ⟨CollatzM20Shard007.descent_mod1048576_40127,
    ⟨CollatzM20Shard007.descent_mod1048576_40239,
    ⟨CollatzM20Shard007.descent_mod1048576_40347,
    ⟨CollatzM20Shard007.descent_mod1048576_40447,
    ⟨CollatzM20Shard007.descent_mod1048576_41455,
    ⟨CollatzM20Shard007.descent_mod1048576_42495,
    ⟨CollatzM20Shard007.descent_mod1048576_43003,
    ⟨CollatzM20Shard007.descent_mod1048576_44059,
    ⟨CollatzM20Shard007.descent_mod1048576_44199,
    ⟨CollatzM20Shard007.descent_mod1048576_44391,
    ⟨CollatzM20Shard007.descent_mod1048576_44527,
    ⟨CollatzM20Shard007.descent_mod1048576_44775,
    ⟨CollatzM20Shard007.descent_mod1048576_45087,
    ⟨CollatzM20Shard007.descent_mod1048576_45551,
    ⟨CollatzM20Shard007.descent_mod1048576_45567,
    ⟨CollatzM20Shard007.descent_mod1048576_46107,
    ⟨CollatzM20Shard007.descent_mod1048576_46271,
    ⟨CollatzM20Shard007.descent_mod1048576_46383,
    ⟨CollatzM20Shard007.descent_mod1048576_46543,
    ⟨CollatzM20Shard008.descent_mod1048576_46591,
    ⟨CollatzM20Shard008.descent_mod1048576_46875,
    ⟨CollatzM20Shard008.descent_mod1048576_47271,
    ⟨CollatzM20Shard008.descent_mod1048576_47599,
    ⟨CollatzM20Shard008.descent_mod1048576_47899,
    ⟨CollatzM20Shard008.descent_mod1048576_48283,
    ⟨CollatzM20Shard008.descent_mod1048576_48487,
    ⟨CollatzM20Shard008.descent_mod1048576_48539,
    ⟨CollatzM20Shard008.descent_mod1048576_49147,
    ⟨CollatzM20Shard008.descent_mod1048576_49179,
    ⟨CollatzM20Shard008.descent_mod1048576_49307,
    ⟨CollatzM20Shard008.descent_mod1048576_49947,
    ⟨CollatzM20Shard008.descent_mod1048576_50639,
    ⟨CollatzM20Shard008.descent_mod1048576_50671,
    ⟨CollatzM20Shard008.descent_mod1048576_51263,
    ⟨CollatzM20Shard008.descent_mod1048576_51559,
    ⟨CollatzM20Shard008.descent_mod1048576_51695,
    ⟨CollatzM20Shard008.descent_mod1048576_51995,
    ⟨CollatzM20Shard008.descent_mod1048576_52463,
    ⟨CollatzM20Shard008.descent_mod1048576_52583,
    ⟨CollatzM20Shard009.descent_mod1048576_53019,
    ⟨CollatzM20Shard009.descent_mod1048576_53575,
    ⟨CollatzM20Shard009.descent_mod1048576_53735,
    ⟨CollatzM20Shard009.descent_mod1048576_54463,
    ⟨CollatzM20Shard009.descent_mod1048576_54631,
    ⟨CollatzM20Shard009.descent_mod1048576_54783,
    ⟨CollatzM20Shard009.descent_mod1048576_55323,
    ⟨CollatzM20Shard009.descent_mod1048576_55359,
    ⟨CollatzM20Shard009.descent_mod1048576_56559,
    ⟨CollatzM20Shard009.descent_mod1048576_56815,
    ⟨CollatzM20Shard009.descent_mod1048576_57339,
    ⟨CollatzM20Shard009.descent_mod1048576_57499,
    ⟨CollatzM20Shard009.descent_mod1048576_57703,
    ⟨CollatzM20Shard009.descent_mod1048576_57831,
    ⟨CollatzM20Shard009.descent_mod1048576_58139,
    ⟨CollatzM20Shard009.descent_mod1048576_58727,
    ⟨CollatzM20Shard009.descent_mod1048576_58751,
    ⟨CollatzM20Shard009.descent_mod1048576_58831,
    ⟨CollatzM20Shard009.descent_mod1048576_59455,
    ⟨CollatzM20Shard009.descent_mod1048576_59855,
    ⟨CollatzM20Shard010.descent_mod1048576_59887,
    ⟨CollatzM20Shard010.descent_mod1048576_61087,
    ⟨CollatzM20Shard010.descent_mod1048576_62107,
    ⟨CollatzM20Shard010.descent_mod1048576_63847,
    ⟨CollatzM20Shard010.descent_mod1048576_64155,
    ⟨CollatzM20Shard010.descent_mod1048576_64575,
    ⟨CollatzM20Shard010.descent_mod1048576_64615,
    ⟨CollatzM20Shard010.descent_mod1048576_64895,
    ⟨CollatzM20Shard010.descent_mod1048576_65599,
    ⟨CollatzM20Shard010.descent_mod1048576_65647,
    ⟨CollatzM20Shard010.descent_mod1048576_65775,
    ⟨CollatzM20Shard010.descent_mod1048576_66023,
    ⟨CollatzM20Shard010.descent_mod1048576_66919,
    ⟨CollatzM20Shard010.descent_mod1048576_67047,
    ⟨CollatzM20Shard010.descent_mod1048576_67687,
    ⟨CollatzM20Shard010.descent_mod1048576_68047,
    ⟨CollatzM20Shard010.descent_mod1048576_68251,
    ⟨CollatzM20Shard010.descent_mod1048576_68287,
    ⟨CollatzM20Shard010.descent_mod1048576_68415,
    ⟨CollatzM20Shard010.descent_mod1048576_68735,
    ⟨CollatzM20Shard011.descent_mod1048576_69631,
    ⟨CollatzM20Shard011.descent_mod1048576_69743,
    ⟨CollatzM20Shard011.descent_mod1048576_70655,
    ⟨CollatzM20Shard011.descent_mod1048576_70759,
    ⟨CollatzM20Shard011.descent_mod1048576_70783,
    ⟨CollatzM20Shard011.descent_mod1048576_71039,
    ⟨CollatzM20Shard011.descent_mod1048576_71679,
    ⟨CollatzM20Shard011.descent_mod1048576_71771,
    ⟨CollatzM20Shard011.descent_mod1048576_72347,
    ⟨CollatzM20Shard011.descent_mod1048576_72359,
    ⟨CollatzM20Shard011.descent_mod1048576_72807,
    ⟨CollatzM20Shard011.descent_mod1048576_72815,
    ⟨CollatzM20Shard011.descent_mod1048576_73791,
    ⟨CollatzM20Shard011.descent_mod1048576_73819,
    ⟨CollatzM20Shard011.descent_mod1048576_73839,
    ⟨CollatzM20Shard011.descent_mod1048576_73951,
    ⟨CollatzM20Shard011.descent_mod1048576_74395,
    ⟨CollatzM20Shard011.descent_mod1048576_74559,
    ⟨CollatzM20Shard011.descent_mod1048576_74719,
    ⟨CollatzM20Shard011.descent_mod1048576_74751,
    ⟨CollatzM20Shard012.descent_mod1048576_74879,
    ⟨CollatzM20Shard012.descent_mod1048576_75239,
    ⟨CollatzM20Shard012.descent_mod1048576_75879,
    ⟨CollatzM20Shard012.descent_mod1048576_75887,
    ⟨CollatzM20Shard012.descent_mod1048576_76455,
    ⟨CollatzM20Shard012.descent_mod1048576_77467,
    ⟨CollatzM20Shard012.descent_mod1048576_77915,
    ⟨CollatzM20Shard012.descent_mod1048576_78847,
    ⟨CollatzM20Shard012.descent_mod1048576_78959,
    ⟨CollatzM20Shard012.descent_mod1048576_79407,
    ⟨CollatzM20Shard012.descent_mod1048576_79983,
    ⟨CollatzM20Shard012.descent_mod1048576_79999,
    ⟨CollatzM20Shard012.descent_mod1048576_80095,
    ⟨CollatzM20Shard012.descent_mod1048576_80255,
    ⟨CollatzM20Shard012.descent_mod1048576_80551,
    ⟨CollatzM20Shard012.descent_mod1048576_80575,
    ⟨CollatzM20Shard012.descent_mod1048576_81343,
    ⟨CollatzM20Shard012.descent_mod1048576_82023,
    ⟨CollatzM20Shard012.descent_mod1048576_82479,
    ⟨CollatzM20Shard012.descent_mod1048576_82751,
    ⟨CollatzM20Shard013.descent_mod1048576_82911,
    ⟨CollatzM20Shard013.descent_mod1048576_83035,
    ⟨CollatzM20Shard013.descent_mod1048576_83071,
    ⟨CollatzM20Shard013.descent_mod1048576_83227,
    ⟨CollatzM20Shard013.descent_mod1048576_83611,
    ⟨CollatzM20Shard013.descent_mod1048576_84415,
    ⟨CollatzM20Shard013.descent_mod1048576_85103,
    ⟨CollatzM20Shard013.descent_mod1048576_85671,
    ⟨CollatzM20Shard013.descent_mod1048576_85711,
    ⟨CollatzM20Shard013.descent_mod1048576_86107,
    ⟨CollatzM20Shard013.descent_mod1048576_86695,
    ⟨CollatzM20Shard013.descent_mod1048576_87199,
    ⟨CollatzM20Shard013.descent_mod1048576_87323,
    ⟨CollatzM20Shard013.descent_mod1048576_88175,
    ⟨CollatzM20Shard013.descent_mod1048576_88623,
    ⟨CollatzM20Shard013.descent_mod1048576_88783,
    ⟨CollatzM20Shard013.descent_mod1048576_89055,
    ⟨CollatzM20Shard013.descent_mod1048576_90271,
    ⟨CollatzM20Shard013.descent_mod1048576_90395,
    ⟨CollatzM20Shard013.descent_mod1048576_90863,
    ⟨CollatzM20Shard014.descent_mod1048576_90879,
    ⟨CollatzM20Shard014.descent_mod1048576_91419,
    ⟨CollatzM20Shard014.descent_mod1048576_91855,
    ⟨CollatzM20Shard014.descent_mod1048576_92411,
    ⟨CollatzM20Shard014.descent_mod1048576_92571,
    ⟨CollatzM20Shard014.descent_mod1048576_92903,
    ⟨CollatzM20Shard014.descent_mod1048576_93467,
    ⟨CollatzM20Shard014.descent_mod1048576_93903,
    ⟨CollatzM20Shard014.descent_mod1048576_93935,
    ⟨CollatzM20Shard014.descent_mod1048576_94887,
    ⟨CollatzM20Shard014.descent_mod1048576_95047,
    ⟨CollatzM20Shard014.descent_mod1048576_95975,
    ⟨CollatzM20Shard014.descent_mod1048576_96539,
    ⟨CollatzM20Shard014.descent_mod1048576_96575,
    ⟨CollatzM20Shard014.descent_mod1048576_96667,
    ⟨CollatzM20Shard014.descent_mod1048576_96815,
    ⟨CollatzM20Shard014.descent_mod1048576_96975,
    ⟨CollatzM20Shard014.descent_mod1048576_97023,
    ⟨CollatzM20Shard014.descent_mod1048576_97563,
    ⟨CollatzM20Shard014.descent_mod1048576_97919,
    ⟨CollatzM20Shard015.descent_mod1048576_98031,
    ⟨CollatzM20Shard015.descent_mod1048576_98943,
    ⟨CollatzM20Shard015.descent_mod1048576_99047,
    ⟨CollatzM20Shard015.descent_mod1048576_99055,
    ⟨CollatzM20Shard015.descent_mod1048576_99071,
    ⟨CollatzM20Shard015.descent_mod1048576_99487,
    ⟨CollatzM20Shard015.descent_mod1048576_99967,
    ⟨CollatzM20Shard015.descent_mod1048576_101095,
    ⟨CollatzM20Shard015.descent_mod1048576_101191,
    ⟨CollatzM20Shard015.descent_mod1048576_102127,
    ⟨CollatzM20Shard015.descent_mod1048576_102683,
    ⟨CollatzM20Shard015.descent_mod1048576_103039,
    ⟨CollatzM20Shard015.descent_mod1048576_103119,
    ⟨CollatzM20Shard015.descent_mod1048576_103451,
    ⟨CollatzM20Shard015.descent_mod1048576_104167,
    ⟨CollatzM20Shard015.descent_mod1048576_104859,
    ⟨CollatzM20Shard015.descent_mod1048576_104927,
    ⟨CollatzM20Shard015.descent_mod1048576_105755,
    ⟨CollatzM20Shard015.descent_mod1048576_105883,
    ⟨CollatzM20Shard015.descent_mod1048576_106111,
    ⟨CollatzM20Shard016.descent_mod1048576_106523,
    ⟨CollatzM20Shard016.descent_mod1048576_107135,
    ⟨CollatzM20Shard016.descent_mod1048576_107999,
    ⟨CollatzM20Shard016.descent_mod1048576_108135,
    ⟨CollatzM20Shard016.descent_mod1048576_108271,
    ⟨CollatzM20Shard016.descent_mod1048576_108863,
    ⟨CollatzM20Shard016.descent_mod1048576_109183,
    ⟨CollatzM20Shard016.descent_mod1048576_109595,
    ⟨CollatzM20Shard016.descent_mod1048576_110311,
    ⟨CollatzM20Shard016.descent_mod1048576_111087,
    ⟨CollatzM20Shard016.descent_mod1048576_111195,
    ⟨CollatzM20Shard016.descent_mod1048576_111643,
    ⟨CollatzM20Shard016.descent_mod1048576_112095,
    ⟨CollatzM20Shard016.descent_mod1048576_112255,
    ⟨CollatzM20Shard016.descent_mod1048576_113119,
    ⟨CollatzM20Shard016.descent_mod1048576_113135,
    ⟨CollatzM20Shard016.descent_mod1048576_113279,
    ⟨CollatzM20Shard016.descent_mod1048576_114075,
    ⟨CollatzM20Shard016.descent_mod1048576_114279,
    ⟨CollatzM20Shard016.descent_mod1048576_114715,
    ⟨CollatzM20Shard017.descent_mod1048576_115291,
    ⟨CollatzM20Shard017.descent_mod1048576_115647,
    ⟨CollatzM20Shard017.descent_mod1048576_116191,
    ⟨CollatzM20Shard017.descent_mod1048576_116463,
    ⟨CollatzM20Shard017.descent_mod1048576_117231,
    ⟨CollatzM20Shard017.descent_mod1048576_117695,
    ⟨CollatzM20Shard017.descent_mod1048576_118119,
    ⟨CollatzM20Shard017.descent_mod1048576_119387,
    ⟨CollatzM20Shard017.descent_mod1048576_120167,
    ⟨CollatzM20Shard017.descent_mod1048576_120423,
    ⟨CollatzM20Shard017.descent_mod1048576_120859,
    ⟨CollatzM20Shard017.descent_mod1048576_121471,
    ⟨CollatzM20Shard017.descent_mod1048576_121791,
    ⟨CollatzM20Shard017.descent_mod1048576_122335,
    ⟨CollatzM20Shard017.descent_mod1048576_122351,
    ⟨CollatzM20Shard017.descent_mod1048576_122927,
    ⟨CollatzM20Shard017.descent_mod1048576_124263,
    ⟨CollatzM20Shard017.descent_mod1048576_124507,
    ⟨CollatzM20Shard017.descent_mod1048576_124991,
    ⟨CollatzM20Shard017.descent_mod1048576_125423,
    ⟨CollatzM20Shard018.descent_mod1048576_125531,
    ⟨CollatzM20Shard018.descent_mod1048576_125887,
    ⟨CollatzM20Shard018.descent_mod1048576_127023,
    ⟨CollatzM20Shard018.descent_mod1048576_127935,
    ⟨CollatzM20Shard018.descent_mod1048576_128935,
    ⟨CollatzM20Shard018.descent_mod1048576_129231,
    ⟨CollatzM20Shard018.descent_mod1048576_129383,
    ⟨CollatzM20Shard018.descent_mod1048576_129639,
    ⟨CollatzM20Shard018.descent_mod1048576_130527,
    ⟨CollatzM20Shard018.descent_mod1048576_131007,
    ⟨CollatzM20Shard018.descent_mod1048576_131135,
    ⟨CollatzM20Shard018.descent_mod1048576_131295,
    ⟨CollatzM20Shard018.descent_mod1048576_131739,
    ⟨CollatzM20Shard018.descent_mod1048576_132455,
    ⟨CollatzM20Shard018.descent_mod1048576_133031,
    ⟨CollatzM20Shard018.descent_mod1048576_133723,
    ⟨CollatzM20Shard018.descent_mod1048576_133883,
    ⟨CollatzM20Shard018.descent_mod1048576_134399,
    ⟨CollatzM20Shard018.descent_mod1048576_134811,
    ⟨CollatzM20Shard018.descent_mod1048576_135215,
    ⟨CollatzM20Shard019.descent_mod1048576_135375,
    ⟨CollatzM20Shard019.descent_mod1048576_136239,
    ⟨CollatzM20Shard019.descent_mod1048576_136423,
    ⟨CollatzM20Shard019.descent_mod1048576_136575,
    ⟨CollatzM20Shard019.descent_mod1048576_136607,
    ⟨CollatzM20Shard019.descent_mod1048576_137127,
    ⟨CollatzM20Shard019.descent_mod1048576_137151,
    ⟨CollatzM20Shard019.descent_mod1048576_137471,
    ⟨CollatzM20Shard019.descent_mod1048576_137883,
    ⟨CollatzM20Shard019.descent_mod1048576_139327,
    ⟨CollatzM20Shard019.descent_mod1048576_139375,
    ⟨CollatzM20Shard019.descent_mod1048576_139487,
    ⟨CollatzM20Shard019.descent_mod1048576_139931,
    ⟨CollatzM20Shard019.descent_mod1048576_140027,
    ⟨CollatzM20Shard019.descent_mod1048576_140543,
    ⟨CollatzM20Shard019.descent_mod1048576_140703,
    ⟨CollatzM20Shard019.descent_mod1048576_141423,
    ⟨CollatzM20Shard019.descent_mod1048576_141519,
    ⟨CollatzM20Shard019.descent_mod1048576_141567,
    ⟨CollatzM20Shard019.descent_mod1048576_142247,
    ⟨CollatzM20Shard020.descent_mod1048576_142567,
    ⟨CollatzM20Shard020.descent_mod1048576_143003,
    ⟨CollatzM20Shard020.descent_mod1048576_143271,
    ⟨CollatzM20Shard020.descent_mod1048576_143775,
    ⟨CollatzM20Shard020.descent_mod1048576_144383,
    ⟨CollatzM20Shard020.descent_mod1048576_144431,
    ⟨CollatzM20Shard020.descent_mod1048576_144799,
    ⟨CollatzM20Shard020.descent_mod1048576_145519,
    ⟨CollatzM20Shard020.descent_mod1048576_145631,
    ⟨CollatzM20Shard020.descent_mod1048576_145791,
    ⟨CollatzM20Shard020.descent_mod1048576_146087,
    ⟨CollatzM20Shard020.descent_mod1048576_146111,
    ⟨CollatzM20Shard020.descent_mod1048576_146847,
    ⟨CollatzM20Shard020.descent_mod1048576_146971,
    ⟨CollatzM20Shard020.descent_mod1048576_147303,
    ⟨CollatzM20Shard020.descent_mod1048576_148327,
    ⟨CollatzM20Shard020.descent_mod1048576_148711,
    ⟨CollatzM20Shard020.descent_mod1048576_149147,
    ⟨CollatzM20Shard020.descent_mod1048576_149351,
    ⟨CollatzM20Shard020.descent_mod1048576_149759,
    ⟨CollatzM20Shard021.descent_mod1048576_149919,
    ⟨CollatzM20Shard021.descent_mod1048576_150511,
    ⟨CollatzM20Shard021.descent_mod1048576_150639,
    ⟨CollatzM20Shard021.descent_mod1048576_150735,
    ⟨CollatzM20Shard021.descent_mod1048576_150943,
    ⟨CollatzM20Shard021.descent_mod1048576_151463,
    ⟨CollatzM20Shard021.descent_mod1048576_151623,
    ⟨CollatzM20Shard021.descent_mod1048576_151711,
    ⟨CollatzM20Shard021.descent_mod1048576_152231,
    ⟨CollatzM20Shard021.descent_mod1048576_152391,
    ⟨CollatzM20Shard021.descent_mod1048576_152423,
    ⟨CollatzM20Shard021.descent_mod1048576_153115,
    ⟨CollatzM20Shard021.descent_mod1048576_153711,
    ⟨CollatzM20Shard021.descent_mod1048576_154607,
    ⟨CollatzM20Shard021.descent_mod1048576_155495,
    ⟨CollatzM20Shard021.descent_mod1048576_155807,
    ⟨CollatzM20Shard021.descent_mod1048576_156063,
    ⟨CollatzM20Shard021.descent_mod1048576_156519,
    ⟨CollatzM20Shard021.descent_mod1048576_156955,
    ⟨CollatzM20Shard021.descent_mod1048576_157767,
    ⟨CollatzM20Shard022.descent_mod1048576_157927,
    ⟨CollatzM20Shard022.descent_mod1048576_158567,
    ⟨CollatzM20Shard022.descent_mod1048576_158703,
    ⟨CollatzM20Shard022.descent_mod1048576_159003,
    ⟨CollatzM20Shard022.descent_mod1048576_159135,
    ⟨CollatzM20Shard022.descent_mod1048576_159259,
    ⟨CollatzM20Shard022.descent_mod1048576_160423,
    ⟨CollatzM20Shard022.descent_mod1048576_160583,
    ⟨CollatzM20Shard022.descent_mod1048576_161639,
    ⟨CollatzM20Shard022.descent_mod1048576_162663,
    ⟨CollatzM20Shard022.descent_mod1048576_162687,
    ⟨CollatzM20Shard022.descent_mod1048576_163099,
    ⟨CollatzM20Shard022.descent_mod1048576_163823,
    ⟨CollatzM20Shard022.descent_mod1048576_164591,
    ⟨CollatzM20Shard022.descent_mod1048576_164847,
    ⟨CollatzM20Shard022.descent_mod1048576_164895,
    ⟨CollatzM20Shard022.descent_mod1048576_165023,
    ⟨CollatzM20Shard022.descent_mod1048576_165759,
    ⟨CollatzM20Shard022.descent_mod1048576_166727,
    ⟨CollatzM20Shard022.descent_mod1048576_167551,
    ⟨CollatzM20Shard023.descent_mod1048576_167663,
    ⟨CollatzM20Shard023.descent_mod1048576_167771,
    ⟨CollatzM20Shard023.descent_mod1048576_168219,
    ⟨CollatzM20Shard023.descent_mod1048576_168475,
    ⟨CollatzM20Shard023.descent_mod1048576_168831,
    ⟨CollatzM20Shard023.descent_mod1048576_168991,
    ⟨CollatzM20Shard023.descent_mod1048576_169599,
    ⟨CollatzM20Shard023.descent_mod1048576_169855,
    ⟨CollatzM20Shard023.descent_mod1048576_170855,
    ⟨CollatzM20Shard023.descent_mod1048576_171291,
    ⟨CollatzM20Shard023.descent_mod1048576_171647,
    ⟨CollatzM20Shard023.descent_mod1048576_171867,
    ⟨CollatzM20Shard023.descent_mod1048576_172063,
    ⟨CollatzM20Shard023.descent_mod1048576_172671,
    ⟨CollatzM20Shard023.descent_mod1048576_173039,
    ⟨CollatzM20Shard023.descent_mod1048576_173087,
    ⟨CollatzM20Shard023.descent_mod1048576_173807,
    ⟨CollatzM20Shard023.descent_mod1048576_174247,
    ⟨CollatzM20Shard023.descent_mod1048576_174399,
    ⟨CollatzM20Shard023.descent_mod1048576_174719,
    ⟨CollatzM20Shard024.descent_mod1048576_175135,
    ⟨CollatzM20Shard024.descent_mod1048576_175259,
    ⟨CollatzM20Shard024.descent_mod1048576_175963,
    ⟨CollatzM20Shard024.descent_mod1048576_177791,
    ⟨CollatzM20Shard024.descent_mod1048576_178047,
    ⟨CollatzM20Shard024.descent_mod1048576_178207,
    ⟨CollatzM20Shard024.descent_mod1048576_178655,
    ⟨CollatzM20Shard024.descent_mod1048576_178799,
    ⟨CollatzM20Shard024.descent_mod1048576_178815,
    ⟨CollatzM20Shard024.descent_mod1048576_179231,
    ⟨CollatzM20Shard024.descent_mod1048576_179503,
    ⟨CollatzM20Shard024.descent_mod1048576_181083,
    ⟨CollatzM20Shard024.descent_mod1048576_181403,
    ⟨CollatzM20Shard024.descent_mod1048576_181727,
    ⟨CollatzM20Shard024.descent_mod1048576_181759,
    ⟨CollatzM20Shard024.descent_mod1048576_181999,
    ⟨CollatzM20Shard024.descent_mod1048576_182107,
    ⟨CollatzM20Shard024.descent_mod1048576_182599,
    ⟨CollatzM20Shard024.descent_mod1048576_182895,
    ⟨CollatzM20Shard024.descent_mod1048576_183599,
    ⟨CollatzM20Shard025.descent_mod1048576_184351,
    ⟨CollatzM20Shard025.descent_mod1048576_184831,
    ⟨CollatzM20Shard025.descent_mod1048576_184923,
    ⟨CollatzM20Shard025.descent_mod1048576_185279,
    ⟨CollatzM20Shard025.descent_mod1048576_185671,
    ⟨CollatzM20Shard025.descent_mod1048576_185807,
    ⟨CollatzM20Shard025.descent_mod1048576_185959,
    ⟨CollatzM20Shard025.descent_mod1048576_186139,
    ⟨CollatzM20Shard025.descent_mod1048576_186535,
    ⟨CollatzM20Shard025.descent_mod1048576_186991,
    ⟨CollatzM20Shard025.descent_mod1048576_187007,
    ⟨CollatzM20Shard025.descent_mod1048576_187163,
    ⟨CollatzM20Shard025.descent_mod1048576_187423,
    ⟨CollatzM20Shard025.descent_mod1048576_187547,
    ⟨CollatzM20Shard025.descent_mod1048576_187583,
    ⟨CollatzM20Shard025.descent_mod1048576_187871,
    ⟨CollatzM20Shard025.descent_mod1048576_188187,
    ⟨CollatzM20Shard025.descent_mod1048576_188351,
    ⟨CollatzM20Shard025.descent_mod1048576_188463,
    ⟨CollatzM20Shard025.descent_mod1048576_189767,
    ⟨CollatzM20Shard026.descent_mod1048576_190111,
    ⟨CollatzM20Shard026.descent_mod1048576_190299,
    ⟨CollatzM20Shard026.descent_mod1048576_190459,
    ⟨CollatzM20Shard026.descent_mod1048576_190791,
    ⟨CollatzM20Shard026.descent_mod1048576_191067,
    ⟨CollatzM20Shard026.descent_mod1048576_191227,
    ⟨CollatzM20Shard026.descent_mod1048576_191259,
    ⟨CollatzM20Shard026.descent_mod1048576_191423,
    ⟨CollatzM20Shard026.descent_mod1048576_191727,
    ⟨CollatzM20Shard026.descent_mod1048576_191791,
    ⟨CollatzM20Shard026.descent_mod1048576_191951,
    ⟨CollatzM20Shard026.descent_mod1048576_192111,
    ⟨CollatzM20Shard026.descent_mod1048576_192559,
    ⟨CollatzM20Shard026.descent_mod1048576_192815,
    ⟨CollatzM20Shard026.descent_mod1048576_192999,
    ⟨CollatzM20Shard026.descent_mod1048576_193135,
    ⟨CollatzM20Shard026.descent_mod1048576_193183,
    ⟨CollatzM20Shard026.descent_mod1048576_193471,
    ⟨CollatzM20Shard026.descent_mod1048576_193727,
    ⟨CollatzM20Shard026.descent_mod1048576_193863,
    ⟨CollatzM20Shard027.descent_mod1048576_194047,
    ⟨CollatzM20Shard027.descent_mod1048576_194331,
    ⟨CollatzM20Shard027.descent_mod1048576_194799,
    ⟨CollatzM20Shard027.descent_mod1048576_195175,
    ⟨CollatzM20Shard027.descent_mod1048576_195355,
    ⟨CollatzM20Shard027.descent_mod1048576_195823,
    ⟨CollatzM20Shard027.descent_mod1048576_195839,
    ⟨CollatzM20Shard027.descent_mod1048576_196063,
    ⟨CollatzM20Shard027.descent_mod1048576_196543,
    ⟨CollatzM20Shard027.descent_mod1048576_196603,
    ⟨CollatzM20Shard027.descent_mod1048576_196763,
    ⟨CollatzM20Shard027.descent_mod1048576_197279,
    ⟨CollatzM20Shard027.descent_mod1048576_197403,
    ⟨CollatzM20Shard027.descent_mod1048576_197887,
    ⟨CollatzM20Shard027.descent_mod1048576_198095,
    ⟨CollatzM20Shard027.descent_mod1048576_198303,
    ⟨CollatzM20Shard027.descent_mod1048576_199143,
    ⟨CollatzM20Shard027.descent_mod1048576_199259,
    ⟨CollatzM20Shard027.descent_mod1048576_199419,
    ⟨CollatzM20Shard027.descent_mod1048576_199919,
    ⟨CollatzM20Shard028.descent_mod1048576_199935,
    ⟨CollatzM20Shard028.descent_mod1048576_200007,
    ⟨CollatzM20Shard028.descent_mod1048576_200475,
    ⟨CollatzM20Shard028.descent_mod1048576_200751,
    ⟨CollatzM20Shard028.descent_mod1048576_201007,
    ⟨CollatzM20Shard028.descent_mod1048576_201327,
    ⟨CollatzM20Shard028.descent_mod1048576_201375,
    ⟨CollatzM20Shard028.descent_mod1048576_201499,
    ⟨CollatzM20Shard028.descent_mod1048576_201775,
    ⟨CollatzM20Shard028.descent_mod1048576_202663,
    ⟨CollatzM20Shard028.descent_mod1048576_202687,
    ⟨CollatzM20Shard028.descent_mod1048576_202991,
    ⟨CollatzM20Shard028.descent_mod1048576_203007,
    ⟨CollatzM20Shard028.descent_mod1048576_205287,
    ⟨CollatzM20Shard028.descent_mod1048576_205563,
    ⟨CollatzM20Shard028.descent_mod1048576_206079,
    ⟨CollatzM20Shard028.descent_mod1048576_207055,
    ⟨CollatzM20Shard028.descent_mod1048576_207103,
    ⟨CollatzM20Shard028.descent_mod1048576_207311,
    ⟨CollatzM20Shard028.descent_mod1048576_207519,
    ⟨CollatzM20Shard029.descent_mod1048576_208199,
    ⟨CollatzM20Shard029.descent_mod1048576_208807,
    ⟨CollatzM20Shard029.descent_mod1048576_208967,
    ⟨CollatzM20Shard029.descent_mod1048576_209691,
    ⟨CollatzM20Shard029.descent_mod1048576_209967,
    ⟨CollatzM20Shard029.descent_mod1048576_210047,
    ⟨CollatzM20Shard029.descent_mod1048576_210335,
    ⟨CollatzM20Shard029.descent_mod1048576_212071,
    ⟨CollatzM20Shard029.descent_mod1048576_212383,
    ⟨CollatzM20Shard029.descent_mod1048576_213083,
    ⟨CollatzM20Shard029.descent_mod1048576_214247,
    ⟨CollatzM20Shard029.descent_mod1048576_214503,
    ⟨CollatzM20Shard029.descent_mod1048576_214575,
    ⟨CollatzM20Shard029.descent_mod1048576_215143,
    ⟨CollatzM20Shard029.descent_mod1048576_215295,
    ⟨CollatzM20Shard029.descent_mod1048576_215711,
    ⟨CollatzM20Shard029.descent_mod1048576_215871,
    ⟨CollatzM20Shard029.descent_mod1048576_216271,
    ⟨CollatzM20Shard029.descent_mod1048576_216479,
    ⟨CollatzM20Shard029.descent_mod1048576_216623,
    ⟨CollatzM20Shard030.descent_mod1048576_216935,
    ⟨CollatzM20Shard030.descent_mod1048576_216999,
    ⟨CollatzM20Shard030.descent_mod1048576_217159,
    ⟨CollatzM20Shard030.descent_mod1048576_218215,
    ⟨CollatzM20Shard030.descent_mod1048576_218559,
    ⟨CollatzM20Shard030.descent_mod1048576_218983,
    ⟨CollatzM20Shard030.descent_mod1048576_219239,
    ⟨CollatzM20Shard030.descent_mod1048576_219583,
    ⟨CollatzM20Shard030.descent_mod1048576_220719,
    ⟨CollatzM20Shard030.descent_mod1048576_221031,
    ⟨CollatzM20Shard030.descent_mod1048576_221435,
    ⟨CollatzM20Shard030.descent_mod1048576_221599,
    ⟨CollatzM20Shard030.descent_mod1048576_221631,
    ⟨CollatzM20Shard030.descent_mod1048576_222015,
    ⟨CollatzM20Shard030.descent_mod1048576_222055,
    ⟨CollatzM20Shard030.descent_mod1048576_222175,
    ⟨CollatzM20Shard030.descent_mod1048576_222335,
    ⟨CollatzM20Shard030.descent_mod1048576_223303,
    ⟨CollatzM20Shard030.descent_mod1048576_223463,
    ⟨CollatzM20Shard030.descent_mod1048576_224103,
    ⟨CollatzM20Shard031.descent_mod1048576_224127,
    ⟨CollatzM20Shard031.descent_mod1048576_224239,
    ⟨CollatzM20Shard031.descent_mod1048576_224507,
    ⟨CollatzM20Shard031.descent_mod1048576_224671,
    ⟨CollatzM20Shard031.descent_mod1048576_224795,
    ⟨CollatzM20Shard031.descent_mod1048576_224815,
    ⟨CollatzM20Shard031.descent_mod1048576_225371,
    ⟨CollatzM20Shard031.descent_mod1048576_225727,
    ⟨CollatzM20Shard031.descent_mod1048576_226175,
    ⟨CollatzM20Shard031.descent_mod1048576_226271,
    ⟨CollatzM20Shard031.descent_mod1048576_226863,
    ⟨CollatzM20Shard031.descent_mod1048576_227175,
    ⟨CollatzM20Shard031.descent_mod1048576_227431,
    ⟨CollatzM20Shard031.descent_mod1048576_228199,
    ⟨CollatzM20Shard031.descent_mod1048576_228223,
    ⟨CollatzM20Shard031.descent_mod1048576_228603,
    ⟨CollatzM20Shard031.descent_mod1048576_229627,
    ⟨CollatzM20Shard031.descent_mod1048576_229823,
    ⟨CollatzM20Shard031.descent_mod1048576_229935,
    ⟨CollatzM20Shard031.descent_mod1048576_230383,
    ⟨CollatzM20Shard032.descent_mod1048576_231167,
    ⟨CollatzM20Shard032.descent_mod1048576_231295,
    ⟨CollatzM20Shard032.descent_mod1048576_231835,
    ⟨CollatzM20Shard032.descent_mod1048576_231871,
    ⟨CollatzM20Shard032.descent_mod1048576_232699,
    ⟨CollatzM20Shard032.descent_mod1048576_233167,
    ⟨CollatzM20Shard032.descent_mod1048576_234011,
    ⟨CollatzM20Shard032.descent_mod1048576_234367,
    ⟨CollatzM20Shard032.descent_mod1048576_234463,
    ⟨CollatzM20Shard032.descent_mod1048576_235375,
    ⟨CollatzM20Shard032.descent_mod1048576_235391,
    ⟨CollatzM20Shard032.descent_mod1048576_235487,
    ⟨CollatzM20Shard032.descent_mod1048576_236079,
    ⟨CollatzM20Shard032.descent_mod1048576_236239,
    ⟨CollatzM20Shard032.descent_mod1048576_236391,
    ⟨CollatzM20Shard032.descent_mod1048576_237979,
    ⟨CollatzM20Shard032.descent_mod1048576_238335,
    ⟨CollatzM20Shard032.descent_mod1048576_238575,
    ⟨CollatzM20Shard032.descent_mod1048576_238623,
    ⟨CollatzM20Shard032.descent_mod1048576_238843,
    ⟨CollatzM20Shard033.descent_mod1048576_239311,
    ⟨CollatzM20Shard033.descent_mod1048576_239359,
    ⟨CollatzM20Shard033.descent_mod1048576_239471,
    ⟨CollatzM20Shard033.descent_mod1048576_240335,
    ⟨CollatzM20Shard033.descent_mod1048576_240359,
    ⟨CollatzM20Shard033.descent_mod1048576_240671,
    ⟨CollatzM20Shard033.descent_mod1048576_241499,
    ⟨CollatzM20Shard033.descent_mod1048576_243431,
    ⟨CollatzM20Shard033.descent_mod1048576_243567,
    ⟨CollatzM20Shard033.descent_mod1048576_243583,
    ⟨CollatzM20Shard033.descent_mod1048576_243679,
    ⟨CollatzM20Shard033.descent_mod1048576_244123,
    ⟨CollatzM20Shard033.descent_mod1048576_244479,
    ⟨CollatzM20Shard033.descent_mod1048576_244767,
    ⟨CollatzM20Shard033.descent_mod1048576_244927,
    ⟨CollatzM20Shard033.descent_mod1048576_245039,
    ⟨CollatzM20Shard033.descent_mod1048576_246271,
    ⟨CollatzM20Shard033.descent_mod1048576_246503,
    ⟨CollatzM20Shard033.descent_mod1048576_247035,
    ⟨CollatzM20Shard033.descent_mod1048576_247527,
    ⟨CollatzM20Shard034.descent_mod1048576_247643,
    ⟨CollatzM20Shard034.descent_mod1048576_247803,
    ⟨CollatzM20Shard034.descent_mod1048576_248527,
    ⟨CollatzM20Shard034.descent_mod1048576_248687,
    ⟨CollatzM20Shard034.descent_mod1048576_249135,
    ⟨CollatzM20Shard034.descent_mod1048576_249711,
    ⟨CollatzM20Shard034.descent_mod1048576_249759,
    ⟨CollatzM20Shard034.descent_mod1048576_249887,
    ⟨CollatzM20Shard034.descent_mod1048576_250367,
    ⟨CollatzM20Shard034.descent_mod1048576_250907,
    ⟨CollatzM20Shard034.descent_mod1048576_252071,
    ⟨CollatzM20Shard034.descent_mod1048576_252399,
    ⟨CollatzM20Shard034.descent_mod1048576_252527,
    ⟨CollatzM20Shard034.descent_mod1048576_252959,
    ⟨CollatzM20Shard034.descent_mod1048576_253083,
    ⟨CollatzM20Shard034.descent_mod1048576_253119,
    ⟨CollatzM20Shard034.descent_mod1048576_253339,
    ⟨CollatzM20Shard034.descent_mod1048576_253855,
    ⟨CollatzM20Shard034.descent_mod1048576_253979,
    ⟨CollatzM20Shard034.descent_mod1048576_255719,
    ⟨CollatzM20Shard035.descent_mod1048576_255771,
    ⟨CollatzM20Shard035.descent_mod1048576_255835,
    ⟨CollatzM20Shard035.descent_mod1048576_255995,
    ⟨CollatzM20Shard035.descent_mod1048576_256327,
    ⟨CollatzM20Shard035.descent_mod1048576_257051,
    ⟨CollatzM20Shard035.descent_mod1048576_257327,
    ⟨CollatzM20Shard035.descent_mod1048576_257819,
    ⟨CollatzM20Shard035.descent_mod1048576_257903,
    ⟨CollatzM20Shard035.descent_mod1048576_257951,
    ⟨CollatzM20Shard035.descent_mod1048576_258075,
    ⟨CollatzM20Shard035.descent_mod1048576_258351,
    ⟨CollatzM20Shard035.descent_mod1048576_258671,
    ⟨CollatzM20Shard035.descent_mod1048576_259263,
    ⟨CollatzM20Shard035.descent_mod1048576_259399,
    ⟨CollatzM20Shard035.descent_mod1048576_259431,
    ⟨CollatzM20Shard035.descent_mod1048576_259583,
    ⟨CollatzM20Shard035.descent_mod1048576_259867,
    ⟨CollatzM20Shard035.descent_mod1048576_260891,
    ⟨CollatzM20Shard035.descent_mod1048576_262139,
    ⟨CollatzM20Shard035.descent_mod1048576_262299,
    ⟨CollatzM20Shard036.descent_mod1048576_262939,
    ⟨CollatzM20Shard036.descent_mod1048576_263071,
    ⟨CollatzM20Shard036.descent_mod1048576_263631,
    ⟨CollatzM20Shard036.descent_mod1048576_263839,
    ⟨CollatzM20Shard036.descent_mod1048576_264095,
    ⟨CollatzM20Shard036.descent_mod1048576_264687,
    ⟨CollatzM20Shard036.descent_mod1048576_265455,
    ⟨CollatzM20Shard036.descent_mod1048576_265543,
    ⟨CollatzM20Shard036.descent_mod1048576_266011,
    ⟨CollatzM20Shard036.descent_mod1048576_266267,
    ⟨CollatzM20Shard036.descent_mod1048576_266543,
    ⟨CollatzM20Shard036.descent_mod1048576_266863,
    ⟨CollatzM20Shard036.descent_mod1048576_266911,
    ⟨CollatzM20Shard036.descent_mod1048576_267035,
    ⟨CollatzM20Shard036.descent_mod1048576_268527,
    ⟨CollatzM20Shard036.descent_mod1048576_270823,
    ⟨CollatzM20Shard036.descent_mod1048576_271719,
    ⟨CollatzM20Shard036.descent_mod1048576_272287,
    ⟨CollatzM20Shard036.descent_mod1048576_272447,
    ⟨CollatzM20Shard036.descent_mod1048576_272847,
    ⟨CollatzM20Shard037.descent_mod1048576_273055,
    ⟨CollatzM20Shard037.descent_mod1048576_273215,
    ⟨CollatzM20Shard037.descent_mod1048576_273511,
    ⟨CollatzM20Shard037.descent_mod1048576_273735,
    ⟨CollatzM20Shard037.descent_mod1048576_275135,
    ⟨CollatzM20Shard037.descent_mod1048576_275227,
    ⟨CollatzM20Shard037.descent_mod1048576_275559,
    ⟨CollatzM20Shard037.descent_mod1048576_277607,
    ⟨CollatzM20Shard037.descent_mod1048576_278047,
    ⟨CollatzM20Shard037.descent_mod1048576_278207,
    ⟨CollatzM20Shard037.descent_mod1048576_278591,
    ⟨CollatzM20Shard037.descent_mod1048576_278751,
    ⟨CollatzM20Shard037.descent_mod1048576_279195,
    ⟨CollatzM20Shard037.descent_mod1048576_280039,
    ⟨CollatzM20Shard037.descent_mod1048576_280679,
    ⟨CollatzM20Shard037.descent_mod1048576_280687,
    ⟨CollatzM20Shard037.descent_mod1048576_281247,
    ⟨CollatzM20Shard037.descent_mod1048576_281407,
    ⟨CollatzM20Shard037.descent_mod1048576_281599,
    ⟨CollatzM20Shard037.descent_mod1048576_282143,
    ⟨CollatzM20Shard038.descent_mod1048576_282267,
    ⟨CollatzM20Shard038.descent_mod1048576_282303,
    ⟨CollatzM20Shard038.descent_mod1048576_282847,
    ⟨CollatzM20Shard038.descent_mod1048576_283327,
    ⟨CollatzM20Shard038.descent_mod1048576_283751,
    ⟨CollatzM20Shard038.descent_mod1048576_284207,
    ⟨CollatzM20Shard038.descent_mod1048576_284775,
    ⟨CollatzM20Shard038.descent_mod1048576_285339,
    ⟨CollatzM20Shard038.descent_mod1048576_286239,
    ⟨CollatzM20Shard038.descent_mod1048576_286363,
    ⟨CollatzM20Shard038.descent_mod1048576_286399,
    ⟨CollatzM20Shard038.descent_mod1048576_287279,
    ⟨CollatzM20Shard038.descent_mod1048576_287551,
    ⟨CollatzM20Shard038.descent_mod1048576_287711,
    ⟨CollatzM20Shard038.descent_mod1048576_287871,
    ⟨CollatzM20Shard038.descent_mod1048576_289215,
    ⟨CollatzM20Shard038.descent_mod1048576_290351,
    ⟨CollatzM20Shard038.descent_mod1048576_290907,
    ⟨CollatzM20Shard038.descent_mod1048576_290975,
    ⟨CollatzM20Shard038.descent_mod1048576_291039,
    ⟨CollatzM20Shard039.descent_mod1048576_291359,
    ⟨CollatzM20Shard039.descent_mod1048576_291807,
    ⟨CollatzM20Shard039.descent_mod1048576_292063,
    ⟨CollatzM20Shard039.descent_mod1048576_292383,
    ⟨CollatzM20Shard039.descent_mod1048576_292399,
    ⟨CollatzM20Shard039.descent_mod1048576_292543,
    ⟨CollatzM20Shard039.descent_mod1048576_292967,
    ⟨CollatzM20Shard039.descent_mod1048576_292975,
    ⟨CollatzM20Shard039.descent_mod1048576_293543,
    ⟨CollatzM20Shard039.descent_mod1048576_294047,
    ⟨CollatzM20Shard039.descent_mod1048576_294555,
    ⟨CollatzM20Shard039.descent_mod1048576_294607,
    ⟨CollatzM20Shard039.descent_mod1048576_295071,
    ⟨CollatzM20Shard039.descent_mod1048576_295163,
    ⟨CollatzM20Shard039.descent_mod1048576_295359,
    ⟨CollatzM20Shard039.descent_mod1048576_295471,
    ⟨CollatzM20Shard039.descent_mod1048576_296655,
    ⟨CollatzM20Shard039.descent_mod1048576_297407,
    ⟨CollatzM20Shard039.descent_mod1048576_298235,
    ⟨CollatzM20Shard039.descent_mod1048576_298267,
    ⟨CollatzM20Shard040.descent_mod1048576_298703,
    ⟨CollatzM20Shard040.descent_mod1048576_298751,
    ⟨CollatzM20Shard040.descent_mod1048576_299167,
    ⟨CollatzM20Shard040.descent_mod1048576_299687,
    ⟨CollatzM20Shard040.descent_mod1048576_299759,
    ⟨CollatzM20Shard040.descent_mod1048576_299775,
    ⟨CollatzM20Shard040.descent_mod1048576_299847,
    ⟨CollatzM20Shard040.descent_mod1048576_299999,
    ⟨CollatzM20Shard040.descent_mod1048576_300255,
    ⟨CollatzM20Shard040.descent_mod1048576_300575,
    ⟨CollatzM20Shard040.descent_mod1048576_300735,
    ⟨CollatzM20Shard040.descent_mod1048576_301023,
    ⟨CollatzM20Shard040.descent_mod1048576_301615,
    ⟨CollatzM20Shard040.descent_mod1048576_301775,
    ⟨CollatzM20Shard040.descent_mod1048576_301799,
    ⟨CollatzM20Shard040.descent_mod1048576_301807,
    ⟨CollatzM20Shard040.descent_mod1048576_301823,
    ⟨CollatzM20Shard040.descent_mod1048576_302239,
    ⟨CollatzM20Shard040.descent_mod1048576_303423,
    ⟨CollatzM20Shard040.descent_mod1048576_303847,
    ⟨CollatzM20Shard041.descent_mod1048576_303871,
    ⟨CollatzM20Shard041.descent_mod1048576_303943,
    ⟨CollatzM20Shard041.descent_mod1048576_304379,
    ⟨CollatzM20Shard041.descent_mod1048576_304847,
    ⟨CollatzM20Shard041.descent_mod1048576_304895,
    ⟨CollatzM20Shard041.descent_mod1048576_305871,
    ⟨CollatzM20Shard041.descent_mod1048576_305895,
    ⟨CollatzM20Shard041.descent_mod1048576_305903,
    ⟨CollatzM20Shard041.descent_mod1048576_306495,
    ⟨CollatzM20Shard041.descent_mod1048576_308967,
    ⟨CollatzM20Shard041.descent_mod1048576_309103,
    ⟨CollatzM20Shard041.descent_mod1048576_309215,
    ⟨CollatzM20Shard041.descent_mod1048576_309659,
    ⟨CollatzM20Shard041.descent_mod1048576_309999,
    ⟨CollatzM20Shard041.descent_mod1048576_310015,
    ⟨CollatzM20Shard041.descent_mod1048576_310555,
    ⟨CollatzM20Shard041.descent_mod1048576_310591,
    ⟨CollatzM20Shard041.descent_mod1048576_311615,
    ⟨CollatzM20Shard041.descent_mod1048576_312039,
    ⟨CollatzM20Shard041.descent_mod1048576_312047,
    ⟨CollatzM20Shard042.descent_mod1048576_312135,
    ⟨CollatzM20Shard042.descent_mod1048576_312347,
    ⟨CollatzM20Shard042.descent_mod1048576_312571,
    ⟨CollatzM20Shard042.descent_mod1048576_313063,
    ⟨CollatzM20Shard042.descent_mod1048576_313159,
    ⟨CollatzM20Shard042.descent_mod1048576_313823,
    ⟨CollatzM20Shard042.descent_mod1048576_313983,
    ⟨CollatzM20Shard042.descent_mod1048576_314063,
    ⟨CollatzM20Shard042.descent_mod1048576_314395,
    ⟨CollatzM20Shard042.descent_mod1048576_314687,
    ⟨CollatzM20Shard042.descent_mod1048576_315119,
    ⟨CollatzM20Shard042.descent_mod1048576_315247,
    ⟨CollatzM20Shard042.descent_mod1048576_315871,
    ⟨CollatzM20Shard042.descent_mod1048576_316443,
    ⟨CollatzM20Shard042.descent_mod1048576_317055,
    ⟨CollatzM20Shard042.descent_mod1048576_318875,
    ⟨CollatzM20Shard042.descent_mod1048576_319515,
    ⟨CollatzM20Shard042.descent_mod1048576_319967,
    ⟨CollatzM20Shard042.descent_mod1048576_320831,
    ⟨CollatzM20Shard042.descent_mod1048576_321255,
    ⟨CollatzM20Shard043.descent_mod1048576_321263,
    ⟨CollatzM20Shard043.descent_mod1048576_321351,
    ⟨CollatzM20Shard043.descent_mod1048576_322587,
    ⟨CollatzM20Shard043.descent_mod1048576_323439,
    ⟨CollatzM20Shard043.descent_mod1048576_323487,
    ⟨CollatzM20Shard043.descent_mod1048576_323611,
    ⟨CollatzM20Shard043.descent_mod1048576_324063,
    ⟨CollatzM20Shard043.descent_mod1048576_326111,
    ⟨CollatzM20Shard043.descent_mod1048576_326271,
    ⟨CollatzM20Shard043.descent_mod1048576_327727,
    ⟨CollatzM20Shard043.descent_mod1048576_329023,
    ⟨CollatzM20Shard043.descent_mod1048576_329183,
    ⟨CollatzM20Shard043.descent_mod1048576_329631,
    ⟨CollatzM20Shard043.descent_mod1048576_329791,
    ⟨CollatzM20Shard043.descent_mod1048576_330223,
    ⟨CollatzM20Shard043.descent_mod1048576_331803,
    ⟨CollatzM20Shard043.descent_mod1048576_332379,
    ⟨CollatzM20Shard043.descent_mod1048576_332735,
    ⟨CollatzM20Shard043.descent_mod1048576_333871,
    ⟨CollatzM20Shard043.descent_mod1048576_334623,
    ⟨CollatzM20Shard044.descent_mod1048576_335103,
    ⟨CollatzM20Shard044.descent_mod1048576_335327,
    ⟨CollatzM20Shard044.descent_mod1048576_335807,
    ⟨CollatzM20Shard044.descent_mod1048576_337255,
    ⟨CollatzM20Shard044.descent_mod1048576_337823,
    ⟨CollatzM20Shard044.descent_mod1048576_337983,
    ⟨CollatzM20Shard044.descent_mod1048576_338523,
    ⟨CollatzM20Shard044.descent_mod1048576_338683,
    ⟨CollatzM20Shard044.descent_mod1048576_338719,
    ⟨CollatzM20Shard044.descent_mod1048576_338879,
    ⟨CollatzM20Shard044.descent_mod1048576_339199,
    ⟨CollatzM20Shard044.descent_mod1048576_339903,
    ⟨CollatzM20Shard044.descent_mod1048576_340015,
    ⟨CollatzM20Shard044.descent_mod1048576_340635,
    ⟨CollatzM20Shard044.descent_mod1048576_342271,
    ⟨CollatzM20Shard044.descent_mod1048576_342683,
    ⟨CollatzM20Shard044.descent_mod1048576_342779,
    ⟨CollatzM20Shard044.descent_mod1048576_342815,
    ⟨CollatzM20Shard044.descent_mod1048576_343295,
    ⟨CollatzM20Shard044.descent_mod1048576_344127,
    ⟨CollatzM20Shard045.descent_mod1048576_344287,
    ⟨CollatzM20Shard045.descent_mod1048576_344731,
    ⟨CollatzM20Shard045.descent_mod1048576_345343,
    ⟨CollatzM20Shard045.descent_mod1048576_347803,
    ⟨CollatzM20Shard045.descent_mod1048576_347935,
    ⟨CollatzM20Shard045.descent_mod1048576_348095,
    ⟨CollatzM20Shard045.descent_mod1048576_348383,
    ⟨CollatzM20Shard045.descent_mod1048576_348415,
    ⟨CollatzM20Shard045.descent_mod1048576_348863,
    ⟨CollatzM20Shard045.descent_mod1048576_348959,
    ⟨CollatzM20Shard045.descent_mod1048576_349231,
    ⟨CollatzM20Shard045.descent_mod1048576_349439,
    ⟨CollatzM20Shard045.descent_mod1048576_350119,
    ⟨CollatzM20Shard045.descent_mod1048576_350207,
    ⟨CollatzM20Shard045.descent_mod1048576_350875,
    ⟨CollatzM20Shard045.descent_mod1048576_350887,
    ⟨CollatzM20Shard045.descent_mod1048576_350971,
    ⟨CollatzM20Shard045.descent_mod1048576_351647,
    ⟨CollatzM20Shard045.descent_mod1048576_351775,
    ⟨CollatzM20Shard045.descent_mod1048576_351899,
    ⟨CollatzM20Shard046.descent_mod1048576_351935,
    ⟨CollatzM20Shard046.descent_mod1048576_351995,
    ⟨CollatzM20Shard046.descent_mod1048576_354559,
    ⟨CollatzM20Shard046.descent_mod1048576_356263,
    ⟨CollatzM20Shard046.descent_mod1048576_356423,
    ⟨CollatzM20Shard046.descent_mod1048576_356575,
    ⟨CollatzM20Shard046.descent_mod1048576_357151,
    ⟨CollatzM20Shard046.descent_mod1048576_357599,
    ⟨CollatzM20Shard046.descent_mod1048576_357631,
    ⟨CollatzM20Shard046.descent_mod1048576_357919,
    ⟨CollatzM20Shard046.descent_mod1048576_358079,
    ⟨CollatzM20Shard046.descent_mod1048576_358511,
    ⟨CollatzM20Shard046.descent_mod1048576_359079,
    ⟨CollatzM20Shard046.descent_mod1048576_360091,
    ⟨CollatzM20Shard046.descent_mod1048576_360187,
    ⟨CollatzM20Shard046.descent_mod1048576_360519,
    ⟨CollatzM20Shard046.descent_mod1048576_363367,
    ⟨CollatzM20Shard046.descent_mod1048576_363391,
    ⟨CollatzM20Shard046.descent_mod1048576_363935,
    ⟨CollatzM20Shard046.descent_mod1048576_364703,
    ⟨CollatzM20Shard047.descent_mod1048576_365223,
    ⟨CollatzM20Shard047.descent_mod1048576_365383,
    ⟨CollatzM20Shard047.descent_mod1048576_365791,
    ⟨CollatzM20Shard047.descent_mod1048576_366111,
    ⟨CollatzM20Shard047.descent_mod1048576_366271,
    ⟨CollatzM20Shard047.descent_mod1048576_366439,
    ⟨CollatzM20Shard047.descent_mod1048576_367487,
    ⟨CollatzM20Shard047.descent_mod1048576_367775,
    ⟨CollatzM20Shard047.descent_mod1048576_368711,
    ⟨CollatzM20Shard047.descent_mod1048576_369391,
    ⟨CollatzM20Shard047.descent_mod1048576_369479,
    ⟨CollatzM20Shard047.descent_mod1048576_369735,
    ⟨CollatzM20Shard047.descent_mod1048576_370559,
    ⟨CollatzM20Shard047.descent_mod1048576_371583,
    ⟨CollatzM20Shard047.descent_mod1048576_371695,
    ⟨CollatzM20Shard047.descent_mod1048576_372463,
    ⟨CollatzM20Shard047.descent_mod1048576_373631,
    ⟨CollatzM20Shard047.descent_mod1048576_375535,
    ⟨CollatzM20Shard047.descent_mod1048576_375655,
    ⟨CollatzM20Shard047.descent_mod1048576_376091,
    ⟨CollatzM20Shard048.descent_mod1048576_376703,
    ⟨CollatzM20Shard048.descent_mod1048576_377151,
    ⟨CollatzM20Shard048.descent_mod1048576_377583,
    ⟨CollatzM20Shard048.descent_mod1048576_377671,
    ⟨CollatzM20Shard048.descent_mod1048576_377727,
    ⟨CollatzM20Shard048.descent_mod1048576_377839,
    ⟨CollatzM20Shard048.descent_mod1048576_377927,
    ⟨CollatzM20Shard048.descent_mod1048576_378495,
    ⟨CollatzM20Shard048.descent_mod1048576_378695,
    ⟨CollatzM20Shard048.descent_mod1048576_379935,
    ⟨CollatzM20Shard048.descent_mod1048576_380223,
    ⟨CollatzM20Shard048.descent_mod1048576_380655,
    ⟨CollatzM20Shard048.descent_mod1048576_381095,
    ⟨CollatzM20Shard048.descent_mod1048576_382591,
    ⟨CollatzM20Shard048.descent_mod1048576_382847,
    ⟨CollatzM20Shard048.descent_mod1048576_383455,
    ⟨CollatzM20Shard048.descent_mod1048576_384167,
    ⟨CollatzM20Shard048.descent_mod1048576_384303,
    ⟨CollatzM20Shard048.descent_mod1048576_385535,
    ⟨CollatzM20Shard048.descent_mod1048576_385919,
    ⟨CollatzM20Shard049.descent_mod1048576_386367,
    ⟨CollatzM20Shard049.descent_mod1048576_386527,
    ⟨CollatzM20Shard049.descent_mod1048576_386799,
    ⟨CollatzM20Shard049.descent_mod1048576_386887,
    ⟨CollatzM20Shard049.descent_mod1048576_388263,
    ⟨CollatzM20Shard049.descent_mod1048576_388607,
    ⟨CollatzM20Shard049.descent_mod1048576_388955,
    ⟨CollatzM20Shard049.descent_mod1048576_389287,
    ⟨CollatzM20Shard049.descent_mod1048576_389599,
    ⟨CollatzM20Shard049.descent_mod1048576_389631,
    ⟨CollatzM20Shard049.descent_mod1048576_389723,
    ⟨CollatzM20Shard049.descent_mod1048576_390447,
    ⟨CollatzM20Shard049.descent_mod1048576_391495,
    ⟨CollatzM20Shard049.descent_mod1048576_391647,
    ⟨CollatzM20Shard049.descent_mod1048576_391807,
    ⟨CollatzM20Shard049.descent_mod1048576_392223,
    ⟨CollatzM20Shard049.descent_mod1048576_392359,
    ⟨CollatzM20Shard049.descent_mod1048576_392383,
    ⟨CollatzM20Shard049.descent_mod1048576_393543,
    ⟨CollatzM20Shard049.descent_mod1048576_393727,
    ⟨CollatzM20Shard050.descent_mod1048576_394175,
    ⟨CollatzM20Shard050.descent_mod1048576_394559,
    ⟨CollatzM20Shard050.descent_mod1048576_394719,
    ⟨CollatzM20Shard050.descent_mod1048576_395099,
    ⟨CollatzM20Shard050.descent_mod1048576_395259,
    ⟨CollatzM20Shard050.descent_mod1048576_396223,
    ⟨CollatzM20Shard050.descent_mod1048576_396479,
    ⟨CollatzM20Shard050.descent_mod1048576_396591,
    ⟨CollatzM20Shard050.descent_mod1048576_396799,
    ⟨CollatzM20Shard050.descent_mod1048576_397639,
    ⟨CollatzM20Shard050.descent_mod1048576_397915,
    ⟨CollatzM20Shard050.descent_mod1048576_398271,
    ⟨CollatzM20Shard050.descent_mod1048576_398503,
    ⟨CollatzM20Shard050.descent_mod1048576_399007,
    ⟨CollatzM20Shard050.descent_mod1048576_399355,
    ⟨CollatzM20Shard050.descent_mod1048576_399983,
    ⟨CollatzM20Shard050.descent_mod1048576_400863,
    ⟨CollatzM20Shard050.descent_mod1048576_401055,
    ⟨CollatzM20Shard050.descent_mod1048576_401343,
    ⟨CollatzM20Shard050.descent_mod1048576_401735,
    ⟨CollatzM20Shard051.descent_mod1048576_402203,
    ⟨CollatzM20Shard051.descent_mod1048576_402671,
    ⟨CollatzM20Shard051.descent_mod1048576_403695,
    ⟨CollatzM20Shard051.descent_mod1048576_403783,
    ⟨CollatzM20Shard051.descent_mod1048576_404059,
    ⟨CollatzM20Shard051.descent_mod1048576_404219,
    ⟨CollatzM20Shard051.descent_mod1048576_404415,
    ⟨CollatzM20Shard051.descent_mod1048576_404671,
    ⟨CollatzM20Shard051.descent_mod1048576_405151,
    ⟨CollatzM20Shard051.descent_mod1048576_405275,
    ⟨CollatzM20Shard051.descent_mod1048576_405439,
    ⟨CollatzM20Shard051.descent_mod1048576_405551,
    ⟨CollatzM20Shard051.descent_mod1048576_405695,
    ⟨CollatzM20Shard051.descent_mod1048576_405743,
    ⟨CollatzM20Shard051.descent_mod1048576_405807,
    ⟨CollatzM20Shard051.descent_mod1048576_406127,
    ⟨CollatzM20Shard051.descent_mod1048576_406695,
    ⟨CollatzM20Shard051.descent_mod1048576_406855,
    ⟨CollatzM20Shard051.descent_mod1048576_407463,
    ⟨CollatzM20Shard051.descent_mod1048576_407547,
    ⟨CollatzM20Shard052.descent_mod1048576_408315,
    ⟨CollatzM20Shard052.descent_mod1048576_408351,
    ⟨CollatzM20Shard052.descent_mod1048576_408571,
    ⟨CollatzM20Shard052.descent_mod1048576_408831,
    ⟨CollatzM20Shard052.descent_mod1048576_409247,
    ⟨CollatzM20Shard052.descent_mod1048576_409839,
    ⟨CollatzM20Shard052.descent_mod1048576_410879,
    ⟨CollatzM20Shard052.descent_mod1048576_411295,
    ⟨CollatzM20Shard052.descent_mod1048576_412775,
    ⟨CollatzM20Shard052.descent_mod1048576_412999,
    ⟨CollatzM20Shard052.descent_mod1048576_413631,
    ⟨CollatzM20Shard052.descent_mod1048576_413887,
    ⟨CollatzM20Shard052.descent_mod1048576_413935,
    ⟨CollatzM20Shard052.descent_mod1048576_414367,
    ⟨CollatzM20Shard052.descent_mod1048576_414491,
    ⟨CollatzM20Shard052.descent_mod1048576_414495,
    ⟨CollatzM20Shard052.descent_mod1048576_414767,
    ⟨CollatzM20Shard052.descent_mod1048576_414975,
    ⟨CollatzM20Shard052.descent_mod1048576_415655,
    ⟨CollatzM20Shard052.descent_mod1048576_415983,
    ⟨CollatzM20Shard053.descent_mod1048576_416507,
    ⟨CollatzM20Shard053.descent_mod1048576_416763,
    ⟨CollatzM20Shard053.descent_mod1048576_416871,
    ⟨CollatzM20Shard053.descent_mod1048576_416895,
    ⟨CollatzM20Shard053.descent_mod1048576_417531,
    ⟨CollatzM20Shard053.descent_mod1048576_419931,
    ⟨CollatzM20Shard053.descent_mod1048576_419943,
    ⟨CollatzM20Shard053.descent_mod1048576_419967,
    ⟨CollatzM20Shard053.descent_mod1048576_420095,
    ⟨CollatzM20Shard053.descent_mod1048576_420511,
    ⟨CollatzM20Shard053.descent_mod1048576_420671,
    ⟨CollatzM20Shard053.descent_mod1048576_420967,
    ⟨CollatzM20Shard053.descent_mod1048576_421799,
    ⟨CollatzM20Shard053.descent_mod1048576_421959,
    ⟨CollatzM20Shard053.descent_mod1048576_422687,
    ⟨CollatzM20Shard053.descent_mod1048576_423003,
    ⟨CollatzM20Shard053.descent_mod1048576_423015,
    ⟨CollatzM20Shard053.descent_mod1048576_423167,
    ⟨CollatzM20Shard053.descent_mod1048576_424063,
    ⟨CollatzM20Shard053.descent_mod1048576_424767,
    ⟨CollatzM20Shard054.descent_mod1048576_425087,
    ⟨CollatzM20Shard054.descent_mod1048576_425723,
    ⟨CollatzM20Shard054.descent_mod1048576_426055,
    ⟨CollatzM20Shard054.descent_mod1048576_426087,
    ⟨CollatzM20Shard054.descent_mod1048576_426975,
    ⟨CollatzM20Shard054.descent_mod1048576_427099,
    ⟨CollatzM20Shard054.descent_mod1048576_427111,
    ⟨CollatzM20Shard054.descent_mod1048576_427879,
    ⟨CollatzM20Shard054.descent_mod1048576_428123,
    ⟨CollatzM20Shard054.descent_mod1048576_428159,
    ⟨CollatzM20Shard054.descent_mod1048576_429039,
    ⟨CollatzM20Shard054.descent_mod1048576_429471,
    ⟨CollatzM20Shard054.descent_mod1048576_429503,
    ⟨CollatzM20Shard054.descent_mod1048576_430331,
    ⟨CollatzM20Shard054.descent_mod1048576_431195,
    ⟨CollatzM20Shard054.descent_mod1048576_431663,
    ⟨CollatzM20Shard054.descent_mod1048576_431975,
    ⟨CollatzM20Shard054.descent_mod1048576_432231,
    ⟨CollatzM20Shard054.descent_mod1048576_432379,
    ⟨CollatzM20Shard054.descent_mod1048576_432959,
    ⟨CollatzM20Shard055.descent_mod1048576_433119,
    ⟨CollatzM20Shard055.descent_mod1048576_433871,
    ⟨CollatzM20Shard055.descent_mod1048576_433983,
    ⟨CollatzM20Shard055.descent_mod1048576_434247,
    ⟨CollatzM20Shard055.descent_mod1048576_434303,
    ⟨CollatzM20Shard055.descent_mod1048576_434735,
    ⟨CollatzM20Shard055.descent_mod1048576_435271,
    ⟨CollatzM20Shard055.descent_mod1048576_435303,
    ⟨CollatzM20Shard055.descent_mod1048576_436475,
    ⟨CollatzM20Shard055.descent_mod1048576_436671,
    ⟨CollatzM20Shard055.descent_mod1048576_437119,
    ⟨CollatzM20Shard055.descent_mod1048576_437231,
    ⟨CollatzM20Shard055.descent_mod1048576_437339,
    ⟨CollatzM20Shard055.descent_mod1048576_437695,
    ⟨CollatzM20Shard055.descent_mod1048576_437807,
    ⟨CollatzM20Shard055.descent_mod1048576_437967,
    ⟨CollatzM20Shard055.descent_mod1048576_438015,
    ⟨CollatzM20Shard055.descent_mod1048576_438831,
    ⟨CollatzM20Shard055.descent_mod1048576_439039,
    ⟨CollatzM20Shard055.descent_mod1048576_439167,
    ⟨CollatzM20Shard056.descent_mod1048576_439263,
    ⟨CollatzM20Shard056.descent_mod1048576_440063,
    ⟨CollatzM20Shard056.descent_mod1048576_440571,
    ⟨CollatzM20Shard056.descent_mod1048576_441039,
    ⟨CollatzM20Shard056.descent_mod1048576_441063,
    ⟨CollatzM20Shard056.descent_mod1048576_441191,
    ⟨CollatzM20Shard056.descent_mod1048576_442063,
    ⟨CollatzM20Shard056.descent_mod1048576_442175,
    ⟨CollatzM20Shard056.descent_mod1048576_442495,
    ⟨CollatzM20Shard056.descent_mod1048576_442619,
    ⟨CollatzM20Shard056.descent_mod1048576_442815,
    ⟨CollatzM20Shard056.descent_mod1048576_443135,
    ⟨CollatzM20Shard056.descent_mod1048576_443263,
    ⟨CollatzM20Shard056.descent_mod1048576_443375,
    ⟨CollatzM20Shard056.descent_mod1048576_443463,
    ⟨CollatzM20Shard056.descent_mod1048576_444111,
    ⟨CollatzM20Shard056.descent_mod1048576_445159,
    ⟨CollatzM20Shard056.descent_mod1048576_445531,
    ⟨CollatzM20Shard056.descent_mod1048576_445691,
    ⟨CollatzM20Shard056.descent_mod1048576_446207,
    ⟨CollatzM20Shard057.descent_mod1048576_446299,
    ⟨CollatzM20Shard057.descent_mod1048576_447023,
    ⟨CollatzM20Shard057.descent_mod1048576_447183,
    ⟨CollatzM20Shard057.descent_mod1048576_447231,
    ⟨CollatzM20Shard057.descent_mod1048576_448207,
    ⟨CollatzM20Shard057.descent_mod1048576_448231,
    ⟨CollatzM20Shard057.descent_mod1048576_448383,
    ⟨CollatzM20Shard057.descent_mod1048576_448479,
    ⟨CollatzM20Shard057.descent_mod1048576_449255,
    ⟨CollatzM20Shard057.descent_mod1048576_449279,
    ⟨CollatzM20Shard057.descent_mod1048576_451303,
    ⟨CollatzM20Shard057.descent_mod1048576_451455,
    ⟨CollatzM20Shard057.descent_mod1048576_451611,
    ⟨CollatzM20Shard057.descent_mod1048576_451835,
    ⟨CollatzM20Shard057.descent_mod1048576_452351,
    ⟨CollatzM20Shard057.descent_mod1048576_453327,
    ⟨CollatzM20Shard057.descent_mod1048576_453375,
    ⟨CollatzM20Shard057.descent_mod1048576_454375,
    ⟨CollatzM20Shard057.descent_mod1048576_454491,
    ⟨CollatzM20Shard057.descent_mod1048576_454823,
    ⟨CollatzM20Shard058.descent_mod1048576_455399,
    ⟨CollatzM20Shard058.descent_mod1048576_455707,
    ⟨CollatzM20Shard058.descent_mod1048576_456399,
    ⟨CollatzM20Shard058.descent_mod1048576_456559,
    ⟨CollatzM20Shard058.descent_mod1048576_457327,
    ⟨CollatzM20Shard058.descent_mod1048576_457759,
    ⟨CollatzM20Shard058.descent_mod1048576_457895,
    ⟨CollatzM20Shard058.descent_mod1048576_457919,
    ⟨CollatzM20Shard058.descent_mod1048576_458779,
    ⟨CollatzM20Shard058.descent_mod1048576_459247,
    ⟨CollatzM20Shard058.descent_mod1048576_459263,
    ⟨CollatzM20Shard058.descent_mod1048576_459803,
    ⟨CollatzM20Shard058.descent_mod1048576_460519,
    ⟨CollatzM20Shard058.descent_mod1048576_460635,
    ⟨CollatzM20Shard058.descent_mod1048576_460795,
    ⟨CollatzM20Shard058.descent_mod1048576_461127,
    ⟨CollatzM20Shard058.descent_mod1048576_461567,
    ⟨CollatzM20Shard058.descent_mod1048576_461851,
    ⟨CollatzM20Shard058.descent_mod1048576_462015,
    ⟨CollatzM20Shard058.descent_mod1048576_462127,
    ⟨CollatzM20Shard059.descent_mod1048576_462319,
    ⟨CollatzM20Shard059.descent_mod1048576_462335,
    ⟨CollatzM20Shard059.descent_mod1048576_462703,
    ⟨CollatzM20Shard059.descent_mod1048576_463591,
    ⟨CollatzM20Shard059.descent_mod1048576_464039,
    ⟨CollatzM20Shard059.descent_mod1048576_464199,
    ⟨CollatzM20Shard059.descent_mod1048576_464891,
    ⟨CollatzM20Shard059.descent_mod1048576_464923,
    ⟨CollatzM20Shard059.descent_mod1048576_465519,
    ⟨CollatzM20Shard059.descent_mod1048576_465947,
    ⟨CollatzM20Shard059.descent_mod1048576_466279,
    ⟨CollatzM20Shard059.descent_mod1048576_466415,
    ⟨CollatzM20Shard059.descent_mod1048576_466715,
    ⟨CollatzM20Shard059.descent_mod1048576_467271,
    ⟨CollatzM20Shard059.descent_mod1048576_467439,
    ⟨CollatzM20Shard059.descent_mod1048576_468639,
    ⟨CollatzM20Shard059.descent_mod1048576_469319,
    ⟨CollatzM20Shard059.descent_mod1048576_469351,
    ⟨CollatzM20Shard059.descent_mod1048576_470207,
    ⟨CollatzM20Shard059.descent_mod1048576_470511,
    ⟨CollatzM20Shard060.descent_mod1048576_470811,
    ⟨CollatzM20Shard060.descent_mod1048576_470943,
    ⟨CollatzM20Shard060.descent_mod1048576_471067,
    ⟨CollatzM20Shard060.descent_mod1048576_471231,
    ⟨CollatzM20Shard060.descent_mod1048576_471343,
    ⟨CollatzM20Shard060.descent_mod1048576_471663,
    ⟨CollatzM20Shard060.descent_mod1048576_471711,
    ⟨CollatzM20Shard060.descent_mod1048576_472231,
    ⟨CollatzM20Shard060.descent_mod1048576_472391,
    ⟨CollatzM20Shard060.descent_mod1048576_473083,
    ⟨CollatzM20Shard060.descent_mod1048576_473327,
    ⟨CollatzM20Shard060.descent_mod1048576_473447,
    ⟨CollatzM20Shard060.descent_mod1048576_474107,
    ⟨CollatzM20Shard060.descent_mod1048576_474139,
    ⟨CollatzM20Shard060.descent_mod1048576_474471,
    ⟨CollatzM20Shard060.descent_mod1048576_474783,
    ⟨CollatzM20Shard060.descent_mod1048576_476543,
    ⟨CollatzM20Shard060.descent_mod1048576_476655,
    ⟨CollatzM20Shard060.descent_mod1048576_476831,
    ⟨CollatzM20Shard060.descent_mod1048576_477087,
    ⟨CollatzM20Shard061.descent_mod1048576_477247,
    ⟨CollatzM20Shard061.descent_mod1048576_477543,
    ⟨CollatzM20Shard061.descent_mod1048576_478535,
    ⟨CollatzM20Shard061.descent_mod1048576_479423,
    ⟨CollatzM20Shard061.descent_mod1048576_479471,
    ⟨CollatzM20Shard061.descent_mod1048576_479899,
    ⟨CollatzM20Shard061.descent_mod1048576_479903,
    ⟨CollatzM20Shard061.descent_mod1048576_480027,
    ⟨CollatzM20Shard061.descent_mod1048576_480639,
    ⟨CollatzM20Shard061.descent_mod1048576_481343,
    ⟨CollatzM20Shard061.descent_mod1048576_481519,
    ⟨CollatzM20Shard061.descent_mod1048576_482299,
    ⟨CollatzM20Shard061.descent_mod1048576_483551,
    ⟨CollatzM20Shard061.descent_mod1048576_483687,
    ⟨CollatzM20Shard061.descent_mod1048576_483995,
    ⟨CollatzM20Shard061.descent_mod1048576_484031,
    ⟨CollatzM20Shard061.descent_mod1048576_484735,
    ⟨CollatzM20Shard061.descent_mod1048576_484847,
    ⟨CollatzM20Shard061.descent_mod1048576_486047,
    ⟨CollatzM20Shard061.descent_mod1048576_486079,
    ⟨CollatzM20Shard062.descent_mod1048576_486207,
    ⟨CollatzM20Shard062.descent_mod1048576_486503,
    ⟨CollatzM20Shard062.descent_mod1048576_487067,
    ⟨CollatzM20Shard062.descent_mod1048576_487535,
    ⟨CollatzM20Shard062.descent_mod1048576_488091,
    ⟨CollatzM20Shard062.descent_mod1048576_488551,
    ⟨CollatzM20Shard062.descent_mod1048576_489471,
    ⟨CollatzM20Shard062.descent_mod1048576_489535,
    ⟨CollatzM20Shard062.descent_mod1048576_489695,
    ⟨CollatzM20Shard062.descent_mod1048576_489855,
    ⟨CollatzM20Shard062.descent_mod1048576_490139,
    ⟨CollatzM20Shard062.descent_mod1048576_490175,
    ⟨CollatzM20Shard062.descent_mod1048576_490303,
    ⟨CollatzM20Shard062.descent_mod1048576_490559,
    ⟨CollatzM20Shard062.descent_mod1048576_490607,
    ⟨CollatzM20Shard062.descent_mod1048576_490623,
    ⟨CollatzM20Shard062.descent_mod1048576_490879,
    ⟨CollatzM20Shard062.descent_mod1048576_491879,
    ⟨CollatzM20Shard062.descent_mod1048576_492543,
    ⟨CollatzM20Shard062.descent_mod1048576_492647,
    ⟨CollatzM20Shard063.descent_mod1048576_493103,
    ⟨CollatzM20Shard063.descent_mod1048576_493211,
    ⟨CollatzM20Shard063.descent_mod1048576_493659,
    ⟨CollatzM20Shard063.descent_mod1048576_493695,
    ⟨CollatzM20Shard063.descent_mod1048576_494235,
    ⟨CollatzM20Shard063.descent_mod1048576_494271,
    ⟨CollatzM20Shard063.descent_mod1048576_494703,
    ⟨CollatzM20Shard063.descent_mod1048576_495151,
    ⟨CollatzM20Shard063.descent_mod1048576_495727,
    ⟨CollatzM20Shard063.descent_mod1048576_495839,
    ⟨CollatzM20Shard063.descent_mod1048576_496319,
    ⟨CollatzM20Shard063.descent_mod1048576_496731,
    ⟨CollatzM20Shard063.descent_mod1048576_497087,
    ⟨CollatzM20Shard063.descent_mod1048576_497199,
    ⟨CollatzM20Shard063.descent_mod1048576_497663,
    ⟨CollatzM20Shard063.descent_mod1048576_497767,
    ⟨CollatzM20Shard063.descent_mod1048576_498111,
    ⟨CollatzM20Shard063.descent_mod1048576_498343,
    ⟨CollatzM20Shard063.descent_mod1048576_498495,
    ⟨CollatzM20Shard063.descent_mod1048576_498751,
    ⟨CollatzM20Shard064.descent_mod1048576_498799,
    ⟨CollatzM20Shard064.descent_mod1048576_499071,
    ⟨CollatzM20Shard064.descent_mod1048576_499231,
    ⟨CollatzM20Shard064.descent_mod1048576_499355,
    ⟨CollatzM20Shard064.descent_mod1048576_499391,
    ⟨CollatzM20Shard064.descent_mod1048576_499519,
    ⟨CollatzM20Shard064.descent_mod1048576_499839,
    ⟨CollatzM20Shard064.descent_mod1048576_499963,
    ⟨CollatzM20Shard064.descent_mod1048576_500159,
    ⟨CollatzM20Shard064.descent_mod1048576_500271,
    ⟨CollatzM20Shard064.descent_mod1048576_500735,
    ⟨CollatzM20Shard064.descent_mod1048576_500839,
    ⟨CollatzM20Shard064.descent_mod1048576_501919,
    ⟨CollatzM20Shard064.descent_mod1048576_502207,
    ⟨CollatzM20Shard064.descent_mod1048576_502427,
    ⟨CollatzM20Shard064.descent_mod1048576_502439,
    ⟨CollatzM20Shard064.descent_mod1048576_502875,
    ⟨CollatzM20Shard064.descent_mod1048576_502943,
    ⟨CollatzM20Shard064.descent_mod1048576_503035,
    ⟨CollatzM20Shard064.descent_mod1048576_503231,
    ⟨CollatzM20Shard065.descent_mod1048576_503343,
    ⟨CollatzM20Shard065.descent_mod1048576_504367,
    ⟨CollatzM20Shard065.descent_mod1048576_504647,
    ⟨CollatzM20Shard065.descent_mod1048576_504799,
    ⟨CollatzM20Shard065.descent_mod1048576_504943,
    ⟨CollatzM20Shard065.descent_mod1048576_504991,
    ⟨CollatzM20Shard065.descent_mod1048576_505055,
    ⟨CollatzM20Shard065.descent_mod1048576_505115,
    ⟨CollatzM20Shard065.descent_mod1048576_505375,
    ⟨CollatzM20Shard065.descent_mod1048576_505535,
    ⟨CollatzM20Shard065.descent_mod1048576_506107,
    ⟨CollatzM20Shard065.descent_mod1048576_507599,
    ⟨CollatzM20Shard065.descent_mod1048576_507647,
    ⟨CollatzM20Shard065.descent_mod1048576_507711,
    ⟨CollatzM20Shard065.descent_mod1048576_508031,
    ⟨CollatzM20Shard065.descent_mod1048576_508155,
    ⟨CollatzM20Shard065.descent_mod1048576_508187,
    ⟨CollatzM20Shard065.descent_mod1048576_508351,
    ⟨CollatzM20Shard065.descent_mod1048576_509087,
    ⟨CollatzM20Shard065.descent_mod1048576_509647,
    ⟨CollatzM20Shard066.descent_mod1048576_509695,
    ⟨CollatzM20Shard066.descent_mod1048576_510631,
    ⟨CollatzM20Shard066.descent_mod1048576_510791,
    ⟨CollatzM20Shard066.descent_mod1048576_511067,
    ⟨CollatzM20Shard066.descent_mod1048576_511227,
    ⟨CollatzM20Shard066.descent_mod1048576_511655,
    ⟨CollatzM20Shard066.descent_mod1048576_511743,
    ⟨CollatzM20Shard066.descent_mod1048576_512283,
    ⟨CollatzM20Shard066.descent_mod1048576_512319,
    ⟨CollatzM20Shard066.descent_mod1048576_512559,
    ⟨CollatzM20Shard066.descent_mod1048576_512767,
    ⟨CollatzM20Shard066.descent_mod1048576_513135,
    ⟨CollatzM20Shard066.descent_mod1048576_513183,
    ⟨CollatzM20Shard066.descent_mod1048576_513307,
    ⟨CollatzM20Shard066.descent_mod1048576_513743,
    ⟨CollatzM20Shard066.descent_mod1048576_513903,
    ⟨CollatzM20Shard066.descent_mod1048576_514015,
    ⟨CollatzM20Shard066.descent_mod1048576_514367,
    ⟨CollatzM20Shard066.descent_mod1048576_514791,
    ⟨CollatzM20Shard066.descent_mod1048576_514815,
    ⟨CollatzM20Shard067.descent_mod1048576_515231,
    ⟨CollatzM20Shard067.descent_mod1048576_516379,
    ⟨CollatzM20Shard067.descent_mod1048576_516839,
    ⟨CollatzM20Shard067.descent_mod1048576_516847,
    ⟨CollatzM20Shard067.descent_mod1048576_516935,
    ⟨CollatzM20Shard067.descent_mod1048576_517371,
    ⟨CollatzM20Shard067.descent_mod1048576_517759,
    ⟨CollatzM20Shard067.descent_mod1048576_517887,
    ⟨CollatzM20Shard067.descent_mod1048576_518463,
    ⟨CollatzM20Shard067.descent_mod1048576_518863,
    ⟨CollatzM20Shard067.descent_mod1048576_518911,
    ⟨CollatzM20Shard067.descent_mod1048576_519847,
    ⟨CollatzM20Shard067.descent_mod1048576_519919,
    ⟨CollatzM20Shard067.descent_mod1048576_520831,
    ⟨CollatzM20Shard067.descent_mod1048576_520935,
    ⟨CollatzM20Shard067.descent_mod1048576_521855,
    ⟨CollatzM20Shard067.descent_mod1048576_521935,
    ⟨CollatzM20Shard067.descent_mod1048576_522095,
    ⟨CollatzM20Shard067.descent_mod1048576_522523,
    ⟨CollatzM20Shard067.descent_mod1048576_522559,
    ⟨CollatzM20Shard068.descent_mod1048576_522991,
    ⟨CollatzM20Shard068.descent_mod1048576_524015,
    ⟨CollatzM20Shard068.descent_mod1048576_524607,
    ⟨CollatzM20Shard068.descent_mod1048576_525339,
    ⟨CollatzM20Shard068.descent_mod1048576_525927,
    ⟨CollatzM20Shard068.descent_mod1048576_525951,
    ⟨CollatzM20Shard068.descent_mod1048576_526055,
    ⟨CollatzM20Shard068.descent_mod1048576_526151,
    ⟨CollatzM20Shard068.descent_mod1048576_527103,
    ⟨CollatzM20Shard068.descent_mod1048576_527387,
    ⟨CollatzM20Shard068.descent_mod1048576_527679,
    ⟨CollatzM20Shard068.descent_mod1048576_528239,
    ⟨CollatzM20Shard068.descent_mod1048576_528287,
    ⟨CollatzM20Shard068.descent_mod1048576_529023,
    ⟨CollatzM20Shard068.descent_mod1048576_529127,
    ⟨CollatzM20Shard068.descent_mod1048576_530023,
    ⟨CollatzM20Shard068.descent_mod1048576_530715,
    ⟨CollatzM20Shard068.descent_mod1048576_530911,
    ⟨CollatzM20Shard068.descent_mod1048576_531483,
    ⟨CollatzM20Shard068.descent_mod1048576_532207,
    ⟨CollatzM20Shard069.descent_mod1048576_532975,
    ⟨CollatzM20Shard069.descent_mod1048576_533439,
    ⟨CollatzM20Shard069.descent_mod1048576_533823,
    ⟨CollatzM20Shard069.descent_mod1048576_533983,
    ⟨CollatzM20Shard069.descent_mod1048576_534119,
    ⟨CollatzM20Shard069.descent_mod1048576_536047,
    ⟨CollatzM20Shard069.descent_mod1048576_536479,
    ⟨CollatzM20Shard069.descent_mod1048576_536603,
    ⟨CollatzM20Shard069.descent_mod1048576_537055,
    ⟨CollatzM20Shard069.descent_mod1048576_537179,
    ⟨CollatzM20Shard069.descent_mod1048576_537535,
    ⟨CollatzM20Shard069.descent_mod1048576_538079,
    ⟨CollatzM20Shard069.descent_mod1048576_539239,
    ⟨CollatzM20Shard069.descent_mod1048576_539675,
    ⟨CollatzM20Shard069.descent_mod1048576_540007,
    ⟨CollatzM20Shard069.descent_mod1048576_540263,
    ⟨CollatzM20Shard069.descent_mod1048576_540607,
    ⟨CollatzM20Shard069.descent_mod1048576_541275,
    ⟨CollatzM20Shard069.descent_mod1048576_541631,
    ⟨CollatzM20Shard069.descent_mod1048576_542191,
    ⟨CollatzM20Shard070.descent_mod1048576_542623,
    ⟨CollatzM20Shard070.descent_mod1048576_542783,
    ⟨CollatzM20Shard070.descent_mod1048576_543079,
    ⟨CollatzM20Shard070.descent_mod1048576_543483,
    ⟨CollatzM20Shard070.descent_mod1048576_543679,
    ⟨CollatzM20Shard070.descent_mod1048576_546271,
    ⟨CollatzM20Shard070.descent_mod1048576_546751,
    ⟨CollatzM20Shard070.descent_mod1048576_546879,
    ⟨CollatzM20Shard070.descent_mod1048576_547023,
    ⟨CollatzM20Shard070.descent_mod1048576_547775,
    ⟨CollatzM20Shard070.descent_mod1048576_548455,
    ⟨CollatzM20Shard070.descent_mod1048576_549223,
    ⟨CollatzM20Shard070.descent_mod1048576_549467,
    ⟨CollatzM20Shard070.descent_mod1048576_549627,
    ⟨CollatzM20Shard070.descent_mod1048576_550143,
    ⟨CollatzM20Shard070.descent_mod1048576_550271,
    ⟨CollatzM20Shard070.descent_mod1048576_550383,
    ⟨CollatzM20Shard070.descent_mod1048576_550491,
    ⟨CollatzM20Shard070.descent_mod1048576_551119,
    ⟨CollatzM20Shard070.descent_mod1048576_552895,
    ⟨CollatzM20Shard071.descent_mod1048576_553627,
    ⟨CollatzM20Shard071.descent_mod1048576_553663,
    ⟨CollatzM20Shard071.descent_mod1048576_554215,
    ⟨CollatzM20Shard071.descent_mod1048576_554919,
    ⟨CollatzM20Shard071.descent_mod1048576_555071,
    ⟨CollatzM20Shard071.descent_mod1048576_555215,
    ⟨CollatzM20Shard071.descent_mod1048576_555675,
    ⟨CollatzM20Shard071.descent_mod1048576_555771,
    ⟨CollatzM20Shard071.descent_mod1048576_555807,
    ⟨CollatzM20Shard071.descent_mod1048576_555967,
    ⟨CollatzM20Shard071.descent_mod1048576_556095,
    ⟨CollatzM20Shard071.descent_mod1048576_556415,
    ⟨CollatzM20Shard071.descent_mod1048576_556575,
    ⟨CollatzM20Shard071.descent_mod1048576_556735,
    ⟨CollatzM20Shard071.descent_mod1048576_557415,
    ⟨CollatzM20Shard071.descent_mod1048576_558311,
    ⟨CollatzM20Shard071.descent_mod1048576_558495,
    ⟨CollatzM20Shard071.descent_mod1048576_558683,
    ⟨CollatzM20Shard071.descent_mod1048576_559015,
    ⟨CollatzM20Shard071.descent_mod1048576_559103,
    ⟨CollatzM20Shard072.descent_mod1048576_559771,
    ⟨CollatzM20Shard072.descent_mod1048576_559807,
    ⟨CollatzM20Shard072.descent_mod1048576_560127,
    ⟨CollatzM20Shard072.descent_mod1048576_560335,
    ⟨CollatzM20Shard072.descent_mod1048576_561223,
    ⟨CollatzM20Shard072.descent_mod1048576_561263,
    ⟨CollatzM20Shard072.descent_mod1048576_561359,
    ⟨CollatzM20Shard072.descent_mod1048576_561375,
    ⟨CollatzM20Shard072.descent_mod1048576_561567,
    ⟨CollatzM20Shard072.descent_mod1048576_561855,
    ⟨CollatzM20Shard072.descent_mod1048576_561951,
    ⟨CollatzM20Shard072.descent_mod1048576_562407,
    ⟨CollatzM20Shard072.descent_mod1048576_562431,
    ⟨CollatzM20Shard072.descent_mod1048576_563199,
    ⟨CollatzM20Shard072.descent_mod1048576_563879,
    ⟨CollatzM20Shard072.descent_mod1048576_564287,
    ⟨CollatzM20Shard072.descent_mod1048576_564335,
    ⟨CollatzM20Shard072.descent_mod1048576_564607,
    ⟨CollatzM20Shard072.descent_mod1048576_564763,
    ⟨CollatzM20Shard072.descent_mod1048576_564767,
    ⟨CollatzM20Shard073.descent_mod1048576_564891,
    ⟨CollatzM20Shard073.descent_mod1048576_564927,
    ⟨CollatzM20Shard073.descent_mod1048576_564987,
    ⟨CollatzM20Shard073.descent_mod1048576_565663,
    ⟨CollatzM20Shard073.descent_mod1048576_566271,
    ⟨CollatzM20Shard073.descent_mod1048576_566687,
    ⟨CollatzM20Shard073.descent_mod1048576_567143,
    ⟨CollatzM20Shard073.descent_mod1048576_567207,
    ⟨CollatzM20Shard073.descent_mod1048576_567367,
    ⟨CollatzM20Shard073.descent_mod1048576_567527,
    ⟨CollatzM20Shard073.descent_mod1048576_567963,
    ⟨CollatzM20Shard073.descent_mod1048576_567975,
    ⟨CollatzM20Shard073.descent_mod1048576_568231,
    ⟨CollatzM20Shard073.descent_mod1048576_568551,
    ⟨CollatzM20Shard073.descent_mod1048576_568859,
    ⟨CollatzM20Shard073.descent_mod1048576_569551,
    ⟨CollatzM20Shard073.descent_mod1048576_569759,
    ⟨CollatzM20Shard073.descent_mod1048576_570215,
    ⟨CollatzM20Shard073.descent_mod1048576_570479,
    ⟨CollatzM20Shard073.descent_mod1048576_570591,
    ⟨CollatzM20Shard074.descent_mod1048576_570911,
    ⟨CollatzM20Shard074.descent_mod1048576_571071,
    ⟨CollatzM20Shard074.descent_mod1048576_571239,
    ⟨CollatzM20Shard074.descent_mod1048576_572575,
    ⟨CollatzM20Shard074.descent_mod1048576_572955,
    ⟨CollatzM20Shard074.descent_mod1048576_573511,
    ⟨CollatzM20Shard074.descent_mod1048576_575335,
    ⟨CollatzM20Shard074.descent_mod1048576_575903,
    ⟨CollatzM20Shard074.descent_mod1048576_576167,
    ⟨CollatzM20Shard074.descent_mod1048576_576423,
    ⟨CollatzM20Shard074.descent_mod1048576_576495,
    ⟨CollatzM20Shard074.descent_mod1048576_576743,
    ⟨CollatzM20Shard074.descent_mod1048576_577191,
    ⟨CollatzM20Shard074.descent_mod1048576_578075,
    ⟨CollatzM20Shard074.descent_mod1048576_578287,
    ⟨CollatzM20Shard074.descent_mod1048576_578407,
    ⟨CollatzM20Shard074.descent_mod1048576_578431,
    ⟨CollatzM20Shard074.descent_mod1048576_578671,
    ⟨CollatzM20Shard074.descent_mod1048576_578719,
    ⟨CollatzM20Shard074.descent_mod1048576_578843,
    ⟨CollatzM20Shard075.descent_mod1048576_579099,
    ⟨CollatzM20Shard075.descent_mod1048576_580335,
    ⟨CollatzM20Shard075.descent_mod1048576_580591,
    ⟨CollatzM20Shard075.descent_mod1048576_580767,
    ⟨CollatzM20Shard075.descent_mod1048576_581915,
    ⟨CollatzM20Shard075.descent_mod1048576_581951,
    ⟨CollatzM20Shard075.descent_mod1048576_582383,
    ⟨CollatzM20Shard075.descent_mod1048576_582471,
    ⟨CollatzM20Shard075.descent_mod1048576_582727,
    ⟨CollatzM20Shard075.descent_mod1048576_584095,
    ⟨CollatzM20Shard075.descent_mod1048576_585023,
    ⟨CollatzM20Shard075.descent_mod1048576_585383,
    ⟨CollatzM20Shard075.descent_mod1048576_585455,
    ⟨CollatzM20Shard075.descent_mod1048576_586783,
    ⟨CollatzM20Shard075.descent_mod1048576_587291,
    ⟨CollatzM20Shard075.descent_mod1048576_588059,
    ⟨CollatzM20Shard075.descent_mod1048576_588095,
    ⟨CollatzM20Shard075.descent_mod1048576_588527,
    ⟨CollatzM20Shard075.descent_mod1048576_588783,
    ⟨CollatzM20Shard075.descent_mod1048576_589551,
    ⟨CollatzM20Shard076.descent_mod1048576_589807,
    ⟨CollatzM20Shard076.descent_mod1048576_589855,
    ⟨CollatzM20Shard076.descent_mod1048576_589991,
    ⟨CollatzM20Shard076.descent_mod1048576_590143,
    ⟨CollatzM20Shard076.descent_mod1048576_590719,
    ⟨CollatzM20Shard076.descent_mod1048576_591487,
    ⟨CollatzM20Shard076.descent_mod1048576_591687,
    ⟨CollatzM20Shard076.descent_mod1048576_592039,
    ⟨CollatzM20Shard076.descent_mod1048576_592351,
    ⟨CollatzM20Shard076.descent_mod1048576_593051,
    ⟨CollatzM20Shard076.descent_mod1048576_593215,
    ⟨CollatzM20Shard076.descent_mod1048576_593755,
    ⟨CollatzM20Shard076.descent_mod1048576_593951,
    ⟨CollatzM20Shard076.descent_mod1048576_594399,
    ⟨CollatzM20Shard076.descent_mod1048576_594559,
    ⟨CollatzM20Shard076.descent_mod1048576_594975,
    ⟨CollatzM20Shard076.descent_mod1048576_596135,
    ⟨CollatzM20Shard076.descent_mod1048576_596251,
    ⟨CollatzM20Shard076.descent_mod1048576_596447,
    ⟨CollatzM20Shard076.descent_mod1048576_596479,
    ⟨CollatzM20Shard077.descent_mod1048576_597147,
    ⟨CollatzM20Shard077.descent_mod1048576_597183,
    ⟨CollatzM20Shard077.descent_mod1048576_597503,
    ⟨CollatzM20Shard077.descent_mod1048576_597743,
    ⟨CollatzM20Shard077.descent_mod1048576_597851,
    ⟨CollatzM20Shard077.descent_mod1048576_597999,
    ⟨CollatzM20Shard077.descent_mod1048576_598047,
    ⟨CollatzM20Shard077.descent_mod1048576_599359,
    ⟨CollatzM20Shard077.descent_mod1048576_599519,
    ⟨CollatzM20Shard077.descent_mod1048576_599551,
    ⟨CollatzM20Shard077.descent_mod1048576_599655,
    ⟨CollatzM20Shard077.descent_mod1048576_600059,
    ⟨CollatzM20Shard077.descent_mod1048576_600231,
    ⟨CollatzM20Shard077.descent_mod1048576_601243,
    ⟨CollatzM20Shard077.descent_mod1048576_602279,
    ⟨CollatzM20Shard077.descent_mod1048576_602591,
    ⟨CollatzM20Shard077.descent_mod1048576_602715,
    ⟨CollatzM20Shard077.descent_mod1048576_603327,
    ⟨CollatzM20Shard077.descent_mod1048576_603599,
    ⟨CollatzM20Shard077.descent_mod1048576_603615,
    ⟨CollatzM20Shard078.descent_mod1048576_603647,
    ⟨CollatzM20Shard078.descent_mod1048576_604191,
    ⟨CollatzM20Shard078.descent_mod1048576_604783,
    ⟨CollatzM20Shard078.descent_mod1048576_605351,
    ⟨CollatzM20Shard078.descent_mod1048576_605799,
    ⟨CollatzM20Shard078.descent_mod1048576_605979,
    ⟨CollatzM20Shard078.descent_mod1048576_606043,
    ⟨CollatzM20Shard078.descent_mod1048576_606203,
    ⟨CollatzM20Shard078.descent_mod1048576_606363,
    ⟨CollatzM20Shard078.descent_mod1048576_606811,
    ⟨CollatzM20Shard078.descent_mod1048576_607067,
    ⟨CollatzM20Shard078.descent_mod1048576_607167,
    ⟨CollatzM20Shard078.descent_mod1048576_607387,
    ⟨CollatzM20Shard078.descent_mod1048576_607695,
    ⟨CollatzM20Shard078.descent_mod1048576_607743,
    ⟨CollatzM20Shard078.descent_mod1048576_608583,
    ⟨CollatzM20Shard078.descent_mod1048576_608879,
    ⟨CollatzM20Shard078.descent_mod1048576_609051,
    ⟨CollatzM20Shard078.descent_mod1048576_609215,
    ⟨CollatzM20Shard078.descent_mod1048576_609471,
    ⟨CollatzM20Shard079.descent_mod1048576_609791,
    ⟨CollatzM20Shard079.descent_mod1048576_610075,
    ⟨CollatzM20Shard079.descent_mod1048576_610791,
    ⟨CollatzM20Shard079.descent_mod1048576_611495,
    ⟨CollatzM20Shard079.descent_mod1048576_611655,
    ⟨CollatzM20Shard079.descent_mod1048576_611791,
    ⟨CollatzM20Shard079.descent_mod1048576_611807,
    ⟨CollatzM20Shard079.descent_mod1048576_612347,
    ⟨CollatzM20Shard079.descent_mod1048576_612383,
    ⟨CollatzM20Shard079.descent_mod1048576_613151,
    ⟨CollatzM20Shard079.descent_mod1048576_613311,
    ⟨CollatzM20Shard079.descent_mod1048576_613615,
    ⟨CollatzM20Shard079.descent_mod1048576_613991,
    ⟨CollatzM20Shard079.descent_mod1048576_614171,
    ⟨CollatzM20Shard079.descent_mod1048576_614727,
    ⟨CollatzM20Shard079.descent_mod1048576_614887,
    ⟨CollatzM20Shard079.descent_mod1048576_615003,
    ⟨CollatzM20Shard079.descent_mod1048576_615259,
    ⟨CollatzM20Shard079.descent_mod1048576_615579,
    ⟨CollatzM20Shard079.descent_mod1048576_615751,
    ⟨CollatzM20Shard080.descent_mod1048576_616027,
    ⟨CollatzM20Shard080.descent_mod1048576_616095,
    ⟨CollatzM20Shard080.descent_mod1048576_616911,
    ⟨CollatzM20Shard080.descent_mod1048576_617071,
    ⟨CollatzM20Shard080.descent_mod1048576_617243,
    ⟨CollatzM20Shard080.descent_mod1048576_617935,
    ⟨CollatzM20Shard080.descent_mod1048576_618095,
    ⟨CollatzM20Shard080.descent_mod1048576_618431,
    ⟨CollatzM20Shard080.descent_mod1048576_618687,
    ⟨CollatzM20Shard080.descent_mod1048576_618983,
    ⟨CollatzM20Shard080.descent_mod1048576_619167,
    ⟨CollatzM20Shard080.descent_mod1048576_620455,
    ⟨CollatzM20Shard080.descent_mod1048576_620751,
    ⟨CollatzM20Shard080.descent_mod1048576_620783,
    ⟨CollatzM20Shard080.descent_mod1048576_621307,
    ⟨CollatzM20Shard080.descent_mod1048576_621343,
    ⟨CollatzM20Shard080.descent_mod1048576_621503,
    ⟨CollatzM20Shard080.descent_mod1048576_621563,
    ⟨CollatzM20Shard080.descent_mod1048576_621807,
    ⟨CollatzM20Shard080.descent_mod1048576_622239,
    ⟨CollatzM20Shard081.descent_mod1048576_623263,
    ⟨CollatzM20Shard081.descent_mod1048576_623943,
    ⟨CollatzM20Shard081.descent_mod1048576_624103,
    ⟨CollatzM20Shard081.descent_mod1048576_624219,
    ⟨CollatzM20Shard081.descent_mod1048576_624551,
    ⟨CollatzM20Shard081.descent_mod1048576_625127,
    ⟨CollatzM20Shard081.descent_mod1048576_625471,
    ⟨CollatzM20Shard081.descent_mod1048576_625791,
    ⟨CollatzM20Shard081.descent_mod1048576_626127,
    ⟨CollatzM20Shard081.descent_mod1048576_626287,
    ⟨CollatzM20Shard081.descent_mod1048576_626895,
    ⟨CollatzM20Shard081.descent_mod1048576_626927,
    ⟨CollatzM20Shard081.descent_mod1048576_627487,
    ⟨CollatzM20Shard081.descent_mod1048576_627815,
    ⟨CollatzM20Shard081.descent_mod1048576_627839,
    ⟨CollatzM20Shard081.descent_mod1048576_627943,
    ⟨CollatzM20Shard081.descent_mod1048576_627967,
    ⟨CollatzM20Shard081.descent_mod1048576_628827,
    ⟨CollatzM20Shard081.descent_mod1048576_630523,
    ⟨CollatzM20Shard081.descent_mod1048576_630875,
    ⟨CollatzM20Shard082.descent_mod1048576_631455,
    ⟨CollatzM20Shard082.descent_mod1048576_631615,
    ⟨CollatzM20Shard082.descent_mod1048576_631935,
    ⟨CollatzM20Shard082.descent_mod1048576_632223,
    ⟨CollatzM20Shard082.descent_mod1048576_632367,
    ⟨CollatzM20Shard082.descent_mod1048576_632743,
    ⟨CollatzM20Shard082.descent_mod1048576_633319,
    ⟨CollatzM20Shard082.descent_mod1048576_633767,
    ⟨CollatzM20Shard082.descent_mod1048576_634087,
    ⟨CollatzM20Shard082.descent_mod1048576_634971,
    ⟨CollatzM20Shard082.descent_mod1048576_635087,
    ⟨CollatzM20Shard082.descent_mod1048576_635295,
    ⟨CollatzM20Shard082.descent_mod1048576_636031,
    ⟨CollatzM20Shard082.descent_mod1048576_636351,
    ⟨CollatzM20Shard082.descent_mod1048576_636463,
    ⟨CollatzM20Shard082.descent_mod1048576_637375,
    ⟨CollatzM20Shard082.descent_mod1048576_637759,
    ⟨CollatzM20Shard082.descent_mod1048576_638079,
    ⟨CollatzM20Shard082.descent_mod1048576_638399,
    ⟨CollatzM20Shard082.descent_mod1048576_638491,
    ⟨CollatzM20Shard083.descent_mod1048576_639047,
    ⟨CollatzM20Shard083.descent_mod1048576_639067,
    ⟨CollatzM20Shard083.descent_mod1048576_639535,
    ⟨CollatzM20Shard083.descent_mod1048576_640103,
    ⟨CollatzM20Shard083.descent_mod1048576_640559,
    ⟨CollatzM20Shard083.descent_mod1048576_640871,
    ⟨CollatzM20Shard083.descent_mod1048576_641115,
    ⟨CollatzM20Shard083.descent_mod1048576_641151,
    ⟨CollatzM20Shard083.descent_mod1048576_641439,
    ⟨CollatzM20Shard083.descent_mod1048576_641471,
    ⟨CollatzM20Shard083.descent_mod1048576_641959,
    ⟨CollatzM20Shard083.descent_mod1048576_642031,
    ⟨CollatzM20Shard083.descent_mod1048576_642279,
    ⟨CollatzM20Shard083.descent_mod1048576_642607,
    ⟨CollatzM20Shard083.descent_mod1048576_643943,
    ⟨CollatzM20Shard083.descent_mod1048576_644187,
    ⟨CollatzM20Shard083.descent_mod1048576_644543,
    ⟨CollatzM20Shard083.descent_mod1048576_644635,
    ⟨CollatzM20Shard083.descent_mod1048576_645567,
    ⟨CollatzM20Shard083.descent_mod1048576_645679,
    ⟨CollatzM20Shard084.descent_mod1048576_646127,
    ⟨CollatzM20Shard084.descent_mod1048576_646703,
    ⟨CollatzM20Shard084.descent_mod1048576_646975,
    ⟨CollatzM20Shard084.descent_mod1048576_647295,
    ⟨CollatzM20Shard084.descent_mod1048576_647419,
    ⟨CollatzM20Shard084.descent_mod1048576_647615,
    ⟨CollatzM20Shard084.descent_mod1048576_648263,
    ⟨CollatzM20Shard084.descent_mod1048576_648911,
    ⟨CollatzM20Shard084.descent_mod1048576_649627,
    ⟨CollatzM20Shard084.descent_mod1048576_649631,
    ⟨CollatzM20Shard084.descent_mod1048576_650331,
    ⟨CollatzM20Shard084.descent_mod1048576_650491,
    ⟨CollatzM20Shard084.descent_mod1048576_650687,
    ⟨CollatzM20Shard084.descent_mod1048576_651711,
    ⟨CollatzM20Shard084.descent_mod1048576_651823,
    ⟨CollatzM20Shard084.descent_mod1048576_652827,
    ⟨CollatzM20Shard084.descent_mod1048576_653563,
    ⟨CollatzM20Shard084.descent_mod1048576_653723,
    ⟨CollatzM20Shard084.descent_mod1048576_654079,
    ⟨CollatzM20Shard084.descent_mod1048576_654319,
    ⟨CollatzM20Shard085.descent_mod1048576_654587,
    ⟨CollatzM20Shard085.descent_mod1048576_654895,
    ⟨CollatzM20Shard085.descent_mod1048576_655343,
    ⟨CollatzM20Shard085.descent_mod1048576_656103,
    ⟨CollatzM20Shard085.descent_mod1048576_656255,
    ⟨CollatzM20Shard085.descent_mod1048576_657151,
    ⟨CollatzM20Shard085.descent_mod1048576_657819,
    ⟨CollatzM20Shard085.descent_mod1048576_659291,
    ⟨CollatzM20Shard085.descent_mod1048576_659623,
    ⟨CollatzM20Shard085.descent_mod1048576_659903,
    ⟨CollatzM20Shard085.descent_mod1048576_660511,
    ⟨CollatzM20Shard085.descent_mod1048576_661199,
    ⟨CollatzM20Shard085.descent_mod1048576_661359,
    ⟨CollatzM20Shard085.descent_mod1048576_662695,
    ⟨CollatzM20Shard085.descent_mod1048576_662779,
    ⟨CollatzM20Shard085.descent_mod1048576_662939,
    ⟨CollatzM20Shard085.descent_mod1048576_663387,
    ⟨CollatzM20Shard085.descent_mod1048576_663535,
    ⟨CollatzM20Shard085.descent_mod1048576_663583,
    ⟨CollatzM20Shard085.descent_mod1048576_663963,
    ⟨CollatzM20Shard086.descent_mod1048576_665455,
    ⟨CollatzM20Shard086.descent_mod1048576_665767,
    ⟨CollatzM20Shard086.descent_mod1048576_666367,
    ⟨CollatzM20Shard086.descent_mod1048576_666651,
    ⟨CollatzM20Shard086.descent_mod1048576_666779,
    ⟨CollatzM20Shard086.descent_mod1048576_667135,
    ⟨CollatzM20Shard086.descent_mod1048576_667815,
    ⟨CollatzM20Shard086.descent_mod1048576_668143,
    ⟨CollatzM20Shard086.descent_mod1048576_668391,
    ⟨CollatzM20Shard086.descent_mod1048576_669727,
    ⟨CollatzM20Shard086.descent_mod1048576_670023,
    ⟨CollatzM20Shard086.descent_mod1048576_670191,
    ⟨CollatzM20Shard086.descent_mod1048576_670319,
    ⟨CollatzM20Shard086.descent_mod1048576_670887,
    ⟨CollatzM20Shard086.descent_mod1048576_671579,
    ⟨CollatzM20Shard086.descent_mod1048576_672071,
    ⟨CollatzM20Shard086.descent_mod1048576_672155,
    ⟨CollatzM20Shard086.descent_mod1048576_672603,
    ⟨CollatzM20Shard086.descent_mod1048576_672923,
    ⟨CollatzM20Shard086.descent_mod1048576_673279,
    ⟨CollatzM20Shard087.descent_mod1048576_673647,
    ⟨CollatzM20Shard087.descent_mod1048576_674119,
    ⟨CollatzM20Shard087.descent_mod1048576_674287,
    ⟨CollatzM20Shard087.descent_mod1048576_674415,
    ⟨CollatzM20Shard087.descent_mod1048576_674671,
    ⟨CollatzM20Shard087.descent_mod1048576_675007,
    ⟨CollatzM20Shard087.descent_mod1048576_675175,
    ⟨CollatzM20Shard087.descent_mod1048576_675327,
    ⟨CollatzM20Shard087.descent_mod1048576_675743,
    ⟨CollatzM20Shard087.descent_mod1048576_677031,
    ⟨CollatzM20Shard087.descent_mod1048576_677191,
    ⟨CollatzM20Shard087.descent_mod1048576_677223,
    ⟨CollatzM20Shard087.descent_mod1048576_677327,
    ⟨CollatzM20Shard087.descent_mod1048576_677535,
    ⟨CollatzM20Shard087.descent_mod1048576_677883,
    ⟨CollatzM20Shard087.descent_mod1048576_677919,
    ⟨CollatzM20Shard087.descent_mod1048576_678383,
    ⟨CollatzM20Shard087.descent_mod1048576_678939,
    ⟨CollatzM20Shard087.descent_mod1048576_679583,
    ⟨CollatzM20Shard087.descent_mod1048576_679707,
    ⟨CollatzM20Shard088.descent_mod1048576_679839,
    ⟨CollatzM20Shard088.descent_mod1048576_680263,
    ⟨CollatzM20Shard088.descent_mod1048576_680431,
    ⟨CollatzM20Shard088.descent_mod1048576_680795,
    ⟨CollatzM20Shard088.descent_mod1048576_681115,
    ⟨CollatzM20Shard088.descent_mod1048576_681199,
    ⟨CollatzM20Shard088.descent_mod1048576_681287,
    ⟨CollatzM20Shard088.descent_mod1048576_681319,
    ⟨CollatzM20Shard088.descent_mod1048576_681631,
    ⟨CollatzM20Shard088.descent_mod1048576_682047,
    ⟨CollatzM20Shard088.descent_mod1048576_682223,
    ⟨CollatzM20Shard088.descent_mod1048576_682607,
    ⟨CollatzM20Shard088.descent_mod1048576_682779,
    ⟨CollatzM20Shard088.descent_mod1048576_682863,
    ⟨CollatzM20Shard088.descent_mod1048576_683471,
    ⟨CollatzM20Shard088.descent_mod1048576_683503,
    ⟨CollatzM20Shard088.descent_mod1048576_683631,
    ⟨CollatzM20Shard088.descent_mod1048576_684223,
    ⟨CollatzM20Shard088.descent_mod1048576_684271,
    ⟨CollatzM20Shard088.descent_mod1048576_684519,
    ⟨CollatzM20Shard089.descent_mod1048576_684703,
    ⟨CollatzM20Shard089.descent_mod1048576_685415,
    ⟨CollatzM20Shard089.descent_mod1048576_686319,
    ⟨CollatzM20Shard089.descent_mod1048576_687099,
    ⟨CollatzM20Shard089.descent_mod1048576_687343,
    ⟨CollatzM20Shard089.descent_mod1048576_687463,
    ⟨CollatzM20Shard089.descent_mod1048576_687775,
    ⟨CollatzM20Shard089.descent_mod1048576_688031,
    ⟨CollatzM20Shard089.descent_mod1048576_688191,
    ⟨CollatzM20Shard089.descent_mod1048576_688799,
    ⟨CollatzM20Shard089.descent_mod1048576_689055,
    ⟨CollatzM20Shard089.descent_mod1048576_689479,
    ⟨CollatzM20Shard089.descent_mod1048576_689647,
    ⟨CollatzM20Shard089.descent_mod1048576_690535,
    ⟨CollatzM20Shard089.descent_mod1048576_690663,
    ⟨CollatzM20Shard089.descent_mod1048576_691663,
    ⟨CollatzM20Shard089.descent_mod1048576_691823,
    ⟨CollatzM20Shard089.descent_mod1048576_692463,
    ⟨CollatzM20Shard089.descent_mod1048576_694335,
    ⟨CollatzM20Shard089.descent_mod1048576_694939,
    ⟨CollatzM20Shard090.descent_mod1048576_695423,
    ⟨CollatzM20Shard090.descent_mod1048576_696431,
    ⟨CollatzM20Shard090.descent_mod1048576_696679,
    ⟨CollatzM20Shard090.descent_mod1048576_696991,
    ⟨CollatzM20Shard090.descent_mod1048576_697247,
    ⟨CollatzM20Shard090.descent_mod1048576_697727,
    ⟨CollatzM20Shard090.descent_mod1048576_698459,
    ⟨CollatzM20Shard090.descent_mod1048576_698479,
    ⟨CollatzM20Shard090.descent_mod1048576_698495,
    ⟨CollatzM20Shard090.descent_mod1048576_698855,
    ⟨CollatzM20Shard090.descent_mod1048576_699391,
    ⟨CollatzM20Shard090.descent_mod1048576_701119,
    ⟨CollatzM20Shard090.descent_mod1048576_701439,
    ⟨CollatzM20Shard090.descent_mod1048576_701531,
    ⟨CollatzM20Shard090.descent_mod1048576_701567,
    ⟨CollatzM20Shard090.descent_mod1048576_702575,
    ⟨CollatzM20Shard090.descent_mod1048576_703143,
    ⟨CollatzM20Shard090.descent_mod1048576_703295,
    ⟨CollatzM20Shard090.descent_mod1048576_703551,
    ⟨CollatzM20Shard090.descent_mod1048576_703615,
    ⟨CollatzM20Shard091.descent_mod1048576_703871,
    ⟨CollatzM20Shard091.descent_mod1048576_704031,
    ⟨CollatzM20Shard091.descent_mod1048576_704191,
    ⟨CollatzM20Shard091.descent_mod1048576_704603,
    ⟨CollatzM20Shard091.descent_mod1048576_705639,
    ⟨CollatzM20Shard091.descent_mod1048576_705983,
    ⟨CollatzM20Shard091.descent_mod1048576_706095,
    ⟨CollatzM20Shard091.descent_mod1048576_706651,
    ⟨CollatzM20Shard091.descent_mod1048576_706671,
    ⟨CollatzM20Shard091.descent_mod1048576_706687,
    ⟨CollatzM20Shard091.descent_mod1048576_707227,
    ⟨CollatzM20Shard091.descent_mod1048576_707263,
    ⟨CollatzM20Shard091.descent_mod1048576_707583,
    ⟨CollatzM20Shard091.descent_mod1048576_708031,
    ⟨CollatzM20Shard091.descent_mod1048576_708127,
    ⟨CollatzM20Shard091.descent_mod1048576_708143,
    ⟨CollatzM20Shard091.descent_mod1048576_708287,
    ⟨CollatzM20Shard091.descent_mod1048576_708719,
    ⟨CollatzM20Shard091.descent_mod1048576_708859,
    ⟨CollatzM20Shard091.descent_mod1048576_709287,
    ⟨CollatzM20Shard092.descent_mod1048576_709723,
    ⟨CollatzM20Shard092.descent_mod1048576_710079,
    ⟨CollatzM20Shard092.descent_mod1048576_710907,
    ⟨CollatzM20Shard092.descent_mod1048576_711103,
    ⟨CollatzM20Shard092.descent_mod1048576_711791,
    ⟨CollatzM20Shard092.descent_mod1048576_712239,
    ⟨CollatzM20Shard092.descent_mod1048576_712511,
    ⟨CollatzM20Shard092.descent_mod1048576_712831,
    ⟨CollatzM20Shard092.descent_mod1048576_712863,
    ⟨CollatzM20Shard092.descent_mod1048576_712955,
    ⟨CollatzM20Shard092.descent_mod1048576_713151,
    ⟨CollatzM20Shard092.descent_mod1048576_713727,
    ⟨CollatzM20Shard092.descent_mod1048576_714011,
    ⟨CollatzM20Shard092.descent_mod1048576_715431,
    ⟨CollatzM20Shard092.descent_mod1048576_715867,
    ⟨CollatzM20Shard092.descent_mod1048576_716027,
    ⟨CollatzM20Shard092.descent_mod1048576_716059,
    ⟨CollatzM20Shard092.descent_mod1048576_716223,
    ⟨CollatzM20Shard092.descent_mod1048576_716319,
    ⟨CollatzM20Shard092.descent_mod1048576_716479,
    ⟨CollatzM20Shard093.descent_mod1048576_717247,
    ⟨CollatzM20Shard093.descent_mod1048576_717343,
    ⟨CollatzM20Shard093.descent_mod1048576_717359,
    ⟨CollatzM20Shard093.descent_mod1048576_717551,
    ⟨CollatzM20Shard093.descent_mod1048576_717935,
    ⟨CollatzM20Shard093.descent_mod1048576_718591,
    ⟨CollatzM20Shard093.descent_mod1048576_719099,
    ⟨CollatzM20Shard093.descent_mod1048576_720031,
    ⟨CollatzM20Shard093.descent_mod1048576_720123,
    ⟨CollatzM20Shard093.descent_mod1048576_720155,
    ⟨CollatzM20Shard093.descent_mod1048576_720431,
    ⟨CollatzM20Shard093.descent_mod1048576_721055,
    ⟨CollatzM20Shard093.descent_mod1048576_721647,
    ⟨CollatzM20Shard093.descent_mod1048576_722687,
    ⟨CollatzM20Shard093.descent_mod1048576_723355,
    ⟨CollatzM20Shard093.descent_mod1048576_724251,
    ⟨CollatzM20Shard093.descent_mod1048576_724647,
    ⟨CollatzM20Shard093.descent_mod1048576_724719,
    ⟨CollatzM20Shard093.descent_mod1048576_725439,
    ⟨CollatzM20Shard093.descent_mod1048576_725535,
    ⟨CollatzM20Shard094.descent_mod1048576_725743,
    ⟨CollatzM20Shard094.descent_mod1048576_726175,
    ⟨CollatzM20Shard094.descent_mod1048576_726299,
    ⟨CollatzM20Shard094.descent_mod1048576_726735,
    ⟨CollatzM20Shard094.descent_mod1048576_726895,
    ⟨CollatzM20Shard094.descent_mod1048576_727791,
    ⟨CollatzM20Shard094.descent_mod1048576_728315,
    ⟨CollatzM20Shard094.descent_mod1048576_728703,
    ⟨CollatzM20Shard094.descent_mod1048576_729371,
    ⟨CollatzM20Shard094.descent_mod1048576_729407,
    ⟨CollatzM20Shard094.descent_mod1048576_729499,
    ⟨CollatzM20Shard094.descent_mod1048576_729727,
    ⟨CollatzM20Shard094.descent_mod1048576_730863,
    ⟨CollatzM20Shard094.descent_mod1048576_730991,
    ⟨CollatzM20Shard094.descent_mod1048576_731615,
    ⟨CollatzM20Shard094.descent_mod1048576_731775,
    ⟨CollatzM20Shard094.descent_mod1048576_731887,
    ⟨CollatzM20Shard094.descent_mod1048576_731903,
    ⟨CollatzM20Shard094.descent_mod1048576_732479,
    ⟨CollatzM20Shard094.descent_mod1048576_733927,
    ⟨CollatzM20Shard095.descent_mod1048576_735515,
    ⟨CollatzM20Shard095.descent_mod1048576_735551,
    ⟨CollatzM20Shard095.descent_mod1048576_735711,
    ⟨CollatzM20Shard095.descent_mod1048576_735871,
    ⟨CollatzM20Shard095.descent_mod1048576_736575,
    ⟨CollatzM20Shard095.descent_mod1048576_737007,
    ⟨CollatzM20Shard095.descent_mod1048576_737691,
    ⟨CollatzM20Shard095.descent_mod1048576_737775,
    ⟨CollatzM20Shard095.descent_mod1048576_738783,
    ⟨CollatzM20Shard095.descent_mod1048576_739183,
    ⟨CollatzM20Shard095.descent_mod1048576_739807,
    ⟨CollatzM20Shard095.descent_mod1048576_739967,
    ⟨CollatzM20Shard095.descent_mod1048576_740079,
    ⟨CollatzM20Shard095.descent_mod1048576_740207,
    ⟨CollatzM20Shard095.descent_mod1048576_740847,
    ⟨CollatzM20Shard095.descent_mod1048576_741279,
    ⟨CollatzM20Shard095.descent_mod1048576_741855,
    ⟨CollatzM20Shard095.descent_mod1048576_741979,
    ⟨CollatzM20Shard095.descent_mod1048576_742015,
    ⟨CollatzM20Shard095.descent_mod1048576_743919,
    ⟨CollatzM20Shard096.descent_mod1048576_744475,
    ⟨CollatzM20Shard096.descent_mod1048576_744767,
    ⟨CollatzM20Shard096.descent_mod1048576_744807,
    ⟨CollatzM20Shard096.descent_mod1048576_744927,
    ⟨CollatzM20Shard096.descent_mod1048576_745375,
    ⟨CollatzM20Shard096.descent_mod1048576_745519,
    ⟨CollatzM20Shard096.descent_mod1048576_745951,
    ⟨CollatzM20Shard096.descent_mod1048576_745967,
    ⟨CollatzM20Shard096.descent_mod1048576_747111,
    ⟨CollatzM20Shard096.descent_mod1048576_747879,
    ⟨CollatzM20Shard096.descent_mod1048576_748123,
    ⟨CollatzM20Shard096.descent_mod1048576_748399,
    ⟨CollatzM20Shard096.descent_mod1048576_748479,
    ⟨CollatzM20Shard096.descent_mod1048576_749039,
    ⟨CollatzM20Shard096.descent_mod1048576_749615,
    ⟨CollatzM20Shard096.descent_mod1048576_750951,
    ⟨CollatzM20Shard096.descent_mod1048576_751071,
    ⟨CollatzM20Shard096.descent_mod1048576_752999,
    ⟨CollatzM20Shard096.descent_mod1048576_753255,
    ⟨CollatzM20Shard096.descent_mod1048576_753567,
    ⟨CollatzM20Shard097.descent_mod1048576_753711,
    ⟨CollatzM20Shard097.descent_mod1048576_754143,
    ⟨CollatzM20Shard097.descent_mod1048576_754267,
    ⟨CollatzM20Shard097.descent_mod1048576_754591,
    ⟨CollatzM20Shard097.descent_mod1048576_755071,
    ⟨CollatzM20Shard097.descent_mod1048576_755183,
    ⟨CollatzM20Shard097.descent_mod1048576_756071,
    ⟨CollatzM20Shard097.descent_mod1048576_756991,
    ⟨CollatzM20Shard097.descent_mod1048576_758831,
    ⟨CollatzM20Shard097.descent_mod1048576_759719,
    ⟨CollatzM20Shard097.descent_mod1048576_759855,
    ⟨CollatzM20Shard097.descent_mod1048576_759871,
    ⟨CollatzM20Shard097.descent_mod1048576_760063,
    ⟨CollatzM20Shard097.descent_mod1048576_760607,
    ⟨CollatzM20Shard097.descent_mod1048576_760767,
    ⟨CollatzM20Shard097.descent_mod1048576_762215,
    ⟨CollatzM20Shard097.descent_mod1048576_762559,
    ⟨CollatzM20Shard097.descent_mod1048576_762783,
    ⟨CollatzM20Shard097.descent_mod1048576_763263,
    ⟨CollatzM20Shard097.descent_mod1048576_763483,
    ⟨CollatzM20Shard098.descent_mod1048576_764159,
    ⟨CollatzM20Shard098.descent_mod1048576_764607,
    ⟨CollatzM20Shard098.descent_mod1048576_764703,
    ⟨CollatzM20Shard098.descent_mod1048576_765183,
    ⟨CollatzM20Shard098.descent_mod1048576_765863,
    ⟨CollatzM20Shard098.descent_mod1048576_766063,
    ⟨CollatzM20Shard098.descent_mod1048576_766655,
    ⟨CollatzM20Shard098.descent_mod1048576_767391,
    ⟨CollatzM20Shard098.descent_mod1048576_768047,
    ⟨CollatzM20Shard098.descent_mod1048576_768207,
    ⟨CollatzM20Shard098.descent_mod1048576_768255,
    ⟨CollatzM20Shard098.descent_mod1048576_769023,
    ⟨CollatzM20Shard098.descent_mod1048576_769087,
    ⟨CollatzM20Shard098.descent_mod1048576_769135,
    ⟨CollatzM20Shard098.descent_mod1048576_769407,
    ⟨CollatzM20Shard098.descent_mod1048576_769439,
    ⟨CollatzM20Shard098.descent_mod1048576_769567,
    ⟨CollatzM20Shard098.descent_mod1048576_769727,
    ⟨CollatzM20Shard098.descent_mod1048576_771071,
    ⟨CollatzM20Shard098.descent_mod1048576_772007,
    ⟨CollatzM20Shard099.descent_mod1048576_772207,
    ⟨CollatzM20Shard099.descent_mod1048576_772763,
    ⟨CollatzM20Shard099.descent_mod1048576_772799,
    ⟨CollatzM20Shard099.descent_mod1048576_772895,
    ⟨CollatzM20Shard099.descent_mod1048576_773119,
    ⟨CollatzM20Shard099.descent_mod1048576_773535,
    ⟨CollatzM20Shard099.descent_mod1048576_773663,
    ⟨CollatzM20Shard099.descent_mod1048576_773823,
    ⟨CollatzM20Shard099.descent_mod1048576_773919,
    ⟨CollatzM20Shard099.descent_mod1048576_774255,
    ⟨CollatzM20Shard099.descent_mod1048576_774351,
    ⟨CollatzM20Shard099.descent_mod1048576_774399,
    ⟨CollatzM20Shard099.descent_mod1048576_775399,
    ⟨CollatzM20Shard099.descent_mod1048576_777327,
    ⟨CollatzM20Shard099.descent_mod1048576_777631,
    ⟨CollatzM20Shard099.descent_mod1048576_778087,
    ⟨CollatzM20Shard099.descent_mod1048576_779111,
    ⟨CollatzM20Shard099.descent_mod1048576_779263,
    ⟨CollatzM20Shard099.descent_mod1048576_779679,
    ⟨CollatzM20Shard099.descent_mod1048576_780447,
    ⟨CollatzM20Shard100.descent_mod1048576_780967,
    ⟨CollatzM20Shard100.descent_mod1048576_781159,
    ⟨CollatzM20Shard100.descent_mod1048576_781223,
    ⟨CollatzM20Shard100.descent_mod1048576_781295,
    ⟨CollatzM20Shard100.descent_mod1048576_781471,
    ⟨CollatzM20Shard100.descent_mod1048576_781543,
    ⟨CollatzM20Shard100.descent_mod1048576_781855,
    ⟨CollatzM20Shard100.descent_mod1048576_782015,
    ⟨CollatzM20Shard100.descent_mod1048576_782111,
    ⟨CollatzM20Shard100.descent_mod1048576_782591,
    ⟨CollatzM20Shard100.descent_mod1048576_782751,
    ⟨CollatzM20Shard100.descent_mod1048576_782879,
    ⟨CollatzM20Shard100.descent_mod1048576_783471,
    ⟨CollatzM20Shard100.descent_mod1048576_783519,
    ⟨CollatzM20Shard100.descent_mod1048576_783643,
    ⟨CollatzM20Shard100.descent_mod1048576_785255,
    ⟨CollatzM20Shard100.descent_mod1048576_785279,
    ⟨CollatzM20Shard100.descent_mod1048576_785567,
    ⟨CollatzM20Shard100.descent_mod1048576_785947,
    ⟨CollatzM20Shard100.descent_mod1048576_786591,
    ⟨CollatzM20Shard101.descent_mod1048576_786715,
    ⟨CollatzM20Shard101.descent_mod1048576_787439,
    ⟨CollatzM20Shard101.descent_mod1048576_788351,
    ⟨CollatzM20Shard101.descent_mod1048576_788895,
    ⟨CollatzM20Shard101.descent_mod1048576_789351,
    ⟨CollatzM20Shard101.descent_mod1048576_789787,
    ⟨CollatzM20Shard101.descent_mod1048576_790183,
    ⟨CollatzM20Shard101.descent_mod1048576_790847,
    ⟨CollatzM20Shard101.descent_mod1048576_791071,
    ⟨CollatzM20Shard101.descent_mod1048576_791279,
    ⟨CollatzM20Shard101.descent_mod1048576_791399,
    ⟨CollatzM20Shard101.descent_mod1048576_791711,
    ⟨CollatzM20Shard101.descent_mod1048576_791835,
    ⟨CollatzM20Shard101.descent_mod1048576_792091,
    ⟨CollatzM20Shard101.descent_mod1048576_792447,
    ⟨CollatzM20Shard101.descent_mod1048576_792895,
    ⟨CollatzM20Shard101.descent_mod1048576_793327,
    ⟨CollatzM20Shard101.descent_mod1048576_793471,
    ⟨CollatzM20Shard101.descent_mod1048576_793583,
    ⟨CollatzM20Shard101.descent_mod1048576_794907,
    ⟨CollatzM20Shard102.descent_mod1048576_794943,
    ⟨CollatzM20Shard102.descent_mod1048576_795679,
    ⟨CollatzM20Shard102.descent_mod1048576_796543,
    ⟨CollatzM20Shard102.descent_mod1048576_797423,
    ⟨CollatzM20Shard102.descent_mod1048576_797727,
    ⟨CollatzM20Shard102.descent_mod1048576_798015,
    ⟨CollatzM20Shard102.descent_mod1048576_798555,
    ⟨CollatzM20Shard102.descent_mod1048576_799359,
    ⟨CollatzM20Shard102.descent_mod1048576_801051,
    ⟨CollatzM20Shard102.descent_mod1048576_801087,
    ⟨CollatzM20Shard102.descent_mod1048576_801823,
    ⟨CollatzM20Shard102.descent_mod1048576_802095,
    ⟨CollatzM20Shard102.descent_mod1048576_802111,
    ⟨CollatzM20Shard102.descent_mod1048576_802543,
    ⟨CollatzM20Shard102.descent_mod1048576_802687,
    ⟨CollatzM20Shard102.descent_mod1048576_802799,
    ⟨CollatzM20Shard102.descent_mod1048576_804455,
    ⟨CollatzM20Shard102.descent_mod1048576_804699,
    ⟨CollatzM20Shard102.descent_mod1048576_805343,
    ⟨CollatzM20Shard102.descent_mod1048576_805503,
    ⟨CollatzM20Shard103.descent_mod1048576_805615,
    ⟨CollatzM20Shard103.descent_mod1048576_805919,
    ⟨CollatzM20Shard103.descent_mod1048576_806191,
    ⟨CollatzM20Shard103.descent_mod1048576_807079,
    ⟨CollatzM20Shard103.descent_mod1048576_807391,
    ⟨CollatzM20Shard103.descent_mod1048576_807423,
    ⟨CollatzM20Shard103.descent_mod1048576_807551,
    ⟨CollatzM20Shard103.descent_mod1048576_807967,
    ⟨CollatzM20Shard103.descent_mod1048576_809287,
    ⟨CollatzM20Shard103.descent_mod1048576_809583,
    ⟨CollatzM20Shard103.descent_mod1048576_810151,
    ⟨CollatzM20Shard103.descent_mod1048576_810287,
    ⟨CollatzM20Shard103.descent_mod1048576_810303,
    ⟨CollatzM20Shard103.descent_mod1048576_810843,
    ⟨CollatzM20Shard103.descent_mod1048576_810879,
    ⟨CollatzM20Shard103.descent_mod1048576_811039,
    ⟨CollatzM20Shard103.descent_mod1048576_811487,
    ⟨CollatzM20Shard103.descent_mod1048576_812647,
    ⟨CollatzM20Shard103.descent_mod1048576_813223,
    ⟨CollatzM20Shard103.descent_mod1048576_813383,
    ⟨CollatzM20Shard104.descent_mod1048576_814235,
    ⟨CollatzM20Shard104.descent_mod1048576_814247,
    ⟨CollatzM20Shard104.descent_mod1048576_814591,
    ⟨CollatzM20Shard104.descent_mod1048576_815407,
    ⟨CollatzM20Shard104.descent_mod1048576_815615,
    ⟨CollatzM20Shard104.descent_mod1048576_815727,
    ⟨CollatzM20Shard104.descent_mod1048576_816431,
    ⟨CollatzM20Shard104.descent_mod1048576_816455,
    ⟨CollatzM20Shard104.descent_mod1048576_816607,
    ⟨CollatzM20Shard104.descent_mod1048576_816799,
    ⟨CollatzM20Shard104.descent_mod1048576_816923,
    ⟨CollatzM20Shard104.descent_mod1048576_817183,
    ⟨CollatzM20Shard104.descent_mod1048576_817479,
    ⟨CollatzM20Shard104.descent_mod1048576_817947,
    ⟨CollatzM20Shard104.descent_mod1048576_818791,
    ⟨CollatzM20Shard104.descent_mod1048576_819247,
    ⟨CollatzM20Shard104.descent_mod1048576_819527,
    ⟨CollatzM20Shard104.descent_mod1048576_819679,
    ⟨CollatzM20Shard104.descent_mod1048576_819803,
    ⟨CollatzM20Shard104.descent_mod1048576_819995,
    ⟨CollatzM20Shard105.descent_mod1048576_820059,
    ⟨CollatzM20Shard105.descent_mod1048576_820379,
    ⟨CollatzM20Shard105.descent_mod1048576_820463,
    ⟨CollatzM20Shard105.descent_mod1048576_820735,
    ⟨CollatzM20Shard105.descent_mod1048576_820895,
    ⟨CollatzM20Shard105.descent_mod1048576_821487,
    ⟨CollatzM20Shard105.descent_mod1048576_821871,
    ⟨CollatzM20Shard105.descent_mod1048576_822439,
    ⟨CollatzM20Shard105.descent_mod1048576_822511,
    ⟨CollatzM20Shard105.descent_mod1048576_822599,
    ⟨CollatzM20Shard105.descent_mod1048576_823623,
    ⟨CollatzM20Shard105.descent_mod1048576_823967,
    ⟨CollatzM20Shard105.descent_mod1048576_824091,
    ⟨CollatzM20Shard105.descent_mod1048576_824623,
    ⟨CollatzM20Shard105.descent_mod1048576_824783,
    ⟨CollatzM20Shard105.descent_mod1048576_824991,
    ⟨CollatzM20Shard105.descent_mod1048576_825391,
    ⟨CollatzM20Shard105.descent_mod1048576_825551,
    ⟨CollatzM20Shard105.descent_mod1048576_825583,
    ⟨CollatzM20Shard105.descent_mod1048576_826143,
    ⟨CollatzM20Shard106.descent_mod1048576_826303,
    ⟨CollatzM20Shard106.descent_mod1048576_827039,
    ⟨CollatzM20Shard106.descent_mod1048576_828187,
    ⟨CollatzM20Shard106.descent_mod1048576_828655,
    ⟨CollatzM20Shard106.descent_mod1048576_828743,
    ⟨CollatzM20Shard106.descent_mod1048576_829019,
    ⟨CollatzM20Shard106.descent_mod1048576_829679,
    ⟨CollatzM20Shard106.descent_mod1048576_830111,
    ⟨CollatzM20Shard106.descent_mod1048576_830235,
    ⟨CollatzM20Shard106.descent_mod1048576_830239,
    ⟨CollatzM20Shard106.descent_mod1048576_830719,
    ⟨CollatzM20Shard106.descent_mod1048576_830927,
    ⟨CollatzM20Shard106.descent_mod1048576_831087,
    ⟨CollatzM20Shard106.descent_mod1048576_831135,
    ⟨CollatzM20Shard106.descent_mod1048576_831727,
    ⟨CollatzM20Shard106.descent_mod1048576_831815,
    ⟨CollatzM20Shard106.descent_mod1048576_831975,
    ⟨CollatzM20Shard106.descent_mod1048576_832743,
    ⟨CollatzM20Shard106.descent_mod1048576_833583,
    ⟨CollatzM20Shard106.descent_mod1048576_833743,
    ⟨CollatzM20Shard107.descent_mod1048576_833791,
    ⟨CollatzM20Shard107.descent_mod1048576_834663,
    ⟨CollatzM20Shard107.descent_mod1048576_834799,
    ⟨CollatzM20Shard107.descent_mod1048576_835823,
    ⟨CollatzM20Shard107.descent_mod1048576_836255,
    ⟨CollatzM20Shard107.descent_mod1048576_837023,
    ⟨CollatzM20Shard107.descent_mod1048576_837543,
    ⟨CollatzM20Shard107.descent_mod1048576_837735,
    ⟨CollatzM20Shard107.descent_mod1048576_838119,
    ⟨CollatzM20Shard107.descent_mod1048576_838431,
    ⟨CollatzM20Shard107.descent_mod1048576_839327,
    ⟨CollatzM20Shard107.descent_mod1048576_839455,
    ⟨CollatzM20Shard107.descent_mod1048576_839887,
    ⟨CollatzM20Shard107.descent_mod1048576_839935,
    ⟨CollatzM20Shard107.descent_mod1048576_840095,
    ⟨CollatzM20Shard107.descent_mod1048576_840935,
    ⟨CollatzM20Shard107.descent_mod1048576_841831,
    ⟨CollatzM20Shard107.descent_mod1048576_842855,
    ⟨CollatzM20Shard107.descent_mod1048576_842879,
    ⟨CollatzM20Shard107.descent_mod1048576_843167,
    ⟨CollatzM20Shard108.descent_mod1048576_843291,
    ⟨CollatzM20Shard108.descent_mod1048576_844015,
    ⟨CollatzM20Shard108.descent_mod1048576_844767,
    ⟨CollatzM20Shard108.descent_mod1048576_845215,
    ⟨CollatzM20Shard108.descent_mod1048576_845915,
    ⟨CollatzM20Shard108.descent_mod1048576_845927,
    ⟨CollatzM20Shard108.descent_mod1048576_845951,
    ⟨CollatzM20Shard108.descent_mod1048576_846759,
    ⟨CollatzM20Shard108.descent_mod1048576_847079,
    ⟨CollatzM20Shard108.descent_mod1048576_847407,
    ⟨CollatzM20Shard108.descent_mod1048576_847647,
    ⟨CollatzM20Shard108.descent_mod1048576_848123,
    ⟨CollatzM20Shard108.descent_mod1048576_848127,
    ⟨CollatzM20Shard108.descent_mod1048576_848287,
    ⟨CollatzM20Shard108.descent_mod1048576_848743,
    ⟨CollatzM20Shard108.descent_mod1048576_848863,
    ⟨CollatzM20Shard108.descent_mod1048576_848987,
    ⟨CollatzM20Shard108.descent_mod1048576_849023,
    ⟨CollatzM20Shard108.descent_mod1048576_850047,
    ⟨CollatzM20Shard108.descent_mod1048576_851483,
    ⟨CollatzM20Shard109.descent_mod1048576_852059,
    ⟨CollatzM20Shard109.descent_mod1048576_852071,
    ⟨CollatzM20Shard109.descent_mod1048576_852219,
    ⟨CollatzM20Shard109.descent_mod1048576_852415,
    ⟨CollatzM20Shard109.descent_mod1048576_852959,
    ⟨CollatzM20Shard109.descent_mod1048576_853083,
    ⟨CollatzM20Shard109.descent_mod1048576_854431,
    ⟨CollatzM20Shard109.descent_mod1048576_854887,
    ⟨CollatzM20Shard109.descent_mod1048576_855291,
    ⟨CollatzM20Shard109.descent_mod1048576_855487,
    ⟨CollatzM20Shard109.descent_mod1048576_855759,
    ⟨CollatzM20Shard109.descent_mod1048576_856315,
    ⟨CollatzM20Shard109.descent_mod1048576_856935,
    ⟨CollatzM20Shard109.descent_mod1048576_857627,
    ⟨CollatzM20Shard109.descent_mod1048576_857855,
    ⟨CollatzM20Shard109.descent_mod1048576_858079,
    ⟨CollatzM20Shard109.descent_mod1048576_858239,
    ⟨CollatzM20Shard109.descent_mod1048576_858363,
    ⟨CollatzM20Shard109.descent_mod1048576_858831,
    ⟨CollatzM20Shard109.descent_mod1048576_859007,
    ⟨CollatzM20Shard110.descent_mod1048576_859103,
    ⟨CollatzM20Shard110.descent_mod1048576_859119,
    ⟨CollatzM20Shard110.descent_mod1048576_859695,
    ⟨CollatzM20Shard110.descent_mod1048576_860263,
    ⟨CollatzM20Shard110.descent_mod1048576_860927,
    ⟨CollatzM20Shard110.descent_mod1048576_861275,
    ⟨CollatzM20Shard110.descent_mod1048576_861435,
    ⟨CollatzM20Shard110.descent_mod1048576_861951,
    ⟨CollatzM20Shard110.descent_mod1048576_862079,
    ⟨CollatzM20Shard110.descent_mod1048576_862459,
    ⟨CollatzM20Shard110.descent_mod1048576_862927,
    ⟨CollatzM20Shard110.descent_mod1048576_862951,
    ⟨CollatzM20Shard110.descent_mod1048576_863951,
    ⟨CollatzM20Shard110.descent_mod1048576_864703,
    ⟨CollatzM20Shard110.descent_mod1048576_865311,
    ⟨CollatzM20Shard110.descent_mod1048576_866023,
    ⟨CollatzM20Shard110.descent_mod1048576_866047,
    ⟨CollatzM20Shard110.descent_mod1048576_866159,
    ⟨CollatzM20Shard110.descent_mod1048576_867023,
    ⟨CollatzM20Shard110.descent_mod1048576_867295,
    ⟨CollatzM20Shard111.descent_mod1048576_867579,
    ⟨CollatzM20Shard111.descent_mod1048576_868223,
    ⟨CollatzM20Shard111.descent_mod1048576_868335,
    ⟨CollatzM20Shard111.descent_mod1048576_868383,
    ⟨CollatzM20Shard111.descent_mod1048576_868519,
    ⟨CollatzM20Shard111.descent_mod1048576_869119,
    ⟨CollatzM20Shard111.descent_mod1048576_870119,
    ⟨CollatzM20Shard111.descent_mod1048576_870567,
    ⟨CollatzM20Shard111.descent_mod1048576_870651,
    ⟨CollatzM20Shard111.descent_mod1048576_870811,
    ⟨CollatzM20Shard111.descent_mod1048576_871143,
    ⟨CollatzM20Shard111.descent_mod1048576_871455,
    ⟨CollatzM20Shard111.descent_mod1048576_871579,
    ⟨CollatzM20Shard111.descent_mod1048576_872303,
    ⟨CollatzM20Shard111.descent_mod1048576_872615,
    ⟨CollatzM20Shard111.descent_mod1048576_873167,
    ⟨CollatzM20Shard111.descent_mod1048576_873499,
    ⟨CollatzM20Shard111.descent_mod1048576_873503,
    ⟨CollatzM20Shard111.descent_mod1048576_874215,
    ⟨CollatzM20Shard111.descent_mod1048576_875007,
    ⟨CollatzM20Shard112.descent_mod1048576_875687,
    ⟨CollatzM20Shard112.descent_mod1048576_875823,
    ⟨CollatzM20Shard112.descent_mod1048576_876031,
    ⟨CollatzM20Shard112.descent_mod1048576_876379,
    ⟨CollatzM20Shard112.descent_mod1048576_876415,
    ⟨CollatzM20Shard112.descent_mod1048576_876571,
    ⟨CollatzM20Shard112.descent_mod1048576_876575,
    ⟨CollatzM20Shard112.descent_mod1048576_876955,
    ⟨CollatzM20Shard112.descent_mod1048576_878079,
    ⟨CollatzM20Shard112.descent_mod1048576_878447,
    ⟨CollatzM20Shard112.descent_mod1048576_878759,
    ⟨CollatzM20Shard112.descent_mod1048576_879771,
    ⟨CollatzM20Shard112.descent_mod1048576_879783,
    ⟨CollatzM20Shard112.descent_mod1048576_880127,
    ⟨CollatzM20Shard112.descent_mod1048576_880359,
    ⟨CollatzM20Shard112.descent_mod1048576_880543,
    ⟨CollatzM20Shard112.descent_mod1048576_880667,
    ⟨CollatzM20Shard112.descent_mod1048576_881151,
    ⟨CollatzM20Shard112.descent_mod1048576_881359,
    ⟨CollatzM20Shard112.descent_mod1048576_881691,
    ⟨CollatzM20Shard113.descent_mod1048576_881967,
    ⟨CollatzM20Shard113.descent_mod1048576_882127,
    ⟨CollatzM20Shard113.descent_mod1048576_882719,
    ⟨CollatzM20Shard113.descent_mod1048576_883015,
    ⟨CollatzM20Shard113.descent_mod1048576_884763,
    ⟨CollatzM20Shard113.descent_mod1048576_885063,
    ⟨CollatzM20Shard113.descent_mod1048576_885231,
    ⟨CollatzM20Shard113.descent_mod1048576_885595,
    ⟨CollatzM20Shard113.descent_mod1048576_885915,
    ⟨CollatzM20Shard113.descent_mod1048576_886271,
    ⟨CollatzM20Shard113.descent_mod1048576_886687,
    ⟨CollatzM20Shard113.descent_mod1048576_887407,
    ⟨CollatzM20Shard113.descent_mod1048576_887579,
    ⟨CollatzM20Shard113.descent_mod1048576_887663,
    ⟨CollatzM20Shard113.descent_mod1048576_887975,
    ⟨CollatzM20Shard113.descent_mod1048576_888303,
    ⟨CollatzM20Shard113.descent_mod1048576_888551,
    ⟨CollatzM20Shard113.descent_mod1048576_889159,
    ⟨CollatzM20Shard113.descent_mod1048576_889319,
    ⟨CollatzM20Shard113.descent_mod1048576_890095,
    ⟨CollatzM20Shard114.descent_mod1048576_890159,
    ⟨CollatzM20Shard114.descent_mod1048576_890319,
    ⟨CollatzM20Shard114.descent_mod1048576_890527,
    ⟨CollatzM20Shard114.descent_mod1048576_890907,
    ⟨CollatzM20Shard114.descent_mod1048576_891375,
    ⟨CollatzM20Shard114.descent_mod1048576_892143,
    ⟨CollatzM20Shard114.descent_mod1048576_892263,
    ⟨CollatzM20Shard114.descent_mod1048576_892399,
    ⟨CollatzM20Shard114.descent_mod1048576_892575,
    ⟨CollatzM20Shard114.descent_mod1048576_892831,
    ⟨CollatzM20Shard114.descent_mod1048576_893723,
    ⟨CollatzM20Shard114.descent_mod1048576_894191,
    ⟨CollatzM20Shard114.descent_mod1048576_894279,
    ⟨CollatzM20Shard114.descent_mod1048576_895215,
    ⟨CollatzM20Shard114.descent_mod1048576_895335,
    ⟨CollatzM20Shard114.descent_mod1048576_895771,
    ⟨CollatzM20Shard114.descent_mod1048576_896463,
    ⟨CollatzM20Shard114.descent_mod1048576_896623,
    ⟨CollatzM20Shard114.descent_mod1048576_896671,
    ⟨CollatzM20Shard114.descent_mod1048576_897263,
    ⟨CollatzM20Shard115.descent_mod1048576_897351,
    ⟨CollatzM20Shard115.descent_mod1048576_897511,
    ⟨CollatzM20Shard115.descent_mod1048576_898407,
    ⟨CollatzM20Shard115.descent_mod1048576_899099,
    ⟨CollatzM20Shard115.descent_mod1048576_899431,
    ⟨CollatzM20Shard115.descent_mod1048576_900335,
    ⟨CollatzM20Shard115.descent_mod1048576_900591,
    ⟨CollatzM20Shard115.descent_mod1048576_901343,
    ⟨CollatzM20Shard115.descent_mod1048576_901359,
    ⟨CollatzM20Shard115.descent_mod1048576_901787,
    ⟨CollatzM20Shard115.descent_mod1048576_901791,
    ⟨CollatzM20Shard115.descent_mod1048576_901823,
    ⟨CollatzM20Shard115.descent_mod1048576_902047,
    ⟨CollatzM20Shard115.descent_mod1048576_902527,
    ⟨CollatzM20Shard115.descent_mod1048576_903655,
    ⟨CollatzM20Shard115.descent_mod1048576_904319,
    ⟨CollatzM20Shard115.descent_mod1048576_904859,
    ⟨CollatzM20Shard115.descent_mod1048576_904863,
    ⟨CollatzM20Shard115.descent_mod1048576_905439,
    ⟨CollatzM20Shard115.descent_mod1048576_905919,
    ⟨CollatzM20Shard116.descent_mod1048576_906367,
    ⟨CollatzM20Shard116.descent_mod1048576_906623,
    ⟨CollatzM20Shard116.descent_mod1048576_907355,
    ⟨CollatzM20Shard116.descent_mod1048576_907623,
    ⟨CollatzM20Shard116.descent_mod1048576_908391,
    ⟨CollatzM20Shard116.descent_mod1048576_908415,
    ⟨CollatzM20Shard116.descent_mod1048576_908831,
    ⟨CollatzM20Shard116.descent_mod1048576_908955,
    ⟨CollatzM20Shard116.descent_mod1048576_908991,
    ⟨CollatzM20Shard116.descent_mod1048576_909403,
    ⟨CollatzM20Shard116.descent_mod1048576_909535,
    ⟨CollatzM20Shard116.descent_mod1048576_909551,
    ⟨CollatzM20Shard116.descent_mod1048576_909979,
    ⟨CollatzM20Shard116.descent_mod1048576_910015,
    ⟨CollatzM20Shard116.descent_mod1048576_911451,
    ⟨CollatzM20Shard116.descent_mod1048576_911463,
    ⟨CollatzM20Shard116.descent_mod1048576_911487,
    ⟨CollatzM20Shard116.descent_mod1048576_912063,
    ⟨CollatzM20Shard116.descent_mod1048576_913051,
    ⟨CollatzM20Shard116.descent_mod1048576_913519,
    ⟨CollatzM20Shard117.descent_mod1048576_914523,
    ⟨CollatzM20Shard117.descent_mod1048576_914559,
    ⟨CollatzM20Shard117.descent_mod1048576_914655,
    ⟨CollatzM20Shard117.descent_mod1048576_914815,
    ⟨CollatzM20Shard117.descent_mod1048576_914975,
    ⟨CollatzM20Shard117.descent_mod1048576_915135,
    ⟨CollatzM20Shard117.descent_mod1048576_915583,
    ⟨CollatzM20Shard117.descent_mod1048576_915679,
    ⟨CollatzM20Shard117.descent_mod1048576_915839,
    ⟨CollatzM20Shard117.descent_mod1048576_916159,
    ⟨CollatzM20Shard117.descent_mod1048576_916591,
    ⟨CollatzM20Shard117.descent_mod1048576_916927,
    ⟨CollatzM20Shard117.descent_mod1048576_917595,
    ⟨CollatzM20Shard117.descent_mod1048576_917607,
    ⟨CollatzM20Shard117.descent_mod1048576_918495,
    ⟨CollatzM20Shard117.descent_mod1048576_918527,
    ⟨CollatzM20Shard117.descent_mod1048576_918619,
    ⟨CollatzM20Shard117.descent_mod1048576_919195,
    ⟨CollatzM20Shard117.descent_mod1048576_919663,
    ⟨CollatzM20Shard117.descent_mod1048576_919711,
    ⟨CollatzM20Shard118.descent_mod1048576_920687,
    ⟨CollatzM20Shard118.descent_mod1048576_920735,
    ⟨CollatzM20Shard118.descent_mod1048576_921023,
    ⟨CollatzM20Shard118.descent_mod1048576_921119,
    ⟨CollatzM20Shard118.descent_mod1048576_921279,
    ⟨CollatzM20Shard118.descent_mod1048576_921759,
    ⟨CollatzM20Shard118.descent_mod1048576_921851,
    ⟨CollatzM20Shard118.descent_mod1048576_922439,
    ⟨CollatzM20Shard118.descent_mod1048576_923775,
    ⟨CollatzM20Shard118.descent_mod1048576_923871,
    ⟨CollatzM20Shard118.descent_mod1048576_923899,
    ⟨CollatzM20Shard118.descent_mod1048576_924031,
    ⟨CollatzM20Shard118.descent_mod1048576_924351,
    ⟨CollatzM20Shard118.descent_mod1048576_924639,
    ⟨CollatzM20Shard118.descent_mod1048576_924831,
    ⟨CollatzM20Shard118.descent_mod1048576_925231,
    ⟨CollatzM20Shard118.descent_mod1048576_925799,
    ⟨CollatzM20Shard118.descent_mod1048576_926535,
    ⟨CollatzM20Shard118.descent_mod1048576_926811,
    ⟨CollatzM20Shard118.descent_mod1048576_927387,
    ⟨CollatzM20Shard119.descent_mod1048576_927903,
    ⟨CollatzM20Shard119.descent_mod1048576_927995,
    ⟨CollatzM20Shard119.descent_mod1048576_928155,
    ⟨CollatzM20Shard119.descent_mod1048576_928879,
    ⟨CollatzM20Shard119.descent_mod1048576_928927,
    ⟨CollatzM20Shard119.descent_mod1048576_929487,
    ⟨CollatzM20Shard119.descent_mod1048576_930111,
    ⟨CollatzM20Shard119.descent_mod1048576_930239,
    ⟨CollatzM20Shard119.descent_mod1048576_930335,
    ⟨CollatzM20Shard119.descent_mod1048576_930631,
    ⟨CollatzM20Shard119.descent_mod1048576_930975,
    ⟨CollatzM20Shard119.descent_mod1048576_931099,
    ⟨CollatzM20Shard119.descent_mod1048576_931583,
    ⟨CollatzM20Shard119.descent_mod1048576_932559,
    ⟨CollatzM20Shard119.descent_mod1048576_932591,
    ⟨CollatzM20Shard119.descent_mod1048576_932831,
    ⟨CollatzM20Shard119.descent_mod1048576_933115,
    ⟨CollatzM20Shard119.descent_mod1048576_934047,
    ⟨CollatzM20Shard119.descent_mod1048576_934171,
    ⟨CollatzM20Shard119.descent_mod1048576_934207,
    ⟨CollatzM20Shard120.descent_mod1048576_934655,
    ⟨CollatzM20Shard120.descent_mod1048576_935071,
    ⟨CollatzM20Shard120.descent_mod1048576_935751,
    ⟨CollatzM20Shard120.descent_mod1048576_936187,
    ⟨CollatzM20Shard120.descent_mod1048576_936347,
    ⟨CollatzM20Shard120.descent_mod1048576_936679,
    ⟨CollatzM20Shard120.descent_mod1048576_936775,
    ⟨CollatzM20Shard120.descent_mod1048576_937243,
    ⟨CollatzM20Shard120.descent_mod1048576_937279,
    ⟨CollatzM20Shard120.descent_mod1048576_938267,
    ⟨CollatzM20Shard120.descent_mod1048576_938303,
    ⟨CollatzM20Shard120.descent_mod1048576_938703,
    ⟨CollatzM20Shard120.descent_mod1048576_939647,
    ⟨CollatzM20Shard120.descent_mod1048576_939751,
    ⟨CollatzM20Shard120.descent_mod1048576_940351,
    ⟨CollatzM20Shard120.descent_mod1048576_942491,
    ⟨CollatzM20Shard120.descent_mod1048576_943263,
    ⟨CollatzM20Shard120.descent_mod1048576_943423,
    ⟨CollatzM20Shard120.descent_mod1048576_943983,
    ⟨CollatzM20Shard120.descent_mod1048576_944447,
    ⟨CollatzM20Shard121.descent_mod1048576_944879,
    ⟨CollatzM20Shard121.descent_mod1048576_944967,
    ⟨CollatzM20Shard121.descent_mod1048576_945895,
    ⟨CollatzM20Shard121.descent_mod1048576_946459,
    ⟨CollatzM20Shard121.descent_mod1048576_946655,
    ⟨CollatzM20Shard121.descent_mod1048576_946671,
    ⟨CollatzM20Shard121.descent_mod1048576_946815,
    ⟨CollatzM20Shard121.descent_mod1048576_946895,
    ⟨CollatzM20Shard121.descent_mod1048576_947227,
    ⟨CollatzM20Shard121.descent_mod1048576_947839,
    ⟨CollatzM20Shard121.descent_mod1048576_948719,
    ⟨CollatzM20Shard121.descent_mod1048576_949567,
    ⟨CollatzM20Shard121.descent_mod1048576_950299,
    ⟨CollatzM20Shard121.descent_mod1048576_950767,
    ⟨CollatzM20Shard121.descent_mod1048576_951911,
    ⟨CollatzM20Shard121.descent_mod1048576_952639,
    ⟨CollatzM20Shard121.descent_mod1048576_952959,
    ⟨CollatzM20Shard121.descent_mod1048576_953199,
    ⟨CollatzM20Shard121.descent_mod1048576_953703,
    ⟨CollatzM20Shard121.descent_mod1048576_953839,
    ⟨CollatzM20Shard122.descent_mod1048576_954087,
    ⟨CollatzM20Shard122.descent_mod1048576_955327,
    ⟨CollatzM20Shard122.descent_mod1048576_955751,
    ⟨CollatzM20Shard122.descent_mod1048576_956007,
    ⟨CollatzM20Shard122.descent_mod1048576_956443,
    ⟨CollatzM20Shard122.descent_mod1048576_956911,
    ⟨CollatzM20Shard122.descent_mod1048576_957799,
    ⟨CollatzM20Shard122.descent_mod1048576_957935,
    ⟨CollatzM20Shard122.descent_mod1048576_958367,
    ⟨CollatzM20Shard122.descent_mod1048576_958399,
    ⟨CollatzM20Shard122.descent_mod1048576_958943,
    ⟨CollatzM20Shard122.descent_mod1048576_960871,
    ⟨CollatzM20Shard122.descent_mod1048576_961275,
    ⟨CollatzM20Shard122.descent_mod1048576_962495,
    ⟨CollatzM20Shard122.descent_mod1048576_963519,
    ⟨CollatzM20Shard122.descent_mod1048576_963943,
    ⟨CollatzM20Shard122.descent_mod1048576_964199,
    ⟨CollatzM20Shard122.descent_mod1048576_964635,
    ⟨CollatzM20Shard122.descent_mod1048576_964967,
    ⟨CollatzM20Shard122.descent_mod1048576_965223,
    ⟨CollatzM20Shard123.descent_mod1048576_965371,
    ⟨CollatzM20Shard123.descent_mod1048576_965407,
    ⟨CollatzM20Shard123.descent_mod1048576_965887,
    ⟨CollatzM20Shard123.descent_mod1048576_966127,
    ⟨CollatzM20Shard123.descent_mod1048576_966591,
    ⟨CollatzM20Shard123.descent_mod1048576_966703,
    ⟨CollatzM20Shard123.descent_mod1048576_967583,
    ⟨CollatzM20Shard123.descent_mod1048576_967935,
    ⟨CollatzM20Shard123.descent_mod1048576_968063,
    ⟨CollatzM20Shard123.descent_mod1048576_969467,
    ⟨CollatzM20Shard123.descent_mod1048576_971551,
    ⟨CollatzM20Shard123.descent_mod1048576_972031,
    ⟨CollatzM20Shard123.descent_mod1048576_972159,
    ⟨CollatzM20Shard123.descent_mod1048576_972735,
    ⟨CollatzM20Shard123.descent_mod1048576_972847,
    ⟨CollatzM20Shard123.descent_mod1048576_973007,
    ⟨CollatzM20Shard123.descent_mod1048576_973159,
    ⟨CollatzM20Shard123.descent_mod1048576_973415,
    ⟨CollatzM20Shard123.descent_mod1048576_974587,
    ⟨CollatzM20Shard123.descent_mod1048576_974959,
    ⟨CollatzM20Shard124.descent_mod1048576_975071,
    ⟨CollatzM20Shard124.descent_mod1048576_975515,
    ⟨CollatzM20Shard124.descent_mod1048576_975551,
    ⟨CollatzM20Shard124.descent_mod1048576_975611,
    ⟨CollatzM20Shard124.descent_mod1048576_976127,
    ⟨CollatzM20Shard124.descent_mod1048576_977007,
    ⟨CollatzM20Shard124.descent_mod1048576_977103,
    ⟨CollatzM20Shard124.descent_mod1048576_977599,
    ⟨CollatzM20Shard124.descent_mod1048576_977695,
    ⟨CollatzM20Shard124.descent_mod1048576_978175,
    ⟨CollatzM20Shard124.descent_mod1048576_978587,
    ⟨CollatzM20Shard124.descent_mod1048576_979015,
    ⟨CollatzM20Shard124.descent_mod1048576_979055,
    ⟨CollatzM20Shard124.descent_mod1048576_979967,
    ⟨CollatzM20Shard124.descent_mod1048576_980199,
    ⟨CollatzM20Shard124.descent_mod1048576_980351,
    ⟨CollatzM20Shard124.descent_mod1048576_980927,
    ⟨CollatzM20Shard124.descent_mod1048576_981215,
    ⟨CollatzM20Shard124.descent_mod1048576_981247,
    ⟨CollatzM20Shard124.descent_mod1048576_981375,
    ⟨CollatzM20Shard125.descent_mod1048576_981695,
    ⟨CollatzM20Shard125.descent_mod1048576_982127,
    ⟨CollatzM20Shard125.descent_mod1048576_983111,
    ⟨CollatzM20Shard125.descent_mod1048576_983803,
    ⟨CollatzM20Shard125.descent_mod1048576_984063,
    ⟨CollatzM20Shard125.descent_mod1048576_984295,
    ⟨CollatzM20Shard125.descent_mod1048576_984479,
    ⟨CollatzM20Shard125.descent_mod1048576_984731,
    ⟨CollatzM20Shard125.descent_mod1048576_985199,
    ⟨CollatzM20Shard125.descent_mod1048576_985295,
    ⟨CollatzM20Shard125.descent_mod1048576_986223,
    ⟨CollatzM20Shard125.descent_mod1048576_986319,
    ⟨CollatzM20Shard125.descent_mod1048576_986655,
    ⟨CollatzM20Shard125.descent_mod1048576_986815,
    ⟨CollatzM20Shard125.descent_mod1048576_986911,
    ⟨CollatzM20Shard125.descent_mod1048576_987207,
    ⟨CollatzM20Shard125.descent_mod1048576_987391,
    ⟨CollatzM20Shard125.descent_mod1048576_987551,
    ⟨CollatzM20Shard125.descent_mod1048576_989031,
    ⟨CollatzM20Shard125.descent_mod1048576_989343,
    ⟨CollatzM20Shard126.descent_mod1048576_989407,
    ⟨CollatzM20Shard126.descent_mod1048576_989567,
    ⟨CollatzM20Shard126.descent_mod1048576_989887,
    ⟨CollatzM20Shard126.descent_mod1048576_990623,
    ⟨CollatzM20Shard126.descent_mod1048576_990747,
    ⟨CollatzM20Shard126.descent_mod1048576_991391,
    ⟨CollatzM20Shard126.descent_mod1048576_991647,
    ⟨CollatzM20Shard126.descent_mod1048576_992327,
    ⟨CollatzM20Shard126.descent_mod1048576_992487,
    ⟨CollatzM20Shard126.descent_mod1048576_992539,
    ⟨CollatzM20Shard126.descent_mod1048576_992923,
    ⟨CollatzM20Shard126.descent_mod1048576_993351,
    ⟨CollatzM20Shard126.descent_mod1048576_993439,
    ⟨CollatzM20Shard126.descent_mod1048576_993511,
    ⟨CollatzM20Shard126.descent_mod1048576_994175,
    ⟨CollatzM20Shard126.descent_mod1048576_994415,
    ⟨CollatzM20Shard126.descent_mod1048576_994463,
    ⟨CollatzM20Shard126.descent_mod1048576_994511,
    ⟨CollatzM20Shard126.descent_mod1048576_994587,
    ⟨CollatzM20Shard126.descent_mod1048576_994843,
    ⟨CollatzM20Shard127.descent_mod1048576_995871,
    ⟨CollatzM20Shard127.descent_mod1048576_996167,
    ⟨CollatzM20Shard127.descent_mod1048576_996199,
    ⟨CollatzM20Shard127.descent_mod1048576_996223,
    ⟨CollatzM20Shard127.descent_mod1048576_996511,
    ⟨CollatzM20Shard127.descent_mod1048576_996635,
    ⟨CollatzM20Shard127.descent_mod1048576_997223,
    ⟨CollatzM20Shard127.descent_mod1048576_999583,
    ⟨CollatzM20Shard127.descent_mod1048576_999707,
    ⟨CollatzM20Shard127.descent_mod1048576_999839,
    ⟨CollatzM20Shard127.descent_mod1048576_1000319,
    ⟨CollatzM20Shard127.descent_mod1048576_1000607,
    ⟨CollatzM20Shard127.descent_mod1048576_1001543,
    ⟨CollatzM20Shard127.descent_mod1048576_1001703,
    ⟨CollatzM20Shard127.descent_mod1048576_1002311,
    ⟨CollatzM20Shard127.descent_mod1048576_1002343,
    ⟨CollatzM20Shard127.descent_mod1048576_1002779,
    ⟨CollatzM20Shard127.descent_mod1048576_1003035,
    ⟨CollatzM20Shard127.descent_mod1048576_1003803,
    ⟨CollatzM20Shard127.descent_mod1048576_1003839,
    ⟨CollatzM20Shard128.descent_mod1048576_1004059,
    ⟨CollatzM20Shard128.descent_mod1048576_1004415,
    ⟨CollatzM20Shard128.descent_mod1048576_1005887,
    ⟨CollatzM20Shard128.descent_mod1048576_1006463,
    ⟨CollatzM20Shard128.descent_mod1048576_1007231,
    ⟨CollatzM20Shard128.descent_mod1048576_1007783,
    ⟨CollatzM20Shard128.descent_mod1048576_1008255,
    ⟨CollatzM20Shard128.descent_mod1048576_1008799,
    ⟨CollatzM20Shard128.descent_mod1048576_1009535,
    ⟨CollatzM20Shard128.descent_mod1048576_1009983,
    ⟨CollatzM20Shard128.descent_mod1048576_1010303,
    ⟨CollatzM20Shard128.descent_mod1048576_1010415,
    ⟨CollatzM20Shard128.descent_mod1048576_1010503,
    ⟨CollatzM20Shard128.descent_mod1048576_1011879,
    ⟨CollatzM20Shard128.descent_mod1048576_1011995,
    ⟨CollatzM20Shard128.descent_mod1048576_1012251,
    ⟨CollatzM20Shard128.descent_mod1048576_1012351,
    ⟨CollatzM20Shard128.descent_mod1048576_1012767,
    ⟨CollatzM20Shard128.descent_mod1048576_1013375,
    ⟨CollatzM20Shard128.descent_mod1048576_1014271,
    ⟨CollatzM20Shard129.descent_mod1048576_1014951,
    ⟨CollatzM20Shard129.descent_mod1048576_1014975,
    ⟨CollatzM20Shard129.descent_mod1048576_1015103,
    ⟨CollatzM20Shard129.descent_mod1048576_1015295,
    ⟨CollatzM20Shard129.descent_mod1048576_1015679,
    ⟨CollatzM20Shard129.descent_mod1048576_1015839,
    ⟨CollatzM20Shard129.descent_mod1048576_1015975,
    ⟨CollatzM20Shard129.descent_mod1048576_1016319,
    ⟨CollatzM20Shard129.descent_mod1048576_1017447,
    ⟨CollatzM20Shard129.descent_mod1048576_1017851,
    ⟨CollatzM20Shard129.descent_mod1048576_1018023,
    ⟨CollatzM20Shard129.descent_mod1048576_1018175,
    ⟨CollatzM20Shard129.descent_mod1048576_1018495,
    ⟨CollatzM20Shard129.descent_mod1048576_1018911,
    ⟨CollatzM20Shard129.descent_mod1048576_1019035,
    ⟨CollatzM20Shard129.descent_mod1048576_1019071,
    ⟨CollatzM20Shard129.descent_mod1048576_1019391,
    ⟨CollatzM20Shard129.descent_mod1048576_1019935,
    ⟨CollatzM20Shard129.descent_mod1048576_1021095,
    ⟨CollatzM20Shard129.descent_mod1048576_1021543,
    ⟨CollatzM20Shard130.descent_mod1048576_1021947,
    ⟨CollatzM20Shard130.descent_mod1048576_1022119,
    ⟨CollatzM20Shard130.descent_mod1048576_1022463,
    ⟨CollatzM20Shard130.descent_mod1048576_1023131,
    ⟨CollatzM20Shard130.descent_mod1048576_1023167,
    ⟨CollatzM20Shard130.descent_mod1048576_1023279,
    ⟨CollatzM20Shard130.descent_mod1048576_1023487,
    ⟨CollatzM20Shard130.descent_mod1048576_1024047,
    ⟨CollatzM20Shard130.descent_mod1048576_1024327,
    ⟨CollatzM20Shard130.descent_mod1048576_1024479,
    ⟨CollatzM20Shard130.descent_mod1048576_1025535,
    ⟨CollatzM20Shard130.descent_mod1048576_1026043,
    ⟨CollatzM20Shard130.descent_mod1048576_1027239,
    ⟨CollatzM20Shard130.descent_mod1048576_1027867,
    ⟨CollatzM20Shard130.descent_mod1048576_1028127,
    ⟨CollatzM20Shard130.descent_mod1048576_1028287,
    ⟨CollatzM20Shard130.descent_mod1048576_1028607,
    ⟨CollatzM20Shard130.descent_mod1048576_1029055,
    ⟨CollatzM20Shard130.descent_mod1048576_1029311,
    ⟨CollatzM20Shard130.descent_mod1048576_1029423,
    ⟨CollatzM20Shard131.descent_mod1048576_1029583,
    ⟨CollatzM20Shard131.descent_mod1048576_1029631,
    ⟨CollatzM20Shard131.descent_mod1048576_1029735,
    ⟨CollatzM20Shard131.descent_mod1048576_1030311,
    ⟨CollatzM20Shard131.descent_mod1048576_1030759,
    ⟨CollatzM20Shard131.descent_mod1048576_1031163,
    ⟨CollatzM20Shard131.descent_mod1048576_1031323,
    ⟨CollatzM20Shard131.descent_mod1048576_1031839,
    ⟨CollatzM20Shard131.descent_mod1048576_1032127,
    ⟨CollatzM20Shard131.descent_mod1048576_1032187,
    ⟨CollatzM20Shard131.descent_mod1048576_1032239,
    ⟨CollatzM20Shard131.descent_mod1048576_1032347,
    ⟨CollatzM20Shard131.descent_mod1048576_1033679,
    ⟨CollatzM20Shard131.descent_mod1048576_1035003,
    ⟨CollatzM20Shard131.descent_mod1048576_1035035,
    ⟨CollatzM20Shard131.descent_mod1048576_1035519,
    ⟨CollatzM20Shard131.descent_mod1048576_1036059,
    ⟨CollatzM20Shard131.descent_mod1048576_1036527,
    ⟨CollatzM20Shard131.descent_mod1048576_1036615,
    ⟨CollatzM20Shard131.descent_mod1048576_1036775,
    ⟨CollatzM20Shard132.descent_mod1048576_1037503,
    ⟨CollatzM20Shard132.descent_mod1048576_1037823,
    ⟨CollatzM20Shard132.descent_mod1048576_1038271,
    ⟨CollatzM20Shard132.descent_mod1048576_1038383,
    ⟨CollatzM20Shard132.descent_mod1048576_1038543,
    ⟨CollatzM20Shard132.descent_mod1048576_1038591,
    ⟨CollatzM20Shard132.descent_mod1048576_1038951,
    ⟨CollatzM20Shard132.descent_mod1048576_1039599,
    ⟨CollatzM20Shard132.descent_mod1048576_1040379,
    ⟨CollatzM20Shard132.descent_mod1048576_1040539,
    ⟨CollatzM20Shard132.descent_mod1048576_1040871,
    ⟨CollatzM20Shard132.descent_mod1048576_1041147,
    ⟨CollatzM20Shard132.descent_mod1048576_1041179,
    ⟨CollatzM20Shard132.descent_mod1048576_1041663,
    ⟨CollatzM20Shard132.descent_mod1048576_1041871,
    ⟨CollatzM20Shard132.descent_mod1048576_1042639,
    ⟨CollatzM20Shard132.descent_mod1048576_1042895,
    ⟨CollatzM20Shard132.descent_mod1048576_1043231,
    ⟨CollatzM20Shard132.descent_mod1048576_1043263,
    ⟨CollatzM20Shard132.descent_mod1048576_1043559,
    ⟨CollatzM20Shard133.descent_mod1048576_1043583,
    ⟨CollatzM20Shard133.descent_mod1048576_1043711,
    ⟨CollatzM20Shard133.descent_mod1048576_1044127,
    ⟨CollatzM20Shard133.descent_mod1048576_1045607,
    ⟨CollatzM20Shard133.descent_mod1048576_1045735,
    ⟨CollatzM20Shard133.descent_mod1048576_1045919,
    ⟨CollatzM20Shard133.descent_mod1048576_1046463,
    ⟨CollatzM20Shard133.descent_mod1048576_1046619,
    ⟨CollatzM20Shard133.descent_mod1048576_1046783,
    ⟨CollatzM20Shard133.descent_mod1048576_1047359,
    ⟨CollatzM20Shard133.descent_mod1048576_1047679,
    CollatzM20Shard133.descent_mod1048576_1047967⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

end CollatzM20AllFamilies
#print axioms CollatzM20AllFamilies.all_scanned_m20_families_descend
