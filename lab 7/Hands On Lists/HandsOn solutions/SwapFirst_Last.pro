domains

ilist=integer*.

predicates

nondeterm swap(ilist,ilist).
nondeterm append(ilist, ilist, ilist)


clauses


swap([X], [X]).
swap([], []).

swap(A, B) :- append([First | Mid], [Last], A), append([Last | Mid], [First], B).
       
append([],L2,L2).
append([H|T],L2,[H|T1]):-append(T,L2,T1).
   
goal

swap([1,2,3,4,5,6],R).

