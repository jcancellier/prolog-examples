loves(juliet, romeo).

loves(romeo, juliet) :- loves(juliet, romeo).

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).



% albert runs if he's happy
runs(albert) :- happy(albert).

% alice dances if she is happy and with albert
dances(alice) :- happy(alice), with_albert(alice).

does_alice_dance :- dances(alice),
    write('When Alice is dancing happy and with Albert she dances').

swims(bill) :- happy(bill).

swims(bill) :- near_water(bill).
