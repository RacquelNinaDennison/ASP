% problem instance a -> b -> c -> a

node(a).
node(b).
node(c).


path(a,c).
path(b,a).
path(c,b).


% problem class - we need to specify what this does


{travel(X,Y)} :- path(X,Y).


visit(X):- travel(X,Y).
visit(Y) :- travel(X,Y), travel(Y,Z).

:- node(X), not visit(X).
:- node(X), 2{travel(X,Y)}.
:- node(X), 2{travel(Y,X)}.


#show path/2.




