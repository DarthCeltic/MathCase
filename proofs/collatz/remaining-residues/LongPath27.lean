import Mathlib.Data.Nat.Prime.Basic

namespace LongPath27

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3*n+1
def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

set_option maxRecDepth 8192 in
set_option maxHeartbeats 1200000 in
theorem long_path_27 : ∀ k : Nat,
    iterate ((2^59)*k+27) 96 = (3^37)*k+23 ∧ (3^37)*k+23 < (2^59)*k+27 := by
  intro k
  change iterate (576460752303423488*k+27) 96 = 450283905890997363*k+23 ∧ 450283905890997363*k+23 < 576460752303423488*k+27
  have h1 : C (576460752303423488*k+27) = 1729382256910270464*k+82 := by
    unfold C
    simp [show (576460752303423488*k+27) % 2 ≠ 0 by omega]
    omega
  have h2 : C (1729382256910270464*k+82) = 864691128455135232*k+41 := by
    unfold C
    simp [show (1729382256910270464*k+82) % 2 = 0 by omega]
    omega
  have h3 : C (864691128455135232*k+41) = 2594073385365405696*k+124 := by
    unfold C
    simp [show (864691128455135232*k+41) % 2 ≠ 0 by omega]
    omega
  have h4 : C (2594073385365405696*k+124) = 1297036692682702848*k+62 := by
    unfold C
    simp [show (2594073385365405696*k+124) % 2 = 0 by omega]
    omega
  have h5 : C (1297036692682702848*k+62) = 648518346341351424*k+31 := by
    unfold C
    simp [show (1297036692682702848*k+62) % 2 = 0 by omega]
    omega
  have h6 : C (648518346341351424*k+31) = 1945555039024054272*k+94 := by
    unfold C
    simp [show (648518346341351424*k+31) % 2 ≠ 0 by omega]
    omega
  have h7 : C (1945555039024054272*k+94) = 972777519512027136*k+47 := by
    unfold C
    simp [show (1945555039024054272*k+94) % 2 = 0 by omega]
    omega
  have h8 : C (972777519512027136*k+47) = 2918332558536081408*k+142 := by
    unfold C
    simp [show (972777519512027136*k+47) % 2 ≠ 0 by omega]
    omega
  have h9 : C (2918332558536081408*k+142) = 1459166279268040704*k+71 := by
    unfold C
    simp [show (2918332558536081408*k+142) % 2 = 0 by omega]
    omega
  have h10 : C (1459166279268040704*k+71) = 4377498837804122112*k+214 := by
    unfold C
    simp [show (1459166279268040704*k+71) % 2 ≠ 0 by omega]
    omega
  have h11 : C (4377498837804122112*k+214) = 2188749418902061056*k+107 := by
    unfold C
    simp [show (4377498837804122112*k+214) % 2 = 0 by omega]
    omega
  have h12 : C (2188749418902061056*k+107) = 6566248256706183168*k+322 := by
    unfold C
    simp [show (2188749418902061056*k+107) % 2 ≠ 0 by omega]
    omega
  have h13 : C (6566248256706183168*k+322) = 3283124128353091584*k+161 := by
    unfold C
    simp [show (6566248256706183168*k+322) % 2 = 0 by omega]
    omega
  have h14 : C (3283124128353091584*k+161) = 9849372385059274752*k+484 := by
    unfold C
    simp [show (3283124128353091584*k+161) % 2 ≠ 0 by omega]
    omega
  have h15 : C (9849372385059274752*k+484) = 4924686192529637376*k+242 := by
    unfold C
    simp [show (9849372385059274752*k+484) % 2 = 0 by omega]
    omega
  have h16 : C (4924686192529637376*k+242) = 2462343096264818688*k+121 := by
    unfold C
    simp [show (4924686192529637376*k+242) % 2 = 0 by omega]
    omega
  have h17 : C (2462343096264818688*k+121) = 7387029288794456064*k+364 := by
    unfold C
    simp [show (2462343096264818688*k+121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (7387029288794456064*k+364) = 3693514644397228032*k+182 := by
    unfold C
    simp [show (7387029288794456064*k+364) % 2 = 0 by omega]
    omega
  have h19 : C (3693514644397228032*k+182) = 1846757322198614016*k+91 := by
    unfold C
    simp [show (3693514644397228032*k+182) % 2 = 0 by omega]
    omega
  have h20 : C (1846757322198614016*k+91) = 5540271966595842048*k+274 := by
    unfold C
    simp [show (1846757322198614016*k+91) % 2 ≠ 0 by omega]
    omega
  have h21 : C (5540271966595842048*k+274) = 2770135983297921024*k+137 := by
    unfold C
    simp [show (5540271966595842048*k+274) % 2 = 0 by omega]
    omega
  have h22 : C (2770135983297921024*k+137) = 8310407949893763072*k+412 := by
    unfold C
    simp [show (2770135983297921024*k+137) % 2 ≠ 0 by omega]
    omega
  have h23 : C (8310407949893763072*k+412) = 4155203974946881536*k+206 := by
    unfold C
    simp [show (8310407949893763072*k+412) % 2 = 0 by omega]
    omega
  have h24 : C (4155203974946881536*k+206) = 2077601987473440768*k+103 := by
    unfold C
    simp [show (4155203974946881536*k+206) % 2 = 0 by omega]
    omega
  have h25 : C (2077601987473440768*k+103) = 6232805962420322304*k+310 := by
    unfold C
    simp [show (2077601987473440768*k+103) % 2 ≠ 0 by omega]
    omega
  have h26 : C (6232805962420322304*k+310) = 3116402981210161152*k+155 := by
    unfold C
    simp [show (6232805962420322304*k+310) % 2 = 0 by omega]
    omega
  have h27 : C (3116402981210161152*k+155) = 9349208943630483456*k+466 := by
    unfold C
    simp [show (3116402981210161152*k+155) % 2 ≠ 0 by omega]
    omega
  have h28 : C (9349208943630483456*k+466) = 4674604471815241728*k+233 := by
    unfold C
    simp [show (9349208943630483456*k+466) % 2 = 0 by omega]
    omega
  have h29 : C (4674604471815241728*k+233) = 14023813415445725184*k+700 := by
    unfold C
    simp [show (4674604471815241728*k+233) % 2 ≠ 0 by omega]
    omega
  have h30 : C (14023813415445725184*k+700) = 7011906707722862592*k+350 := by
    unfold C
    simp [show (14023813415445725184*k+700) % 2 = 0 by omega]
    omega
  have h31 : C (7011906707722862592*k+350) = 3505953353861431296*k+175 := by
    unfold C
    simp [show (7011906707722862592*k+350) % 2 = 0 by omega]
    omega
  have h32 : C (3505953353861431296*k+175) = 10517860061584293888*k+526 := by
    unfold C
    simp [show (3505953353861431296*k+175) % 2 ≠ 0 by omega]
    omega
  have h33 : C (10517860061584293888*k+526) = 5258930030792146944*k+263 := by
    unfold C
    simp [show (10517860061584293888*k+526) % 2 = 0 by omega]
    omega
  have h34 : C (5258930030792146944*k+263) = 15776790092376440832*k+790 := by
    unfold C
    simp [show (5258930030792146944*k+263) % 2 ≠ 0 by omega]
    omega
  have h35 : C (15776790092376440832*k+790) = 7888395046188220416*k+395 := by
    unfold C
    simp [show (15776790092376440832*k+790) % 2 = 0 by omega]
    omega
  have h36 : C (7888395046188220416*k+395) = 23665185138564661248*k+1186 := by
    unfold C
    simp [show (7888395046188220416*k+395) % 2 ≠ 0 by omega]
    omega
  have h37 : C (23665185138564661248*k+1186) = 11832592569282330624*k+593 := by
    unfold C
    simp [show (23665185138564661248*k+1186) % 2 = 0 by omega]
    omega
  have h38 : C (11832592569282330624*k+593) = 35497777707846991872*k+1780 := by
    unfold C
    simp [show (11832592569282330624*k+593) % 2 ≠ 0 by omega]
    omega
  have h39 : C (35497777707846991872*k+1780) = 17748888853923495936*k+890 := by
    unfold C
    simp [show (35497777707846991872*k+1780) % 2 = 0 by omega]
    omega
  have h40 : C (17748888853923495936*k+890) = 8874444426961747968*k+445 := by
    unfold C
    simp [show (17748888853923495936*k+890) % 2 = 0 by omega]
    omega
  have h41 : C (8874444426961747968*k+445) = 26623333280885243904*k+1336 := by
    unfold C
    simp [show (8874444426961747968*k+445) % 2 ≠ 0 by omega]
    omega
  have h42 : C (26623333280885243904*k+1336) = 13311666640442621952*k+668 := by
    unfold C
    simp [show (26623333280885243904*k+1336) % 2 = 0 by omega]
    omega
  have h43 : C (13311666640442621952*k+668) = 6655833320221310976*k+334 := by
    unfold C
    simp [show (13311666640442621952*k+668) % 2 = 0 by omega]
    omega
  have h44 : C (6655833320221310976*k+334) = 3327916660110655488*k+167 := by
    unfold C
    simp [show (6655833320221310976*k+334) % 2 = 0 by omega]
    omega
  have h45 : C (3327916660110655488*k+167) = 9983749980331966464*k+502 := by
    unfold C
    simp [show (3327916660110655488*k+167) % 2 ≠ 0 by omega]
    omega
  have h46 : C (9983749980331966464*k+502) = 4991874990165983232*k+251 := by
    unfold C
    simp [show (9983749980331966464*k+502) % 2 = 0 by omega]
    omega
  have h47 : C (4991874990165983232*k+251) = 14975624970497949696*k+754 := by
    unfold C
    simp [show (4991874990165983232*k+251) % 2 ≠ 0 by omega]
    omega
  have h48 : C (14975624970497949696*k+754) = 7487812485248974848*k+377 := by
    unfold C
    simp [show (14975624970497949696*k+754) % 2 = 0 by omega]
    omega
  have h49 : C (7487812485248974848*k+377) = 22463437455746924544*k+1132 := by
    unfold C
    simp [show (7487812485248974848*k+377) % 2 ≠ 0 by omega]
    omega
  have h50 : C (22463437455746924544*k+1132) = 11231718727873462272*k+566 := by
    unfold C
    simp [show (22463437455746924544*k+1132) % 2 = 0 by omega]
    omega
  have h51 : C (11231718727873462272*k+566) = 5615859363936731136*k+283 := by
    unfold C
    simp [show (11231718727873462272*k+566) % 2 = 0 by omega]
    omega
  have h52 : C (5615859363936731136*k+283) = 16847578091810193408*k+850 := by
    unfold C
    simp [show (5615859363936731136*k+283) % 2 ≠ 0 by omega]
    omega
  have h53 : C (16847578091810193408*k+850) = 8423789045905096704*k+425 := by
    unfold C
    simp [show (16847578091810193408*k+850) % 2 = 0 by omega]
    omega
  have h54 : C (8423789045905096704*k+425) = 25271367137715290112*k+1276 := by
    unfold C
    simp [show (8423789045905096704*k+425) % 2 ≠ 0 by omega]
    omega
  have h55 : C (25271367137715290112*k+1276) = 12635683568857645056*k+638 := by
    unfold C
    simp [show (25271367137715290112*k+1276) % 2 = 0 by omega]
    omega
  have h56 : C (12635683568857645056*k+638) = 6317841784428822528*k+319 := by
    unfold C
    simp [show (12635683568857645056*k+638) % 2 = 0 by omega]
    omega
  have h57 : C (6317841784428822528*k+319) = 18953525353286467584*k+958 := by
    unfold C
    simp [show (6317841784428822528*k+319) % 2 ≠ 0 by omega]
    omega
  have h58 : C (18953525353286467584*k+958) = 9476762676643233792*k+479 := by
    unfold C
    simp [show (18953525353286467584*k+958) % 2 = 0 by omega]
    omega
  have h59 : C (9476762676643233792*k+479) = 28430288029929701376*k+1438 := by
    unfold C
    simp [show (9476762676643233792*k+479) % 2 ≠ 0 by omega]
    omega
  have h60 : C (28430288029929701376*k+1438) = 14215144014964850688*k+719 := by
    unfold C
    simp [show (28430288029929701376*k+1438) % 2 = 0 by omega]
    omega
  have h61 : C (14215144014964850688*k+719) = 42645432044894552064*k+2158 := by
    unfold C
    simp [show (14215144014964850688*k+719) % 2 ≠ 0 by omega]
    omega
  have h62 : C (42645432044894552064*k+2158) = 21322716022447276032*k+1079 := by
    unfold C
    simp [show (42645432044894552064*k+2158) % 2 = 0 by omega]
    omega
  have h63 : C (21322716022447276032*k+1079) = 63968148067341828096*k+3238 := by
    unfold C
    simp [show (21322716022447276032*k+1079) % 2 ≠ 0 by omega]
    omega
  have h64 : C (63968148067341828096*k+3238) = 31984074033670914048*k+1619 := by
    unfold C
    simp [show (63968148067341828096*k+3238) % 2 = 0 by omega]
    omega
  have h65 : C (31984074033670914048*k+1619) = 95952222101012742144*k+4858 := by
    unfold C
    simp [show (31984074033670914048*k+1619) % 2 ≠ 0 by omega]
    omega
  have h66 : C (95952222101012742144*k+4858) = 47976111050506371072*k+2429 := by
    unfold C
    simp [show (95952222101012742144*k+4858) % 2 = 0 by omega]
    omega
  have h67 : C (47976111050506371072*k+2429) = 143928333151519113216*k+7288 := by
    unfold C
    simp [show (47976111050506371072*k+2429) % 2 ≠ 0 by omega]
    omega
  have h68 : C (143928333151519113216*k+7288) = 71964166575759556608*k+3644 := by
    unfold C
    simp [show (143928333151519113216*k+7288) % 2 = 0 by omega]
    omega
  have h69 : C (71964166575759556608*k+3644) = 35982083287879778304*k+1822 := by
    unfold C
    simp [show (71964166575759556608*k+3644) % 2 = 0 by omega]
    omega
  have h70 : C (35982083287879778304*k+1822) = 17991041643939889152*k+911 := by
    unfold C
    simp [show (35982083287879778304*k+1822) % 2 = 0 by omega]
    omega
  have h71 : C (17991041643939889152*k+911) = 53973124931819667456*k+2734 := by
    unfold C
    simp [show (17991041643939889152*k+911) % 2 ≠ 0 by omega]
    omega
  have h72 : C (53973124931819667456*k+2734) = 26986562465909833728*k+1367 := by
    unfold C
    simp [show (53973124931819667456*k+2734) % 2 = 0 by omega]
    omega
  have h73 : C (26986562465909833728*k+1367) = 80959687397729501184*k+4102 := by
    unfold C
    simp [show (26986562465909833728*k+1367) % 2 ≠ 0 by omega]
    omega
  have h74 : C (80959687397729501184*k+4102) = 40479843698864750592*k+2051 := by
    unfold C
    simp [show (80959687397729501184*k+4102) % 2 = 0 by omega]
    omega
  have h75 : C (40479843698864750592*k+2051) = 121439531096594251776*k+6154 := by
    unfold C
    simp [show (40479843698864750592*k+2051) % 2 ≠ 0 by omega]
    omega
  have h76 : C (121439531096594251776*k+6154) = 60719765548297125888*k+3077 := by
    unfold C
    simp [show (121439531096594251776*k+6154) % 2 = 0 by omega]
    omega
  have h77 : C (60719765548297125888*k+3077) = 182159296644891377664*k+9232 := by
    unfold C
    simp [show (60719765548297125888*k+3077) % 2 ≠ 0 by omega]
    omega
  have h78 : C (182159296644891377664*k+9232) = 91079648322445688832*k+4616 := by
    unfold C
    simp [show (182159296644891377664*k+9232) % 2 = 0 by omega]
    omega
  have h79 : C (91079648322445688832*k+4616) = 45539824161222844416*k+2308 := by
    unfold C
    simp [show (91079648322445688832*k+4616) % 2 = 0 by omega]
    omega
  have h80 : C (45539824161222844416*k+2308) = 22769912080611422208*k+1154 := by
    unfold C
    simp [show (45539824161222844416*k+2308) % 2 = 0 by omega]
    omega
  have h81 : C (22769912080611422208*k+1154) = 11384956040305711104*k+577 := by
    unfold C
    simp [show (22769912080611422208*k+1154) % 2 = 0 by omega]
    omega
  have h82 : C (11384956040305711104*k+577) = 34154868120917133312*k+1732 := by
    unfold C
    simp [show (11384956040305711104*k+577) % 2 ≠ 0 by omega]
    omega
  have h83 : C (34154868120917133312*k+1732) = 17077434060458566656*k+866 := by
    unfold C
    simp [show (34154868120917133312*k+1732) % 2 = 0 by omega]
    omega
  have h84 : C (17077434060458566656*k+866) = 8538717030229283328*k+433 := by
    unfold C
    simp [show (17077434060458566656*k+866) % 2 = 0 by omega]
    omega
  have h85 : C (8538717030229283328*k+433) = 25616151090687849984*k+1300 := by
    unfold C
    simp [show (8538717030229283328*k+433) % 2 ≠ 0 by omega]
    omega
  have h86 : C (25616151090687849984*k+1300) = 12808075545343924992*k+650 := by
    unfold C
    simp [show (25616151090687849984*k+1300) % 2 = 0 by omega]
    omega
  have h87 : C (12808075545343924992*k+650) = 6404037772671962496*k+325 := by
    unfold C
    simp [show (12808075545343924992*k+650) % 2 = 0 by omega]
    omega
  have h88 : C (6404037772671962496*k+325) = 19212113318015887488*k+976 := by
    unfold C
    simp [show (6404037772671962496*k+325) % 2 ≠ 0 by omega]
    omega
  have h89 : C (19212113318015887488*k+976) = 9606056659007943744*k+488 := by
    unfold C
    simp [show (19212113318015887488*k+976) % 2 = 0 by omega]
    omega
  have h90 : C (9606056659007943744*k+488) = 4803028329503971872*k+244 := by
    unfold C
    simp [show (9606056659007943744*k+488) % 2 = 0 by omega]
    omega
  have h91 : C (4803028329503971872*k+244) = 2401514164751985936*k+122 := by
    unfold C
    simp [show (4803028329503971872*k+244) % 2 = 0 by omega]
    omega
  have h92 : C (2401514164751985936*k+122) = 1200757082375992968*k+61 := by
    unfold C
    simp [show (2401514164751985936*k+122) % 2 = 0 by omega]
    omega
  have h93 : C (1200757082375992968*k+61) = 3602271247127978904*k+184 := by
    unfold C
    simp [show (1200757082375992968*k+61) % 2 ≠ 0 by omega]
    omega
  have h94 : C (3602271247127978904*k+184) = 1801135623563989452*k+92 := by
    unfold C
    simp [show (3602271247127978904*k+184) % 2 = 0 by omega]
    omega
  have h95 : C (1801135623563989452*k+92) = 900567811781994726*k+46 := by
    unfold C
    simp [show (1801135623563989452*k+92) % 2 = 0 by omega]
    omega
  have h96 : C (900567811781994726*k+46) = 450283905890997363*k+23 := by
    unfold C
    simp [show (900567811781994726*k+46) % 2 = 0 by omega]
    omega
  have hIter : iterate (576460752303423488*k+27) 96 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C ((576460752303423488*k+27))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32, h33, h34, h35, h36, h37, h38, h39, h40, h41, h42, h43, h44, h45, h46, h47, h48, h49, h50, h51, h52, h53, h54, h55, h56, h57, h58, h59, h60, h61, h62, h63, h64, h65, h66, h67, h68, h69, h70, h71, h72, h73, h74, h75, h76, h77, h78, h79, h80, h81, h82, h83, h84, h85, h86, h87, h88, h89, h90, h91, h92, h93, h94, h95, h96]
  · omega

#print axioms long_path_27

end LongPath27
