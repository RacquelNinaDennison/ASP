% states that are initial
#const h=3.
#const start=0.
init(state_of_gun(unloaded);state_of_turkey(alive)).

occurs(load,0).
occurs(shoot,1).
occurs(load,2).