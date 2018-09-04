% changing predicates during execution

% declare predicates as DYNAMIC with number of arguments after "/" 
:- dynamic(father/2).
:- dynamic(likes/2).
:- dynamic(friend/2).
:- dynamic(stabs/3).

father(lord_montague, romeo).
father(lord_capulet, juliet).

likes(mercutio, dancing).
likes(benvolio, dancing).
likes(romeo, dancing).
likes(romeo, juliet).
likes(juliet, romeo).
likes(juliet, dancing).

friend(romeo, mercutio).
friend(romeo, benvolio).

stabs(tybalt, mercutio, sword).
stabs(romeo, tybalt, sword).


%%%%%%%%%To add to database during program execution use%%%%%%%

% ADD TO BEGINNING
% asserta(friend(mercutio, benvolio)).

% ADD TO END
% assertz(friend(benvolio, mercutio)).




%%%%%%%%%%% To remove from database during program execution use%%%%%%%


% retract(likes(mercutio, dancing)).

% retractall(father(_,_)).



