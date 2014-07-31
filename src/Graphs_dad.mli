module type Graphs_dad = sig

(* Type of data from edges. 
If someone want put data in edges it should be abstract so people can put everything in it. 
Like weights in Dijkstra or something like that.*)
type edge_t 


(* Function to compare edges, since they can have abstract types we need compare funtion.
   use : compare a b > 0    if   a > b 
         compare a b = 0    if   a = b
         compare a b < 0    if   a < b *)
val edge_compare : edge_t -> edge_t -> int


(* inital value, this say what value have empty edge *)
val edge_init_value : edge_t


end
