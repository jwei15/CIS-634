signature solutions1Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val aclExerciseTheorem1 : thm
    val aclExerciseTheorem1A : thm
    val aclExerciseTheorem1B : thm
    val aclExerciseTheorem2 : thm
    val aclExerciseTheorem2A : thm
    val aclExerciseTheorem2B : thm

  val solutions1_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [example1] Parent theory of "solutions1"

   [aclExerciseTheorem1]  Theorem

      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Bob says prop go ⇒
         (M,Oi,Os) sat Name Alice meet Name Bob says prop go

   [aclExerciseTheorem1A]  Theorem

      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Bob says prop go ⇒
         (M,Oi,Os) sat Name Alice meet Name Bob says prop go

   [aclExerciseTheorem1B]  Theorem

      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Bob says prop go ⇒
         (M,Oi,Os) sat Name Alice meet Name Bob says prop go

   [aclExerciseTheorem2]  Theorem

      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Alice controls prop go ⇒
         (M,Oi,Os) sat prop go impf prop val ⇒
         (M,Oi,Os) sat Name Bob says prop go

   [aclExerciseTheorem2A]  Theorem

      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Alice controls prop go ⇒
         (M,Oi,Os) sat prop go impf prop launch ⇒
         (M,Oi,Os) sat Name Bob says prop launch

   [aclExerciseTheorem2B]  Theorem

      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Alice controls prop go ⇒
         (M,Oi,Os) sat prop go impf prop launch ⇒
         (M,Oi,Os) sat Name Bob says prop launch


*)
end
