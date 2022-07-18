domains
ilist=integer*
predicates

nondeterm append(ilist,ilist,ilist).
nondeterm reverse_app(ilist,ilist).
clauses

append([],L2,L2).
append([H|T],L2,RetList) :- append(T,L2,TempRetList) , RetList=[H|TempRetList].

reverse_app([],[]).
reverse_app([H|T],R):- reverse_app(T,R1) , append(R1,[H],R). 



goal

reverse_app([1,2,3,4,5],L).
