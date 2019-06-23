(******************************************************************************)
(* Solutions for Exercises 17.4.1 and 17.4.3                                  *)
(* Author: Shiu-Kai Chin                                                      *)
(* Date: 1 April 2017                                                         *)
(******************************************************************************)

structure SM0SolutionsScript = struct

open HolKernel Parse boolLib bossLib;
open ssm1Theory SM0Theory;
open acl_infRules aclrulesTheory aclDrulesTheory satListTheory;

val _ = new_theory "SM0Solutions";


(* -------------------------------------------------------------------------- *)
(* Exercise 17.4.1                                                            *)
(* Alice's non-privileged commands are executed and justified                 *)
(* -------------------------------------------------------------------------- *)
val Alice_npriv_lemma = 
TAC_PROOF(
([], ``CFGInterpret ((M:(command inst,'b,staff,'d,'e)Kripke),Oi,Os)
  (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
   (((Name Alice) says (prop (SOME (NP (npriv:npriv)))))::ins)
   s (outs:output list)) ==>
  ((M,Oi,Os) sat (prop (SOME(NP npriv))))``),
  REWRITE_TAC[CFGInterpret_def, certs_def, SM0StateInterp_def, satList_CONS,satList_nil, sat_TT] THEN
  PROVE_TAC [Controls])

val _ = save_thm("Alice_npriv_lemma", Alice_npriv_lemma)

val Alice_exec_npriv_justified_thm 
=
let
val th1 =
    ISPECL
    [``inputOK:(command inst, staff, 'd, 'e)Form->bool``,
    ``(certs cmd npriv privcmd):(command inst, staff, 'd, 'e)Form list``,
    ``SM0StateInterp: state->(command inst, staff, 'd, 'e)Form``,
    ``Name Alice``,``NP npriv``, ``ins:(command inst, staff, 'd, 'e)Form list``,
    ``s:state``,``outs:output list``]
    TR_exec_cmd_rule
in
 TAC_PROOF(([],
    ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po).
        TR (M,Oi,Os) (exec (NP (npriv :npriv)))
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Alice says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (exec (NP npriv)))
             (Out s (exec (NP npriv))::outs)) <=>
        inputOK
          (Name Alice says
           (prop (SOME (NP npriv) :command inst) :
              (command inst, staff, 'd, 'e) Form)) /\
        CFGInterpret (M,Oi,Os)
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Alice says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::ins) s outs) /\
        (M,Oi,Os) sat
        (prop (SOME (NP npriv) :command inst) :
           (command inst, staff, 'd, 'e) Form)``),
	PROVE_TAC[th1, Alice_npriv_lemma])
end

val _ = save_thm("Alice_exec_npriv_justified_thm",Alice_exec_npriv_justified_thm)

val Alice_npriv_verified_thm =
TAC_PROOF(([],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po).
        TR (M,Oi,Os) (exec (NP (npriv :npriv)))
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Alice says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (exec (NP npriv)))
             (Out s (exec (NP npriv))::outs)) ==>
        (M,Oi,Os) sat
        (prop (SOME (NP npriv) :command inst) :
           (command inst, staff, 'd, 'e) Form)``),
	   PROVE_TAC[Alice_exec_npriv_justified_thm])

val _ = save_thm("Alice_npriv_verified_thm", Alice_npriv_verified_thm)

val Alice_justified_npriv_exec_thm = 
TAC_PROOF(([],
``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po) cmd npriv privcmd ins s outs.
	 inputOK
          (Name Alice says
           (prop (SOME (NP npriv) :command inst) :
              (command inst, staff, 'd, 'e) Form)) /\
	  CFGInterpret (M,Oi,Os)
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Alice says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::ins) s outs) ==>
        TR (M,Oi,Os) (exec (NP (npriv :npriv)))
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Alice says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (exec (NP npriv)))
             (Out s (exec (NP npriv))::outs))``),
PROVE_TAC[Alice_exec_npriv_justified_thm, inputOK_def, Alice_npriv_lemma])

val _ = save_thm("Alice_justified_npriv_exec_thm",Alice_justified_npriv_exec_thm)


