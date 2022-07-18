predicates

nondeterm max(integer,integer,integer).


clauses

%max(X,Y,Max) :- X>=Y , Max= X.
%max(X,Y,Max) :- X<Y , Max = Y.


max(X,Y,Max) :- ! , X>=Y  ,Max = X .
max(X,Y,Max) :- Max = Y.

goal
max(5,10,Maximum).
