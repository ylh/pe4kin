%%%-------------------------------------------------------------------
%% @doc pe4kin application public API
%% @end
%%%-------------------------------------------------------------------

-module(pe4kin_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    pe4kin_http:start_pool(),
    pe4kin_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    pe4kin_http:stop_pool(),
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
