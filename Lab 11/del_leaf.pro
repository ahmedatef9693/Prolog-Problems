domains
tree=t(tree,integer,tree);nil

predicates
nondeterm del_leaf(tree,integer,tree)
	
clauses
del_leaf( nil, _, nil).		%leaf not found

del_leaf(t(nil,X,nil), X, nil).	%leaf found

del_leaf( t( Left, Root, Right), X, t( NewLeft, Root, Right))  :-
							X < Root,
							del_leaf( Left, X, NewLeft).

del_leaf( t( Left, Root, Right), X, t( Left, Root, NewRight))  :-
							X > Root,
							del_leaf( Right, X, NewRight).


goal
del_leaf(t(t(nil,3,nil),5,t(nil,8,nil)),3,T).
