predicates

nondeterm action(integer,integer,integer,real).


clauses

action(1,Num1,Num2,Result):- Result=Num1+Num2,!.

action(2,Num1,Num2,Result):- Result=Num1-Num2,!.

action(3,Num1,Num2,Result):- Result=Num1*Num2,!.

action(4,Num1,Num2,Result):- Result=Num1/Num2.

goal

action(1, 5, 5, R).