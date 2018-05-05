conc([],L,L).
conc(L,[],L).
conc([H|T],L2,[H|L3]) :-  conc(T, L2, L3).
conc(X, Y, L3):- conc([X], Y, L3).
conc(X, Y, L3):- conc([X], [Y], L3).
