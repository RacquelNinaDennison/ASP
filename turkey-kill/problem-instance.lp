% pedict the effect of executing a sequence of action in the turkey kill world
% effects of the actions 
holds(state_of_turkey(dead),T+1) :- occurs(shoot,T).
holds(state_of_gun(unloaded),T+1) :- occurs(shoot,T).
holds(state_of_gun(loaded),T+1) :- occurs(load,T).


% loading states that would be impossible

:- occurs(load,T), state_of_gun(loaded,T).
:- occurs(shoot,T), state_of_gun(unloaded,T).


% inertia 

{holds(state_of_gun(X),T+1)} :- holds(state_of_gun(X),T), T = 0..h-1.
{holds(state_of_turkey(X),T+1)} :- holds(state_of_turkey(X),T), T = 0..h-1.

% unique 
% looks at the uniqueness of the two states - dead and loaded
:- #count{X :holds(state_of_gun(X),T)} != 1, T = 0..h.
:- #count{X :holds(state_of_turkey(X),T)} != 1, T = 0..h.


 holds(X,0) :- init(X).
 final(X) :- holds(X,h). 


 #show final/1.
