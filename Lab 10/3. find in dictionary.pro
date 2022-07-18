domains
tree= t(tree,integer,tree);nil

predicates
nondeterm in(integer,tree)

clauses
in(X,t(_,X,_)).	% don't need cut as it is yes/no.
in(X,t(Left, Root, Right)):-
		X < Root, 
		in(X,Left). 
		
in(X,t(Left, Root, Right)):-
		X > Root,
		in(X,Right).

goal
in(6, t(t(t(nil,1,nil),3,t(nil,4,nil)), 5, 
	t(t(nil, 6,t(nil, 7,nil)), 8, t(nil, 9, nil)))).
	
	