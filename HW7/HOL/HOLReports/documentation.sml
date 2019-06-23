
app 
 load 
 ["exTypeTheory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["exType"] "exTypeReport";

app 
 load 
 ["nexpTheory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["nexp"] "nexpReport";