(* -------------------------------------------------------------------------- *)
(* Exercise 17.4.3A                                                           *)
(* inputOK2 and certs2 defined to authenticate Carol only. Carol is           *)
(* authorized solely on npriv commands, and trapped on privcmd.               *)
(* -------------------------------------------------------------------------- *)

(* Not placed here, I had put it in SM0Script.sml*)


(* -------------------------------------------------------------------------- *)
(* Exercise 17.4.3 B                                                          *)
(* Carol can execute non-privileged commands using inputOK2 and certs2        *)
(* -------------------------------------------------------------------------- *)
val Carol_npriv_lemma 
=
TAC_PROOF(
([],
``CFGInterpret ((M:(command inst,'b,staff,'d,'e)Kripke),Oi,Os)
  (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
   (((Name Carol) says (prop (SOME (NP (npriv:npriv)))))::ins)
   s (outs:output list)) ==>
  ((M,Oi,Os) sat (prop (SOME(NP npriv))))``),
  REWRITE_TAC [CFGInterpret_def, certs2_def, SM0StateInterp_def, satList_CONS, satList_nil, sat_TT] THEN
  PROVE_TAC[Controls])

val _ = save_thm("Carol_npriv_lemma", Carol_npriv_lemma)

val Carol_exec_npriv_justified_thm
=
    let val th1 =
    ISPECL
    [``inputOK2:(command inst, staff, 'd, 'e)Form -> bool``,
    ``(certs2 cmd npriv privcmd):(command inst, staff, 'd, 'e)Form list``,
    ``SM0StateIntern: state->(command inst, staff, 'd, 'e)Form``,
    ``Name Carol``, ``NP npriv``, ``ins:(command inst, staff, 'd, 'e)Form list``,
    ``s: state``, ``outs:output list``]
    TR_exec_cmd_rule;
in
TAC_PROOF(
([],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po).
        TR (M,Oi,Os) (exec (NP (npriv :npriv)))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (exec (NP npriv)))
             (Out s (exec (NP npriv))::outs)) <=>
        inputOK2
          (Name Carol says
           (prop (SOME (NP npriv) :command inst) :
              (command inst, staff, 'd, 'e) Form)) /\
        CFGInterpret (M,Oi,Os)
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::ins) s outs) /\
        (M,Oi,Os) sat
        (prop (SOME (NP npriv) :command inst) :
           (command inst, staff, 'd, 'e) Form)``),
	   PROVE_TAC[th1, Carol_npriv_lemma])
end

val _ = save_thm("Carol_exec_npriv_justified_thm",Carol_exec_npriv_justified_thm)

val Carol_npriv_verified_thm
= TAC_PROOF(
([],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po).
        TR (M,Oi,Os) (exec (NP (npriv :npriv)))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (exec (NP npriv)))
             (Out s (exec (NP npriv))::outs)) ==>
        (M,Oi,Os) sat
        (prop (SOME (NP npriv) :command inst) :
           (command inst, staff, 'd, 'e) Form)``),
	   PROVE_TAC [Carol_exec_npriv_justified_thm])

val _ = save_thm("Carol_npriv_verified_thm", Carol_npriv_verified_thm)

val Carol_justified_npriv_exec_thm =
TAC_PROOF(
([],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po) cmd npriv privcmd ins s outs.
	 inputOK2
          (Name Carol says
           (prop (SOME (NP npriv) :command inst) :
              (command inst, staff, 'd, 'e) Form)) /\
	  CFGInterpret (M,Oi,Os)
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::ins) s outs) ==>
        TR (M,Oi,Os) (exec (NP (npriv :npriv)))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (NP npriv) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (exec (NP npriv)))
             (Out s (exec (NP npriv))::outs))``),
PROVE_TAC[Carol_exec_npriv_justified_thm, inputOK2_def, Carol_npriv_lemma])

val _ = save_thm("Carol_justified_npriv_exec_thm",  Carol_justified_npriv_exec_thm)

