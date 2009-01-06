-define(MARK, "PROCESSORMARK").
-define(CONNECT_OPTION, [list, inet, {active, false}]).

-define(SYM_SERVER_OPTION, [list, inet, {active, true}, {backlog, 10}, {reuseaddr, true}]).
-define(SYM_BANNER, "Asterisk Call Manager").
-define(SYM_VERSION, "1.0").
-define(SYM_REG_NAME, erlami_amisym).

-define(SYM_ACTION_FUNCTION_PREFIX, "a_").

-define(VARNAME_AMI_NAME, "asterisk-ami-name").

-record(client_session, {
		conn,
		username,
		secret,
		owner=undefined,
		data="",
		interp
	}).

-record(client_interp, {
        session,
        tid=0,
        evt_mngr=undefined,
        senders=undefined
    }).

