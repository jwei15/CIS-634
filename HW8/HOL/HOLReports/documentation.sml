
app 
 load 
 ["example1Theory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["example1"] "example1Report";


app 
 load 
 ["solutions1Theory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["solutions1"] "solutions1Report";



app 
 load 
 ["conops0SolutionTheory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["conops0Solution"] "conops0SolutionReport";