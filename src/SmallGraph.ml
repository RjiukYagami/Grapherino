module Make_smallGraph ( Graph : Graphs_dad ) = struct

(* Funtion which create our graph  *)
let create n =
  let result = Array.create n (Array.create n Graph.edge_init_value) in
    for i = 1 to n - 1 do
      result.(i) <- Array.create n Graph.edge_init_value
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


(* Funtion which clear our graph *)
let clear graph = 
   let count = Array.length graph.(0) in
      for i = 0 to count-1 do 
         graph.(i) <- Array.create count Graph.edge_init_value
      done


(* BFS algorithm, it return us typical datas like distance from vertex V *)
let bfs graph start = 
let been = Array.create (Array.length graph) 0 in
let list = [start] in
let do_algo = 
   List.iter ~f:(fun x -> (*debuging*)
      been.(x) <- 1;
      let size = Array.length graph in
         for i = 0 to (size-1) do
            if ( not ( x = i ) ) && ( not ( graph.(i).(x) = Graph.edge_init_value ) ) && ( been.(i) = 0 ) then 
               been.(i) <- 1;
               list = list@[i];
	     done ) list;
list
in do_algo
	

end
