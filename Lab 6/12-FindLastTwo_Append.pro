domains
ilist=integer*
predicates

nondeterm append(ilist,ilist,ilist).
nondeterm find_lasttwo(ilist,integer,integer).

clauses

append([],L2,L2).
append([H|T],L2,[H|TempRetList]) :- append(T,L2,TempRetList).

find_lasttwo(L,X,Y):- append(_,[X,Y],L).

goal

find_lasttwo([1,2,3,4,5],X,Y).