smoke_brand(pallmall; dunhill; bluemaster; blend; princess).
nationality(dane; german; brit;norwegian;swede).
pets(dog; bird; fish; cat; horse).
drink_of_choice(water; tea; coffee; beer; milk).
color(blue; red; white; green;yellow).
house_number(1..5).

% generate our sets 

{house_of_color(H,C):color(C)} = 1:- house_number(H).
{drink(H,D):drink_of_choice(D)} = 1:- house_number(H).
{owns_pet(H,P):pets(P)} = 1:- house_number(H).
{smokes(H,S):smoke_brand(S)} = 1:- house_number(H).
{nationality_in_household(H,N):nationality(N)} = 1 :- house_number(H).

% pairwise distinct

N1 = N2 :- house_of_color(N1,C), house_of_color(N2,C). 

N1 = N2 :- drink(N1,C), drink(N2,C). 

N1 = N2 :- owns_pet(N1,C), owns_pet(N2,C). 

N1 = N2 :- smokes(N1,C), smokes(N2,C). 

N1 = N2 :- nationality_in_household(N1,C), nationality_in_household(N2,C). 



% facts
drink(3,milk).
nationality_in_household(1,norwegian).


% normal rules
drink(H,tea) :- nationality_in_household(H,dane).
house_of_color(H,green) :- drink(H,coffee).
smokes(H,pallmall) :- owns_pet(H,birds).
house_of_color(H,yellow) :- smokes(H,dunhill).
nationality_in_household(H,german) :- smokes(H,princess).
smokes(H,bluemaster) :- drink(H,beer).
house_of_color(H,red) :- nationality_in_household(H,brit).
nationality_in_household(H,swede) :- owns_pet(H,dog).


% restrictions 
:- nationality_in_household(H,norwegian), not house_of_color(H,blue).
:- smokes(H1,blend),drinks(H2,water), |H1-H2| >1. 
:- smokes(H,blend), not owns_pet(H,cat).
:- house_of_color(H1,green), house_of_color(H2,white), H1>H2.
:- smokes(H1,blend), owns_pet(H2,cats), |H1-H2| > 1.
:- smokes(H1,dunhill), owns_pet(H2,horse), |H1-H2| > 1.
:- nationality_in_household(H1,norwegian), house_of_color(H2,blue), H1>H2, |H1-H2| >1.


answer(N,fish) :- nationality_in_household(H,N), owns_pet(H,fish).

:- #count{N:answer(N,fish)} = 0.

#show answer/2.

