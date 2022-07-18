predicates
nondeterm boy(symbol)
nondeterm girl(symbol)
nondeterm subject(symbol)
nondeterm study(symbol, symbol)

clauses
boy(ahmed).
boy(ali).

girl(sarah).
girl(mai).

subject(arabic).
subject(english).
subject(math).

study(ahmed, arabic).
study(ali, X):-
	study(ahmed, X).
	
study(X, english):-
	girl(X).
	
study(X, math):-
	girl(X); boy(X).

goal
%study(sarah, X).
%study(X, arabic).
study(X, math).