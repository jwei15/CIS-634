
app 
 load 
 ["cipherTheory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["cipher"] "cipherReport";


app 
 load 
 ["cryptoExerciseTheory","EmitTeX"];


open EmitTeX;

print_theories_as_tex_doc
["cryptoExercise"] "cryptoExerciseReport";