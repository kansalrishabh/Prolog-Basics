path(A,B) :- walk(A,B,[]).

walk(A,B,V) :- 
	edge(A,X),
	not(member(X,V)),
	(
		B = X;
		walk(X,B,[A|V])
	).                  

edge(p,'q').
edge(q,r).
edge(q,'s').
edge(s,t).
