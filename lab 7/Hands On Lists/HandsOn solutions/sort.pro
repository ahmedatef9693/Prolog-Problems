domains
ilist = integer*

predicates
nondeterm del(integer, ilist, ilist).
nondeterm insert_in_all_position(integer, ilist, ilist).
nondeterm perm(ilist, ilist).
nondeterm sort(ilist, ilist).
nondeterm check_sorted(ilist).

clauses
del(X, [X|T], T).	%without cut to get delelet in all positions
del(X, [H|T], [H|T1]):-
		del(X, T, T1).
		
insert_in_all_position(X, List, Biggerlist):-
		del(X, BiggerList, List).
		
perm([], []).
perm([H|T], P):-
		perm(T, PT),
		insert_in_all_position(H, PT, P).
		
check_sorted([]).
check_sorted([_]).
check_sorted([H1|[H2|T]]):-
		H2 > H1,
		check_sorted([H2|T]).
		
sort(L, SL):-
	perm(L, SL),
	check_sorted(SL), !.
		
goal
sort([4,2,5,1], S).