module type SmallGraph = sig

(* Type of data from vertices. 
If someone want put data in vertices it should be abstract so people can put everything in it. *)
type Vertex_t


(* Function to compare vertices, since they can have abstract types we need compare funtion.
   use : compare a b > 0    if   a > b 
         compare a b = 0    if   a = b
         compare a b < 0    if   a < b *)
val Vertex_compare : Vertex_t -> Vertex_t -> int 


(* Type of data from edges. 
If someone want put data in edges it should be abstract so people can put everything in it. 
Like weights in Dijkstra or something like that.*)
type Edge_t 


(* Similar funtion to compare as it is in Vertex_compare, look higher *)
val Edge_compare : Edge_t -> Edge_t -> int

(* Array of array of Edge_t, that's how we will represent SmallGraph *)
val Connetions : Edge_t array array

end
