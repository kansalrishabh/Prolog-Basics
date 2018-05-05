conc([],L,L).
conc(L,[],L).
conc([H|T],L2,[H|L3]) :-  conc(T, L2, L3).

find_f([H|Tail], R9, R, Q, K):- (
					Q=\=H -> conc([H],[],R),
					find_f(Tail, R9, Q, R);
					find_f(Tail, R9, R, Q, 0)
				).

find_f([H|Tail], R9, Q, R4):-   (
					Q=:=H -> find_f(Tail, R9, Q, R4);
					conc(R4, [], R2), conc(R2,[H], R3),
					find_f(Tail, R9, Q, R3)
				).

find_f([X], R, Q, R9):- 	(
					Q=:=X -> conc(R9, [], R);
					conc(R9, [X], R)
				).

delete_all(X,L,R) :- 		find_f(L, R, R2, X, 0).
