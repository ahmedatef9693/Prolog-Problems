domains
ilist = integer*

predicates
nondeterm append(ilist, ilist, ilist).
nondeterm split(ilist,integer,ilist,ilist,ilist).

clauses
append([], L2, L2).
append([H|T], L2, [H|NT]):-
		append(T, L2, NT).

split([H|T],H,[],[H],T).
split([H|T] , Num , [H|L1],L2,L3):- 
		split(T , Num , L1,L2,L3).
% or using append code
%split(L,X,[X],L1,L2):-
	%	append(L1,[X|L2],L).
goal
split([1,2,3,4,5,6,7],4,L1,L2,L3).
