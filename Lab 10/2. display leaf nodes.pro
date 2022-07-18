domains
tree= t(tree,symbol,tree);nil

predicates
nondeterm display(tree).


clauses

display(t(nil, X, nil)):- write(X),nl,!.
display(t(Left, X, Right)) :- display(Left), display(Right).
display(nil). 	% if root has one side nil and other side a tree

goal
display( t ( t(nil,b,nil) , a , t( t(nil,d,nil), c , nil) ) ).