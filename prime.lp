composite(N) :- N = 1 .. c0, I = 2 .. N-1, N\I = 0.
prime(N) :- N = 2..c0, not composite(N). 



