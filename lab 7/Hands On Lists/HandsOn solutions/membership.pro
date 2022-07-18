domains
ilist = integer*

predicates
nondeterm member(integer, ilist).

clauses
member(X, [X|_]).	%the goal is (yes/no) so we do not need to add cut as it will stop by itself.
member(X, [_|T]):-
	member(X, T).
	
goal
member(1, [3,2,1,4]).