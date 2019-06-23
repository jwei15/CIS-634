structure solutions1Theory :> solutions1Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading solutions1Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open example1Theory
  in end;
  val _ = Theory.link_parents
          ("solutions1",
          Arbnum.fromString "1553215390",
          Arbnum.fromString "776682")
          [("example1",
           Arbnum.fromString "1553215388",
           Arbnum.fromString "836670")];
  val _ = Theory.incorporate_types "solutions1" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("aclfoundation", "Kripke"), ID("example1", "commands"),
   ID("example1", "staff"), ID("aclfoundation", "po"), ID("pair", ","),
   ID("min", "fun"), ID("pair", "prod"), ID("min", "==>"),
   ID("min", "bool"), ID("example1", "Alice"), ID("example1", "Bob"),
   ID("aclfoundation", "Name"), ID("aclfoundation", "Princ"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "Form"),
   ID("example1", "go"), ID("aclfoundation", "impf"),
   ID("example1", "launch"), ID("aclfoundation", "meet"),
   ID("aclfoundation", "prop"), ID("aclrules", "sat"),
   ID("aclfoundation", "says")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'c", TYV "'b", TYV "'a", TYOP [1], TYOP [0, 3, 1, 2, 1, 0],
   TYV "'e", TYV "'d", TYOP [2], TYOP [0, 3, 1, 7, 6, 5], TYOP [3, 1],
   TYOP [3, 6], TYOP [3, 0], TYOP [3, 5], TYOP [6, 9, 11], TYOP [6, 4, 13],
   TYOP [5, 13, 14], TYOP [5, 4, 15], TYOP [6, 10, 12], TYOP [6, 8, 17],
   TYOP [5, 17, 18], TYOP [5, 8, 19], TYOP [5, 11, 13], TYOP [5, 9, 21],
   TYOP [5, 12, 17], TYOP [5, 10, 23], TYOP [8], TYOP [5, 25, 25],
   TYOP [5, 25, 26], TYOP [12, 7], TYOP [5, 7, 28], TYOP [14, 3, 7, 6, 5],
   TYOP [5, 30, 30], TYOP [5, 28, 31], TYOP [14, 3, 2, 1, 0],
   TYOP [5, 33, 33], TYOP [5, 33, 34], TYOP [5, 30, 31], TYOP [5, 28, 28],
   TYOP [5, 28, 37], TYOP [5, 3, 33], TYOP [5, 3, 30], TYOP [5, 33, 25],
   TYOP [5, 14, 41], TYOP [5, 30, 25], TYOP [5, 18, 43]]
  end
  val _ = Theory.incorporate_consts "solutions1" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 4), TMV("M", 8), TMV("Oi", 9), TMV("Oi", 10), TMV("Os", 11),
   TMV("Os", 12), TMV("val", 3), TMC(4, 16), TMC(4, 20), TMC(4, 22),
   TMC(4, 24), TMC(7, 27), TMC(9, 7), TMC(10, 7), TMC(11, 29), TMC(13, 32),
   TMC(15, 3), TMC(16, 35), TMC(16, 36), TMC(17, 3), TMC(18, 38),
   TMC(19, 39), TMC(19, 40), TMC(20, 42), TMC(20, 44), TMC(21, 32)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op aclExerciseTheorem1 x = x
    val op aclExerciseTheorem1 =
    ThmBind.DT(((("solutions1",0),
                [("aclDrules",[7]),("aclrules",[62]),
                 ("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%11%24%8%1@%10%3@%5@3%25%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%25%14%13@2%22%16@4%24%8%1@%10%3@%5@3%25%20%14%12@2%14%13@3%22%16@5"])
  fun op aclExerciseTheorem1A x = x
    val op aclExerciseTheorem1A =
    ThmBind.DT(((("solutions1",1),
                [("aclDrules",[7]),("aclrules",[62]),
                 ("bool",[25,26,46,47,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%11%24%8%1@%10%3@%5@3%25%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%25%14%13@2%22%16@4%24%8%1@%10%3@%5@3%25%20%14%12@2%14%13@3%22%16@5"])
  fun op aclExerciseTheorem1B x = x
    val op aclExerciseTheorem1B =
    ThmBind.DT(((("solutions1",2),
                [("aclDrules",[7]),("aclrules",[62]),
                 ("bool",[25,57,62])]),["DISK_THM"]),
               [ThmBind.read"%11%24%8%1@%10%3@%5@3%25%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%25%14%13@2%22%16@4%24%8%1@%10%3@%5@3%25%20%14%12@2%14%13@3%22%16@5"])
  fun op aclExerciseTheorem2 x = x
    val op aclExerciseTheorem2 =
    ThmBind.DT(((("solutions1",3),
                [("aclDrules",[3]),("aclrules",[24])]),["DISK_THM"]),
               [ThmBind.read"%11%24%8%1@%10%3@%5@3%25%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%15%14%12@2%22%16@4%11%23%7%0@%9%2@%4@3%17%21%16@2%21%6@4%24%8%1@%10%3@%5@3%25%14%13@2%22%16@6"])
  fun op aclExerciseTheorem2A x = x
    val op aclExerciseTheorem2A =
    ThmBind.DT(((("solutions1",4),
                [("aclDrules",[3]),("aclrules",[23,24]),
                 ("bool",[25,26,46,47,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%11%24%8%1@%10%3@%5@3%25%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%15%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%18%22%16@2%22%19@4%24%8%1@%10%3@%5@3%25%14%13@2%22%19@6"])
  fun op aclExerciseTheorem2B x = x
    val op aclExerciseTheorem2B =
    ThmBind.DT(((("solutions1",5),
                [("aclDrules",[3]),("aclrules",[23,24]),
                 ("bool",[25,26,46,47,52,53,62]),
                 ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
               [ThmBind.read"%11%24%8%1@%10%3@%5@3%25%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%15%14%12@2%22%16@4%11%24%8%1@%10%3@%5@3%18%22%16@2%22%19@4%24%8%1@%10%3@%5@3%25%14%13@2%22%19@6"])

  val _ = DB.bindl "solutions1"
  [("aclExerciseTheorem1",aclExerciseTheorem1,DB.Thm),
   ("aclExerciseTheorem1A",aclExerciseTheorem1A,DB.Thm),
   ("aclExerciseTheorem1B",aclExerciseTheorem1B,DB.Thm),
   ("aclExerciseTheorem2",aclExerciseTheorem2,DB.Thm),
   ("aclExerciseTheorem2A",aclExerciseTheorem2A,DB.Thm),
   ("aclExerciseTheorem2B",aclExerciseTheorem2B,DB.Thm)]

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val solutions1_grammars = merge_grammars ["example1"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="solutions1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val solutions1_grammars = 
    Portable.## (addtyUDs,addtmUDs) solutions1_grammars
  val _ = Parse.grammarDB_insert("solutions1",solutions1_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "solutions1"
end
