structure AllScript = struct

open HolKernel Parse boolLib bossLib;

val _ = new_theory "All";



(******************************************************************************)
(*                                                                            *)
(*                From now on we work on 8.4.1                                *)
(*                                                                            *)
(******************************************************************************)


val problem1Thm =
let
  val th1 = ASSUME``p:bool``
  val th2 = ASSUME``(p:bool)==>(q:bool)``
  val th3 = ASSUME``(q:bool) ==> (r:bool)``


  val th4 = MP th2 th1
  val th5 = IMP_TRANS th2 th3

  val th6 = MP th5 th1

  val th7 = DISCH(last(hyp(th6))) th6
  val th8 = DISCH(last(hyp(th7))) th7
in
  DISCH(last(hyp(th8))) th8
end;



(******************************************************************************)
(*                 From now on we work on 8.4.2                               *)
(*                                                                            *)
(*                                                                            *)
(******************************************************************************)
val conjSymThm =
let
  val tmp1Thm =
  	  let
		val thm1 = ASSUME``p/\q``
   		val thm2 = CONJUNCT1 thm1
   		val thm3 = CONJUNCT2 thm1
   		val thm4 = CONJ thm3 thm2
  	  in
		DISCH ``p/\q`` thm4
   	  end;
  val tmp2Thm =
      	  let
		val thm1 = ASSUME``q/\p``
  		val thm2 = CONJUNCT1 thm1
  		val thm3 = CONJUNCT2 thm1
  		val thm4 = CONJ thm3 thm2
	  in
		DISCH ``q/\p`` thm4
          end;	  
in        
  IMP_ANTISYM_RULE tmp1Thm tmp2Thm
end;

(******************************************************************************)
(*          From now on we work on 8.4.3                                      *)
(*                                                                            *)
(*                                                                            *)
(******************************************************************************)
val conjSymThmAll = GENL [``p:bool``, ``q:bool``] conjSymThm;



val _ = save_thm("problem1Thm",problem1Thm);
val _ = save_thm("conjSymThm", conjSymThm);
val _ = save_thm("conjSymThmAll", conjSymThmAll);

val _ = export_theory();

end