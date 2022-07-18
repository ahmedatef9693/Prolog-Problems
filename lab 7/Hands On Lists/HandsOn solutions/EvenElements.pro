domains 
clist=symbol*

predicates

nondeterm even(clist)

clauses
even([_,_]).
even([_,_|T]):- even(T).

goal
even([a,b,c,d,e]).

