(************************************************************)
(* documentation.sml: 10 March 2013                         *)
(* Author: Shiu-Kai Chin                                    *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app 
 load 
 ["smTheory","EmitTeX"];
open EmitTeX;


print_theories_as_tex_doc
["sm"]"smReport";



app 
 load 
 ["counterTheory","EmitTeX"];
open EmitTeX;


print_theories_as_tex_doc
["counter"]"counterReport";
