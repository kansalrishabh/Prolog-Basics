it_it([H|Tail], [S|Tail2]):- (H=:=S -> it_it(Tail, Tail2);false).
it_it([X], [S|Tail2]):- false.
it_it([X],[S]):- ([X]=:=[S] -> true;false).
it_it([H|Tail],[S]):- (H=:=[S] -> true;false).
find_f([H|Tail], [S|Tail2]):- (
				H=:=S -> it_it(Tail, Tail2);
				find_f(Tail, [S|Tail2])
			    ).
find_f([X], [S|Tail2]):- false.
find_f([X], [Tail2]):- ([X]=:=[Tail2] -> true; false).
sublist(S,L) :- find_f(L,S).
