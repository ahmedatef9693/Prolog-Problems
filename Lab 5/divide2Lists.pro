domains
ilist = integer*
predicates
nondeterm divide(ilist, ilist, ilist)
clauses
divide([],[],[]).
divide([H|T],[H|T1], N):- H>=0, !,divide(T,T1,N).
divide([H|T], P, [H|T1]):- divide(T,P,T1). 
goal
divide([-1,2,-5,7], L1,L2).
