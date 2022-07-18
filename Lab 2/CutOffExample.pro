predicates
nondeterm car(symbol,symbol,integer)
nondeterm buycar(symbol,symbol)
nondeterm color(symbol,symbol)


clauses
car(mazda,green,25000).
car(fiat,black,24000).
car(dogan,red,24000).
car(marcedes,red,23000).

color(red,nice).
color(black,wonderful).
color(green,wonderful).

%Buy Car if its cheaper that 25000 and has a nice color, or a car that has a wonderful color and the price doesn't matter.
buycar(M,C):-car(M,C,P),P<=25000, color(C,nice).
buycar(M,C):- car(M,C,P), color(C,wonderful).


goal
buycar(M,C).