% INPUT and OUTPUT

say_hi :-
    write('What is your name? (Use quotes) '),
    read(X),
    write('Hi '),
    write(X).

fav_char :-
    write('What is your fav character? '),
    get(X), 
    format('The Ascii value ~w is ', [X]),
    put(X), nl.

% Writing to a file
% example write_to_file('test1.txt', 'Random String').
write_to_file(File, Text) :-
    open(File, write, Stream),
    write(Stream, Text), nl,
    close(Stream).

%%%%%%%%%%%% Reading from a file%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% example read_file('test1.txt').
read_file(File) :-
    open(File, read, Stream),
    get_char(Stream, Char1),
    process_stream(Char1, Stream),
    close(Stream).

process_stream(end_of_file, _) :- !.

process_stream(Char, Stream) :-
    write(Char),
    get_char(Stream, Char2),
    process_stream(Char2, Stream).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%