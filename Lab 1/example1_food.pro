predicates
nondeterm food(symbol)
nondeterm lunch(symbol)
nondeterm dinner(symbol)
nondeterm meal(symbol)

clauses
food(burger).
food(sandwich).
food(pizza).
lunch(sandwich).
dinner(pizza).

meal(X):-
food(X).

goal
meal(X), lunch(X).

