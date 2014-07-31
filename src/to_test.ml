module Int_graph  = Make_smallGraph ( struct
type edge_t = int
let edge_compare = Int.compare
type vertex_t = int
let vertex_compare = Int.compare
let init_value = 0
end)
