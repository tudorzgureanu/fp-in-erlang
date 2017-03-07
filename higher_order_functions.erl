-module(higher_order_functions).

-export([doubleAll/1, evens/1, product/1]).

doubleAll(Xs) -> lists:map(fun (X) -> X * 2 end, Xs).
evens(Xs) -> lists:filter(fun (X) -> X rem 2 == 0 end, Xs).
product(Xs) -> lists:foldl(fun (X, Acc) -> X * Acc end, 1, Xs).
