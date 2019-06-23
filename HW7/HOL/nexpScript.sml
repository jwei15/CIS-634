structure nexpScript = struct

open HolKernel Parse boolLib bossLib;
open TypeBase boolTheory arithmeticTheory

val _ = new_theory "nexp";

val _ = Datatype
`nexp = Num num | Add nexp nexp | Sub nexp nexp | Mult nexp nexp`;


val nexpVal_def =
Define
`
(nexpVal (Num num) = num)/\
(nexpVal (Add f1 f2) = (nexpVal f1) + (nexpVal  f2))/\
(nexpVal (Sub f1 f2) = (nexpVal f1) - (nexpVal  f2))/\
(nexpVal (Mult f1 f2) = (nexpVal f1) * (nexpVal  f2))
`

val Add_0 =
TAC_PROOF(
([], ``!f.nexpVal (Add (Num 0) f) = nexpVal f``),
Induct_on `f` THEN
ASM_REWRITE_TAC [ADD] THEN
REWRITE_TAC [nexpVal_def] THEN
REWRITE_TAC [ADD] THEN
REPEAT (PROVE_TAC [ADD, SUB, MULT, nexpVal_def])
);

val Add_SYM =
TAC_PROOF(
([], ``!f1 f2. nexpVal (Add f1 f2) = nexpVal (Add f2 f1)``),
REWRITE_TAC [ADD, nexpVal_def] THEN
REWRITE_TAC [Once ADD_COMM]
);

val Sub_0 =
TAC_PROOF(
([], ``!f. (nexpVal (Sub (Num 0) f ) = 0)/\(nexpVal (Sub f (Num 0)) = nexpVal f)``),
REWRITE_TAC [SUB, nexpVal_def] THEN
REWRITE_TAC [SUB_0]
);

val Mult_ASSOC =
TAC_PROOF(
([], ``!f1 f2 f3. nexpVal (Mult f1 (Mult f2 f3)) = nexpVal (Mult (Mult f1 f2) f3)``),
REWRITE_TAC [nexpVal_def, MULT, MULT_ASSOC]
);

val _ = save_thm("Add_0", Add_0);
val _ = save_thm("Add_SYM", Add_SYM);
val _ = save_thm("Sub_0", Sub_0);
val _ = save_thm("Mult_ASSOC", Mult_ASSOC);

val _ = export_theory();

end