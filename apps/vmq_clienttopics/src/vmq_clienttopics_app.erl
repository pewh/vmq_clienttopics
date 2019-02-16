%%%-------------------------------------------------------------------
%% @doc vmq_ClientTopics public API
%% @end
%%%-------------------------------------------------------------------

-module(vmq_clienttopics_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    vmq_clienttopics_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================



%% called as an 'all' hook, return value is ignored