structure exTypeScript = struct

open HolKernel Parse boolLib bossLib;
open arithmeticTheory listTheory;


val _ = new_theory "exType";

val APP_def =
Define
`(APP [] (l:'a list) = l) /\
(APP (h::(l1:'a list)) (l2:'a list) = h::(APP l1 l2))`;

val LENGTH_APP =
TAC_PROOF(
([], ``!(l1:'a list)(l2:'a list). LENGTH (APP l1 l2) = LENGTH l1 + LENGTH l2``),
(Induct_on `l1` THEN
ASM_REWRITE_TAC [APP_def, LENGTH, ADD_CLAUSES] THEN
ASM_REWRITE_TAC [APP_def, LENGTH, ADD_CLAUSES]
)
)

val Map_def =
Define
`(Map f [] = []) /\
 (Map f ((h:'a)::(l:'a list)) = (f h)::(Map f l))`;


val Map_APP =
TAC_PROOF(
([], ``Map f (APP (l1:'a list)(l2:'a list)) = APP (Map f l1) (Map f l2)``),
(Induct_on`l1` THEN
 ASM_REWRITE_TAC [Map_def, APP_def] THEN
 ASM_REWRITE_TAC [APP_def, Map_def]
));

val _ = save_thm("LENGTH_APP", LENGTH_APP);
val _ = save_thm("Map_APP", Map_APP);

val _ = export_theory();
end

