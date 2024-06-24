color(red;blue;pink).
vertex(a;b;c).
edge(a,b;b,c;c,a).

% a-> b-> c -> a

% generate all the possible colorings assigned 

{assignment(C,X) : color(C)} =1 :- vertex(X).

% the assignment to two nodes cannot be the same
:- assignment(C,X1) , assignment(C,X2) , edge(X1,X2).

#show assignment/2.