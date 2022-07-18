domains
tree= t(tree,symbol,tree);nil

predicates
nondeterm display(tree).


clauses

display(t(nil, X, nil)):- write(X),nl,!.
display(t(Left, X, Right)) :-   write(X),nl,display(Left), display(Right).
display(_).

goal
display( t ( t(nil,b,nil) , a , t( t(nil,d,nil), c , nil) ) ).