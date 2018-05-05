memb(X,[H|L]) :- (X=:=H -> write('Is a Member');memb(X,L)).
