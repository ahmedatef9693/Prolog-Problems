
%Non-Tail Solution

/*predicates

nondeterm fact(integer,integer).

clauses

fact(0,1).
fact(X,F) :- Z=X-1,Fact(Z,F1), F= X*F1.

goal
fact(9,F).*/

%Tail Solution

predicates

nondeterm fact(integer,integer).
nondeterm fact_aux(integer,integer,integer).

clauses

fact(X,F) :- fact_aux(X,F,1).
fact_aux(0,F,Acc) :- F=Acc,!.
fact_aux(X,F,Acc) :- NAcc = X*Acc , NX=X-1 , fact_aux(NX,F,NAcc).

goal
fact(125,F).









