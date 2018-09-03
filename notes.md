## loading database/knowledge base
 (For a file named db.pl)
 
 Option 1:
 ```
 | ?- [db].
 ```

 Option 2:
 ```
 | ?- consult('db.pl)
 ```

### display database/knowledge base

 ```
 | ?- listing.
 ```

## writing to console

(nl is newline)

```
  write('Hello World'), nl, write('Let\'s Program').
```

## if statements

the `:-` operator is the if operator



**example:**
juliet loves romeo IF romeo loves juliet
```
loves(juliet, romeo) :- loves(romeo, juliet).
```