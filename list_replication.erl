% Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

multiple_print(0, _) -> ok;
multiple_print(Cnt, Char) ->
    io:format("~p~n", [Char]),
    multiple_print(Cnt-1, Char).

read_line(Cnt) ->
    case io:fread("", "~d") of
        {ok, [Char]} ->     
            multiple_print(Cnt, Char),
            read_line(Cnt);
        eof -> ok
    end.

main() ->
    {ok, [Cnt]} = io:fread("", "~d"),
    read_line(Cnt).
