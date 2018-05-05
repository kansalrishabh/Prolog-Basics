mulit(K, L, M, S) :- (
		L>1 -> S1 is K*S,
		L1 is L-1,
		mulit(K,L1,M,S1);
			(
			L=:=0 -> M is 1;
			M is S1
			)
		).

power(Num, Pow, Ans) :-
		Store is Num,
		mulit(Num, Pow, Ans, Store).
