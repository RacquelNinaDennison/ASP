% states - 0 , 1 , 2, 3 where 0 is off, 3 is high, 1 is low and 2 is medium
% bightness(bulb(I),setting)
% occurs(pull(I)) - pulling the bulb I 
% action changing with time 


% if you pull the string of the bulb I, you get the change in the brightness 
holds(brightness(bulb(I),(B+1)\4),T+1) :- occurs(pull(I),T), holds(brightness(bulb(I),B),T).


% constraints 
% the bulb cannot go to two different brightness
:- #count{B : holds(brightness(bulb(I),B),T)} != 1, I = 1..n, T = 0..h.

% inertia 
{holds(brightness(bulb(I),B),T+1)} :- holds(brightness(bulb(I),B),T), T=0..h-1. 


holds(X,0) :- init(X).
final(X) :- holds(X,h). 

#show final/1. 
% effects of actions 
% holds(brightness(bulb(I),(B+1)\4),T+1) :-occurs(pull(I),T), holds(brightness(bulb(I),B),T).
% % existence and uniqueness of value 
% :- #count{B : holds(brightness(bulb(I),B),T)} != 1, I = 1..n, T = 0..h.
% % inertia 
% {holds(brightness(bulb(I),B),T+1)} :- holds(brightness(bulb(I),B),T),T = 0..h-1.
% % relationship between holds/2, init/1, and final/1 
% holds(C,0) :- init(C). 
% final(C) :- holds(C,h). 
% #show final/1.
