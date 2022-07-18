predicates

nondeterm male(symbol).
nondeterm female(symbol).
nondeterm parent(symbol,symbol).
nondeterm father(symbol,symbol).
nondeterm mother(symbol,symbol).
nondeterm brother(symbol,symbol).
nondeterm sister(symbol,symbol).
nondeterm grandfather(symbol,symbol).
nondeterm grandmother(symbol,symbol).
nondeterm aunt(symbol,symbol).
nondeterm uncle(symbol,symbol).

clauses

male(ahmed).
male(kareem).
male(mohamed).
male(omar).
male(amr).
male(ali).

female(ola).
female(soha).
female(sarah).
female(mona).

parent(ahmed,kareem).
parent(ahmed,ali).
parent(ahmed,ola).

parent(kareem,soha).
parent(kareem,mohamed).
parent(ali,sarah).
parent(ali,omar).
parent(ola,amr).
parent(ola,mona).

father(X,Y):- male(X) , parent(X,Y).
mother(X,Y):- female(X) , parent(X,Y).

brother(X,Y):- male(X), parent(Z,X) , parent(Z,Y),X<>Y.
sister(X,Y) :- female(X),parent(Z,X) , parent(Z,Y),X<>Y.

grandmother(X,Y):- mother(X,Z), parent(Z,Y).
grandfather(X,Y):-  father(X,Z), parent(Z,Y).

uncle(X,Y) :- brother(X,Z) , parent(Z,Y).
aunt(X,Y) :- sister(X,Z),parent(Z,Y).

goal

aunt(X,Y).