
row(1..n).
col(1..n).

{queen(I,J): row(I), col(J)}. 

% vertical restriction  = n

:- {queen(I,J)} != n. 

% vertical & horizonal restriction 

% for any two given queens we elimiate if 

:- queen(I,J), queen(I,J'), J != J'.

:- queen(I,J), queen(I',J), I != I'.


:- queen(I,J), queen(I',J') ,(I,J) != (I',J'), I-J == I'-J'.
:- queen(I,J), queen(I',J') ,(I,J) != (I',J'), I+J == I'+J'.