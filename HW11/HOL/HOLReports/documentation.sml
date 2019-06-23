(************************************************************)
(* documentation.sml: 10 March 2013                         *)
(* Author: Shiu-Kai Chin                                    *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)




app load 
 ["ssm1Theory", "SM0Theory", "SM0SolutionsTheory", "satListTheory","EmitTeX"];

open EmitTeX;

print_theories_as_tex_doc
["ssm1"] "ssm1Report";

print_theories_as_tex_doc
["SM0"] "SM0Report";


print_theories_as_tex_doc
["SM0Solutions"] "SM0SolutionsReport";