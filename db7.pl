% RECURSION
parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

related(X, Y) :-
    parent(X, Y).

% this is recursive
% find all people related to carl by using related(Z, carl). on terminal
related(X, Y) :-
    parent(X, Z),
    related(Z, Y).