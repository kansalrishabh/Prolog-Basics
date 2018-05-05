max_f([H|Tail], Y, Y2):-  (
				Y2<H -> Y3 is H,
				max_f(Tail, Y, Y3);
				Y3 is Y2,
				max_f(Tail, Y, Y3)
			  ).

max_f([X],Y,Y2) :-        (
				Y2<X -> Y is X;
				Y is Y2
			  ).

max_el([H|Tail],Y, Y2) :- (
				Y2<H -> Y3 is H,
				max_f(Tail, Y, Y3);
				Y3 is Y2,
				max_f(Tail, Y, Y3)
			  ).

max([H|Tail],Y):- 	 Y2 is H,
			 max_el(Tail,Y,Y2). 
