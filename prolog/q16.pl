find_f([H|Tail], N, Y, L):- (
				N=:=L -> Y is H;
				L1 is L+1,
				find_f(Tail, N, Y, L1)
			    ).

nth_element(N,L,X) :- find_f(L,N,X, 1).
