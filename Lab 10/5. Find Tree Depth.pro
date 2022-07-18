domains
tree=t(tree,symbol,tree);nil

predicates
nondeterm depth(tree,integer)
nondeterm findGreater(integer, integer, integer).

clauses
depth(nil, 0):-!.

depth(t(nil, _, nil), 1):-!.

depth(t(L,_,R), X) :- depth(L, NLD), LD = NLD + 1,
 		      depth(R, NRD), RD = NRD + 1, 
		      findGreater(LD, RD, X).
		      
findGreater(X,Y,Z) :- X >= Y,!, Z = X. 
findGreater(X,Y,Z) :- Z = Y.

goal
depth(t ( t(t(nil,e,nil),b,t(nil,f,nil)) , a , t( t(t(nil,g,nil), d ,t(nil,h,nil)), c , t(nil,i,nil)) ),X).
