purify([], []).
purify([Pol-Var| Literals], NewLiterals) :- 
	occurs(Var, Literals), 
	remove(Var, Literals, Newlit),
	purify(Literals, Newlit).
purify([Pol-Var| Literals], NewLiterals) :-
	notoccurs(Var, Literals),
	purify(Literals, [Pol-Var|NewLiterals]).
	

occurs([], []).
occurs(Var, [_-Var2|_]) :- Var == Var2.
occurs(Var, [_-Var2| Literals]) :- occurs(Var, Literals).

notoccurs(_, []).
notoccurs(Var, [_-Var2|_]) :- Var \== Var2.
notoccurs(Var, [_-Var2| Literals]) :- Var \== Var2, notoccurs(Var, Literals).

remove(_, [],[]).
remove(X,[_-X|Ys], Zs) :- remove(X, Ys, Zs).
remove(X, [_-Y|Ys], [_-Y|Zs]) :- X \= Y, remove(X, Ys, Zs).  