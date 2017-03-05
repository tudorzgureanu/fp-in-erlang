-module(lists1).

-export([max_rec/1, max_tailrec/1, product_rec/1, product_tailrec/1]).

max_rec([X]) -> X;
max_rec([X|Xs]) -> max(X, max_rec(Xs)).

max_tailrec([X| Xs]) -> max_tailrec(Xs, X).

max_tailrec([], Max) -> Max;
max_tailrec([X| Xs], Max) -> max_tailrec(Xs, max(Max, X)).

product_rec([]) -> 1;
product_rec([X| Xs]) -> X * product_rec(Xs).

product_tailrec(Xs) -> product_tailrec(Xs, 1).

product_tailrec([], Prod) -> Prod;
product_tailrec([X| Xs], Prod) -> product_tailrec(Xs, X * Prod).
