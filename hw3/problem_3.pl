% Reference: https://stackoverflow.com/questions/21161624/define-graph-in-prolog-edge-and-path-finding-if-there-is-a-path-between-two-ve
path(X,Y) :-
    findall(A-B, edge(A,B), Es),
    vertices_edges_to_ugraph([],Es,G),
    reachable(X,G,Path),
    member(Y, Path),
    write_ln("Yes"),!,true;
    write_ln("No"),false.

read_x_times(0):- true, !.
read_x_times(X):-
    Y is X - 1,
    read(N), read(M),
    assert(edge(N, M)), assert(edge(M, N)),
    read_x_times(Y).

path_x_times(0):- true, !.
path_x_times(X):- 
    Y is X - 1, 
    read(N), read(M),
    path(N, M),
    path_x_times(Y).

main:-
    % X is num of nodes, Y is num of edges
    read(X), read(Y),
    read_x_times(Y),
    read(Z),
    path_x_times(Z),
    halt;halt.

:- initialization(main).