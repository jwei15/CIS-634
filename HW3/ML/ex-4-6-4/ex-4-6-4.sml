

(******************************************************************************)
(* Exercise 4.6.4                                                             *)
(* Author: Shiu-Kai Chin                                                      *)
(* Date: 20 September 2015                                                    *)
(******************************************************************************)

(* ========================================================================== *)
(*                                                                            *)
(* Your code for listSquares here                                             *)
(*                                                                            *)
(* ========================================================================== *)

fun listSquares  [] = []
    | listSquares (x::xs) =
      let
	fun square x = x*x
      in
	(square x) :: listSquares xs
      end;

val testList = [1,2,3,4,5]

val testResults = listSquares testList