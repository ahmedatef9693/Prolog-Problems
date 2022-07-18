domains
ilist = integer*
predicates 
nondeterm max(ilist,integer)
nondeterm find_max(ilist,integer,integer)
clauses

max([H|T], M):-find_max(T,M,H).

find_max([],M, M).

find_max([H|T], M, Acc):- H>Acc, find_max(T, M, H).
find_max([H|T], M, Acc):-H<= Acc, find_max(T, M, Acc).
goal
max( [3,1,2,1],X).
