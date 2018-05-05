check_even(L2) :- 	L3 is integer(L2/2),
			L4 is L3*2, 
			L5 is L2-L4, 
			(
				L5 =:= 0, true;
				false
			).

check_odd(L2) :- 	L3 is integer(L2/2),
			L4 is L3*2,
			L5 is L2-L4,
			(
				L5 =:= 1, true;
				false
			).

check_len([H|T], L, R1) :- L1 is L+1,
			   check_len(T, L1, R1).

check_len([Y], L, R1) :-   (
				R1 =:= 0 -> L2 is L+1,
				check_even(L2);
				L2 is L+1, check_odd(L2)
			   ).

evenlength(X) :- check_len(X, 0, 0).

oddlength(X) :- check_len(X, 0, 1).
