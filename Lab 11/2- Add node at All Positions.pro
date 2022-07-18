domains
	tree=t(tree,integer,tree);nil

predicates
	nondeterm add(tree,integer,tree)
	nondeterm addroot(tree,integer,tree)
	gt(integer,integer)
	
clauses
add( Tree, X, NewTree)  :-
     addroot( Tree, X, NewTree).               
add( t( L, Y, R), X, t( L1, Y, R))  :-
     gt( Y, X),
     add( L, X, L1).
add( t( L, Y, R), X, t( L, Y, R1))  :-
     gt( X, Y), 
     add( R, X, R1).

addroot( nil, X, t( nil, X, nil)).        
addroot( t( L, Y, R), X, t( L1, X, t( L2, Y, R)))  :-
     gt( Y, X),
     addroot( L, X, t( L1, X, L2)).
addroot( t( L, Y, R), X, t( t( L, Y, R1), X, R2))  :-
     gt( X, Y),
     addroot( R, X, t( R1, X, R2)).

gt(X,Y):- X > Y.


goal
    
add(t(t(nil,3,nil),5,t(nil,8,nil)),2,T).

      
      
     