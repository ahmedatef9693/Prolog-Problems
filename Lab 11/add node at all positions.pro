domains
	tree=t(tree,integer,tree);nil

predicates
	nondeterm add(tree,integer,tree)
	nondeterm addroot(tree,integer,tree)
	
clauses
add( Tree, X, NewTree)  :-
     addroot( Tree, X, NewTree).  	%Add X as new root    
              
add( t( L, Y, R), X, t( L1, Y, R))  :-	%Insert X into left subtree
     X < Y,
     add( L, X, L1).
     
add( t( L, Y, R), X, t( L, Y, R1))  :-	%Insert X into right subtree
     X > Y,
     add( R, X, R1).

addroot( nil, X, t( nil, X, nil)).      %Insert X into empty tree (stopping condition for both add and addroot)

addroot(t(L, X, R), X, t(L, X, R)).	%X already in tree

addroot( t( L, Y, R), X, t( L1, X, t( L2, Y, R)))  :-
     X < Y,
     addroot( L, X, t( L1, X, L2)).
     
addroot( t( L, Y, R), X, t( t( L, Y, R1), X, R2))  :-
     X > Y,
     addroot( R, X, t( R1, X, R2)).

goal
    
add(t(t(nil,3,nil),5,t(nil,8,nil)),2,T).

      
      
     