-module(lists1).

-export([max_rec/1, max_tailrec/1]).

max_rec([X]) -> X;
max_rec([X|Xs]) -> max(X, max_rec(Xs)).

max_tailrec([X| Xs]) -> max_tailrec(Xs, X).

max_tailrec([], Max) -> Max;
max_tailrec([X| Xs], Max) -> max_tailrec(Xs, max(Max, X)).
