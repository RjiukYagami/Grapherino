module Int_graph  = Make_smallGraph ( struct
type edge_t = int
let edge_compare = Int.compare
let edge_init_value = 0
end)
