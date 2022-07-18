domains
tree=t(tree,integer,tree);nil

predicates
nondeterm addleaf(tree,integer,tree)
	
clauses
addleaf( nil, X, t( nil, X, nil)).	%given tree is emty, and stoping condition

addleaf( t( Left, X, Right), X, t( Left, X, Right)). 	%given element already exist

addleaf( t( Left, Root, Right), X, t( NewLeft, Root, Right))  :-
							X < Root,
							addleaf( Left, X, NewLeft).

addleaf( t( Left, Root, Right), X, t( Left, Root, NewRight))  :-
							X > Root,
							addleaf( Right, X, NewRight).


goal
addleaf(t(t(nil,3,nil),5,t(nil,8,nil)),6,T).
