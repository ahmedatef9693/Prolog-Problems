domains
ilist = integer*

predicates
nondeterm del(integer, ilist, ilist).
nondeterm insert_in_all_position(integer, ilist, ilist).
nondeterm perm(ilist, ilist).

clauses
del(X, [X|T], T).
del(X, [H|T], [H|T1]):-
		del(X, T, T1).
		
insert_in_all_position(X, List, Biggerlist):-
		del(X, BiggerList, List).
		
perm([], []).
perm([H|T], P):-
		perm(T, PT),
		insert_in_all_position(H, PT, P).
		
goal
perm([1,2,3], L).