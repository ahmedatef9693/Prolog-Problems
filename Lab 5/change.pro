/*domains
list=real*

predicates

nondeterm check(list)

clauses
%div([],):-!.
%div([H|T],C):-C=H/2,div(T,C).

check([]).
check([_|_]).
goal

%div([1,2,3],C).
check([1]).
*/


domains

str=symbol*

predicates 
change(symbol,symbol)
change_strings(symbol,str)
alter(str,str)
alter(
clauses
change(you,i).
change(are,[am,not]).
change(french,german).
change(do,no).
change(X,X).
alter([],[]):-!.
alter([H|T],[X|Y]):-change(H,X),alter(T,Y).

goal

alter([do,you,speak,french],Y).





