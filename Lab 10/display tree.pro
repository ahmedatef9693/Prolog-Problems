domains
tree = t(tree, integer, tree); nil

predicates
nondeterm show(tree)
nondeterm show2(tree, integer)
tab(integer)

clauses
show(Tree):-
	show2(Tree, 0).
	
show2(nil, _).
show2(t(Left, X, Right), H):-
	H1 = H + 2,
	show2(Right, H1),
	tab(H), write(X),nl,
	show2(Left, H1).
	
tab(0):- !.
tab(X):-
	X > 0, write(" "),
	X1 = X - 1, tab(X1).
	
goal
show(t(t(nil,3,nil),5,t(t(t(nil,6,nil),8,t(nil,9,nil)),11,t(nil,12,t(nil,13,nil))))).
	