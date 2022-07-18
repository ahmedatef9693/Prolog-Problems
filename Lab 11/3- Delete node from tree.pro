domains
	tree=t(tree,integer,tree);nil

predicates
	nondeterm del(tree,integer,tree)
	nondeterm delmin(tree,integer,tree)
	gt(integer,integer)
clauses
del( t( nil, X, Right), X, Right):-!.
del( t( Left, X, nil), X, Left):-!.
del( t( Left, X, Right), X, t( Left, Y, Right1))  :-
       delmin( Right, Y, Right1).
del( t( Left, Root, Right), X, t( Left1, Root, Right))  :-
       gt( Root, X),
       del( Left, X, Left1).
del( t( Left, Root, Right), X, t( Left, Root, Right1))  :-
       gt( X, Root),
       del( Right, X, Right1).

delmin( t( nil, Y, R), Y, R).
delmin( t( Left, Root, Right), Y, t( Left1, Root, Right))  :-
       delmin( Left, Y, Left1).


gt(X,Y):- X > Y.




goal
   del(t(t(nil,3,nil),5,t(nil,8,nil)),5,T).