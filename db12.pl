% LISTS

% add albert to beginning of list
write([albert|[alice, bob]]), nl.

% length of list
length([1,2,3], X).

% divide list into head and tail parts
[H|T] = [a, b, c].

% get values out of list
[X1, X2, X3, X4|T] = [1, b, c, d].
 
%  get specific value out of list
[_, X2, _, _|T] = [a, b, c, d].

% get list inside of list
[_, _, [X|Y], _, Z|T] = [a, b, [c, d, e], f, g, h]


% Create a list
List1 = [a, b, c].

% check if a is in the list
member(a, List1).

% get all elements of list
member(X, [a,b, c, d]).

% reverse a list
reverse([1, 2, 3, 4, 5], X).

% appending to a list
append([1, 2, 3], [4, 5, 6], X).

% cycle through a list
write_list([]).

write_list([Head|Tail]) :-
    write(Head), nl,
    write_list(Tail).