
(******************************************************************************)
(* Exercise 5.3.4                                                             *)
(* Author: Shiu-Kai Chin                                                      *)
(* Date: 20 September 2015                                                    *)
(******************************************************************************)

(* ========================================================================== *)
(*                                                                            *)
(* Your code for Filter here                                                  *)
(*                                                                            *)
(* ========================================================================== *)
fun Filter func [] = []
       |Filter func (x::xs) = if (func x) then (x :: Filter func xs)
       	       else (Filter func xs) ;

val testResults = Filter (fn x => x < 5) [1,2,3,4,5,6,7,8,9]

val testResults_filter = filter(fn x => x < 5) [1,2,3,4,5,6,7,8,9]

val testResults_5_3_3 = Filter (fn x => x < 5) [4, 6]

val testResults_filter_5_3_3 = filter (fn x => x < 5) [4, 6]