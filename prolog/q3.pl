fac(0,1).
fac(N,X) :- N > 0, M is N - 1, fac(M,Y), X is Y * N.