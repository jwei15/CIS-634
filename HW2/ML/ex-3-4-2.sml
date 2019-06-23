

(****************************************************************************)
(*  Exercise: 3.4.2                                                         *)
(*  Author: Jinhao Wei                                                      *)
(*  Date: January 29, 2019                                                  *)
(****************************************************************************)

val (x1,x2,x3) = (1,true,"Alice");
val pair1 = (x1,x3);
val list1 = [0,x1,2];
val list2 = [x2,x1];
(*The line above should fail*)
(*x2 and x1 have different data type so they don't form a list*)

val list3 = (1 :: [x3]);
(*The line above should fail*)
(*int value can't be inserted to the front of a char list*)