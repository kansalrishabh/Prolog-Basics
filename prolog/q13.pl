conc([],L,L).
conc(L,[],L).
conc([H|T],L2,[H|L3]) :-  conc(T, L2, L3).

palindrome([]):- write('palindrome').

palindrome([_]):- write('palindrome').

palindrome(L):- conc([H|T], [H], L),
		palindrome(T);
		write('Not a palindrome').