(* -------------------------------------------------------------------------- *)
(* Exercise 17.4.3 C                                                          *)
(* Carol's request to execute a privileged command is trapped                 *)
(* -------------------------------------------------------------------------- *)
val Carol_privcmd_trap_lemma
= TAC_PROOF(
([], ``CFGInterpret ((M:(command inst,'b,staff,'d,'e)Kripke),Oi,Os)
  (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
   (((Name Carol) says (prop (SOME (PR (privcmd:privcmd)))))::ins)
   s (outs:output list)) ==>
  ((M,Oi,Os) sat (prop NONE))``),
  REWRITE_TAC[CFGInterpret_def, certs2_def, SM0StateInterp_def, satList_CONS, satList_nil, sat_TT] THEN
  PROVE_TAC[Controls, TR_trap_cmd_rule, Modus_Ponens])

val _ = save_thm("Carol_privcmd_trap_lemma", Carol_privcmd_trap_lemma)

val Carol_trap_privcmd_justified_thm
=
let
val th1 =
    ISPECL
    [``inputOK2:(command inst, staff, 'd, 'e)Form->bool``,
    ``SM0StateInterp: state->(command inst, staff, 'd, 'e)Form``,
    ``(certs2 cmd npriv privcmd):(command inst, staff, 'd, 'e)Form list``,
    ``Name Carol``,``PR privcmd``, ``ins:(command inst, staff, 'd, 'e)Form list``,
    ``s:state``,``outs:output list``]
    TR_trap_cmd_rule
in
TAC_PROOF(
(
	[],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po).
        TR (M,Oi,Os) (trap (PR (privcmd :privcmd)))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (PR privcmd) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (trap (PR privcmd)))
             (Out s (trap (PR privcmd))::outs)) <=>
        inputOK2
          (Name Carol says
           (prop (SOME (PR privcmd) :command inst) :
              (command inst, staff, 'd, 'e) Form)) /\
        CFGInterpret (M,Oi,Os)
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (PR privcmd) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::ins) s outs) /\
        (M,Oi,Os) sat (prop NONE) : (command inst, staff, 'd, 'e) Form``),
	PROVE_TAC [th1, Carol_privcmd_trap_lemma])
end

val _ = save_thm("Carol_trap_privcmd_justified_thm", Carol_trap_privcmd_justified_thm)

val Carol_privcmd_trapped_thm
= TAC_PROOF(
([],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po).
        TR (M,Oi,Os) (trap (PR (privcmd :privcmd)))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (PR privcmd) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (trap (PR privcmd)))
             (Out s (trap (PR privcmd))::outs)) ==>
        (M,Oi,Os) sat
        (prop NONE:
           (command inst, staff, 'd, 'e) Form)``),
	   PROVE_TAC [Carol_trap_privcmd_justified_thm]
)

val _ = save_thm("Carol_privcmd_trapped_thm", Carol_privcmd_trapped_thm)

val Carol_justified_privcmd_trap_thm
=
TAC_PROOF(
([],
      ``!(NS :state -> command trType -> state)
         (Out :state -> command trType -> output)
         (M :(command inst, 'b, staff, 'd, 'e) Kripke) (Oi :'d po)
         (Os :'e po) cmd npriv privcmd ins s outs.
	 inputOK2
          (Name Carol says
           (prop (SOME (PR privcmd) :command inst) :
              (command inst, staff, 'd, 'e) Form)) /\
	  CFGInterpret (M,Oi,Os)
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (PR privcmd) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::ins) s outs) ==>
        TR (M,Oi,Os) (trap (PR (privcmd :privcmd)))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 (cmd :command) (npriv :npriv) privcmd :
                (command inst, staff, 'd, 'e) Form list)
             (Name Carol says
              (prop (SOME (PR privcmd) :command inst) :
                 (command inst, staff, 'd, 'e) Form)::
                  (ins :(command inst, staff, 'd, 'e) Form list)) (s :state)
             (outs :output list))
          (CFG (inputOK2 :(command inst, staff, 'd, 'e) Form -> bool)
             (SM0StateInterp :state -> (command inst, staff, 'd, 'e) Form)
             (certs2 cmd npriv privcmd :
                (command inst, staff, 'd, 'e) Form list) ins
             (NS s (trap (PR privcmd)))
             (Out s (trap (PR privcmd))::outs))``),
	     PROVE_TAC[Carol_trap_privcmd_justified_thm, inputOK2_def, Carol_privcmd_trap_lemma])

val _ = save_thm("Carol_justified_privcmd_trap_thm", Carol_justified_privcmd_trap_thm)


val _ = export_theory();
val _ = print_theory "-"


end (* structure *)