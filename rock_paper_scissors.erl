-module(rock_paper_scissors).

-export([beat/1, lose/1, tournament/2, result/2]).

beat(rock) -> paper;
beat(paper) -> scissors;
beat(scissors) -> rock.

lose(rock) -> scissors;
lose(scissors) -> paper;
lose(paper) -> rock.

result(A, A) -> draw;
result(A, B) ->
  case lose(A) of
    B -> win;
    _ -> lose
  end.

resToInt(win) -> 1;
resToInt(lose) -> -1;
resToInt(draw) -> 0.

tournament(As, Bs) -> lists:foldl(fun (Current, Score) -> resToInt(Current) + Score end, 0, lists:zipwith(fun result/2, As, Bs)).
