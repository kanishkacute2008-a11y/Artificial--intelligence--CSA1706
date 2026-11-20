edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).

heuristic(a, 6).
heuristic(b, 4).
heuristic(c, 2).
heuristic(d, 5).
heuristic(e, 3).
heuristic(f, 1).
heuristic(g, 0).

best_first(Start, Goal, Path) :-
    search([Start], Goal, [Start], RevPath),
    reverse(RevPath, Path).

search([Goal|_], Goal, Path, Path).

search([Current|Rest], Goal, Visited, Path) :-
    findall(H-Next,
        (edge(Current, Next),
         \+ member(Next, Visited),
         heuristic(Next, H)),
        Children),
    keysort(Children, Sorted),
    get_nodes(Sorted, Nodes),
    append(Nodes, Rest, NewQueue),
    append(Nodes, Visited, NewVisited),
    search(NewQueue, Goal, NewVisited, Path).

get_nodes([], []).

get_nodes([_-Node|T], [Node|R]) :-
    get_nodes(T, R).