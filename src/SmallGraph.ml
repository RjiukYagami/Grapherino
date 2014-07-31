module Make_smallGraph ( Graph : Graphs_dad ) = struct

(* Funtion which create our graph  *)
let create n init =
  let result = Array.create n (Array.create n init) in
    for i = 1 to n - 1 do
      result.(i) <- Array.create n init
    done;
    result;;

(* Function which build unweighted edges in graph. We put our graph from function "create" 
   and option if it's direted or not (defaultly it's undirected), and we put list of tuples int * int.
   Every tuple mean edge between two vertices *)

let build ~graph:graph ~directed:direct list weight = 
   let rec aux num = function
   | [] -> raise Not_found
   | (a,b)::tl ->(
      graph.(a).(b) <- weight.(num) ;
      if direct = 0 then
	 graph.(b).(a) <- weight.(num);
      if List.length tl > 0 then
         aux (num+1) tl; )in
   aux 0 list



(* Funtion which will make our life easier, it's show every vertex and his connetion 
val show_connetions : edge_t array array*)

end
