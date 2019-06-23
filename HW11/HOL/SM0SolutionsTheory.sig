signature SM0SolutionsTheory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val Alice_exec_npriv_justified_thm : thm
    val Alice_justified_npriv_exec_thm : thm
    val Alice_npriv_lemma : thm
    val Alice_npriv_verified_thm : thm
    val Carol_exec_npriv_justified_thm : thm
    val Carol_justified_npriv_exec_thm : thm
    val Carol_justified_privcmd_trap_thm : thm
    val Carol_npriv_lemma : thm
    val Carol_npriv_verified_thm : thm
    val Carol_privcmd_trap_lemma : thm
    val Carol_privcmd_trapped_thm : thm
    val Carol_trap_privcmd_justified_thm : thm

  val SM0Solutions_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [SM0] Parent theory of "SM0Solutions"

   [Alice_exec_npriv_justified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec (NP npriv))
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
                (Name Alice says prop (SOME (NP npriv))::ins) s outs)
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd) ins
                (NS s (exec (NP npriv))) (Out s (exec (NP npriv))::outs)) ⇔
           inputOK (Name Alice says prop (SOME (NP npriv))) ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
                (Name Alice says prop (SOME (NP npriv))::ins) s outs) ∧
           (M,Oi,Os) sat prop (SOME (NP npriv))

   [Alice_justified_npriv_exec_thm]  Theorem

      |- ∀NS Out M Oi Os cmd npriv privcmd ins s outs.
           inputOK (Name Alice says prop (SOME (NP npriv))) ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
                (Name Alice says prop (SOME (NP npriv))::ins) s outs) ⇒
           TR (M,Oi,Os) (exec (NP npriv))
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
                (Name Alice says prop (SOME (NP npriv))::ins) s outs)
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd) ins
                (NS s (exec (NP npriv))) (Out s (exec (NP npriv))::outs))

   [Alice_npriv_lemma]  Theorem

      |- CFGInterpret (M,Oi,Os)
           (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
              (Name Alice says prop (SOME (NP npriv))::ins) s outs) ⇒
         (M,Oi,Os) sat prop (SOME (NP npriv))

   [Alice_npriv_verified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec (NP npriv))
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd)
                (Name Alice says prop (SOME (NP npriv))::ins) s outs)
             (CFG inputOK SM0StateInterp (certs cmd npriv privcmd) ins
                (NS s (exec (NP npriv))) (Out s (exec (NP npriv))::outs)) ⇒
           (M,Oi,Os) sat prop (SOME (NP npriv))

   [Carol_exec_npriv_justified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec (NP npriv))
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (NP npriv))::ins) s outs)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd) ins
                (NS s (exec (NP npriv))) (Out s (exec (NP npriv))::outs)) ⇔
           inputOK2 (Name Carol says prop (SOME (NP npriv))) ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (NP npriv))::ins) s outs) ∧
           (M,Oi,Os) sat prop (SOME (NP npriv))

   [Carol_justified_npriv_exec_thm]  Theorem

      |- ∀NS Out M Oi Os cmd npriv privcmd ins s outs.
           inputOK2 (Name Carol says prop (SOME (NP npriv))) ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (NP npriv))::ins) s outs) ⇒
           TR (M,Oi,Os) (exec (NP npriv))
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (NP npriv))::ins) s outs)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd) ins
                (NS s (exec (NP npriv))) (Out s (exec (NP npriv))::outs))

   [Carol_justified_privcmd_trap_thm]  Theorem

      |- ∀NS Out M Oi Os cmd npriv privcmd ins s outs.
           inputOK2 (Name Carol says prop (SOME (PR privcmd))) ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (PR privcmd))::ins) s outs) ⇒
           TR (M,Oi,Os) (trap (PR privcmd))
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (PR privcmd))::ins) s outs)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd) ins
                (NS s (trap (PR privcmd)))
                (Out s (trap (PR privcmd))::outs))

   [Carol_npriv_lemma]  Theorem

      |- CFGInterpret (M,Oi,Os)
           (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
              (Name Carol says prop (SOME (NP npriv))::ins) s outs) ⇒
         (M,Oi,Os) sat prop (SOME (NP npriv))

   [Carol_npriv_verified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (exec (NP npriv))
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (NP npriv))::ins) s outs)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd) ins
                (NS s (exec (NP npriv))) (Out s (exec (NP npriv))::outs)) ⇒
           (M,Oi,Os) sat prop (SOME (NP npriv))

   [Carol_privcmd_trap_lemma]  Theorem

      |- CFGInterpret (M,Oi,Os)
           (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
              (Name Carol says prop (SOME (PR privcmd))::ins) s outs) ⇒
         (M,Oi,Os) sat prop NONE

   [Carol_privcmd_trapped_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (trap (PR privcmd))
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (PR privcmd))::ins) s outs)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd) ins
                (NS s (trap (PR privcmd)))
                (Out s (trap (PR privcmd))::outs)) ⇒
           (M,Oi,Os) sat prop NONE

   [Carol_trap_privcmd_justified_thm]  Theorem

      |- ∀NS Out M Oi Os.
           TR (M,Oi,Os) (trap (PR privcmd))
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (PR privcmd))::ins) s outs)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd) ins
                (NS s (trap (PR privcmd)))
                (Out s (trap (PR privcmd))::outs)) ⇔
           inputOK2 (Name Carol says prop (SOME (PR privcmd))) ∧
           CFGInterpret (M,Oi,Os)
             (CFG inputOK2 SM0StateInterp (certs2 cmd npriv privcmd)
                (Name Carol says prop (SOME (PR privcmd))::ins) s outs) ∧
           (M,Oi,Os) sat prop NONE


*)
end
