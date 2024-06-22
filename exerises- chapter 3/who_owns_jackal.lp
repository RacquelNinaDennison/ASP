% problem instances 
first_name(abner; chuck; duane; bruce).
last_name(engels; foster; gunter; halevy).
pets(iguana; jackal; cobra;llama).


% generate the sets
 {full_name(F,L): last_name(L)} =1 :- first_name(F).
 {owns_pet(P,X) : pets(P)} =1 :- first_name(X).

 F1 = F2 :- full_name(F1,L), full_name(F2,L).
 X1 = X2 :- owns_pet(P,X1), owns_pet(P,X2).

% abners full name is not foster or engels 
 :- full_name(abner,foster), full_name(abner,engels).
 :- owns_pet(iguana,chuck; iguana,duane).
 :- owns_pet(jackal,X ; cobra,X), full_name(X,foster).
 :- owns_pet(llama, duane).
 :- owns_pet(cobra,abner).
 :- full_name(duana,engels).
 :- full_name(abner, gunter).
 :- full_name(bruce,foster).
 :- owns_pet(iguana,X), full_name(X,halevy).

 answer(X,Y) :- owns_pet(jackal, X), full_name(X,Y).






 #show answer/2. 