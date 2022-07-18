predicates

nondeterm boy(symbol)
nondeterm girl(symbol)
nondeterm likes(symbol,symbol)
nondeterm sister(symbol,symbol)

clauses

boy(ali).
boy(kareem).
boy(ahmed).
girl(fatma).
girl(mona).
sister(fatma,kareem).
sister(mona,ahmed).
likes(ali,kareem).
likes(ahmed,X):- boy(X), likes(ali,X).
likes(ahmed,X) :- sister(X,ahmed).

goal

%boy(ahmed).
%boy(X).
%likes(ahmed,Z).
likes(X,Y).