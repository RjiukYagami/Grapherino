module Make_smallGraph ( Graph : SmallGraph ) = struct

type edge_t = Graph.edge_t

let create num ( initial : Graph.edge_t )= 
   Array.create num (Array.create num initial)


(* Funtion which create our graph 
val create : int -> edge-> edge_t array array

(* Function which build unweighted edges in graph. We put our graph from function "create" 
   and option if it's direted or not (defaultly it's undirected), and we put list of tuples int * int.
   Every tuple mean edge between two vertices *)
val build_unweighted : graph:edge_t array array -> directed:bool -> int * int list

(* Function which buildnweighted edges in graph. We put our graph from function "create" 
   and option if it's direted or not (defaultly it's undirected), and we put list of tuples int * int.
   Every tuple mean edge between two vertices, and second array only with edge_t list , which is weight of our edges *)
val build_weighted : graph:edge_t array array -> directed:bool -> int * int list -> edge_t list

(* Funtion which will make our life easier, it's show every vertex and his connetion *)
val show_connetions : edge_t array array*)

end
