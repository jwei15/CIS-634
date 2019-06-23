(*Takes in ``p==>q==>r`` and returns ``p/\q==>r``*)

fun impImpAnd term = 
    let 
        val (p, tmp) = dest_imp term
        val (q, r) = dest_imp tmp
    in
        mk_imp(mk_conj(p,q),r)
end;


(*Takes in ``p/\q==>r`` and returns ``p==>q==>r``*)
fun andImp2Imp term = 
    let
        val (tmp1, r) = dest_imp term
        val (p, q) = dest_conj tmp1
    in
        mk_imp(p, mk_imp(q,r))
end;


andImp2Imp ``p/\q==>r``;

impImpAnd(andImp2Imp ``(p/\q)==>r``);
andImp2Imp(impImpAnd ``p==>q==>r``);