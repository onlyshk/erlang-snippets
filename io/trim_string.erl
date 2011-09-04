%%
%% -*- erlang -*-
%%

%%Delete whitespace betwin word

trim(String)  ->
    String2 = lists:dropwhile(fun is_whitespace/1, String),
    lists:reverse(lists:dropwhile(fun is_whitespace/1, lists:reverse(String2))).

is_whitespace($\s) ->
    true;
is_whitespace($\t) ->
    true;
is_whitespace($\n) ->
    true;
is_whitespace($\r) ->
    true;
is_whitespace(_Else) ->
    false.
