## Loading database/knowledge base
 (For a file named db.pl)
 
 Option 1:
 ```
 | ?- [db].
 ```

 Option 2:
 ```
 | ?- consult('db.pl)
 ```

## Display database/knowledge base

 ```
 | ?- listing.
 ```

## Writing to console

(nl is newline)

```
write('Hello World'), nl, write('Let\'s Program').
```

```
format('~w ~s grandparent ~n', [X, "is the "]).
```

  * ~w = variable
  * ~s = string
  * ~n = new-line

## Check if predicate exists
  *use underscore*
```
male(_)
```

## Working with predicates

the `:-` operator is the if operator

**example:**
juliet loves romeo IF romeo loves juliet
```
loves(juliet, romeo) :- loves(romeo, juliet).
```


## List every combination of two facts

```
| ?- male(X), female(Y).
```

*note:* input a semicolon to cycle through each entry

## Simulating if-else-if branching

```
what_grade(5) :- 
    write('Go to kindergarten').

what_grade(6) :-
    write('Go to 1st grade').

what_grade(Other) :-
    Grade is Other - 5,
    format('Go to grade ~w', [Grade]).
```

*is equivalent to*

```
if(age == 5)
  ...
else if(age == 6)
  ...
else
  ...
```

## Declaring/Using variables in predicate statements


*this example creates a variable called **Grade** and sets it equal to the variable passed in **(Other)** minus 5*
```
what_grade(Other) :-
    Grade is Other - 5,
    format('Go to grade ~w', [Grade]).
```


## Equivalence operations

check if alice equals alice (true)
```
| ?- alice = alice.
```


check if 'alice' equals alice (true)
```
| ?- 'alice' = alice.
```

check if alice != albert (true)
```
|? - \+ (alice = albert).
```

examples:

(false)
```
|? - 3 > 15.
```

(false)
```
|? - 3 >= 15.
```

(true)
```
|? - 3 =< 15.
```

# NOTES

* variables use upper-case letters
* use the keyword ***is*** to assign variables in expressions (dont use =)
* use ***=:=*** operator to check if 2 expressions are equal (ex: *5+4 =:= 4+5.*)
* use ***=\=*** operator to check if 2 expressions are ***NOT*** equal (ex: *5+4 =\\= 4+5.*)
* generate random numbers using the ***random()*** function.
  * ex: random(0, 10, X). places a random number from 0 through 10 and places it inside *X*
* get numbers between a range using the ***between()*** function.
  * ex: between(0, 10, X). returns 0 through 10
  
# OPERATORS
* AND operator is ***,***
* OR operator is ***;***
* MODULO operator is ***mod(x, y)*** 
  * ex: mod(7, 2) = 1

# UTILITIES
* use ***trace.*** to debug program and trace predicates (use **notrace.** to turn it off)
