domains
ilist=integer*
predicates

nondeterm append(ilist,ilist,ilist).
nondeterm palindrome(ilist).
clauses

append([],L2,L2).
append([H|T],L2,[H|TempRetList]) :- append(T,L2,TempRetList) .

palindrome([]).
palindrome([_]).
palindrome (L):- 
	append([H|T],[X],L), X=H, palindrome(T).


goal

palindrome([1,2,3,2,1]).



