% Define the edges in your graph
edge(a, b).
edge(a, c).
edge(b, d).
edge(c, e).
edge(c, f).
edge(e, g).

% Define the DFS predicate
dfs(Node, Path) :-
    dfs(Node, [], Path).

dfs(Node, Visited, [Node|Path]) :-
    % Add the current node to the visited list
    \+ member(Node, Visited),
    dfs_helper(Node, [Node|Visited], Path).

dfs_helper(Node, _, []) :-
    % Base case: Node has no unvisited neighbors
    \+ edge(Node, _).
dfs_helper(Node, Visited, Path) :-
    % Recursive case: Explore unvisited neighbors
    edge(Node, Next),
    \+ member(Next, Visited),
    dfs(Next, Visited, Path).
dfs_helper(Node, Visited, Path) :-
    % Skip already visited nodes
    edge(Node, Next),
    member(Next, Visited),
    dfs_helper(Node, Visited, Path).