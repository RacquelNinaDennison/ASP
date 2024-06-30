% encoding 
penguin(tweety).
bird(eddie).
bird(tweety).


wings(X) :- bird(X).
bird(X) :- penguin(X).
flies(X) :- bird(X), not -flies(X).
-flies(X) :- penguin(X).

