
structure solutions1Script = struct

open HolKernel boolLib Parse bossLib;
open acl_infRules aclrulesTheory aclDrulesTheory ;
open example1Theory;

val _ = new_theory "solutions1";



val aclExerciseTheorem1 =
let
 val th1 = ACL_ASSUM``((Name Alice) says (prop go)):(commands, staff, 'd, 'e)Form``
 val th2 = ACL_ASSUM``((Name Bob) says (prop go)):(commands, staff, 'd, 'e)Form``
 val th3 = ACL_CONJ th1 th2
 val th4 = AND_SAYS_RL th3
 val th5 = DISCH(hd(hyp th2)) th4
in
 DISCH (hd(hyp th1)) th5
end;
val _ = save_thm("aclExerciseTheorem1",aclExerciseTheorem1);

val aclExerciseTheorem1A =
TAC_PROOF(
([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   ((Name Alice) says (prop go)) ==>
  (M,Oi,Os) sat ((Name Bob) says (prop go)) ==>
  (M,Oi,Os) sat (((Name Alice) meet (Name Bob)) says (prop go))``
),
PROVE_TAC[Conjunction, And_Says_Eq]
);
val _ = save_thm("aclExerciseTheorem1A",aclExerciseTheorem1A);



val aclExerciseTheorem1B =
TAC_PROOF(
([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   ((Name Alice) says (prop go)) ==>
  (M,Oi,Os) sat ((Name Bob) says (prop go)) ==>
  (M,Oi,Os) sat (((Name Alice) meet (Name Bob)) says (prop go))``
),
REPEAT STRIP_TAC THEN
ACL_AND_SAYS_RL_TAC THEN
ACL_CONJ_TAC THEN
REWRITE_TAC [] THEN
ASM_REWRITE_TAC []
);

val _ = save_thm("aclExerciseTheorem1B",aclExerciseTheorem1B);

val aclExerciseTheorem2 =
let
 val th1 = ACL_ASSUM``((Name Alice) says (prop go)):(commands, staff, 'd, 'e)Form``
 val th2 = ACL_ASSUM``((Name Alice) controls (prop go)):(commands, staff, 'd, 'e)Form``
 val th3 = ACL_ASSUM``((prop go) impf (prop val))``
 val th4 = CONTROLS th2 th1
 val th5 = SAYS ``(Name Bob)`` th4
 val th6 = DISCH (hd(hyp th3)) th5
 val th7 = DISCH (hd(hyp th2)) th6
in
 DISCH (hd(hyp th1)) th7
end;
val _ = save_thm("aclExerciseTheorem2",aclExerciseTheorem2);

val aclExerciseTheorem2A =
TAC_PROOF(
([],
``((M:(commands, 'b, staff, 'd, 'e) Kripke),(Oi: 'd po),(Os: 'e po)) sat
    (Name Alice says (prop go)) ==>
    (M, Oi, Os) sat ((Name Alice) controls (prop go)) ==>
    (M, Oi, Os) sat ((prop go) impf (prop launch)) ==>
    (M, Oi, Os) sat ((Name Bob) says (prop launch))``
),
PROVE_TAC[Modus_Ponens, Controls, Says]);
val _ = save_thm("aclExerciseTheorem2A",aclExerciseTheorem2A);


val aclExerciseTheorem2B =
TAC_PROOF(([],
``((M:(commands, 'b, staff, 'd, 'e) Kripke),(Oi: 'd po),(Os: 'e po)) sat
    ((Name Alice) says (prop go)) ==>
    (M, Oi, Os) sat ((Name Alice) controls (prop go)) ==>
    (M, Oi, Os) sat ((prop go) impf (prop launch)) ==>
    (M, Oi, Os) sat ((Name Bob) says (prop launch))``
),
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN
PAT_ASSUM ``(M, Oi, Os) sat (Name Alice controls prop go)``
	  (fn th1 =>(PAT_ASSUM ``(M,Oi, Os) sat (Name Alice says prop go)``
	  	     (fn th2 => ASSUME_TAC (CONTROLS th1 th2)))) THEN

PAT_ASSUM ``(M, Oi, Os) sat ((prop go) impf (prop launch))``
	  (fn th1 =>(PAT_ASSUM ``(M,Oi,Os) sat (Name Alice controls prop go)``
	      (fn th2 =>(PAT_ASSUM ``(M,Oi,Os) sat (Name Alice says prop go)``
	      	  (fn th3 => ASSUME_TAC (ACL_MP (CONTROLS th2 th3) th1)))))) THEN

PROVE_TAC []
);

val _ = save_thm("aclExerciseTheorem2B",aclExerciseTheorem2B);

val _ = export_theory();
end
