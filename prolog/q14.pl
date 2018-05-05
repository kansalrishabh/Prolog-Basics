add_el([X],Y,Y2) :- Y is Y2+X.
add_el([H|Tail],Y, Y2) :- Y3 is Y2+H, add_el(Tail,Y,Y3).
sumList([H|Tail],Y):- Y2 is H, add_el(Tail,Y,Y2).
