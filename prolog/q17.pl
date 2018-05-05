conc([],L,L).
conc(L,[],L).
conc([H|T],L2,[H|L3]) :-  conc(T, L2, L3).

find_f([H|Tail], R9, R, K):- (
				K=:=0 -> conc([H],[],R),
				find_f(Tail, R9, R);
				find_f(Tail, R9, R)
			     ).

find_f([H|Tail], R9, R4):-   (
				member(H,R4) -> find_f(Tail, R9, R4);
				conc(R4, [], R2),
				conc(R2,[H], R3),
				find_f(Tail, R9, R3)
			     ).

find_f([X], R, R9):-         (
				member(X,R9) -> conc(R9, [], R);
				conc(R9, [X], R)
			     ).

dup(L,R) :- find_f(L, R, R2, 0).

