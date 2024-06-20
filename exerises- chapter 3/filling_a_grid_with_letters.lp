row(1..5).
col(1..5).
letters(a;b;c;d;e).

{letter_pos(R,C,L) : letters(L)} = 1 :- row(R), col(C).

% facts
letter_pos(2,1,d).
letter_pos(3,3,b).
letter_pos(2,3,c).
letter_pos(1,4,e).
letter_pos(4,5,a).

% eliminate letters that have been placed on the same row 
:- letter_pos(R,C1,L), letter_pos(R,C2,L), C1 < C2.
% eliminate letters that have been placed on the same column 
:- letter_pos(R1,C,L), letter_pos(R2,C,L), R1 < R2.

% eliminate letters that are on the same diagonal 
:- letter_pos(R1,C1,L), letter_pos(R2,C2,L), R1 != R2, C1 != C2, |R1-R2| == |C1-C2|.
L1=L2 :- letter_pos(R,C,L1), letter_pos(R,C,L2). 
% ensure each letter is used once in each row and each column
:- letter_pos(R,C1,L1), letter_pos(R,C2,L1), C1 < C2.
:- letter_pos(R1,C,L1), letter_pos(R2,C,L1), R1 < R2.

% specify all the letters in that potential letters 
answer(L) :- letter_pos(5,2,L).

:- #count{L : answer(L)} > 1.

% #show letter_pos/3.
#show answer/1.
