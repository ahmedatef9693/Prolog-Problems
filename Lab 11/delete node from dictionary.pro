domains
	tree=t(tree,integer,tree);nil

predicates
	nondeterm del(tree,integer,tree)
	nondeterm delmin(tree,integer,tree)	%1st tree is given, 
						%integer is the min value in the given tree, 
						%2nd tree is the result Subtree without the min element 
 
	
clauses
del( t( nil, X, Right), X, Right):-!.	% element is the root and left is empty then result is right tree

del( t( Left, X, nil), X, Left):-!.	% element is the root and right is empty then result is left tree


del( t( Left, X, Right), X, t( Left, Y, NewRight))  :-	%if element is the root and left and right are not empty, 
							%then remove the min value in the right tree using (delmin) 
							%and put it as the root'Y' insted of the deleted root.
       delmin( Right, Y, NewRight).	%take right subtree and remove the left most value (min) from it and save it in Y


del( t( Left, Root, Right), X, t( NewLeft, Root, Right))  :-
       X < Root,	%if element is less than the root, then search/del in left subtree
       del( Left, X, NewLeft).

del( t( Left, Root, Right), X, t( Left, Root, NewRight))  :-
       X > Root,	%if element is greater than the root, then search/del in right subtree
       del( Right, X, NewRight).



%%% delmin is function that go to the left most leaf in the given tree (min value) 
%%% (reach a step when left sub tree is empty, i have no values less than it) 
%%% and put this value in 'Y'
%%% and return the rest right subtree without the 'Y'

%%% NP: delmin is not a function that delete a GIVEN element, 
%%% but it just delete the leftmost(min) element(leaf) and return it and the rest tree

delmin( t( nil, Y, R), Y, R).	%left node is empty then root’Y’ has the min value and result is the right subtree.

delmin( t( Left, Root, Right), Y, t( NewLeft, Root, Right))  :-	%X is not the leftmost node, then search in the left tree
       delmin( Left, Y, NewLeft).


goal
   %del(t(t(nil,3,nil),5,t(nil,8,nil)),5,T).
   del( t( t(nil,3,nil),5 ,t(t(t(nil, 6, nil), 8, t(nil, 9, nil)) , 10, t( t(nil, 11,nil), 12 ,t(nil, 13, nil))) ) , 
   	10, Result).
