% Define the graph edges
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(d, h).
edge(e, i).
edge(f, j).
edge(g, k).

% BFS predicate
bfs(Start, Goal, Path) :-
    bfs_helper([[Start]], Goal, Path).

% Base case: when the current path reaches the goal
bfs_helper([[Goal|Visited]|_], Goal, Path) :-
    reverse([Goal|Visited], Path).

% Recursive case: explore neighbors of the current node
bfs_helper([[Current|Visited]|Rest], Goal, Path) :-
    findall([Next, Current|Visited],
            (edge(Current, Next), \+ member(Next, [Current|Visited])),
            NewPaths),
    append(Rest, NewPaths, UpdatedQueue),
    bfs_helper(UpdatedQueue, Goal, Path).
