%Non-Tail Solution

/*predicates

nondeterm pow(integer,integer,integer).

clauses

pow(X,0,R) :- R=1,!.
pow(X,Y,R) :- Z=Y-1,pow(X,Z,R1),R=X*R1.

goal
pow(2,5,R).*/

%Tail Solution

predicates

nondeterm pow(integer,integer,integer).
nondeterm pow_aux(integer,integer,integer,integer).

clauses

pow(X,Y,R):- pow_aux(X,Y,R,1).
pow_aux(X,0,R,Acc) :- R=Acc,!.
pow_aux(X,Y,R,Acc) :- NY=Y-1, NAcc= Acc*X, pow_aux(X,NY,R,NAcc).

goal
pow(2,5,R).







