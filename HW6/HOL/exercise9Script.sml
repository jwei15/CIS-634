
structure exercise9Script = struct

open HolKernel Parse boolLib bossLib;

val _ = new_theory "exercise9";

val absorptionRule =
TAC_PROOF(
([], ``!p q.(p ==> q) ==> p ==> (p /\ q)``),
( REPEAT STRIP_TAC THEN
  RES_TAC THEN
  ASM_REWRITE_TAC [])
);


val constructiveDilemmaRule =
TAC_PROOF(
([], ``!p q r s. (p==>q)/\(r==>s) ==> p\/r ==> q\/s``),
REPEAT STRIP_TAC THENL
[(DISJ1_TAC THEN RES_TAC) , (DISJ2_TAC THEN RES_TAC)]
);

val absorptionRule2 =
TAC_PROOF(([], ``!p q.(p ==> q) ==> p ==> (p /\ q)``),PROVE_TAC[]);


val constructiveDilemmaRule2 =
TAC_PROOF(
([], ``!p q r s. (p==>q)/\(r==>s) ==> p\/r ==> q\/s``),
PROVE_TAC[]
);

val _ = save_thm("absorptionRule", absorptionRule);
val _ = save_thm("constructiveDilemmaRule", constructiveDilemmaRule);
val _ = save_thm("absorptionRule2", absorptionRule2);
val _ = save_thm("constructiveDilemmaRule2", constructiveDilemmaRule2);

val _ = export_theory();

end


%Two for threading
%Declare and Define
%sYNTAX:symbols semantics: what the fuctions is
%Class diagram and package diagram
%Virtual function pointer table
%Value type, move, copy and assignment opeartions, constructor declarations
%templates, code on templates, at least 1 question, template type references
%lambda, callable objects
%stl container
%
