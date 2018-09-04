% STRUCTURES


% Albert own a pet cat named Olive.
% test out this fact with: owns(albert, pet(cat, X)).
owns(albert, pet(cat, olive)).

% test out these facts with: customer(sally, _, Bal).
customer(tom, smith, 20.55).
customer(sally, smith, 120.55).

% gets a customer's balance based on their first and last name
get_cust_bal(FName, LName) :-
    customer(FName, LName, Bal),
    write(FName), tab(1),
    format('~w owes us $~2f ~n', [LName, Bal]).

% check if a line is vertical
% test with: vertical(line(point(5, 10), X)).
% the line above asks what point is needed with point(5, 10) to achieve a vertical line
vertical(line(point(X, Y), point(X, Y2))).

% check if a line is horizontal
horizontal(line(point(X, Y), point(X2, Y))).