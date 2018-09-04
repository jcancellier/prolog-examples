% STRINGS

% convert string to ASCII
name('A random string', X).

% convert ascii to string
% name(X, [...list of ascii values])

% append two strings
join_str(Str1, Str2, Str3) :-
    name(Str1, StrList1),
    name(Str2, StrList2),
    append(StrList1, StrList2, StrList3),
    name(Str3, StrList3).

% output certain letter of a string (type this in gprolog)
name('Derek', List), nth0(0, List, FChar), put(FChar).

% get length of a string
atom_length('Derek', X).