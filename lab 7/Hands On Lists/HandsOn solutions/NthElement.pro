domains 
clist=symbol*

predicates
nondeterm nth(integer,clist,symbol)

clauses
nth(0,[X|_],X).
nth(N,[_|T],R):- M=N-1,nth(M,T,R).

goal
nth(2,[a,b,c,d],R).

