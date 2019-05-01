div(X,Y) :- 0 is X mod Y ; X > Y+1, div(X, Y+1).
isPrime(X) :- X=<2, X=\=1, !.
isPrime(X) :- X>2, not(div(X, 2)). 

% X is input, Y is 2 ~ input
from_2_to_input(X, Y):- X==Y, !, false.
from_2_to_input(X, Y):-
    isPrime(Y), N is X-Y, isPrime(N), write(Y), write(" "), write(N), nl;
    M is Y+1, from_2_to_input(X, M).

main:-
    read(X),
    0 is X mod 2, X > 3, from_2_to_input(X, 2),
    halt;halt.
:- initialization(main).