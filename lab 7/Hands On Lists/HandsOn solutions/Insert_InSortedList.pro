domains
ilist=integer*.

predicates
nondeterm insert(integer, ilist, ilist).

clauses
insert(X, [], [X]).

insert(X, [H|T], [X,H|T]):-
	X <= H, !.
	
insert(X, [H|T], [H|NT]):-
	insert(X, T, NT).
	
goal
insert(7, [1,2,4], L).