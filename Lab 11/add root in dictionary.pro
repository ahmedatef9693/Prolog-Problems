domains
	tree=t(tree,integer,tree);nil

predicates
	nondeterm addroot(tree,integer,tree)
	
clauses
addroot( nil, X, t( nil, X, nil)).        

addroot( t(L, X, R),  X,  t (L, X, R)).		%X already in tree

addroot( t( L, Y, R), X, t( L1, X, t( L2, Y, R)))  :-
     							X < Y,
							addroot( L, X, t( L1, X, L2)).

addroot( t( L, Y, R), X, t( t( L, Y, R1), X, R2))  :-
     							X > Y,
							addroot( R, X, t( R1, X, R2)).


goal
    
addroot(t(t(nil,3,nil),5,t(nil,8,nil)),2,T).