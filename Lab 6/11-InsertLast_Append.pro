domains
ilist=integer*
predicates

nondeterm append(ilist,ilist,ilist).
nondeterm insert_last(ilist,integer,ilist).

clauses

append([],L2,L2).
append([H|T],L2,RetList) :- append(T,L2,TempRetList) , RetList=[H|TempRetList].

insert_last(L,X,R):- append(L,[X],R).

goal

insert_last([1,2,3,4,5],100,L).