# A* Search 

#### 1. Load heuristics and arc values
```
?- [map].
```

#### 2. Load main program
```
?- [astar].
```

#### 3. Find optimal path from Arad to Bucharest
```
?- astar([[arad]],bucharest,N,P).
```


### *Example*
```
?- [map].
true.

?- [astar].
true.

?- astar([[arad]],bucharest,N,P).
3
5
6
7
7
N = [bucharest, pitesti, rimnicu, sibiu, arad],
P = 5
```
