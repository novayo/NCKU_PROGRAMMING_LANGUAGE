ancestor(A,B) :- parent(A,B). 
ancestor(A,B) :- parent(X,B), ancestor(A,X). 

lca(A,B) :- 
    A==B, write_ln(A);
    ancestor(A,B), write_ln(A);
    parent(X,A), lca(X,B).

read_x_times(1):- true, !.
read_x_times(X):-
    Y is X - 1,
    read(N), read(M),
    assert(parent(N, M)),
    read_x_times(Y).

lca_x_times(0):- true, !.
lca_x_times(X):- 
    Y is X - 1, 
    read(N), read(M),
    lca(N, M),
    lca_x_times(Y).

main:-
    read(X),
    read_x_times(X),
    read(Y),
    lca_x_times(Y),
    halt;halt.
:- initialization(main).