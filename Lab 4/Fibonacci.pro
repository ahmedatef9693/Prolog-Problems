%Non Tail Solution

/*predicates

nondeterm Fib(integer,integer).

clauses

Fib(0,0):-!.
Fib(1,1):-!.
Fib(X,F) :- X1=X-1, X2=X-2 , Fib(X1,F1) , Fib(X2,F2) , F=F1+F2.

goal

Fib(10,F).*/

%Tail Solution

predicates
fib(integer, integer)
fib_aux(integer, integer, integer, integer)
clauses
fib(X, Fib):-
   fib_aux(X, Fib,0, 1).
 
fib_aux(0, 0,_, _):-!.      
fib_aux(1, Second,_, Second):-!.
fib_aux(X, Fib,First, Second):-
    NewX = X - 1,
    NewFirst = Second,
    NewSecond = First + Second,
    fib_aux(NewX, Fib, NewFirst, NewSecond).
goal
fib(6,X).