% p(N):- N = #sum{X*X,X : X = -1..1}.
% q(N) :- N =  #sum{X*X : X = -1..1}.


% {p}.
% q :- not p.
% r :- -p.


% {p}.

% q.
% -q:- not p.


% addition(4,3).
% p :- addition(X+Y,Y) = 7.


% p,q.
% r,s.
% s1.s2 :- s.
% :- p,s1. 


% p :- not q.
% q :- not r. 


% p,q.
% :- p , not q.

% p :- not q.
% q :- not p.
% r :- p.
% r :- q.


p :- not q.
q :- not p.
p :- q.
q :- p.





