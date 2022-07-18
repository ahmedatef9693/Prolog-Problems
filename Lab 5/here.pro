domains
list=real*

predicates

nondeterm div(list,real).

clauses
%div([],_):-!.
div([H|T],C):-C=H/2,Nc=H+1,div([Nc|],C).

goal

div([1,2,3],C).
