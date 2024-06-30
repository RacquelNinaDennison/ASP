from clyngor import ASP,solve

answers = ASP("""
pets(bailey; charlie; frank).
owners(sam; tristan;racquel).
{owns_which_pet(P,N): pets(P)} >= 1 :- owners(N).
:- owns_which_pet(bailey,sam).
:- owns_which_pet(bailey,racquel).
:- owns_which_pet(charlie,tristan).
:- owns_which_pet(frank,tristan).
owns_which_pet(frank,sam) :- owns_which_pet(charlie,sam).
owns_which_pet(charlie,sam) :- owns_which_pet(frank,sam).
#show owns_which_pet/2.
""")
for answer in answers:
    print(answer)



testing_answers = solve('example.lp')

print(testing_answers)
for answer in testing_answers:
    print(answer)