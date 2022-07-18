predicates

nondeterm action(integer,integer,integer,real).
nondeterm testgoal.
nondeterm checkY(char).

clauses

action(1,Num1,Num2,Result):- Result=Num1+Num2,!.

action(2,Num1,Num2,Result):- Result=Num1-Num2,!.

action(3,Num1,Num2,Result):- Result=Num1*Num2,!.

action(4,Num1,Num2,Result):- Result=Num1/Num2.

checkY('Y').
checkY('y').

testgoal:- write("What's the operation you want to do?"),nl, 
write("1- Add"),nl,
write("2-Subtract"),nl,
write("3-Multiply"),nl,
write("4-Divide"),nl,
write("Please enter your choice: "),readint(X),
write("Please enter the first number: ") ,
readint(Num1),write("Please enter the second number: "),
readint(Num2),
action(X,Num1,Num2,Result),write("Result is ", Result),nl,write("Do you want to perform another operation?"),nl,readchar(C),write(C),nl,checkY(C),testgoal.

testgoal.

goal

testgoal.
