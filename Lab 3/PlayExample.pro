predicates

nondeterm play(symbol,symbol).
nondeterm age(symbol,integer).

clauses
age(ahmad,10).
age(ali,9).
age(ibrahim,10).
age(kamel,10).
age(maged,9).

%Try Cutoff at all positions
play(X,Y):- age(X,Z) , age(Y,Z) , X<>Y.

goal

play(X,Y).