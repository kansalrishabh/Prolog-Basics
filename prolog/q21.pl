conc([],L,L).
conc(L,[],L).
conc([H|T],L2,[H|L3]) :-  conc(T, L2, L3).

find_f(N, [H|Tail], R9, R, 0, R17):- (
				N=\=1 -> conc([H],[],R),
				R18 is R17+1,
				find_f(N, Tail, R9, R,R18);
				R18 is R17+1,
				find_f(N, Tail, R9, R, 0,R18)
			     ).

find_f(N, [H|Tail], R9, R4, R17):-   (
				N=:=R17 -> R18 is R17+1,
				find_f(N, Tail, R9, R4,R18);
				R18 is R17+1,
				conc(R4, [], R2),
				conc(R2,[H], R3),
				find_f(N, Tail, R9, R3,R18)
			     ).

find_f(N, [X], R, R9, R17):- (
				N=:=R17 -> conc(R9, [], R);
				conc(R9, [X], R)
			     ).

delete_nth(N,L,R) :- find_f(N,L, R, R2, 0, 1).
