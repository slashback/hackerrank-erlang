% Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

filter_line(Limit) -> 
    case io:fread("", "~d") of
        {ok, [Num]} ->
            case Num < Limit of
                true -> io:format("~p~n", [Num]);
                false -> ok
            end,
            filter_line(Limit);
        eof -> ok
    end.

main() ->
    {ok, [Limit]} = io:fread("", "~d"),
    filter_line(Limit).
