
row(1..4).
col(1..4).

{queen(I,J): row(I), col(J)}. 

% vertical restriction  = n

:- {queen(I,J)} != 4. 

% vertical & horizonal restriction 

% for any two given queens we elimiate if 

:- queen(I,J), queen(I,J'), J != J'.

:- queen(I,J), queen(I',J), I != I'.


:- queen(I,J), queen(I',J') ,(I,J) != (I',J'), I-J == I'-J'.
:- queen(I,J), queen(I',J') ,(I,J) != (I',J'), I+J == I'+J'.