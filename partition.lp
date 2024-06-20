% create a partition of sets where the sum of any two elements are not in the set


{in(I,1..r)} =1 :- I = 1..n.


% any two elements are not in the same set 

:- in(I,K), in(J,K), in(I+J,K). 