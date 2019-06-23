
app load ["cipherTheory", "stringTheory"];

structure cryptoScript = struct

open HolKernel Parse boolLib bossLib
open TypeBase isainfRules optionTheory

open cipherTheory


val _ = new_theory "cryptoExercise";

val exercise15_6_4_1a_thm =
TAC_PROOF (
([],
``!key enMsg message.(deciphS key enMsg = SOME message)= (enMsg = Es key (SOME message))``),
PROVE_TAC [deciphS_one_one]
);
val _ = save_thm("exercise15_6_4_1a_thm", exercise15_6_4_1a_thm);


val exercise15_6_4_1b_thm =
TAC_PROOF(
([], ``!keyAlice k text.(deciphS keyAlice (Es k (SOME text)) = SOME "This is from Alice") = (k=keyAlice)/\(text = "This is from Alice")``),
PROVE_TAC [deciphS_one_one]
)
val _ = save_thm("exercise15_6_4_1b_thm", exercise15_6_4_1b_thm);

val exercise15_6_4_2a_thm =
TAC_PROOF(
([], ``!P message. (deciphP (pubK P) enMsg = SOME message) = (enMsg = Ea (privK P)(SOME message))``),
PROVE_TAC [deciphP_one_one]
);
val _ = save_thm("exercise15_6_4_2a_thm", exercise15_6_4_2a_thm);

val exercise15_6_4_2b_thm =
TAC_PROOF(
([],``!key text.(deciphP (pubK Alice) (Ea key (SOME text)) = SOME "This is from Alice") = (key = privK Alice)/\(text = "This is from Alice")``),
PROVE_TAC [deciphP_one_one]
)
val _ = save_thm("exercise15_6_4_2b_thm", exercise15_6_4_2b_thm);

val exercise15_6_4_3_thm =
TAC_PROOF(
([], ``!signature. signVerify (pubK Alice) signature (SOME "This is from Alice") = (signature = sign(privK Alice)(hash (SOME "This is from Alice")))``),
PROVE_TAC [signVerify_one_one]
);
val _ = save_thm("exercise15_6_4_3_thm", exercise15_6_4_3_thm);

val _ = export_theory();

end