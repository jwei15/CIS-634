structure SM0Theory :> SM0Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading SM0Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open ssm1Theory
  in end;
  val _ = Theory.link_parents
          ("SM0",Arbnum.fromString "1554865842",Arbnum.fromString "39235")
          [("ssm1",
           Arbnum.fromString "1554865839",
           Arbnum.fromString "60031")];
  val _ = Theory.incorporate_types "SM0"
       [("state", 0), ("staff", 0), ("privcmd", 0), ("output", 0),
        ("npriv", 0), ("command", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("SM0", "npriv"), ID("min", "fun"), ID("num", "num"),
   ID("SM0", "state"), ID("SM0", "staff"), ID("SM0", "privcmd"),
   ID("SM0", "output"), ID("min", "bool"), ID("aclfoundation", "Form"),
   ID("ssm1", "inst"), ID("SM0", "command"), ID("list", "list"),
   ID("ssm1", "trType"), ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("aclfoundation", "Princ"), ID("aclfoundation", "IntLevel"),
   ID("aclfoundation", "SecLevel"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"), ID("min", "@"),
   ID("SM0", "ACTIVE"), ID("bool", "ARB"), ID("SM0", "Alice"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("SM0", "Bob"), ID("ssm1", "CFG"),
   ID("ssm1", "configuration"), ID("ssm1", "CFGInterpret"),
   ID("bool", "COND"), ID("list", "CONS"), ID("ind_type", "CONSTR"),
   ID("SM0", "Carol"), ID("bool", "DATATYPE"), ID("bool", "F"),
   ID("aclfoundation", "FF"), ID("aclfoundation", "Form_CASE"),
   ID("combin", "I"), ID("list", "NIL"), ID("ssm1", "NONE"),
   ID("SM0", "NP"), ID("arithmetic", "NUMERAL"),
   ID("aclfoundation", "Name"), ID("SM0", "PR"),
   ID("aclfoundation", "Princ_CASE"), ID("SM0", "SM0StateInterp"),
   ID("SM0", "SM0ns"), ID("SM0", "SM0out"), ID("ssm1", "SOME"),
   ID("SM0", "STBY"), ID("num", "SUC"), ID("bool", "T"), ID("ssm1", "TR"),
   ID("aclfoundation", "TT"), ID("bool", "TYPE_DEFINITION"),
   ID("relation", "WF"), ID("relation", "WFREC"), ID("arithmetic", "ZERO"),
   ID("bool", "\\/"), ID("aclfoundation", "andf"), ID("SM0", "certs"),
   ID("SM0", "certs2"), ID("SM0", "command_CASE"),
   ID("SM0", "command_size"), ID("aclfoundation", "controls"),
   ID("ssm1", "discard"), ID("aclfoundation", "domi"),
   ID("aclfoundation", "doms"), ID("aclfoundation", "eqf"),
   ID("aclfoundation", "eqi"), ID("aclfoundation", "eqn"),
   ID("aclfoundation", "eqs"), ID("ssm1", "exec"),
   ID("aclfoundation", "impf"), ID("SM0", "inputOK"),
   ID("SM0", "inputOK2"), ID("ssm1", "inst_CASE"), ID("SM0", "launch"),
   ID("aclfoundation", "lt"), ID("aclfoundation", "lte"),
   ID("aclfoundation", "meet"), ID("aclfoundation", "notf"),
   ID("SM0", "npriv2num"), ID("SM0", "npriv_CASE"),
   ID("SM0", "npriv_size"), ID("SM0", "num2npriv"),
   ID("SM0", "num2output"), ID("SM0", "num2privcmd"),
   ID("SM0", "num2staff"), ID("SM0", "num2state"), ID("SM0", "off"),
   ID("SM0", "on"), ID("aclfoundation", "orf"), ID("SM0", "output2num"),
   ID("SM0", "output_CASE"), ID("SM0", "output_size"),
   ID("SM0", "privcmd2num"), ID("SM0", "privcmd_CASE"),
   ID("SM0", "privcmd_size"), ID("aclfoundation", "prop"),
   ID("aclfoundation", "quoting"), ID("aclfoundation", "reps"),
   ID("SM0", "reset"), ID("aclrules", "sat"), ID("aclfoundation", "says"),
   ID("aclfoundation", "speaks_for"), ID("SM0", "staff2num"),
   ID("SM0", "staff_CASE"), ID("SM0", "staff_size"),
   ID("SM0", "state2num"), ID("SM0", "state_CASE"),
   ID("SM0", "state_size"), ID("SM0", "status"), ID("ssm1", "trap"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [0], TYOP [2], TYOP [3], TYOP [1, 2, 1], TYV "'a", TYOP [1, 4, 4],
   TYOP [1, 4, 5], TYOP [1, 2, 6], TYOP [4], TYOP [1, 8, 1],
   TYOP [1, 4, 6], TYOP [1, 8, 10], TYOP [5], TYOP [1, 12, 1],
   TYOP [1, 12, 6], TYOP [6], TYOP [1, 15, 1], TYOP [1, 15, 6],
   TYOP [1, 1, 2], TYOP [1, 1, 8], TYOP [1, 1, 12], TYOP [1, 1, 15],
   TYOP [1, 1, 0], TYOP [1, 0, 1], TYOP [1, 0, 5], TYOP [7], TYV "'e",
   TYV "'d", TYOP [10], TYOP [9, 28], TYOP [8, 29, 8, 27, 26],
   TYOP [1, 30, 25], TYOP [1, 28, 1], TYOP [1, 12, 4], TYOP [1, 33, 4],
   TYOP [1, 0, 4], TYOP [1, 35, 34], TYOP [1, 28, 36], TYOP [11, 30],
   TYOP [1, 12, 38], TYOP [1, 0, 39], TYOP [1, 28, 40], TYOP [12, 28],
   TYOP [1, 42, 15], TYOP [1, 2, 43], TYOP [1, 42, 2], TYOP [1, 2, 45],
   TYOP [1, 2, 30], TYOP [1, 12, 28], TYOP [1, 0, 28], TYOP [14, 0, 12],
   TYOP [13, 50], TYOP [1, 51, 25], TYV "'b", TYOP [15, 29, 53, 8, 27, 26],
   TYOP [16, 27], TYOP [16, 26], TYOP [1, 28, 25], TYOP [1, 0, 25],
   TYOP [1, 15, 25], TYOP [1, 12, 25], TYOP [1, 8, 25], TYOP [1, 2, 25],
   TYOP [1, 42, 25], TYOP [1, 2, 63], TYOP [1, 30, 31], TYOP [1, 48, 25],
   TYOP [1, 49, 66], TYOP [1, 15, 4], TYOP [1, 8, 4], TYOP [1, 2, 4],
   TYOP [1, 28, 4], TYOP [1, 15, 59], TYOP [11, 15], TYOP [1, 12, 60],
   TYOP [1, 28, 51], TYOP [1, 8, 61], TYOP [1, 8, 76], TYOP [1, 2, 62],
   TYOP [17, 8], TYOP [18, 8, 27], TYOP [19, 8, 26], TYOP [1, 4, 25],
   TYOP [1, 82, 25], TYOP [1, 31, 25], TYOP [1, 80, 25], TYOP [1, 85, 25],
   TYOP [1, 54, 25], TYOP [1, 87, 25], TYOP [1, 79, 25], TYOP [1, 89, 25],
   TYOP [1, 81, 25], TYOP [1, 91, 25], TYOP [1, 57, 25], TYOP [1, 84, 25],
   TYOP [1, 93, 25], TYOP [1, 35, 25], TYOP [1, 96, 25], TYOP [1, 58, 25],
   TYOP [1, 98, 25], TYOP [1, 59, 25], TYOP [1, 100, 25], TYOP [1, 33, 25],
   TYOP [1, 102, 25], TYOP [1, 60, 25], TYOP [1, 104, 25],
   TYOP [1, 52, 25], TYOP [1, 106, 25], TYOP [1, 61, 25],
   TYOP [1, 108, 25], TYOP [1, 62, 25], TYOP [1, 110, 25],
   TYOP [1, 64, 25], TYOP [1, 112, 25], TYOP [1, 44, 25],
   TYOP [1, 114, 25], TYOP [1, 46, 25], TYOP [1, 116, 25],
   TYOP [1, 29, 25], TYOP [1, 118, 25], TYOP [1, 38, 25],
   TYOP [1, 120, 25], TYOP [1, 73, 25], TYOP [1, 122, 25], TYOP [1, 1, 25],
   TYOP [1, 124, 25], TYOP [1, 55, 25], TYOP [1, 126, 25],
   TYOP [1, 56, 25], TYOP [1, 128, 25], TYOP [1, 63, 25], TYOP [1, 1, 1],
   TYOP [1, 1, 131], TYOP [14, 55, 56], TYOP [14, 54, 133],
   TYOP [1, 133, 134], TYOP [1, 54, 135], TYOP [1, 12, 50],
   TYOP [1, 0, 137], TYOP [1, 56, 133], TYOP [1, 55, 139],
   TYOP [1, 25, 25], TYOP [1, 25, 141], TYOP [1, 1, 124], TYOP [1, 4, 82],
   TYOP [1, 28, 57], TYOP [1, 31, 84], TYOP [1, 38, 120], TYOP [1, 0, 58],
   TYOP [1, 51, 52], TYOP [1, 71, 25], TYOP [1, 150, 25], TYOP [1, 75, 25],
   TYOP [1, 152, 25], TYOP [1, 23, 25], TYOP [1, 154, 25],
   TYOP [1, 68, 25], TYOP [1, 156, 25], TYOP [1, 16, 25],
   TYOP [1, 158, 25], TYOP [1, 13, 25], TYOP [1, 160, 25],
   TYOP [1, 69, 25], TYOP [1, 162, 25], TYOP [1, 9, 25], TYOP [1, 164, 25],
   TYOP [1, 70, 25], TYOP [1, 166, 25], TYOP [1, 3, 25], TYOP [1, 168, 25],
   TYOP [1, 65, 25], TYOP [1, 170, 65], TYOP [38, 28, 27, 26, 15, 8, 2],
   TYOP [1, 73, 172], TYOP [1, 2, 173], TYOP [1, 38, 174],
   TYOP [1, 38, 175], TYOP [1, 47, 176], TYOP [1, 31, 177],
   TYOP [1, 172, 25], TYOP [1, 134, 179], TYOP [1, 25, 6],
   TYOP [1, 38, 38], TYOP [1, 30, 182], TYOP [1, 73, 73],
   TYOP [1, 15, 184], TYOP [1, 1, 51], TYOP [1, 186, 51],
   TYOP [1, 50, 187], TYOP [1, 1, 188], TYOP [1, 143, 25],
   TYOP [1, 143, 190], TYOP [1, 143, 191], TYOP [1, 81, 91],
   TYOP [1, 193, 192], TYOP [1, 193, 194], TYOP [1, 80, 85],
   TYOP [1, 196, 195], TYOP [1, 196, 197], TYOP [1, 79, 31],
   TYOP [1, 79, 199], TYOP [1, 200, 198], TYOP [1, 199, 201],
   TYOP [1, 79, 89], TYOP [1, 203, 202], TYOP [1, 199, 204],
   TYOP [1, 65, 205], TYOP [1, 65, 206], TYOP [1, 65, 207],
   TYOP [1, 65, 208], TYOP [1, 31, 209], TYOP [1, 118, 210],
   TYOP [1, 25, 211], TYOP [1, 25, 212], TYOP [1, 30, 213],
   TYOP [1, 8, 79], TYOP [1, 203, 25], TYOP [1, 203, 216],
   TYOP [1, 61, 217], TYOP [1, 79, 218], TYOP [1, 28, 29],
   TYOP [1, 172, 179], TYOP [1, 42, 221], TYOP [1, 134, 222],
   TYOP [1, 124, 154], TYOP [1, 124, 158], TYOP [1, 124, 160],
   TYOP [1, 124, 164], TYOP [1, 124, 168], TYOP [1, 52, 152],
   TYOP [1, 31, 31], TYOP [1, 230, 31], TYOP [1, 65, 231],
   TYOP [1, 30, 30], TYOP [1, 30, 233], TYOP [1, 79, 233],
   TYOP [1, 80, 30], TYOP [1, 80, 236], TYOP [1, 81, 30],
   TYOP [1, 81, 238], TYOP [1, 1, 30], TYOP [1, 1, 240], TYOP [1, 28, 42],
   TYOP [1, 57, 141], TYOP [1, 29, 243], TYOP [1, 79, 79],
   TYOP [1, 79, 245], TYOP [1, 29, 30], TYOP [1, 79, 235],
   TYOP [1, 134, 31], TYOP [1, 79, 30], TYOP [1, 79, 250],
   TYOP [1, 25, 142], TYOP [1, 8, 252]]
  end
  val _ = Theory.incorporate_consts "SM0" tyvector
     [("status", 0), ("state_size", 3), ("state_CASE", 7),
      ("state2num", 3), ("staff_size", 9), ("staff_CASE", 11),
      ("staff2num", 9), ("reset", 12), ("privcmd_size", 13),
      ("privcmd_CASE", 14), ("privcmd2num", 13), ("output_size", 16),
      ("output_CASE", 17), ("output2num", 16), ("on", 15), ("off", 15),
      ("num2state", 18), ("num2staff", 19), ("num2privcmd", 20),
      ("num2output", 21), ("num2npriv", 22), ("npriv_size", 23),
      ("npriv_CASE", 24), ("npriv2num", 23), ("launch", 12),
      ("inputOK2", 31), ("inputOK", 31), ("command_size", 32),
      ("command_CASE", 37), ("certs2", 41), ("certs", 41), ("STBY", 2),
      ("SM0out", 44), ("SM0ns", 46), ("SM0StateInterp", 47), ("PR", 48),
      ("NP", 49), ("Carol", 8), ("Bob", 8), ("Alice", 8), ("ACTIVE", 2)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'command'", 52), TMV("M", 54), TMV("M", 28), TMV("M", 0),
   TMV("M", 15), TMV("M", 12), TMV("M", 8), TMV("M", 2), TMV("M'", 28),
   TMV("M'", 0), TMV("M'", 15), TMV("M'", 12), TMV("M'", 8), TMV("M'", 2),
   TMV("NS", 46), TMV("Oi", 55), TMV("Os", 56), TMV("Out", 44),
   TMV("P", 31), TMV("P", 57), TMV("P", 58), TMV("P", 59), TMV("P", 60),
   TMV("P", 61), TMV("P", 62), TMV("P", 64), TMV("R", 65), TMV("a", 30),
   TMV("a", 0), TMV("a", 15), TMV("a", 12), TMV("a", 8), TMV("a", 2),
   TMV("a'", 0), TMV("a'", 15), TMV("a'", 12), TMV("a'", 8), TMV("a'", 2),
   TMV("a0", 51), TMV("c", 28), TMV("cc", 28), TMV("cmd", 28),
   TMV("command", 67), TMV("f", 35), TMV("f", 68), TMV("f", 33),
   TMV("f", 69), TMV("f", 70), TMV("f'", 35), TMV("f0", 35), TMV("f1", 33),
   TMV("f1'", 33), TMV("fn", 71), TMV("inputOK", 31), TMV("inputOK2", 31),
   TMV("ins", 38), TMV("m", 1), TMV("n", 0), TMV("n", 1), TMV("npriv", 58),
   TMV("npriv", 0), TMV("output", 72), TMV("outs", 73), TMV("p", 12),
   TMV("privcmd", 74), TMV("privcmd", 12), TMV("r", 1), TMV("r'", 1),
   TMV("rep", 75), TMV("rep", 23), TMV("rep", 16), TMV("rep", 13),
   TMV("rep", 9), TMV("rep", 3), TMV("s", 2), TMV("staff", 77),
   TMV("state", 78), TMV("state", 2), TMV("v", 30), TMV("v", 29),
   TMV("v", 2), TMV("v0", 4), TMV("v0'", 4), TMV("v1", 4), TMV("v1", 30),
   TMV("v1", 42), TMV("v1'", 4), TMV("v10", 79), TMV("v100", 30),
   TMV("v101", 30), TMV("v102", 30), TMV("v103", 30), TMV("v104", 30),
   TMV("v105", 30), TMV("v106", 30), TMV("v107", 30), TMV("v108", 30),
   TMV("v109", 79), TMV("v110", 30), TMV("v111", 79), TMV("v112", 79),
   TMV("v113", 79), TMV("v114", 30), TMV("v115", 79), TMV("v116", 79),
   TMV("v117", 30), TMV("v118", 80), TMV("v119", 80), TMV("v12", 79),
   TMV("v120", 80), TMV("v121", 80), TMV("v122", 81), TMV("v123", 81),
   TMV("v124", 81), TMV("v125", 81), TMV("v126", 1), TMV("v127", 1),
   TMV("v128", 1), TMV("v129", 1), TMV("v13", 79), TMV("v130", 1),
   TMV("v131", 1), TMV("v132", 8), TMV("v133", 79), TMV("v134", 79),
   TMV("v135", 79), TMV("v136", 79), TMV("v137", 8), TMV("v138", 79),
   TMV("v139", 79), TMV("v14", 79), TMV("v140", 79), TMV("v141", 79),
   TMV("v142", 28), TMV("v15", 30), TMV("v16", 79), TMV("v17", 79),
   TMV("v18", 30), TMV("v19", 80), TMV("v2", 4), TMV("v2", 30),
   TMV("v2'", 4), TMV("v20", 80), TMV("v21", 80), TMV("v22", 80),
   TMV("v23", 81), TMV("v24", 81), TMV("v25", 81), TMV("v26", 81),
   TMV("v27", 1), TMV("v28", 1), TMV("v29", 1), TMV("v3", 30),
   TMV("v30", 1), TMV("v31", 1), TMV("v32", 1), TMV("v33", 29),
   TMV("v34", 30), TMV("v35", 30), TMV("v36", 30), TMV("v37", 30),
   TMV("v38", 30), TMV("v39", 30), TMV("v4", 30), TMV("v40", 30),
   TMV("v41", 30), TMV("v42", 30), TMV("v43", 79), TMV("v44", 30),
   TMV("v45", 79), TMV("v46", 79), TMV("v47", 79), TMV("v48", 30),
   TMV("v49", 79), TMV("v5", 30), TMV("v50", 79), TMV("v51", 30),
   TMV("v52", 80), TMV("v53", 80), TMV("v54", 80), TMV("v55", 80),
   TMV("v56", 81), TMV("v57", 81), TMV("v58", 81), TMV("v59", 81),
   TMV("v6", 30), TMV("v60", 1), TMV("v61", 1), TMV("v62", 1),
   TMV("v63", 1), TMV("v64", 1), TMV("v65", 1), TMV("v66", 29),
   TMV("v67", 30), TMV("v68", 30), TMV("v69", 30), TMV("v7", 30),
   TMV("v70", 30), TMV("v71", 30), TMV("v72", 30), TMV("v73", 30),
   TMV("v74", 30), TMV("v75", 30), TMV("v76", 79), TMV("v77", 30),
   TMV("v78", 79), TMV("v79", 79), TMV("v8", 30), TMV("v80", 79),
   TMV("v81", 30), TMV("v82", 79), TMV("v83", 79), TMV("v84", 30),
   TMV("v85", 80), TMV("v86", 80), TMV("v87", 80), TMV("v88", 80),
   TMV("v89", 81), TMV("v9", 30), TMV("v90", 81), TMV("v91", 81),
   TMV("v92", 81), TMV("v93", 1), TMV("v94", 1), TMV("v95", 1),
   TMV("v96", 1), TMV("v97", 1), TMV("v98", 1), TMV("v99", 29),
   TMV("x", 0), TMV("x", 15), TMV("x", 12), TMV("x", 8), TMV("x", 2),
   TMV("x0", 4), TMV("x1", 4), TMV("x2", 4), TMC(20, 83), TMC(20, 84),
   TMC(20, 86), TMC(20, 88), TMC(20, 90), TMC(20, 92), TMC(20, 93),
   TMC(20, 94), TMC(20, 95), TMC(20, 97), TMC(20, 99), TMC(20, 101),
   TMC(20, 103), TMC(20, 105), TMC(20, 107), TMC(20, 109), TMC(20, 111),
   TMC(20, 113), TMC(20, 115), TMC(20, 117), TMC(20, 119), TMC(20, 121),
   TMC(20, 123), TMC(20, 98), TMC(20, 125), TMC(20, 100), TMC(20, 127),
   TMC(20, 129), TMC(20, 104), TMC(20, 106), TMC(20, 108), TMC(20, 110),
   TMC(20, 130), TMC(21, 132), TMC(22, 136), TMC(22, 138), TMC(22, 140),
   TMC(23, 142), TMC(24, 1), TMC(25, 143), TMC(26, 144), TMC(26, 65),
   TMC(26, 142), TMC(26, 145), TMC(26, 146), TMC(26, 147), TMC(26, 148),
   TMC(26, 143), TMC(26, 72), TMC(26, 74), TMC(26, 149), TMC(26, 76),
   TMC(26, 78), TMC(27, 142), TMC(28, 151), TMC(28, 153), TMC(28, 97),
   TMC(28, 155), TMC(28, 157), TMC(28, 159), TMC(28, 103), TMC(28, 161),
   TMC(28, 163), TMC(28, 165), TMC(28, 167), TMC(28, 169), TMC(28, 98),
   TMC(28, 125), TMC(28, 100), TMC(28, 104), TMC(28, 108), TMC(28, 110),
   TMC(29, 171), TMC(30, 2), TMC(31, 0), TMC(31, 12), TMC(32, 8),
   TMC(33, 131), TMC(34, 131), TMC(35, 51), TMC(36, 8), TMC(37, 178),
   TMC(39, 180), TMC(40, 181), TMC(41, 183), TMC(41, 185), TMC(42, 189),
   TMC(43, 8), TMC(44, 141), TMC(45, 25), TMC(46, 30), TMC(47, 214),
   TMC(48, 141), TMC(49, 38), TMC(50, 29), TMC(51, 49), TMC(52, 131),
   TMC(53, 215), TMC(54, 48), TMC(55, 219), TMC(56, 47), TMC(57, 46),
   TMC(58, 44), TMC(59, 220), TMC(60, 2), TMC(61, 131), TMC(62, 25),
   TMC(63, 223), TMC(64, 30), TMC(65, 224), TMC(65, 225), TMC(65, 226),
   TMC(65, 227), TMC(65, 228), TMC(65, 229), TMC(66, 170), TMC(67, 232),
   TMC(68, 1), TMC(69, 142), TMC(70, 234), TMC(71, 41), TMC(72, 41),
   TMC(73, 37), TMC(74, 32), TMC(75, 235), TMC(76, 42), TMC(77, 237),
   TMC(78, 239), TMC(79, 234), TMC(80, 237), TMC(81, 241), TMC(82, 239),
   TMC(83, 242), TMC(84, 234), TMC(85, 31), TMC(86, 31), TMC(87, 244),
   TMC(88, 12), TMC(89, 241), TMC(90, 241), TMC(91, 246), TMC(92, 233),
   TMC(93, 23), TMC(94, 24), TMC(95, 23), TMC(96, 22), TMC(97, 21),
   TMC(98, 20), TMC(99, 19), TMC(100, 18), TMC(101, 15), TMC(102, 15),
   TMC(103, 234), TMC(104, 16), TMC(105, 17), TMC(106, 16), TMC(107, 13),
   TMC(108, 14), TMC(109, 13), TMC(110, 247), TMC(111, 246), TMC(112, 248),
   TMC(113, 12), TMC(114, 249), TMC(115, 235), TMC(116, 251), TMC(117, 9),
   TMC(118, 11), TMC(118, 253), TMC(119, 9), TMC(120, 3), TMC(121, 7),
   TMC(122, 3), TMC(123, 0), TMC(124, 242), TMC(125, 141)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op privcmd_TY_DEF x = x
    val op privcmd_TY_DEF =
    ThmBind.DT(((("SM0",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%298%71%348%58%276$0@%333%315%354@3|@$0@|@"])
  fun op privcmd_BIJ x = x
    val op privcmd_BIJ =
    ThmBind.DT(((("SM0",1),[("SM0",[0]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%274%265%30%286%384%393$0@3$0@|@2%261%66%279%58%276$0@%333%315%354@3|$0@2%284%393%384$0@3$0@2|@2"])


  fun op privcmd_size_def x = x
    val op privcmd_size_def =
    ThmBind.DT(((("SM0",13),[]),[]),
               [ThmBind.read"%265%231%284%395$0@2%275@|@"])
  fun op privcmd_CASE x = x
    val op privcmd_CASE =
    ThmBind.DT(((("SM0",14),[]),[]),
               [ThmBind.read"%265%231%237%81%237%83%277%394$2@$1@$0@2%56%320%284$0@%275@2$2@$1@|%393$2@3|@|@|@"])
  fun op npriv_TY_DEF x = x
    val op npriv_TY_DEF =
    ThmBind.DT(((("SM0",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%294%69%346%58%276$0@%333%314%354@3|@$0@|@"])
  fun op npriv_BIJ x = x
    val op npriv_BIJ =
    ThmBind.DT(((("SM0",24),[("SM0",[23]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%274%260%28%283%382%379$0@3$0@|@2%261%66%279%58%276$0@%333%314%354@3|$0@2%284%379%382$0@3$0@2|@2"])

  fun op npriv_size_def x = x
    val op npriv_size_def =
    ThmBind.DT(((("SM0",35),[]),[]),
               [ThmBind.read"%260%229%284%381$0@2%275@|@"])
  fun op npriv_CASE x = x
    val op npriv_CASE =
    ThmBind.DT(((("SM0",36),[]),[]),
               [ThmBind.read"%260%229%237%81%277%380$1@$0@2%56$1|%379$1@3|@|@"])
  fun op command_TY_DEF x = x
    val op command_TY_DEF =
    ThmBind.DT(((("SM0",43),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%292%68%351%38%251%0%290%266%38%290%355%303%28%287$1@%28%323%275@%272$0@%312@2%58%316|@|$0@2|@2%306%30%287$1@%30%323%342%275@2%272%311@$0@2%58%316|@|$0@2|@3$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op command_case_def x = x
    val op command_case_def =
    ThmBind.DT(((("SM0",49),
                [("SM0",[44,45,46,47,48]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%274%260%28%246%43%249%50%277%359%332$2@2$1@$0@2$1$2@2|@|@|@2%265%30%246%43%249%50%277%359%335$2@2$1@$0@2$0$2@2|@|@|@2"])
  fun op command_size_def x = x
    val op command_size_def =
    ThmBind.DT(((("SM0",50),
                [("SM0",[44,45,46,47,48]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%274%260%28%284%360%332$0@3%270%333%314%354@3%381$0@3|@2%265%30%284%360%335$0@3%270%333%314%354@3%395$0@3|@2"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("SM0",60),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%302%73%350%58%276$0@%333%315%354@3|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("SM0",61),[("SM0",[60]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%274%268%32%289%386%407$0@3$0@|@2%261%66%279%58%276$0@%333%315%354@3|$0@2%284%407%386$0@3$0@2|@2"])


  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("SM0",73),[]),[]),
               [ThmBind.read"%268%233%284%409$0@2%275@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("SM0",74),[]),[]),
               [ThmBind.read"%268%233%237%81%237%83%277%408$2@$1@$0@2%56%320%284$0@%275@2$2@$1@|%407$2@3|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("SM0",83),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%296%70%347%58%276$0@%333%315%354@3|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("SM0",84),[("SM0",[83]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%274%262%29%285%383%390$0@3$0@|@2%261%66%279%58%276$0@%333%315%354@3|$0@2%284%390%383$0@3$0@2|@2"])


  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("SM0",96),[]),[]),
               [ThmBind.read"%262%230%284%392$0@2%275@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("SM0",97),[]),[]),
               [ThmBind.read"%262%230%237%81%237%83%277%391$2@$1@$0@2%56%320%284$0@%275@2$2@$1@|%390$2@3|@|@|@"])
  fun op staff_TY_DEF x = x
    val op staff_TY_DEF =
    ThmBind.DT(((("SM0",114),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%300%72%349%58%276$0@%333%314%314%354@4|@$0@|@"])
  fun op staff_BIJ x = x
    val op staff_BIJ =
    ThmBind.DT(((("SM0",115),[("SM0",[114]),("bool",[116])]),["DISK_THM"]),
               [ThmBind.read"%274%267%31%288%385%403$0@3$0@|@2%261%66%279%58%276$0@%333%314%314%354@4|$0@2%284%403%385$0@3$0@2|@2"])



  fun op staff_size_def x = x
    val op staff_size_def =
    ThmBind.DT(((("SM0",128),[]),[]),
               [ThmBind.read"%267%232%284%406$0@2%275@|@"])
  fun op staff_CASE x = x
    val op staff_CASE =
    ThmBind.DT(((("SM0",129),[]),[]),
               [ThmBind.read"%267%232%237%81%237%83%237%139%277%404$3@$2@$1@$0@2%56%320%276$0@%333%314%354@4$3@%320%284$0@%333%314%354@4$2@$1@2|%403$3@3|@|@|@|@"])
  fun op inputOK_primitive_def x = x
    val op inputOK_primitive_def =
    ThmBind.DT(((("SM0",138),[]),[]),
               [ThmBind.read"%281%371@%353%309%26%352$0@|@2%53%27%328$0@%329%326@2%329%326@2%156%329%326@|@%157%329%326@|@%158%159%329%326@||@%160%161%329%326@||@%162%164%329%326@||@%165%166%329%326@||@%167%168%328$0@%329%326@2%329%326@2%228%336$2@%127%373$1@%41%405$1@%329%343@2%329%343@2%329%326@2|@%329%326@2|@%128%129%329%326@||@%131%132%329%326@||@|@%88%329%326@|@%89%90%329%326@||@%91%92%329%326@||@%93%94%329%326@||@%95%96%329%326@||@%97%98%329%326@||@%99%100%329%326@||@%101%102%329%326@||@%103%104%105%329%326@|||@%106%107%329%326@||@%109%110%329%326@||@%111%112%329%326@||@%113%114%329%326@||@%115%116%329%326@||@%117%118%329%326@||@%120%121%329%326@||@||@%169%170%329%326@||@%171%172%329%326@||@%173%175%176%329%326@|||@%177%178%329%326@||@%179%180%329%326@||@%181%182%329%326@||@%183%184%329%326@||@%186%187%329%326@||@%188%189%329%326@||@%190%191%329%326@||@||@2"])
  fun op SM0StateInterp_def x = x
    val op SM0StateInterp_def =
    ThmBind.DT(((("SM0",141),[]),[]),
               [ThmBind.read"%268%77%278%337$0@2%345@|@"])
  fun op certs_def x = x
    val op certs_def =
    ThmBind.DT(((("SM0",142),[]),[]),
               [ThmBind.read"%243%41%260%60%265%65%282%357$2@$1@$0@2%321%361%334%313@2%396%340%332$1@5%321%361%334%313@2%396%340%335$0@5%321%361%334%317@2%396%340%332$1@5%321%370%401%334%317@2%396%340%335$0@5%396%331@3%330@5|@|@|@"])
  fun op inputOK2_primitive_def x = x
    val op inputOK2_primitive_def =
    ThmBind.DT(((("SM0",143),[]),[]),
               [ThmBind.read"%281%372@%353%309%26%352$0@|@2%54%27%328$0@%329%326@2%329%326@2%156%329%326@|@%157%329%326@|@%158%159%329%326@||@%160%161%329%326@||@%162%164%329%326@||@%165%166%329%326@||@%167%168%328$0@%329%326@2%329%326@2%228%336$2@%127%373$1@%41%405$1@%329%326@2%329%326@2%329%343@2|@%329%326@2|@%128%129%329%326@||@%131%132%329%326@||@|@%88%329%326@|@%89%90%329%326@||@%91%92%329%326@||@%93%94%329%326@||@%95%96%329%326@||@%97%98%329%326@||@%99%100%329%326@||@%101%102%329%326@||@%103%104%105%329%326@|||@%106%107%329%326@||@%109%110%329%326@||@%111%112%329%326@||@%113%114%329%326@||@%115%116%329%326@||@%117%118%329%326@||@%120%121%329%326@||@||@%169%170%329%326@||@%171%172%329%326@||@%173%175%176%329%326@|||@%177%178%329%326@||@%179%180%329%326@||@%181%182%329%326@||@%183%184%329%326@||@%186%187%329%326@||@%188%189%329%326@||@%190%191%329%326@||@||@2"])
  fun op certs2_def x = x
    val op certs2_def =
    ThmBind.DT(((("SM0",146),[]),[]),
               [ThmBind.read"%243%41%260%60%265%65%282%358$2@$1@$0@2%321%361%334%324@2%396%340%332$1@5%321%370%401%334%324@2%396%340%335$0@5%396%331@3%330@3|@|@|@"])
  fun op num2privcmd_privcmd2num x = x
    val op num2privcmd_privcmd2num =
    ThmBind.DT(((("SM0",2),[("SM0",[1])]),["DISK_THM"]),
               [ThmBind.read"%265%30%286%384%393$0@3$0@|@"])
  fun op privcmd2num_num2privcmd x = x
    val op privcmd2num_num2privcmd =
    ThmBind.DT(((("SM0",3),[("SM0",[1])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%315%354@4%284%393%384$0@3$0@2|@"])
  fun op num2privcmd_11 x = x
    val op num2privcmd_11 =
    ThmBind.DT(((("SM0",4),[("SM0",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%261%67%290%276$1@%333%315%354@4%290%276$0@%333%315%354@4%279%286%384$1@2%384$0@3%284$1@$0@4|@|@"])
  fun op privcmd2num_11 x = x
    val op privcmd2num_11 =
    ThmBind.DT(((("SM0",5),[("SM0",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%265%30%265%35%279%284%393$1@2%393$0@3%286$1@$0@2|@|@"])
  fun op num2privcmd_ONTO x = x
    val op num2privcmd_ONTO =
    ThmBind.DT(((("SM0",6),[("SM0",[1]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%265%30%304%66%274%286$1@%384$0@3%276$0@%333%315%354@4|@|@"])
  fun op privcmd2num_ONTO x = x
    val op privcmd2num_ONTO =
    ThmBind.DT(((("SM0",7),[("SM0",[1]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%315%354@4%306%30%284$1@%393$0@2|@2|@"])
  fun op num2privcmd_thm x = x
    val op num2privcmd_thm =
    ThmBind.DT(((("SM0",10),[("SM0",[8,9])]),[]),
               [ThmBind.read"%274%286%384%275@2%374@2%286%384%333%314%354@4%399@2"])
  fun op privcmd2num_thm x = x
    val op privcmd2num_thm =
    ThmBind.DT(((("SM0",11),
                [("SM0",[3,8,9]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%274%284%393%374@2%275@2%284%393%399@2%333%314%354@4"])
  fun op privcmd_EQ_privcmd x = x
    val op privcmd_EQ_privcmd =
    ThmBind.DT(((("SM0",12),[("SM0",[5]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%265%30%265%35%279%286$1@$0@2%284%393$1@2%393$0@3|@|@"])
  fun op privcmd_case_def x = x
    val op privcmd_case_def =
    ThmBind.DT(((("SM0",15),
                [("SM0",[11,14]),("bool",[55,63]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%274%237%81%237%83%277%394%374@$1@$0@2$1@|@|@2%237%81%237%83%277%394%399@$1@$0@2$0@|@|@2"])
  fun op datatype_privcmd x = x
    val op datatype_privcmd =
    ThmBind.DT(((("SM0",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%325%64%374@%399@2"])
  fun op privcmd_distinct x = x
    val op privcmd_distinct =
    ThmBind.DT(((("SM0",17),
                [("SM0",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%412%286%374@%399@2"])
  fun op privcmd_case_cong x = x
    val op privcmd_case_cong =
    ThmBind.DT(((("SM0",18),
                [("SM0",[6,8,9,15]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%265%5%265%11%237%81%237%83%290%274%286$3@$2@2%274%290%286$2@%374@2%277$1@%82@3%290%286$2@%399@2%277$0@%86@5%277%394$3@$1@$0@2%394$2@%82@%86@3|@|@|@|@"])
  fun op privcmd_nchotomy x = x
    val op privcmd_nchotomy =
    ThmBind.DT(((("SM0",19),
                [("SM0",[6,8,9]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%265%30%355%286$0@%374@2%286$0@%399@2|@"])
  fun op privcmd_Axiom x = x
    val op privcmd_Axiom =
    ThmBind.DT(((("SM0",20),
                [("SM0",[11]),("bool",[8,14,25,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%237%234%237%235%297%45%274%277$0%374@2$2@2%277$0%399@2$1@2|@|@|@"])
  fun op privcmd_induction x = x
    val op privcmd_induction =
    ThmBind.DT(((("SM0",21),
                [("SM0",[6,8,9]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%250%22%290%274$0%374@2$0%399@3%265%30$1$0@|@2|@"])
  fun op privcmd_distinct_clauses x = x
    val op privcmd_distinct_clauses =
    ThmBind.DT(((("SM0",22),
                [("SM0",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%412%286%374@%399@2"])
  fun op num2npriv_npriv2num x = x
    val op num2npriv_npriv2num =
    ThmBind.DT(((("SM0",25),[("SM0",[24])]),["DISK_THM"]),
               [ThmBind.read"%260%28%283%382%379$0@3$0@|@"])
  fun op npriv2num_num2npriv x = x
    val op npriv2num_num2npriv =
    ThmBind.DT(((("SM0",26),[("SM0",[24])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%314%354@4%284%379%382$0@3$0@2|@"])
  fun op num2npriv_11 x = x
    val op num2npriv_11 =
    ThmBind.DT(((("SM0",27),[("SM0",[24]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%261%67%290%276$1@%333%314%354@4%290%276$0@%333%314%354@4%279%283%382$1@2%382$0@3%284$1@$0@4|@|@"])
  fun op npriv2num_11 x = x
    val op npriv2num_11 =
    ThmBind.DT(((("SM0",28),[("SM0",[24]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%260%28%260%33%279%284%379$1@2%379$0@3%283$1@$0@2|@|@"])
  fun op num2npriv_ONTO x = x
    val op num2npriv_ONTO =
    ThmBind.DT(((("SM0",29),[("SM0",[24]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%260%28%304%66%274%283$1@%382$0@3%276$0@%333%314%354@4|@|@"])
  fun op npriv2num_ONTO x = x
    val op npriv2num_ONTO =
    ThmBind.DT(((("SM0",30),[("SM0",[24]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%314%354@4%303%28%284$1@%379$0@2|@2|@"])
  fun op num2npriv_thm x = x
    val op num2npriv_thm =
    ThmBind.DT(((("SM0",32),[("SM0",[31])]),[]),
               [ThmBind.read"%283%382%275@2%410@"])
  fun op npriv2num_thm x = x
    val op npriv2num_thm =
    ThmBind.DT(((("SM0",33),
                [("SM0",[26,31]),("bool",[25]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%284%379%410@2%275@"])
  fun op npriv_EQ_npriv x = x
    val op npriv_EQ_npriv =
    ThmBind.DT(((("SM0",34),[("SM0",[28]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%260%28%260%33%279%283$1@$0@2%284%379$1@2%379$0@3|@|@"])
  fun op npriv_case_def x = x
    val op npriv_case_def =
    ThmBind.DT(((("SM0",37),[("SM0",[33,36])]),["DISK_THM"]),
               [ThmBind.read"%237%81%277%380%410@$0@2$0@|@"])
  fun op datatype_npriv x = x
    val op datatype_npriv =
    ThmBind.DT(((("SM0",38),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%325%59%410@2"])
  fun op npriv_case_cong x = x
    val op npriv_case_cong =
    ThmBind.DT(((("SM0",39),
                [("SM0",[29,31,37]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%260%3%260%9%237%81%290%274%283$2@$1@2%290%283$1@%410@2%277$0@%82@4%277%380$2@$0@2%380$1@%82@3|@|@|@"])
  fun op npriv_nchotomy x = x
    val op npriv_nchotomy =
    ThmBind.DT(((("SM0",40),
                [("SM0",[29,31]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%260%28%283$0@%410@|@"])
  fun op npriv_Axiom x = x
    val op npriv_Axiom =
    ThmBind.DT(((("SM0",41),
                [("SM0",[33]),("bool",[8,25,55])]),["DISK_THM"]),
               [ThmBind.read"%237%234%293%43%277$0%410@2$1@|@|@"])
  fun op npriv_induction x = x
    val op npriv_induction =
    ThmBind.DT(((("SM0",42),
                [("SM0",[29,31]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%247%20%290$0%410@2%260%28$1$0@|@2|@"])
  fun op datatype_command x = x
    val op datatype_command =
    ThmBind.DT(((("SM0",51),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%325%42%332@%335@2"])
  fun op command_11 x = x
    val op command_11 =
    ThmBind.DT(((("SM0",52),
                [("SM0",[44,45,46,47,48]),("bool",[26,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%274%260%28%260%33%279%280%332$1@2%332$0@3%283$1@$0@2|@|@2%265%30%265%35%279%280%335$1@2%335$0@3%286$1@$0@2|@|@2"])
  fun op command_distinct x = x
    val op command_distinct =
    ThmBind.DT(((("SM0",53),
                [("SM0",[44,45,46,47,48]),("bool",[25,26,46,53,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%265%35%260%28%412%280%332$0@2%335$1@3|@|@"])
  fun op command_case_cong x = x
    val op command_case_cong =
    ThmBind.DT(((("SM0",54),
                [("SM0",[44,45,46,47,48,49]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%243%2%243%8%246%43%249%50%290%274%280$3@$2@2%274%260%28%290%280$3@%332$0@3%277$2$0@2%48$0@3|@2%265%30%290%280$3@%335$0@3%277$1$0@2%51$0@3|@4%277%359$3@$1@$0@2%359$2@%48@%51@3|@|@|@|@"])
  fun op command_nchotomy x = x
    val op command_nchotomy =
    ThmBind.DT(((("SM0",55),
                [("SM0",[44,45,46,47,48]),
                 ("bool",[26,180])]),["DISK_THM"]),
               [ThmBind.read"%243%40%355%303%57%280$1@%332$0@2|@2%306%63%280$1@%335$0@2|@2|@"])
  fun op command_Axiom x = x
    val op command_Axiom =
    ThmBind.DT(((("SM0",56),
                [("SM0",[44,45,46,47,48]),("bool",[26,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%246%49%249%50%291%52%274%260%28%277$1%332$0@3$3$0@2|@2%265%30%277$1%335$0@3$2$0@2|@2|@|@|@"])
  fun op command_induction x = x
    val op command_induction =
    ThmBind.DT(((("SM0",57),
                [("SM0",[44,45,46,47,48]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%245%19%290%274%260%57$1%332$0@2|@2%265%63$1%335$0@2|@3%243%39$1$0@|@2|@"])
  fun op command_distinct_clauses x = x
    val op command_distinct_clauses =
    ThmBind.DT(((("SM0",58),
                [("SM0",[44,45,46,47,48]),("bool",[25,26,46,53,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%265%35%260%28%412%280%332$0@2%335$1@3|@|@"])
  fun op command_one_one x = x
    val op command_one_one =
    ThmBind.DT(((("SM0",59),
                [("SM0",[44,45,46,47,48]),("bool",[26,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9])]),["DISK_THM"]),
               [ThmBind.read"%274%260%28%260%33%279%280%332$1@2%332$0@3%283$1@$0@2|@|@2%265%30%265%35%279%280%335$1@2%335$0@3%286$1@$0@2|@|@2"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("SM0",62),[("SM0",[61])]),["DISK_THM"]),
               [ThmBind.read"%268%32%289%386%407$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("SM0",63),[("SM0",[61])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%315%354@4%284%407%386$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("SM0",64),[("SM0",[61]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%261%67%290%276$1@%333%315%354@4%290%276$0@%333%315%354@4%279%289%386$1@2%386$0@3%284$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("SM0",65),[("SM0",[61]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%268%32%268%37%279%284%407$1@2%407$0@3%289$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("SM0",66),[("SM0",[61]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%268%32%304%66%274%289$1@%386$0@3%276$0@%333%315%354@4|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("SM0",67),[("SM0",[61]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%315%354@4%308%32%284$1@%407$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("SM0",70),[("SM0",[68,69])]),[]),
               [ThmBind.read"%274%289%386%275@2%341@2%289%386%333%314%354@4%310@2"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("SM0",71),
                [("SM0",[63,68,69]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%274%284%407%341@2%275@2%284%407%310@2%333%314%354@4"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("SM0",72),[("SM0",[65]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%268%32%268%37%279%289$1@$0@2%284%407$1@2%407$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("SM0",75),
                [("SM0",[71,74]),("bool",[55,63]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%274%237%81%237%83%277%408%341@$1@$0@2$1@|@|@2%237%81%237%83%277%408%310@$1@$0@2$0@|@|@2"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("SM0",76),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%325%76%341@%310@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("SM0",77),
                [("SM0",[71,72]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%412%289%341@%310@2"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("SM0",78),
                [("SM0",[66,68,69,75]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%268%7%268%13%237%81%237%83%290%274%289$3@$2@2%274%290%289$2@%341@2%277$1@%82@3%290%289$2@%310@2%277$0@%86@5%277%408$3@$1@$0@2%408$2@%82@%86@3|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("SM0",79),
                [("SM0",[66,68,69]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%268%32%355%289$0@%341@2%289$0@%310@2|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("SM0",80),
                [("SM0",[71]),("bool",[8,14,25,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%237%234%237%235%301%47%274%277$0%341@2$2@2%277$0%310@2$1@2|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("SM0",81),
                [("SM0",[66,68,69]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%253%24%290%274$0%310@2$0%341@3%268%32$1$0@|@2|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("SM0",82),
                [("SM0",[71,72]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%412%289%341@%310@2"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("SM0",85),[("SM0",[84])]),["DISK_THM"]),
               [ThmBind.read"%262%29%285%383%390$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("SM0",86),[("SM0",[84])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%315%354@4%284%390%383$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("SM0",87),[("SM0",[84]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%261%67%290%276$1@%333%315%354@4%290%276$0@%333%315%354@4%279%285%383$1@2%383$0@3%284$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("SM0",88),[("SM0",[84]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%262%29%262%34%279%284%390$1@2%390$0@3%285$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("SM0",89),[("SM0",[84]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%262%29%304%66%274%285$1@%383$0@3%276$0@%333%315%354@4|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("SM0",90),[("SM0",[84]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%315%354@4%305%29%284$1@%390$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("SM0",93),[("SM0",[91,92])]),[]),
               [ThmBind.read"%274%285%383%275@2%388@2%285%383%333%314%354@4%387@2"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("SM0",94),
                [("SM0",[86,91,92]),("bool",[25,53]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%274%284%390%388@2%275@2%284%390%387@2%333%314%354@4"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("SM0",95),[("SM0",[88]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%262%29%262%34%279%285$1@$0@2%284%390$1@2%390$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("SM0",98),
                [("SM0",[94,97]),("bool",[55,63]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%274%237%81%237%83%277%391%388@$1@$0@2$1@|@|@2%237%81%237%83%277%391%387@$1@$0@2$0@|@|@2"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("SM0",99),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%325%61%388@%387@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("SM0",100),
                [("SM0",[94,95]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%412%285%388@%387@2"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("SM0",101),
                [("SM0",[89,91,92,98]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%262%4%262%10%237%81%237%83%290%274%285$3@$2@2%274%290%285$2@%388@2%277$1@%82@3%290%285$2@%387@2%277$0@%86@5%277%391$3@$1@$0@2%391$2@%82@%86@3|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("SM0",102),
                [("SM0",[89,91,92]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%262%29%355%285$0@%388@2%285$0@%387@2|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("SM0",103),
                [("SM0",[94]),("bool",[8,14,25,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%237%234%237%235%295%44%274%277$0%388@2$2@2%277$0%387@2$1@2|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("SM0",104),
                [("SM0",[89,91,92]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%248%21%290%274$0%387@2$0%388@3%262%29$1$0@|@2|@"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("SM0",105),
                [("SM0",[94,95]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%412%285%388@%387@2"])
  fun op SM0ns_ind x = x
    val op SM0ns_ind =
    ThmBind.DT(((("SM0",108),
                [("SM0",[6,8,9,29,31,44,45,46,47,48,66,68,69]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,92,95,100,
                  103,104,106,180]),("numeral",[3,5,6,7,8,15,16]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm1",[31])]),["DISK_THM"]),
               [ThmBind.read"%254%25%290%274$0%341@%369%335%399@4%274$0%341@%369%335%374@4%274$0%341@%369%332%410@4%274$0%310@%369%335%399@4%274$0%310@%369%335%374@4%274$0%310@%369%332%410@4%274$0%341@%411%335%399@4%274$0%341@%411%335%374@4%274$0%341@%411%332%410@4%274$0%310@%411%335%399@4%274$0%310@%411%335%374@4%274$0%310@%411%332%410@4%274$0%341@%362@2$0%310@%362@15%268%80%269%85$2$1@$0@|@|@2|@"])
  fun op SM0ns_def x = x
    val op SM0ns_def =
    ThmBind.DT(((("SM0",109),
                [("SM0",[15,49,75,106,107]),("bool",[15,57]),
                 ("combin",[19]),("pair",[49]),("relation",[113,132]),
                 ("ssm1",[25])]),["DISK_THM"]),
               [ThmBind.read"%274%289%338%341@%369%335%399@4%341@2%274%289%338%341@%369%335%374@4%310@2%274%289%338%341@%369%332%410@4%341@2%274%289%338%310@%369%335%399@4%341@2%274%289%338%310@%369%335%374@4%310@2%274%289%338%310@%369%332%410@4%310@2%274%289%338%341@%411%335%399@4%341@2%274%289%338%341@%411%335%374@4%341@2%274%289%338%341@%411%332%410@4%341@2%274%289%338%310@%411%335%399@4%310@2%274%289%338%310@%411%335%374@4%310@2%274%289%338%310@%411%332%410@4%310@2%274%289%338%341@%362@2%341@2%289%338%310@%362@2%310@14"])
  fun op SM0out_ind x = x
    val op SM0out_ind =
    ThmBind.DT(((("SM0",112),
                [("SM0",[6,8,9,29,31,44,45,46,47,48,66,68,69]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,92,95,100,
                  103,104,106,180]),("numeral",[3,5,6,7,8,15,16]),
                 ("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm1",[31])]),["DISK_THM"]),
               [ThmBind.read"%254%25%290%274$0%341@%369%335%399@4%274$0%341@%369%335%374@4%274$0%341@%369%332%410@4%274$0%310@%369%335%399@4%274$0%310@%369%335%374@4%274$0%310@%369%332%410@4%274$0%341@%411%335%399@4%274$0%341@%411%335%374@4%274$0%341@%411%332%410@4%274$0%310@%411%335%399@4%274$0%310@%411%335%374@4%274$0%310@%411%332%410@4%274$0%341@%362@2$0%310@%362@15%268%80%269%85$2$1@$0@|@|@2|@"])
  fun op SM0out_def x = x
    val op SM0out_def =
    ThmBind.DT(((("SM0",113),
                [("SM0",[15,49,75,110,111]),("bool",[15,57]),
                 ("combin",[19]),("pair",[49]),("relation",[113,132]),
                 ("ssm1",[25])]),["DISK_THM"]),
               [ThmBind.read"%274%285%339%341@%369%335%399@4%387@2%274%285%339%341@%369%335%374@4%388@2%274%285%339%341@%369%332%410@4%387@2%274%285%339%310@%369%335%399@4%387@2%274%285%339%310@%369%335%374@4%388@2%274%285%339%310@%369%332%410@4%388@2%274%285%339%341@%411%335%399@4%387@2%274%285%339%341@%411%335%374@4%387@2%274%285%339%341@%411%332%410@4%387@2%274%285%339%310@%411%335%399@4%388@2%274%285%339%310@%411%335%374@4%388@2%274%285%339%310@%411%332%410@4%388@2%274%285%339%341@%362@2%387@2%285%339%310@%362@2%388@14"])
  fun op num2staff_staff2num x = x
    val op num2staff_staff2num =
    ThmBind.DT(((("SM0",116),[("SM0",[115])]),["DISK_THM"]),
               [ThmBind.read"%267%31%288%385%403$0@3$0@|@"])
  fun op staff2num_num2staff x = x
    val op staff2num_num2staff =
    ThmBind.DT(((("SM0",117),[("SM0",[115])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%314%314%354@5%284%403%385$0@3$0@2|@"])
  fun op num2staff_11 x = x
    val op num2staff_11 =
    ThmBind.DT(((("SM0",118),[("SM0",[115]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%261%67%290%276$1@%333%314%314%354@5%290%276$0@%333%314%314%354@5%279%288%385$1@2%385$0@3%284$1@$0@4|@|@"])
  fun op staff2num_11 x = x
    val op staff2num_11 =
    ThmBind.DT(((("SM0",119),[("SM0",[115]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%267%31%267%36%279%284%403$1@2%403$0@3%288$1@$0@2|@|@"])
  fun op num2staff_ONTO x = x
    val op num2staff_ONTO =
    ThmBind.DT(((("SM0",120),
                [("SM0",[115]),("bool",[25,62])]),["DISK_THM"]),
               [ThmBind.read"%267%31%304%66%274%288$1@%385$0@3%276$0@%333%314%314%354@5|@|@"])
  fun op staff2num_ONTO x = x
    val op staff2num_ONTO =
    ThmBind.DT(((("SM0",121),[("SM0",[115]),("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%261%66%279%276$0@%333%314%314%354@5%307%31%284$1@%403$0@2|@2|@"])
  fun op num2staff_thm x = x
    val op num2staff_thm =
    ThmBind.DT(((("SM0",125),[("SM0",[122,123,124])]),[]),
               [ThmBind.read"%274%288%385%275@2%313@2%274%288%385%333%314%354@4%317@2%288%385%333%315%354@4%324@3"])
  fun op staff2num_thm x = x
    val op staff2num_thm =
    ThmBind.DT(((("SM0",126),
                [("SM0",[117,122,123,124]),("bool",[25]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%274%284%403%313@2%275@2%274%284%403%317@2%333%314%354@4%284%403%324@2%333%315%354@5"])
  fun op staff_EQ_staff x = x
    val op staff_EQ_staff =
    ThmBind.DT(((("SM0",127),[("SM0",[119]),("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%267%31%267%36%279%288$1@$0@2%284%403$1@2%403$0@3|@|@"])
  fun op staff_case_def x = x
    val op staff_case_def =
    ThmBind.DT(((("SM0",130),
                [("SM0",[126,129]),("bool",[55,63]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%274%237%81%237%83%237%139%277%404%313@$2@$1@$0@2$2@|@|@|@2%274%237%81%237%83%237%139%277%404%317@$2@$1@$0@2$1@|@|@|@2%237%81%237%83%237%139%277%404%324@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_staff x = x
    val op datatype_staff =
    ThmBind.DT(((("SM0",131),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%325%75%313@%317@%324@2"])
  fun op staff_distinct x = x
    val op staff_distinct =
    ThmBind.DT(((("SM0",132),
                [("SM0",[126,127]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%274%412%288%313@%317@3%274%412%288%313@%324@3%412%288%317@%324@4"])
  fun op staff_case_cong x = x
    val op staff_case_cong =
    ThmBind.DT(((("SM0",133),
                [("SM0",[120,122,123,124,130]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%267%6%267%12%237%81%237%83%237%139%290%274%288$4@$3@2%274%290%288$3@%313@2%277$2@%82@3%274%290%288$3@%317@2%277$1@%86@3%290%288$3@%324@2%277$0@%141@6%277%404$4@$2@$1@$0@2%404$3@%82@%86@%141@3|@|@|@|@|@"])
  fun op staff_nchotomy x = x
    val op staff_nchotomy =
    ThmBind.DT(((("SM0",134),
                [("SM0",[120,122,123,124]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%267%31%355%288$0@%313@2%355%288$0@%317@2%288$0@%324@3|@"])
  fun op staff_Axiom x = x
    val op staff_Axiom =
    ThmBind.DT(((("SM0",135),
                [("SM0",[126]),("bool",[8,14,25,53,55,63]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%237%234%237%235%237%236%299%46%274%277$0%313@2$3@2%274%277$0%317@2$2@2%277$0%324@2$1@3|@|@|@|@"])
  fun op staff_induction x = x
    val op staff_induction =
    ThmBind.DT(((("SM0",136),
                [("SM0",[120,122,123,124]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%252%23%290%274$0%313@2%274$0%317@2$0%324@4%267%31$1$0@|@2|@"])
  fun op staff_distinct_clauses x = x
    val op staff_distinct_clauses =
    ThmBind.DT(((("SM0",137),
                [("SM0",[126,127]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%274%412%288%313@%317@3%274%412%288%313@%324@3%412%288%317@%324@4"])
  fun op inputOK_ind x = x
    val op inputOK_ind =
    ThmBind.DT(((("SM0",139),
                [("SM0",[120,122,123,124]),("aclfoundation",[55,116]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,71,75,76,
                  77,79,92,95,100,103,104,106]),
                 ("numeral",[3,5,6,7,8,15,16,17]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm1",[12])]),["DISK_THM"]),
               [ThmBind.read"%244%18%290%274%243%41$1%401%334%313@2%396%340$0@4|@2%274%243%41$1%401%334%317@2%396%340$0@4|@2%274$0%345@2%274$0%327@2%274%257%79$1%396$0@2|@2%274%238%84$1%378$0@2|@2%274%238%140%238%152$2%356$1@$0@2|@|@2%274%238%163%238%174$2%389$1@$0@2|@|@2%274%238%185%238%196$2%370$1@$0@2|@|@2%274%238%207%238%218$2%365$1@$0@2|@|@2%274%241%87$1%401$0@%345@2|@2%274%241%87$1%401$0@%327@2|@2%274%243%133$1%401%334%324@2%396%340$0@4|@2%274%267%122$1%401%334$0@2%396%331@3|@2%274%241%123%241%124%257%192$3%401%377$2@$1@2%396$0@3|@|@|@2%274%241%125%241%126%257%192$3%401%397$2@$1@2%396$0@3|@|@|@2%274%241%87%238%193$2%401$1@%378$0@3|@|@2%274%241%87%238%194%238%195$3%401$2@%356$1@$0@3|@|@|@2%274%241%87%238%197%238%198$3%401$2@%389$1@$0@3|@|@|@2%274%241%87%238%199%238%200$3%401$2@%370$1@$0@3|@|@|@2%274%241%87%238%201%238%202$3%401$2@%365$1@$0@3|@|@|@2%274%241%87%241%203%238%204$3%401$2@%401$1@$0@3|@|@|@2%274%241%87%241%205%241%206$3%401$2@%402$1@$0@3|@|@|@2%274%241%87%241%208%238%209$3%401$2@%361$1@$0@3|@|@|@2%274%241%87%241%210%241%211%238%212$4%401$3@%398$2@$1@$0@3|@|@|@|@2%274%241%87%239%213%239%214$3%401$2@%363$1@$0@3|@|@|@2%274%241%87%239%215%239%216$3%401$2@%366$1@$0@3|@|@|@2%274%241%87%242%217%242%219$3%401$2@%364$1@$0@3|@|@|@2%274%241%87%242%220%242%221$3%401$2@%368$1@$0@3|@|@|@2%274%241%87%261%222%261%223$3%401$2@%367$1@$0@3|@|@|@2%274%241%87%261%224%261%225$3%401$2@%376$1@$0@3|@|@|@2%274%241%87%261%226%261%227$3%401$2@%375$1@$0@3|@|@|@2%274%241%108%241%119$2%402$1@$0@2|@|@2%274%241%130%238%134$2%361$1@$0@2|@|@2%274%241%135%241%136%238%137$3%398$2@$1@$0@2|@|@|@2%274%239%138%239%142$2%363$1@$0@2|@|@2%274%239%143%239%144$2%366$1@$0@2|@|@2%274%242%145%242%146$2%364$1@$0@2|@|@2%274%242%147%242%148$2%368$1@$0@2|@|@2%274%261%149%261%150$2%367$1@$0@2|@|@2%274%261%151%261%153$2%376$1@$0@2|@|@2%261%154%261%155$2%375$1@$0@2|@|@43%238%78$1$0@|@2|@"])
  fun op inputOK_def x = x
    val op inputOK_def =
    ThmBind.DT(((("SM0",140),
                [("SM0",[130,138]),("aclfoundation",[33,110]),
                 ("bool",[15]),("combin",[19]),("relation",[113,132]),
                 ("ssm1",[6])]),["DISK_THM"]),
               [ThmBind.read"%274%279%371%401%334%313@2%396%340%41@5%343@2%274%279%371%401%334%317@2%396%340%41@5%343@2%274%279%371%345@2%326@2%274%279%371%327@2%326@2%274%279%371%396%79@3%326@2%274%279%371%378%84@3%326@2%274%279%371%356%140@%152@3%326@2%274%279%371%389%163@%174@3%326@2%274%279%371%370%185@%196@3%326@2%274%279%371%365%207@%218@3%326@2%274%279%371%401%87@%345@3%326@2%274%279%371%401%87@%327@3%326@2%274%279%371%401%334%324@2%396%340%133@5%326@2%274%279%371%401%334%122@2%396%331@4%326@2%274%279%371%401%377%123@%124@2%396%192@4%326@2%274%279%371%401%397%125@%126@2%396%192@4%326@2%274%279%371%401%87@%378%193@4%326@2%274%279%371%401%87@%356%194@%195@4%326@2%274%279%371%401%87@%389%197@%198@4%326@2%274%279%371%401%87@%370%199@%200@4%326@2%274%279%371%401%87@%365%201@%202@4%326@2%274%279%371%401%87@%401%203@%204@4%326@2%274%279%371%401%87@%402%205@%206@4%326@2%274%279%371%401%87@%361%208@%209@4%326@2%274%279%371%401%87@%398%210@%211@%212@4%326@2%274%279%371%401%87@%363%213@%214@4%326@2%274%279%371%401%87@%366%215@%216@4%326@2%274%279%371%401%87@%364%217@%219@4%326@2%274%279%371%401%87@%368%220@%221@4%326@2%274%279%371%401%87@%367%222@%223@4%326@2%274%279%371%401%87@%376%224@%225@4%326@2%274%279%371%401%87@%375%226@%227@4%326@2%274%279%371%402%108@%119@3%326@2%274%279%371%361%130@%134@3%326@2%274%279%371%398%135@%136@%137@3%326@2%274%279%371%363%138@%142@3%326@2%274%279%371%366%143@%144@3%326@2%274%279%371%364%145@%146@3%326@2%274%279%371%368%147@%148@3%326@2%274%279%371%367%149@%150@3%326@2%274%279%371%376%151@%153@3%326@2%279%371%375%154@%155@3%326@42"])
  fun op inputOK2_ind x = x
    val op inputOK2_ind =
    ThmBind.DT(((("SM0",144),
                [("SM0",[120,122,123,124]),("aclfoundation",[55,116]),
                 ("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,71,75,76,
                  77,79,92,95,100,103,104,106]),
                 ("numeral",[3,5,6,7,8,15,16,17]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm1",[12])]),["DISK_THM"]),
               [ThmBind.read"%244%18%290%274%243%41$1%401%334%324@2%396%340$0@4|@2%274$0%345@2%274$0%327@2%274%257%79$1%396$0@2|@2%274%238%84$1%378$0@2|@2%274%238%140%238%152$2%356$1@$0@2|@|@2%274%238%163%238%174$2%389$1@$0@2|@|@2%274%238%185%238%196$2%370$1@$0@2|@|@2%274%238%207%238%218$2%365$1@$0@2|@|@2%274%241%87$1%401$0@%345@2|@2%274%241%87$1%401$0@%327@2|@2%274%243%133$1%401%334%313@2%396%340$0@4|@2%274%243%133$1%401%334%317@2%396%340$0@4|@2%274%267%122$1%401%334$0@2%396%331@3|@2%274%241%123%241%124%257%192$3%401%377$2@$1@2%396$0@3|@|@|@2%274%241%125%241%126%257%192$3%401%397$2@$1@2%396$0@3|@|@|@2%274%241%87%238%193$2%401$1@%378$0@3|@|@2%274%241%87%238%194%238%195$3%401$2@%356$1@$0@3|@|@|@2%274%241%87%238%197%238%198$3%401$2@%389$1@$0@3|@|@|@2%274%241%87%238%199%238%200$3%401$2@%370$1@$0@3|@|@|@2%274%241%87%238%201%238%202$3%401$2@%365$1@$0@3|@|@|@2%274%241%87%241%203%238%204$3%401$2@%401$1@$0@3|@|@|@2%274%241%87%241%205%241%206$3%401$2@%402$1@$0@3|@|@|@2%274%241%87%241%208%238%209$3%401$2@%361$1@$0@3|@|@|@2%274%241%87%241%210%241%211%238%212$4%401$3@%398$2@$1@$0@3|@|@|@|@2%274%241%87%239%213%239%214$3%401$2@%363$1@$0@3|@|@|@2%274%241%87%239%215%239%216$3%401$2@%366$1@$0@3|@|@|@2%274%241%87%242%217%242%219$3%401$2@%364$1@$0@3|@|@|@2%274%241%87%242%220%242%221$3%401$2@%368$1@$0@3|@|@|@2%274%241%87%261%222%261%223$3%401$2@%367$1@$0@3|@|@|@2%274%241%87%261%224%261%225$3%401$2@%376$1@$0@3|@|@|@2%274%241%87%261%226%261%227$3%401$2@%375$1@$0@3|@|@|@2%274%241%108%241%119$2%402$1@$0@2|@|@2%274%241%130%238%134$2%361$1@$0@2|@|@2%274%241%135%241%136%238%137$3%398$2@$1@$0@2|@|@|@2%274%239%138%239%142$2%363$1@$0@2|@|@2%274%239%143%239%144$2%366$1@$0@2|@|@2%274%242%145%242%146$2%364$1@$0@2|@|@2%274%242%147%242%148$2%368$1@$0@2|@|@2%274%261%149%261%150$2%367$1@$0@2|@|@2%274%261%151%261%153$2%376$1@$0@2|@|@2%261%154%261%155$2%375$1@$0@2|@|@43%238%78$1$0@|@2|@"])
  fun op inputOK2_def x = x
    val op inputOK2_def =
    ThmBind.DT(((("SM0",145),
                [("SM0",[130,143]),("aclfoundation",[33,110]),
                 ("bool",[15]),("combin",[19]),("relation",[113,132]),
                 ("ssm1",[6])]),["DISK_THM"]),
               [ThmBind.read"%274%279%372%401%334%324@2%396%340%41@5%343@2%274%279%372%345@2%326@2%274%279%372%327@2%326@2%274%279%372%396%79@3%326@2%274%279%372%378%84@3%326@2%274%279%372%356%140@%152@3%326@2%274%279%372%389%163@%174@3%326@2%274%279%372%370%185@%196@3%326@2%274%279%372%365%207@%218@3%326@2%274%279%372%401%87@%345@3%326@2%274%279%372%401%87@%327@3%326@2%274%279%372%401%334%313@2%396%340%133@5%326@2%274%279%372%401%334%317@2%396%340%133@5%326@2%274%279%372%401%334%122@2%396%331@4%326@2%274%279%372%401%377%123@%124@2%396%192@4%326@2%274%279%372%401%397%125@%126@2%396%192@4%326@2%274%279%372%401%87@%378%193@4%326@2%274%279%372%401%87@%356%194@%195@4%326@2%274%279%372%401%87@%389%197@%198@4%326@2%274%279%372%401%87@%370%199@%200@4%326@2%274%279%372%401%87@%365%201@%202@4%326@2%274%279%372%401%87@%401%203@%204@4%326@2%274%279%372%401%87@%402%205@%206@4%326@2%274%279%372%401%87@%361%208@%209@4%326@2%274%279%372%401%87@%398%210@%211@%212@4%326@2%274%279%372%401%87@%363%213@%214@4%326@2%274%279%372%401%87@%366%215@%216@4%326@2%274%279%372%401%87@%364%217@%219@4%326@2%274%279%372%401%87@%368%220@%221@4%326@2%274%279%372%401%87@%367%222@%223@4%326@2%274%279%372%401%87@%376%224@%225@4%326@2%274%279%372%401%87@%375%226@%227@4%326@2%274%279%372%402%108@%119@3%326@2%274%279%372%361%130@%134@3%326@2%274%279%372%398%135@%136@%137@3%326@2%274%279%372%363%138@%142@3%326@2%274%279%372%366%143@%144@3%326@2%274%279%372%364%145@%146@3%326@2%274%279%372%368%147@%148@3%326@2%274%279%372%367%149@%150@3%326@2%274%279%372%376%151@%153@3%326@2%279%372%375%154@%155@3%326@42"])
  fun op Carol_rejected_lemma x = x
    val op Carol_rejected_lemma =
    ThmBind.DT(((("SM0",147),
                [("SM0",[130,138]),("aclfoundation",[33,110]),
                 ("bool",[15,25,26,46,47,52,53,62,72]),("combin",[19]),
                 ("relation",[113,132]),("sat",[1,3,5,6,7,11,14,15]),
                 ("ssm1",[6])]),["DISK_THM"]),
               [ThmBind.read"%412%371%401%334%324@2%396%340%41@5"])
  fun op Carol_discard_lemma x = x
    val op Carol_discard_lemma =
    ThmBind.DT(((("SM0",148),
                [("SM0",[130,138]),("aclfoundation",[33,110]),
                 ("bool",[15,25,26,35,46,47,52,53,55,62,72,93]),
                 ("combin",[19]),("relation",[113,132]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("ssm1",[6,61])]),["DISK_THM"]),
               [ThmBind.read"%344%271%1@%273%15@%16@3%362@%318%371@%337@%357%41@%60@%65@2%321%401%334%324@2%396%340%41@4%55@2%74@%62@2%318%371@%337@%357%41@%60@%65@2%55@%338%74@%362@2%322%339%74@%362@2%62@3"])
  fun op Alice_privcmd_lemma x = x
    val op Alice_privcmd_lemma =
    ThmBind.DT(((("SM0",149),
                [("SM0",[141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm1",[52])]),["DISK_THM"]),
               [ThmBind.read"%290%319%271%1@%273%15@%16@3%318%371@%337@%357%41@%60@%65@2%321%401%334%313@2%396%340%335%65@5%55@2%74@%62@3%400%271%1@%273%15@%16@3%396%340%335%65@5"])
  fun op Alice_exec_privcmd_justified_thm x = x
    val op Alice_exec_privcmd_justified_thm =
    ThmBind.DT(((("SM0",150),
                [("SM0",[141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%256%14%255%17%240%1%263%15%264%16%279%344%271$2@%273$1@$0@3%369%335%65@3%318%371@%337@%357%41@%60@%65@2%321%401%334%313@2%396%340%335%65@5%55@2%74@%62@2%318%371@%337@%357%41@%60@%65@2%55@$4%74@%369%335%65@4%322$3%74@%369%335%65@4%62@4%274%371%401%334%313@2%396%340%335%65@6%274%319%271$2@%273$1@$0@3%318%371@%337@%357%41@%60@%65@2%321%401%334%313@2%396%340%335%65@5%55@2%74@%62@3%400%271$2@%273$1@$0@3%396%340%335%65@7|@|@|@|@|@"])
  fun op Alice_privcmd_verified_thm x = x
    val op Alice_privcmd_verified_thm =
    ThmBind.DT(((("SM0",151),
                [("SM0",[141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%256%14%255%17%240%1%263%15%264%16%290%344%271$2@%273$1@$0@3%369%335%65@3%318%371@%337@%357%41@%60@%65@2%321%401%334%313@2%396%340%335%65@5%55@2%74@%62@2%318%371@%337@%357%41@%60@%65@2%55@$4%74@%369%335%65@4%322$3%74@%369%335%65@4%62@4%400%271$2@%273$1@$0@3%396%340%335%65@5|@|@|@|@|@"])
  fun op Alice_justified_privcmd_exec_thm x = x
    val op Alice_justified_privcmd_exec_thm =
    ThmBind.DT(((("SM0",152),
                [("SM0",[130,138,141,142]),("aclDrules",[3]),
                 ("aclfoundation",[33,110]),("aclrules",[63]),
                 ("bool",
                 [15,25,26,35,42,46,47,50,52,53,55,57,62,70,72,76,83,92,93,
                  95,145]),("combin",[19]),("relation",[113,132]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm1",[6,52,62])]),["DISK_THM"]),
               [ThmBind.read"%256%14%255%17%240%1%263%15%264%16%243%41%260%60%265%65%258%55%268%74%259%62%290%274%371%401%334%313@2%396%340%335$3@6%319%271$8@%273$7@$6@3%318%371@%337@%357$5@$4@$3@2%321%401%334%313@2%396%340%335$3@5$2@2$1@$0@4%344%271$8@%273$7@$6@3%369%335$3@3%318%371@%337@%357$5@$4@$3@2%321%401%334%313@2%396%340%335$3@5$2@2$1@$0@2%318%371@%337@%357$5@$4@$3@2$2@$10$1@%369%335$3@4%322$9$1@%369%335$3@4$0@4|@|@|@|@|@|@|@|@|@|@|@"])

  val _ = DB.bindl "SM0"
  [("privcmd_TY_DEF",privcmd_TY_DEF,DB.Def),
   ("privcmd_BIJ",privcmd_BIJ,DB.Def),
   ("privcmd_size_def",privcmd_size_def,DB.Def),
   ("privcmd_CASE",privcmd_CASE,DB.Def),
   ("npriv_TY_DEF",npriv_TY_DEF,DB.Def), ("npriv_BIJ",npriv_BIJ,DB.Def),
   ("npriv_size_def",npriv_size_def,DB.Def),
   ("npriv_CASE",npriv_CASE,DB.Def),
   ("command_TY_DEF",command_TY_DEF,DB.Def),
   ("command_case_def",command_case_def,DB.Def),
   ("command_size_def",command_size_def,DB.Def),
   ("state_TY_DEF",state_TY_DEF,DB.Def), ("state_BIJ",state_BIJ,DB.Def),
   ("state_size_def",state_size_def,DB.Def),
   ("state_CASE",state_CASE,DB.Def),
   ("output_TY_DEF",output_TY_DEF,DB.Def),
   ("output_BIJ",output_BIJ,DB.Def),
   ("output_size_def",output_size_def,DB.Def),
   ("output_CASE",output_CASE,DB.Def),
   ("staff_TY_DEF",staff_TY_DEF,DB.Def), ("staff_BIJ",staff_BIJ,DB.Def),
   ("staff_size_def",staff_size_def,DB.Def),
   ("staff_CASE",staff_CASE,DB.Def),
   ("inputOK_primitive_def",inputOK_primitive_def,DB.Def),
   ("SM0StateInterp_def",SM0StateInterp_def,DB.Def),
   ("certs_def",certs_def,DB.Def),
   ("inputOK2_primitive_def",inputOK2_primitive_def,DB.Def),
   ("certs2_def",certs2_def,DB.Def),
   ("num2privcmd_privcmd2num",num2privcmd_privcmd2num,DB.Thm),
   ("privcmd2num_num2privcmd",privcmd2num_num2privcmd,DB.Thm),
   ("num2privcmd_11",num2privcmd_11,DB.Thm),
   ("privcmd2num_11",privcmd2num_11,DB.Thm),
   ("num2privcmd_ONTO",num2privcmd_ONTO,DB.Thm),
   ("privcmd2num_ONTO",privcmd2num_ONTO,DB.Thm),
   ("num2privcmd_thm",num2privcmd_thm,DB.Thm),
   ("privcmd2num_thm",privcmd2num_thm,DB.Thm),
   ("privcmd_EQ_privcmd",privcmd_EQ_privcmd,DB.Thm),
   ("privcmd_case_def",privcmd_case_def,DB.Thm),
   ("datatype_privcmd",datatype_privcmd,DB.Thm),
   ("privcmd_distinct",privcmd_distinct,DB.Thm),
   ("privcmd_case_cong",privcmd_case_cong,DB.Thm),
   ("privcmd_nchotomy",privcmd_nchotomy,DB.Thm),
   ("privcmd_Axiom",privcmd_Axiom,DB.Thm),
   ("privcmd_induction",privcmd_induction,DB.Thm),
   ("privcmd_distinct_clauses",privcmd_distinct_clauses,DB.Thm),
   ("num2npriv_npriv2num",num2npriv_npriv2num,DB.Thm),
   ("npriv2num_num2npriv",npriv2num_num2npriv,DB.Thm),
   ("num2npriv_11",num2npriv_11,DB.Thm),
   ("npriv2num_11",npriv2num_11,DB.Thm),
   ("num2npriv_ONTO",num2npriv_ONTO,DB.Thm),
   ("npriv2num_ONTO",npriv2num_ONTO,DB.Thm),
   ("num2npriv_thm",num2npriv_thm,DB.Thm),
   ("npriv2num_thm",npriv2num_thm,DB.Thm),
   ("npriv_EQ_npriv",npriv_EQ_npriv,DB.Thm),
   ("npriv_case_def",npriv_case_def,DB.Thm),
   ("datatype_npriv",datatype_npriv,DB.Thm),
   ("npriv_case_cong",npriv_case_cong,DB.Thm),
   ("npriv_nchotomy",npriv_nchotomy,DB.Thm),
   ("npriv_Axiom",npriv_Axiom,DB.Thm),
   ("npriv_induction",npriv_induction,DB.Thm),
   ("datatype_command",datatype_command,DB.Thm),
   ("command_11",command_11,DB.Thm),
   ("command_distinct",command_distinct,DB.Thm),
   ("command_case_cong",command_case_cong,DB.Thm),
   ("command_nchotomy",command_nchotomy,DB.Thm),
   ("command_Axiom",command_Axiom,DB.Thm),
   ("command_induction",command_induction,DB.Thm),
   ("command_distinct_clauses",command_distinct_clauses,DB.Thm),
   ("command_one_one",command_one_one,DB.Thm),
   ("num2state_state2num",num2state_state2num,DB.Thm),
   ("state2num_num2state",state2num_num2state,DB.Thm),
   ("num2state_11",num2state_11,DB.Thm),
   ("state2num_11",state2num_11,DB.Thm),
   ("num2state_ONTO",num2state_ONTO,DB.Thm),
   ("state2num_ONTO",state2num_ONTO,DB.Thm),
   ("num2state_thm",num2state_thm,DB.Thm),
   ("state2num_thm",state2num_thm,DB.Thm),
   ("state_EQ_state",state_EQ_state,DB.Thm),
   ("state_case_def",state_case_def,DB.Thm),
   ("datatype_state",datatype_state,DB.Thm),
   ("state_distinct",state_distinct,DB.Thm),
   ("state_case_cong",state_case_cong,DB.Thm),
   ("state_nchotomy",state_nchotomy,DB.Thm),
   ("state_Axiom",state_Axiom,DB.Thm),
   ("state_induction",state_induction,DB.Thm),
   ("state_distinct_clauses",state_distinct_clauses,DB.Thm),
   ("num2output_output2num",num2output_output2num,DB.Thm),
   ("output2num_num2output",output2num_num2output,DB.Thm),
   ("num2output_11",num2output_11,DB.Thm),
   ("output2num_11",output2num_11,DB.Thm),
   ("num2output_ONTO",num2output_ONTO,DB.Thm),
   ("output2num_ONTO",output2num_ONTO,DB.Thm),
   ("num2output_thm",num2output_thm,DB.Thm),
   ("output2num_thm",output2num_thm,DB.Thm),
   ("output_EQ_output",output_EQ_output,DB.Thm),
   ("output_case_def",output_case_def,DB.Thm),
   ("datatype_output",datatype_output,DB.Thm),
   ("output_distinct",output_distinct,DB.Thm),
   ("output_case_cong",output_case_cong,DB.Thm),
   ("output_nchotomy",output_nchotomy,DB.Thm),
   ("output_Axiom",output_Axiom,DB.Thm),
   ("output_induction",output_induction,DB.Thm),
   ("output_distinct_clauses",output_distinct_clauses,DB.Thm),
   ("SM0ns_ind",SM0ns_ind,DB.Thm), ("SM0ns_def",SM0ns_def,DB.Thm),
   ("SM0out_ind",SM0out_ind,DB.Thm), ("SM0out_def",SM0out_def,DB.Thm),
   ("num2staff_staff2num",num2staff_staff2num,DB.Thm),
   ("staff2num_num2staff",staff2num_num2staff,DB.Thm),
   ("num2staff_11",num2staff_11,DB.Thm),
   ("staff2num_11",staff2num_11,DB.Thm),
   ("num2staff_ONTO",num2staff_ONTO,DB.Thm),
   ("staff2num_ONTO",staff2num_ONTO,DB.Thm),
   ("num2staff_thm",num2staff_thm,DB.Thm),
   ("staff2num_thm",staff2num_thm,DB.Thm),
   ("staff_EQ_staff",staff_EQ_staff,DB.Thm),
   ("staff_case_def",staff_case_def,DB.Thm),
   ("datatype_staff",datatype_staff,DB.Thm),
   ("staff_distinct",staff_distinct,DB.Thm),
   ("staff_case_cong",staff_case_cong,DB.Thm),
   ("staff_nchotomy",staff_nchotomy,DB.Thm),
   ("staff_Axiom",staff_Axiom,DB.Thm),
   ("staff_induction",staff_induction,DB.Thm),
   ("staff_distinct_clauses",staff_distinct_clauses,DB.Thm),
   ("inputOK_ind",inputOK_ind,DB.Thm), ("inputOK_def",inputOK_def,DB.Thm),
   ("inputOK2_ind",inputOK2_ind,DB.Thm),
   ("inputOK2_def",inputOK2_def,DB.Thm),
   ("Carol_rejected_lemma",Carol_rejected_lemma,DB.Thm),
   ("Carol_discard_lemma",Carol_discard_lemma,DB.Thm),
   ("Alice_privcmd_lemma",Alice_privcmd_lemma,DB.Thm),
   ("Alice_exec_privcmd_justified_thm",
    Alice_exec_privcmd_justified_thm,
    DB.Thm),
   ("Alice_privcmd_verified_thm",Alice_privcmd_verified_thm,DB.Thm),
   ("Alice_justified_privcmd_exec_thm",
    Alice_justified_privcmd_exec_thm,
    DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "SM0",
    thydataty = "compute",
    read = ThmBind.read,
    data =
        "SM0.SM0ns_def SM0.inputOK2_def SM0.certs2_def SM0.SM0out_def SM0.certs_def SM0.SM0StateInterp_def SM0.inputOK_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "SM0",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY3.SM0,7.privcmdNTY3.SM0,5.nprivNTY3.SM0,7.commandNTY3.SM0,5.stateNTY3.SM0,6.outputNTY3.SM0,5.staff"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "SM0",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO11.privcmd2num4.%393OO11.num2privcmd4.%384OO6.launch4.%374OO5.reset4.%399OO12.privcmd_size4.%395OO12.privcmd_CASE4.%394OO4.case4.%394OO9.npriv2num4.%379OO9.num2npriv4.%382OO6.status4.%410OO10.npriv_size4.%381OO10.npriv_CASE4.%380OO4.case4.%380OO2.NP4.%332OO2.PR4.%335OO12.command_CASE4.%359OO12.command_size4.%360OO4.case4.%359OO9.state2num4.%407OO9.num2state4.%386OO4.STBY4.%341OO6.ACTIVE4.%310OO10.state_size4.%409OO10.state_CASE4.%408OO4.case4.%408OO10.output2num4.%390OO10.num2output4.%383OO2.on4.%388OO3.off4.%387OO11.output_size4.%392OO11.output_CASE4.%391OO4.case4.%391OO5.SM0ns4.%338OO6.SM0out4.%339OO9.staff2num4.%403OO9.num2staff4.%385OO5.Alice4.%313OO3.Bob4.%317OO5.Carol4.%324OO10.staff_size4.%406OO10.staff_CASE4.%404OO4.case4.%404OO7.inputOK4.%371OO14.SM0StateInterp4.%337OO5.certs4.%357OO8.inputOK24.%372OO6.certs24.%358"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val SM0_grammars = merge_grammars ["ssm1"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="SM0"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val SM0_grammars = 
    Portable.## (addtyUDs,addtmUDs) SM0_grammars
  val _ = Parse.grammarDB_insert("SM0",SM0_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG privcmd_Axiom,
           case_def=privcmd_case_def,
           case_cong=privcmd_case_cong,
           induction=ORIG privcmd_induction,
           nchotomy=privcmd_nchotomy,
           size=SOME(Parse.Term`(SM0$privcmd_size) :SM0$privcmd -> num$num`,
                     ORIG privcmd_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME privcmd_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2privcmd_thm privcmd2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG npriv_Axiom,
           case_def=npriv_case_def,
           case_cong=npriv_case_cong,
           induction=ORIG npriv_induction,
           nchotomy=npriv_nchotomy,
           size=SOME(Parse.Term`(SM0$npriv_size) :SM0$npriv -> num$num`,
                     ORIG npriv_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2npriv_thm npriv2num_thm (SOME ("npriv", npriv_EQ_npriv)) tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG command_Axiom,
           case_def=command_case_def,
           case_cong=command_case_cong,
           induction=ORIG command_induction,
           nchotomy=command_nchotomy,
           size=SOME(Parse.Term`(SM0$command_size) :SM0$command -> num$num`,
                     ORIG command_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME command_11,
           distinct=SOME command_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG state_Axiom,
           case_def=state_case_def,
           case_cong=state_case_cong,
           induction=ORIG state_induction,
           nchotomy=state_nchotomy,
           size=SOME(Parse.Term`(SM0$state_size) :SM0$state -> num$num`,
                     ORIG state_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME state_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2state_thm state2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG output_Axiom,
           case_def=output_case_def,
           case_cong=output_case_cong,
           induction=ORIG output_induction,
           nchotomy=output_nchotomy,
           size=SOME(Parse.Term`(SM0$output_size) :SM0$output -> num$num`,
                     ORIG output_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME output_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2output_thm output2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG staff_Axiom,
           case_def=staff_case_def,
           case_cong=staff_case_cong,
           induction=ORIG staff_induction,
           nchotomy=staff_nchotomy,
           size=SOME(Parse.Term`(SM0$staff_size) :SM0$staff -> num$num`,
                     ORIG staff_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME staff_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2staff_thm staff2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "SM0"
end
