%%
%% -*- erlang -*-
%%

%% Output cyrillic string

-module(cyrillic).

-export([cyrillic/1]).

cyrillic(String) ->
    CyrString = unicode:characters_to_binary(String),
    io:format(CyrString).
