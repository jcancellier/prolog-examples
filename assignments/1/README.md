# Farmer, wolf, goat, and cabbage problem

### Usage: 

1. Load knowledge base
```
[db].
```

2. Start session (start off on east side)
```
solve(e, e, e, e).
```

3. Display all states
```
listing(visited).
```


***Example output***
```
visited(w, e, w, e).
visited(e, e, w, e).
visited(w, w, w, e).
visited(e, w, e, e).
visited(w, w, e, w).
visited(e, w, e, w).
visited(w, w, w, w).
visited(e, e, e, w).
visited(w, e, w, w).
visited(e, e, e, e).
```