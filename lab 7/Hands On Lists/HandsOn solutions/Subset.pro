domains

ilist=integer*

predicates

nondeterm subset(ilist,ilist).
nondeterm member(ilist,integer).
clauses

subset([],_).
subset([H|T],L):- member(L,H),subset(T,L).

member([X|_],X):-!.
member([_|T],X):- member(T,X).

goal
subset([5,6,7] ,[7,2,5,4,6,8]).