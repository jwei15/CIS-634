signature cryptoExerciseTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val exercise15_6_4_1a_thm : thm
    val exercise15_6_4_1b_thm : thm
    val exercise15_6_4_2a_thm : thm
    val exercise15_6_4_2b_thm : thm
    val exercise15_6_4_3_thm : thm

  val cryptoExercise_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [cipher] Parent theory of "cryptoExercise"

   [string] Parent theory of "cryptoExercise"

   [exercise15_6_4_1a_thm]  Theorem

      |- ∀key enMsg message.
           (deciphS key enMsg = SOME message) ⇔
           (enMsg = Es key (SOME message))

   [exercise15_6_4_1b_thm]  Theorem

      |- ∀keyAlice k text.
           (deciphS keyAlice (Es k (SOME text)) =
            SOME "This is from Alice") ⇔
           (k = keyAlice) ∧ (text = "This is from Alice")

   [exercise15_6_4_2a_thm]  Theorem

      |- ∀P message.
           (deciphP (pubK P) enMsg = SOME message) ⇔
           (enMsg = Ea (privK P) (SOME message))

   [exercise15_6_4_2b_thm]  Theorem

      |- ∀key text.
           (deciphP (pubK Alice) (Ea key (SOME text)) =
            SOME "This is from Alice") ⇔
           (key = privK Alice) ∧ (text = "This is from Alice")

   [exercise15_6_4_3_thm]  Theorem

      |- ∀signature.
           signVerify (pubK Alice) signature (SOME "This is from Alice") ⇔
           (signature =
            sign (privK Alice) (hash (SOME "This is from Alice")))


*)
end
