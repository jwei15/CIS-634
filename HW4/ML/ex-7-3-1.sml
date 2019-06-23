(*Takes in ``p/\q==>r`` and returns ``p==>q==>r``*)
fun andImp2Imp term = 
    let
        val (tmp1, r) = dest_imp term
        val (p, q) = dest_conj tmp1
    in
        mk_imp(p, mk_imp(q,r))
end;


andImp2Imp ``p/\q==>r``;
