% Declare dynamic predicates
:- dynamic(visited/4).

% Illegal moves (farmer, wolf, goat, cabbage)
illegal(w, e, e, _).
illegal(e, w, w, _).
illegal(w, _, e, e).
illegal(e, _, w, w).

% Changing state
% farmer moving
change_state(e, X, Y, Z, w, X, Y, Z).
change_state(w, X, Y, Z, e, X, Y, Z).
% farmer and wolf moving
change_state(w, w, Y, Z, e, e, Y, Z).
change_state(e, e, Y, Z, w, w, Y, Z).
% farmer and goat moving
change_state(w, X, w, Z, e, X, e, Z).
change_state(e, X, e, Z, w, X, w, Z).
% farmer and cabbage moving
change_state(w, X, Y, w, e, X, Y, e).
change_state(e, X, Y, e, w, X, Y, w).

% Agent function
solve(w, w, w, w).
solve(X, Y, Z, W) :-
    change_state(X, Y, Z, W, X1, Y1, Z1, W1),
    \+ illegal(X1, Y1, Z1, W1),
    \+ clause(visited(X1, Y1, Z1, W1), _),
    assertz(visited(X1, Y1, Z1, W1)),
    solve(X1, Y1, Z1, W1).
