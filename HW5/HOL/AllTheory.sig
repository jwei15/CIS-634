signature AllTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val conjSymThm : thm
    val conjSymThmAll : thm
    val problem1Thm : thm

  val All_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "All"

   [patternMatches] Parent theory of "All"

   [conjSymThm]  Theorem

      |- p ∧ q ⇔ q ∧ p

   [conjSymThmAll]  Theorem

      |- ∀p q. p ∧ q ⇔ q ∧ p

   [problem1Thm]  Theorem

      |- p ⇒ (p ⇒ q) ⇒ (q ⇒ r) ⇒ r


*)
end
