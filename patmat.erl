-module(patmat).

-export([is_zero/1, howManyEqual/3]).

is_zero(0) ->
    true;
is_zero(_) ->
    false.

howManyEqual(A, A, A) -> 3;
howManyEqual(A, A, _) -> 2;
howManyEqual(_, A, A) -> 2;
howManyEqual(A, _, A) -> 2;
howManyEqual(_, _, _) -> 0.
