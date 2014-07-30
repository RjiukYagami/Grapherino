module type smallGraph = sig

(* Type of data from vertices. 
If someone want put data in vertices it should be abstract so people can put everything in it. *)
type vertex_t


(* Function to compare vertices, since they can have abstract types we need compare funtion.
   use : compare a b > 0    if   a > b 
         compare a b = 0    if   a = b
         compare a b < 0    if   a < b *)
val vertex_compare : vertex_t -> vertex_t -> int 


(* Type of data from edges. 
If someone want put data in edges it should be abstract so people can put everything in it. 
Like weights in Dijkstra or something like that.*)
type edge_t 


(* Similar funtion to compare as it is in Vertex_compare, look higher *)
val edge_compare : edge_t -> edge_t -> int

(* Funtion which create our graph *)
val create : int -> edge_t array array

(* Function which build unweighted edges in graph. We put our graph from function "create" 
   and option if it's direted or not (defaultly it's undirected), and we put list of tuples int * int.
   Every tuple mean edge between two vertices *)
val build_unweighted : graph:edge_t array array -> directed:bool -> int * int list -> bool

end
