1{assign(C,N):color(C)}1 :- node(N).
:- edge(N,M), assign(C,N),assign(C,M).