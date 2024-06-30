% Predict the effect of executing a sequence of actions in the
% turkey shoot domain.
% input: length h of the sequence of actions; set init/1 of atoms

#const h=3. 
init(state_of_gun(unloaded); state_of_turkey(alive)). 
occurs(load,0; shoot,1; load,2).


% representing the initial state; set occurs/2 of pairs %
% (a,t) such that action a is executed between times t and t+1.
% effects of actions
holds(state_of_gun(loaded),T+1) :- occurs(load,T).
holds(state_of_gun(unloaded),T+1) :- occurs(shoot,T).
holds(state_of_turkey(dead),T+1) :- occurs(shoot,T).
% loading is impossible if the gun is loaded
:- occurs(load,T), holds(state_of_gun(loaded),T).
% shooting is impossible if the gun is unloaded
:- occurs(shoot,T), holds(state_of_gun(unloaded),T).
% existence and uniqueness of value
:- #count{X : holds(state_of_gun(X),T)} != 1, T = 0..h.
:- #count{X : holds(state_of_turkey(X),T)} != 1, T = 0..h.
% inertia
{holds(state_of_gun(X),T+1)} :- holds(state_of_gun(X),T), T = 0..h-1.
{holds(state_of_turkey(X),T+1)} :- holds(state_of_turkey(X),T),
T = 0..h-1.
% Relationship between holds/2, init/1, and final/1 
holds(C,0) :- init(C). 
final(C) :- holds(C,h). 
#show final/1.

