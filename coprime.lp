% two integers are said to be coprime if the only number that divides them is one 

% first we need to generate our integers and check that they are not diviable by each other

noncomposite(N) :- N = 1 .. c0, I = 2 .. N, N\I = 0, k\I=0 .



coprime(N) :- N = 1..c0, not noncomposite(N). 


#show coprime/1.
