% FACTS
male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

brother(bob, bill).

human(derek).

stabs(tybalt, mercutio, sword).

% RULES
grand_parent(X, Y) :- parent(Z, X), parent(Y, Z).
blushes(X) :- human(X).
hates(romeo, X) :- stabs(X, mercutio, sword).

% FUNCTIONS
% show albert's granchildren
get_grandchild :-
    parent(albert, X),
    parent(X, Y),
    write('Alberts granchild is '),
    write(Y), nl.

% show grandparents
get_grandparent :-
    parent(X, carl),
    parent(X, charlie),
    format('~w ~s grandparent ~n', [X, "is the "]).


% sample variable queries

% SHOW ALL OF BOB'S PARENTS
% parent(X, bob).

% SHOW ALL BOB'S PARENTS WHO DANCE
% parent(X, bob), dances(X).

% SHOW BOB'S GRANDPARENTS
% parent(Y, carl), parent(X, Y).

% SHOW BOB'S GRANDCHILDREN
% parent(albert, X), parent(X, Y).