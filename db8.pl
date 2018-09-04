double_digit(X, Y) :-
    Y is X*2.

is_even(X) :-
    mod(X, 2) =:= 0.