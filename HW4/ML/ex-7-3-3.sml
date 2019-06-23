(*takes in ~?x.P x and returns !x.~(P x)*)

fun notExists term = 
    let 
        val (x, y)= dest_exists(dest_neg(term))
    in
        mk_forall(x, mk_neg y)
end;

notExists ``~?z.Q z``;