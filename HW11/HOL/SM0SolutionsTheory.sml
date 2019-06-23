structure SM0SolutionsTheory :> SM0SolutionsTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading SM0SolutionsTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open SM0Theory
  in end;
  val _ = Theory.link_parents
          ("SM0Solutions",
          Arbnum.fromString "1554865846",
          Arbnum.fromString "391801")
          [("SM0",
           Arbnum.fromString "1554865842",
           Arbnum.fromString "39235")];
  val _ = Theory.incorporate_types "SM0Solutions" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("aclfoundation", "Kripke"), ID("SM0", "staff"), ID("ssm1", "inst"),
   ID("SM0", "command"), ID("min", "fun"), ID("SM0", "state"),
   ID("ssm1", "trType"), ID("aclfoundation", "po"), ID("SM0", "output"),
   ID("list", "list"), ID("aclfoundation", "Form"), ID("SM0", "npriv"),
   ID("SM0", "privcmd"), ID("bool", "!"), ID("min", "bool"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("min", "="),
   ID("min", "==>"), ID("SM0", "Alice"), ID("ssm1", "CFG"),
   ID("ssm1", "configuration"), ID("ssm1", "CFGInterpret"),
   ID("list", "CONS"), ID("SM0", "Carol"), ID("ssm1", "NONE"),
   ID("SM0", "NP"), ID("aclfoundation", "Name"),
   ID("aclfoundation", "Princ"), ID("SM0", "PR"),
   ID("SM0", "SM0StateInterp"), ID("ssm1", "SOME"), ID("ssm1", "TR"),
   ID("SM0", "certs"), ID("SM0", "certs2"), ID("ssm1", "exec"),
   ID("SM0", "inputOK"), ID("SM0", "inputOK2"),
   ID("aclfoundation", "prop"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("ssm1", "trap")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'e", TYV "'d", TYOP [1], TYV "'b", TYOP [3], TYOP [2, 4],
   TYOP [0, 5, 3, 2, 1, 0], TYOP [5], TYOP [6, 4], TYOP [4, 8, 7],
   TYOP [4, 7, 9], TYOP [7, 1], TYOP [7, 0], TYOP [8], TYOP [4, 8, 13],
   TYOP [4, 7, 14], TYOP [10, 5, 2, 1, 0], TYOP [9, 16], TYOP [11],
   TYOP [9, 13], TYOP [12], TYOP [14], TYOP [4, 6, 21], TYOP [4, 22, 21],
   TYOP [4, 4, 21], TYOP [4, 24, 21], TYOP [4, 15, 21], TYOP [4, 26, 21],
   TYOP [4, 10, 21], TYOP [4, 28, 21], TYOP [4, 17, 21], TYOP [4, 30, 21],
   TYOP [4, 19, 21], TYOP [4, 32, 21], TYOP [4, 18, 21], TYOP [4, 34, 21],
   TYOP [4, 11, 21], TYOP [4, 36, 21], TYOP [4, 12, 21], TYOP [4, 38, 21],
   TYOP [4, 20, 21], TYOP [4, 40, 21], TYOP [4, 7, 21], TYOP [4, 42, 21],
   TYOP [16, 11, 12], TYOP [16, 6, 44], TYOP [4, 44, 45], TYOP [4, 6, 46],
   TYOP [4, 12, 44], TYOP [4, 11, 48], TYOP [4, 21, 21], TYOP [4, 21, 50],
   TYOP [22, 4, 1, 0, 13, 2, 7], TYOP [4, 19, 52], TYOP [4, 7, 53],
   TYOP [4, 17, 54], TYOP [4, 17, 55], TYOP [4, 7, 16], TYOP [4, 57, 56],
   TYOP [4, 16, 21], TYOP [4, 59, 58], TYOP [4, 52, 21], TYOP [4, 45, 61],
   TYOP [4, 17, 17], TYOP [4, 16, 63], TYOP [4, 19, 19], TYOP [4, 13, 65],
   TYOP [4, 18, 4], TYOP [29, 2], TYOP [4, 2, 68], TYOP [4, 20, 4],
   TYOP [4, 4, 5], TYOP [4, 52, 61], TYOP [4, 8, 72], TYOP [4, 45, 73],
   TYOP [4, 20, 17], TYOP [4, 18, 75], TYOP [4, 4, 76], TYOP [4, 4, 8],
   TYOP [4, 5, 16], TYOP [4, 45, 59], TYOP [4, 16, 16], TYOP [4, 68, 81]]
  end
  val _ = Theory.incorporate_consts "SM0Solutions" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 6), TMV("NS", 10), TMV("Oi", 11), TMV("Os", 12),
   TMV("Out", 15), TMV("cmd", 4), TMV("ins", 17), TMV("npriv", 18),
   TMV("outs", 19), TMV("privcmd", 20), TMV("s", 7), TMC(13, 23),
   TMC(13, 25), TMC(13, 27), TMC(13, 29), TMC(13, 31), TMC(13, 33),
   TMC(13, 35), TMC(13, 37), TMC(13, 39), TMC(13, 41), TMC(13, 43),
   TMC(15, 47), TMC(15, 49), TMC(17, 51), TMC(18, 51), TMC(19, 51),
   TMC(20, 2), TMC(21, 60), TMC(23, 62), TMC(24, 64), TMC(24, 66),
   TMC(25, 2), TMC(26, 5), TMC(27, 67), TMC(28, 69), TMC(30, 70),
   TMC(31, 57), TMC(32, 71), TMC(33, 74), TMC(34, 77), TMC(35, 77),
   TMC(36, 78), TMC(37, 59), TMC(38, 59), TMC(39, 79), TMC(40, 80),
   TMC(41, 82), TMC(42, 78)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op Alice_npriv_lemma x = x
    val op Alice_npriv_lemma =
    ThmBind.DT(((("SM0Solutions",0),
                [("SM0",[141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm1",[52])]),["DISK_THM"]),
               [ThmBind.read"%26%29%22%0@%23%2@%3@3%28%43@%37@%40%5@%7@%9@2%30%47%35%27@2%45%38%34%7@5%6@2%10@%8@3%46%22%0@%23%2@%3@3%45%38%34%7@5"])
  fun op Alice_exec_npriv_justified_thm x = x
    val op Alice_exec_npriv_justified_thm =
    ThmBind.DT(((("SM0Solutions",1),
                [("SM0",[141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%25%39%22$2@%23$1@$0@3%42%34%7@3%28%43@%37@%40%5@%7@%9@2%30%47%35%27@2%45%38%34%7@5%6@2%10@%8@2%28%43@%37@%40%5@%7@%9@2%6@$4%10@%42%34%7@4%31$3%10@%42%34%7@4%8@4%24%43%47%35%27@2%45%38%34%7@6%24%29%22$2@%23$1@$0@3%28%43@%37@%40%5@%7@%9@2%30%47%35%27@2%45%38%34%7@5%6@2%10@%8@3%46%22$2@%23$1@$0@3%45%38%34%7@7|@|@|@|@|@"])
  fun op Alice_npriv_verified_thm x = x
    val op Alice_npriv_verified_thm =
    ThmBind.DT(((("SM0Solutions",2),
                [("SM0",[141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%26%39%22$2@%23$1@$0@3%42%34%7@3%28%43@%37@%40%5@%7@%9@2%30%47%35%27@2%45%38%34%7@5%6@2%10@%8@2%28%43@%37@%40%5@%7@%9@2%6@$4%10@%42%34%7@4%31$3%10@%42%34%7@4%8@4%46%22$2@%23$1@$0@3%45%38%34%7@5|@|@|@|@|@"])
  fun op Alice_justified_npriv_exec_thm x = x
    val op Alice_justified_npriv_exec_thm =
    ThmBind.DT(((("SM0Solutions",3),
                [("SM0",[140,141,142]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,72,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%12%5%17%7%20%9%15%6%21%10%16%8%26%24%43%47%35%27@2%45%38%34$4@6%29%22$8@%23$7@$6@3%28%43@%37@%40$5@$4@$3@2%30%47%35%27@2%45%38%34$4@5$2@2$1@$0@4%39%22$8@%23$7@$6@3%42%34$4@3%28%43@%37@%40$5@$4@$3@2%30%47%35%27@2%45%38%34$4@5$2@2$1@$0@2%28%43@%37@%40$5@$4@$3@2$2@$10$1@%42%34$4@4%31$9$1@%42%34$4@4$0@4|@|@|@|@|@|@|@|@|@|@|@"])
  fun op Carol_npriv_lemma x = x
    val op Carol_npriv_lemma =
    ThmBind.DT(((("SM0Solutions",4),
                [("SM0",[141,146]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",[25,26,46,47,50,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),("satList",[1,3]),
                 ("ssm1",[52])]),["DISK_THM"]),
               [ThmBind.read"%26%29%22%0@%23%2@%3@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%34%7@5%6@2%10@%8@3%46%22%0@%23%2@%3@3%45%38%34%7@5"])
  fun op Carol_exec_npriv_justified_thm x = x
    val op Carol_exec_npriv_justified_thm =
    ThmBind.DT(((("SM0Solutions",5),
                [("SM0",[141,146]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%25%39%22$2@%23$1@$0@3%42%34%7@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%34%7@5%6@2%10@%8@2%28%44@%37@%41%5@%7@%9@2%6@$4%10@%42%34%7@4%31$3%10@%42%34%7@4%8@4%24%44%47%35%32@2%45%38%34%7@6%24%29%22$2@%23$1@$0@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%34%7@5%6@2%10@%8@3%46%22$2@%23$1@$0@3%45%38%34%7@7|@|@|@|@|@"])
  fun op Carol_npriv_verified_thm x = x
    val op Carol_npriv_verified_thm =
    ThmBind.DT(((("SM0Solutions",6),
                [("SM0",[141,146]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%26%39%22$2@%23$1@$0@3%42%34%7@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%34%7@5%6@2%10@%8@2%28%44@%37@%41%5@%7@%9@2%6@$4%10@%42%34%7@4%31$3%10@%42%34%7@4%8@4%46%22$2@%23$1@$0@3%45%38%34%7@5|@|@|@|@|@"])
  fun op Carol_justified_npriv_exec_thm x = x
    val op Carol_justified_npriv_exec_thm =
    ThmBind.DT(((("SM0Solutions",7),
                [("SM0",[141,145,146]),("aclDrules",[3]),("aclrules",[63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,72,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,62])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%12%5%17%7%20%9%15%6%21%10%16%8%26%24%44%47%35%32@2%45%38%34$4@6%29%22$8@%23$7@$6@3%28%44@%37@%41$5@$4@$3@2%30%47%35%32@2%45%38%34$4@5$2@2$1@$0@4%39%22$8@%23$7@$6@3%42%34$4@3%28%44@%37@%41$5@$4@$3@2%30%47%35%32@2%45%38%34$4@5$2@2$1@$0@2%28%44@%37@%41$5@$4@$3@2$2@$10$1@%42%34$4@4%31$9$1@%42%34$4@4$0@4|@|@|@|@|@|@|@|@|@|@|@"])
  fun op Carol_privcmd_trap_lemma x = x
    val op Carol_privcmd_trap_lemma =
    ThmBind.DT(((("SM0Solutions",8),
                [("SM0",[141,146]),("aclDrules",[3]),("aclrules",[23,63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,63])]),["DISK_THM"]),
               [ThmBind.read"%26%29%22%0@%23%2@%3@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%36%9@5%6@2%10@%8@3%46%22%0@%23%2@%3@3%45%33@3"])
  fun op Carol_trap_privcmd_justified_thm x = x
    val op Carol_trap_privcmd_justified_thm =
    ThmBind.DT(((("SM0Solutions",9),
                [("SM0",[141,146]),("aclDrules",[3]),("aclrules",[23,63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,63])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%25%39%22$2@%23$1@$0@3%48%36%9@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%36%9@5%6@2%10@%8@2%28%44@%37@%41%5@%7@%9@2%6@$4%10@%48%36%9@4%31$3%10@%48%36%9@4%8@4%24%44%47%35%32@2%45%38%36%9@6%24%29%22$2@%23$1@$0@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%36%9@5%6@2%10@%8@3%46%22$2@%23$1@$0@3%45%33@5|@|@|@|@|@"])
  fun op Carol_privcmd_trapped_thm x = x
    val op Carol_privcmd_trapped_thm =
    ThmBind.DT(((("SM0Solutions",10),
                [("SM0",[141,146]),("aclDrules",[3]),("aclrules",[23,63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,63])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%26%39%22$2@%23$1@$0@3%48%36%9@3%28%44@%37@%41%5@%7@%9@2%30%47%35%32@2%45%38%36%9@5%6@2%10@%8@2%28%44@%37@%41%5@%7@%9@2%6@$4%10@%48%36%9@4%31$3%10@%48%36%9@4%8@4%46%22$2@%23$1@$0@3%45%33@3|@|@|@|@|@"])
  fun op Carol_justified_privcmd_trap_thm x = x
    val op Carol_justified_privcmd_trap_thm =
    ThmBind.DT(((("SM0Solutions",11),
                [("SM0",[141,145,146]),("aclDrules",[3]),
                 ("aclrules",[23,63]),
                 ("bool",
                 [25,26,35,42,46,47,50,52,53,55,57,62,70,72,76,83,92,93,95,
                  145]),("combin",[19]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("satList",[1,3]),("ssm1",[52,63])]),["DISK_THM"]),
               [ThmBind.read"%14%1%13%4%11%0%18%2%19%3%12%5%17%7%20%9%15%6%21%10%16%8%26%24%44%47%35%32@2%45%38%36$3@6%29%22$8@%23$7@$6@3%28%44@%37@%41$5@$4@$3@2%30%47%35%32@2%45%38%36$3@5$2@2$1@$0@4%39%22$8@%23$7@$6@3%48%36$3@3%28%44@%37@%41$5@$4@$3@2%30%47%35%32@2%45%38%36$3@5$2@2$1@$0@2%28%44@%37@%41$5@$4@$3@2$2@$10$1@%48%36$3@4%31$9$1@%48%36$3@4$0@4|@|@|@|@|@|@|@|@|@|@|@"])

  val _ = DB.bindl "SM0Solutions"
  [("Alice_npriv_lemma",Alice_npriv_lemma,DB.Thm),
   ("Alice_exec_npriv_justified_thm",
    Alice_exec_npriv_justified_thm,
    DB.Thm), ("Alice_npriv_verified_thm",Alice_npriv_verified_thm,DB.Thm),
   ("Alice_justified_npriv_exec_thm",
    Alice_justified_npriv_exec_thm,
    DB.Thm), ("Carol_npriv_lemma",Carol_npriv_lemma,DB.Thm),
   ("Carol_exec_npriv_justified_thm",
    Carol_exec_npriv_justified_thm,
    DB.Thm), ("Carol_npriv_verified_thm",Carol_npriv_verified_thm,DB.Thm),
   ("Carol_justified_npriv_exec_thm",
    Carol_justified_npriv_exec_thm,
    DB.Thm), ("Carol_privcmd_trap_lemma",Carol_privcmd_trap_lemma,DB.Thm),
   ("Carol_trap_privcmd_justified_thm",
    Carol_trap_privcmd_justified_thm,
    DB.Thm),
   ("Carol_privcmd_trapped_thm",Carol_privcmd_trapped_thm,DB.Thm),
   ("Carol_justified_privcmd_trap_thm",
    Carol_justified_privcmd_trap_thm,
    DB.Thm)]

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val SM0Solutions_grammars = merge_grammars ["SM0"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="SM0Solutions"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val SM0Solutions_grammars = 
    Portable.## (addtyUDs,addtmUDs) SM0Solutions_grammars
  val _ = Parse.grammarDB_insert("SM0Solutions",SM0Solutions_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "SM0Solutions"
end
