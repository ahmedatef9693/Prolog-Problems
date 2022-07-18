Domains
point = pnt(integer,integer)
shape = cir(point,integer); 
rect(point,point);
ellipse(point ,integer,integer);
cylinder(integer,integer).

predicates
area(shape,real)
clauses
area(rect(pnt(X1,Y1),pnt(X2,Y2)),A):- W = abs(X1-X2),
H = abs(Y1-Y2), A = W*H.

area(cylinder(R,H),A) :- A=(2*22/7*R*R) + (H*(2*22/7*R)).
area(ellipse(pnt(_,_),A,B),Area) :- Area= 22/7 * A * B.

area(cir(pnt(_,_),R),A):- A = 22/7 * R * R. 

goal
%area(cir(pnt(3,4), 5), A).
%area(ellipse(pnt(3,4),3, 5), A).
area(cylinder(15,15),A).

