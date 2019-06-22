
(*This file bears the essence of Professor Shiu-Kai Chin's sample document    *)
(*Only slight modifications on filenames are done in this copy                *)


(******************************************************************************)
(* documentation.sml: 19 February 2010                                        *)
(* Author: Jinhao Wei                                                         *)
(* File used to generate documentation for reports in LaTeX                   *)
(******************************************************************************)

(******************************************************************************)
(* We apply (using the ml function app) the load function to the HOL theories *)
(* and libraries we need.  In this case "example1Theory" and "EmitTeX".       *)
(* EmitTeX contains the functions for pretty-printing HOL theories.           *)
(******************************************************************************)
app 
 load 
 ["AllTheory","EmitTeX"];


(******************************************************************************)
(* We need to open EmitTeX to bring its functions into the HOL interpreter.   *)
(******************************************************************************)
open EmitTeX;

(******************************************************************************)
(* We call on one of the EmitTeX functions, print_theories_as_tex_doc, to     *)
(* produce the pretty-printed theory file for example1Theory.                 *)
(******************************************************************************)
print_theories_as_tex_doc
["All"] "AllReport";
