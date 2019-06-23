
(******************************************************************************)
(* Exercise 5.3.5                                                             *)
(* Author: Shiu-Kai Chin                                                      *)
(* Date: 20 September 2015                                                    *)
(******************************************************************************)

(* ========================================================================== *)
(*                                                                            *)
(* Your code for addPairsGreaterThan here                                     *)
(*                                                                            *)
(* ========================================================================== *)

fun addPairsGreaterThan n [] = []
    | addPairsGreaterThan n (x :: xs) =
      let
	fun GreaterThan n (x, y) = x > n andalso y>n
	fun sum (x, y) = x + y
      in 
      	if GreaterThan n x then (sum x :: addPairsGreaterThan n xs)
	else (addPairsGreaterThan n xs)
      end;



addPairsGreaterThan 0 [(0,1),(2,0),(2,3),(4,5)];