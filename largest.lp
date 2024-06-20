% countries with population of greater than that of c0 


% problem instance - these will be the sizes of countries

size(uk,78; sa, 60; france, 59; turkey, 90; india, 100).

% problem class 
large(C) :- size(C, S1), size(c0,S2), S1 > S2.

#const c0 = uk.

#show large/1.