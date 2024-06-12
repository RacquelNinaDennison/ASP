% problem instance

start(a).

city(a). city(b). city(c). city(d).

path(a,b,10).
path(b,c,20).
path(c,d,25).
path(d,a,40).
path(b,d,30).
path(d,c,25).
path(c,a,35).

% problem class

% 1 generate the set 

{travel(X,Y)} :- path(X,Y,_).

visited(Y) :- travel(X,Y), start(X).
visited(Y) :- travel(X,Y), visited(X).

% restrict the problem instance

:- city(X), not visited(X).
:- city(X), 2 { travel(X,Y) }.
:- city(X), 2 { travel(Y,X) }.

% weak constraints impose penality 
:~ travel(X,Y), path(X,Y,D). [D,X,Y]

% #minimize {D,X,Y : travel(X,Y), road(X,Y,D)}