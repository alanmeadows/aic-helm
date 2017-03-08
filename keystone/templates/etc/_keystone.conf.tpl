[DEFAULT]

#
# From oslo.log
#

# If set to true, the logging level will be set to DEBUG instead of the default
# INFO level. (boolean value)
# Note: This option can be changed without restarting.
# from .Values.conf.default.oslo.log.debug
{{ if not .Values.conf.default.oslo.log.debug }}#{{ end }}debug = {{ .Values.conf.default.oslo.log.debug | default "false" }}

# DEPRECATED: If set to false, the logging level will be set to WARNING instead
# of the default INFO level. (boolean value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# from .Values.conf.default.oslo.log.verbose
{{ if not .Values.conf.default.oslo.log.verbose }}#{{ end }}verbose = {{ .Values.conf.default.oslo.log.verbose | default "true" }}

# The name of a logging configuration file. This file is appended to any
# existing logging configuration files. For details about logging configuration
# files, see the Python logging module documentation. Note that when logging
# configuration files are used then all logging configuration is set in the
# configuration file and other logging configuration options are ignored (for
# example, logging_context_format_string). (string value)
# Note: This option can be changed without restarting.
# Deprecated group/name - [DEFAULT]/log_config
# from .Values.conf.default.oslo.log.log_config_append
{{ if not .Values.conf.default.oslo.log.log_config_append }}#{{ end }}log_config_append = {{ .Values.conf.default.oslo.log.log_config_append | default "<None>" }}

# Defines the format string for %%(asctime)s in log records. Default:
# %(default)s . This option is ignored if log_config_append is set. (string
# value)
# from .Values.conf.default.oslo.log.log_date_format
{{ if not .Values.conf.default.oslo.log.log_date_format }}#{{ end }}log_date_format = {{ .Values.conf.default.oslo.log.log_date_format | default "%Y-%m-%d %H:%M:%S" }}

# (Optional) Name of log file to send logging output to. If no default is set,
# logging will go to stderr as defined by use_stderr. This option is ignored if
# log_config_append is set. (string value)
# Deprecated group/name - [DEFAULT]/logfile
# from .Values.conf.default.oslo.log.log_file
{{ if not .Values.conf.default.oslo.log.log_file }}#{{ end }}log_file = {{ .Values.conf.default.oslo.log.log_file | default "<None>" }}

# (Optional) The base directory used for relative log_file  paths. This option
# is ignored if log_config_append is set. (string value)
# Deprecated group/name - [DEFAULT]/logdir
# from .Values.conf.default.oslo.log.log_dir
{{ if not .Values.conf.default.oslo.log.log_dir }}#{{ end }}log_dir = {{ .Values.conf.default.oslo.log.log_dir | default "<None>" }}

# Uses logging handler designed to watch file system. When log file is moved or
# removed this handler will open a new log file with specified path
# instantaneously. It makes sense only if log_file option is specified and
# Linux platform is used. This option is ignored if log_config_append is set.
# (boolean value)
# from .Values.conf.default.oslo.log.watch_log_file
{{ if not .Values.conf.default.oslo.log.watch_log_file }}#{{ end }}watch_log_file = {{ .Values.conf.default.oslo.log.watch_log_file | default "false" }}

# Use syslog for logging. Existing syslog format is DEPRECATED and will be
# changed later to honor RFC5424. This option is ignored if log_config_append
# is set. (boolean value)
# from .Values.conf.default.oslo.log.use_syslog
{{ if not .Values.conf.default.oslo.log.use_syslog }}#{{ end }}use_syslog = {{ .Values.conf.default.oslo.log.use_syslog | default "false" }}

# Syslog facility to receive log lines. This option is ignored if
# log_config_append is set. (string value)
# from .Values.conf.default.oslo.log.syslog_log_facility
{{ if not .Values.conf.default.oslo.log.syslog_log_facility }}#{{ end }}syslog_log_facility = {{ .Values.conf.default.oslo.log.syslog_log_facility | default "LOG_USER" }}

# Log output to standard error. This option is ignored if log_config_append is
# set. (boolean value)
# from .Values.conf.default.oslo.log.use_stderr
{{ if not .Values.conf.default.oslo.log.use_stderr }}#{{ end }}use_stderr = {{ .Values.conf.default.oslo.log.use_stderr | default "false" }}

# Format string to use for log messages with context. (string value)
# from .Values.conf.default.oslo.log.logging_context_format_string
{{ if not .Values.conf.default.oslo.log.logging_context_format_string }}#{{ end }}logging_context_format_string = {{ .Values.conf.default.oslo.log.logging_context_format_string | default "%(asctime)s.%(msecs)03d %(process)d %(levelname)s %(name)s [%(request_id)s %(user_identity)s] %(instance)s%(message)s" }}

# Format string to use for log messages when context is undefined. (string
# value)
# from .Values.conf.default.oslo.log.logging_default_format_string
{{ if not .Values.conf.default.oslo.log.logging_default_format_string }}#{{ end }}logging_default_format_string = {{ .Values.conf.default.oslo.log.logging_default_format_string | default "%(asctime)s.%(msecs)03d %(process)d %(levelname)s %(name)s [-] %(instance)s%(message)s" }}

# Additional data to append to log message when logging level for the message
# is DEBUG. (string value)
# from .Values.conf.default.oslo.log.logging_debug_format_suffix
{{ if not .Values.conf.default.oslo.log.logging_debug_format_suffix }}#{{ end }}logging_debug_format_suffix = {{ .Values.conf.default.oslo.log.logging_debug_format_suffix | default "%(funcName)s %(pathname)s:%(lineno)d" }}

# Prefix each line of exception output with this format. (string value)
# from .Values.conf.default.oslo.log.logging_exception_prefix
{{ if not .Values.conf.default.oslo.log.logging_exception_prefix }}#{{ end }}logging_exception_prefix = {{ .Values.conf.default.oslo.log.logging_exception_prefix | default "%(asctime)s.%(msecs)03d %(process)d ERROR %(name)s %(instance)s" }}

# Defines the format string for %(user_identity)s that is used in
# logging_context_format_string. (string value)
# from .Values.conf.default.oslo.log.logging_user_identity_format
{{ if not .Values.conf.default.oslo.log.logging_user_identity_format }}#{{ end }}logging_user_identity_format = {{ .Values.conf.default.oslo.log.logging_user_identity_format | default "%(user)s %(tenant)s %(domain)s %(user_domain)s %(project_domain)s" }}

# List of package logging levels in logger=LEVEL pairs. This option is ignored
# if log_config_append is set. (list value)
# from .Values.conf.default.oslo.log.default_log_levels
{{ if not .Values.conf.default.oslo.log.default_log_levels }}#{{ end }}default_log_levels = {{ .Values.conf.default.oslo.log.default_log_levels | default "amqp=WARN,amqplib=WARN,boto=WARN,qpid=WARN,sqlalchemy=WARN,suds=INFO,oslo.messaging=INFO,iso8601=WARN,requests.packages.urllib3.connectionpool=WARN,urllib3.connectionpool=WARN,websocket=WARN,requests.packages.urllib3.util.retry=WARN,urllib3.util.retry=WARN,keystonemiddleware=WARN,routes.middleware=WARN,stevedore=WARN,taskflow=WARN,keystoneauth=WARN,oslo.cache=INFO,dogpile.core.dogpile=INFO" }}

# Enables or disables publication of error events. (boolean value)
# from .Values.conf.default.oslo.log.publish_errors
{{ if not .Values.conf.default.oslo.log.publish_errors }}#{{ end }}publish_errors = {{ .Values.conf.default.oslo.log.publish_errors | default "false" }}

# The format for an instance that is passed with the log message. (string
# value)
# from .Values.conf.default.oslo.log.instance_format
{{ if not .Values.conf.default.oslo.log.instance_format }}#{{ end }}instance_format = {{ .Values.conf.default.oslo.log.instance_format | default "\"[instance: %(uuid)s] \"" }}

# The format for an instance UUID that is passed with the log message. (string
# value)
# from .Values.conf.default.oslo.log.instance_uuid_format
{{ if not .Values.conf.default.oslo.log.instance_uuid_format }}#{{ end }}instance_uuid_format = {{ .Values.conf.default.oslo.log.instance_uuid_format | default "\"[instance: %(uuid)s] \"" }}

# Interval, number of seconds, of log rate limiting. (integer value)
# from .Values.conf.default.oslo.log.rate_limit_interval
{{ if not .Values.conf.default.oslo.log.rate_limit_interval }}#{{ end }}rate_limit_interval = {{ .Values.conf.default.oslo.log.rate_limit_interval | default "0" }}

# Maximum number of logged messages per rate_limit_interval. (integer value)
# from .Values.conf.default.oslo.log.rate_limit_burst
{{ if not .Values.conf.default.oslo.log.rate_limit_burst }}#{{ end }}rate_limit_burst = {{ .Values.conf.default.oslo.log.rate_limit_burst | default "0" }}

# Log level name used by rate limiting: CRITICAL, ERROR, INFO, WARNING, DEBUG
# or empty string. Logs with level greater or equal to rate_limit_except_level
# are not filtered. An empty string means that all levels are filtered. (string
# value)
# from .Values.conf.default.oslo.log.rate_limit_except_level
{{ if not .Values.conf.default.oslo.log.rate_limit_except_level }}#{{ end }}rate_limit_except_level = {{ .Values.conf.default.oslo.log.rate_limit_except_level | default "CRITICAL" }}

# Enables or disables fatal status of deprecations. (boolean value)
# from .Values.conf.default.oslo.log.fatal_deprecations
{{ if not .Values.conf.default.oslo.log.fatal_deprecations }}#{{ end }}fatal_deprecations = {{ .Values.conf.default.oslo.log.fatal_deprecations | default "false" }}

#
# From oslo.messaging
#

# Size of RPC connection pool. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_conn_pool_size
# from .Values.conf.default.oslo.messaging.rpc_conn_pool_size
{{ if not .Values.conf.default.oslo.messaging.rpc_conn_pool_size }}#{{ end }}rpc_conn_pool_size = {{ .Values.conf.default.oslo.messaging.rpc_conn_pool_size | default "30" }}

# The pool size limit for connections expiration policy (integer value)
# from .Values.conf.default.oslo.messaging.conn_pool_min_size
{{ if not .Values.conf.default.oslo.messaging.conn_pool_min_size }}#{{ end }}conn_pool_min_size = {{ .Values.conf.default.oslo.messaging.conn_pool_min_size | default "2" }}

# The time-to-live in sec of idle connections in the pool (integer value)
# from .Values.conf.default.oslo.messaging.conn_pool_ttl
{{ if not .Values.conf.default.oslo.messaging.conn_pool_ttl }}#{{ end }}conn_pool_ttl = {{ .Values.conf.default.oslo.messaging.conn_pool_ttl | default "1200" }}

# ZeroMQ bind address. Should be a wildcard (*), an ethernet interface, or IP.
# The "host" option should point or resolve to this address. (string value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_bind_address
# from .Values.conf.default.oslo.messaging.rpc_zmq_bind_address
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_bind_address }}#{{ end }}rpc_zmq_bind_address = {{ .Values.conf.default.oslo.messaging.rpc_zmq_bind_address | default "*" }}

# MatchMaker driver. (string value)
# Allowed values: redis, sentinel, dummy
# Deprecated group/name - [DEFAULT]/rpc_zmq_matchmaker
# from .Values.conf.default.oslo.messaging.rpc_zmq_matchmaker
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_matchmaker }}#{{ end }}rpc_zmq_matchmaker = {{ .Values.conf.default.oslo.messaging.rpc_zmq_matchmaker | default "redis" }}

# Number of ZeroMQ contexts, defaults to 1. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_contexts
# from .Values.conf.default.oslo.messaging.rpc_zmq_contexts
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_contexts }}#{{ end }}rpc_zmq_contexts = {{ .Values.conf.default.oslo.messaging.rpc_zmq_contexts | default "1" }}

# Maximum number of ingress messages to locally buffer per topic. Default is
# unlimited. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_topic_backlog
# from .Values.conf.default.oslo.messaging.rpc_zmq_topic_backlog
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_topic_backlog }}#{{ end }}rpc_zmq_topic_backlog = {{ .Values.conf.default.oslo.messaging.rpc_zmq_topic_backlog | default "<None>" }}

# Directory for holding IPC sockets. (string value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_ipc_dir
# from .Values.conf.default.oslo.messaging.rpc_zmq_ipc_dir
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_ipc_dir }}#{{ end }}rpc_zmq_ipc_dir = {{ .Values.conf.default.oslo.messaging.rpc_zmq_ipc_dir | default "/var/run/openstack" }}

# Name of this node. Must be a valid hostname, FQDN, or IP address. Must match
# "host" option, if running Nova. (string value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_host
# from .Values.conf.default.oslo.messaging.rpc_zmq_host
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_host }}#{{ end }}rpc_zmq_host = {{ .Values.conf.default.oslo.messaging.rpc_zmq_host | default "localhost" }}

# Number of seconds to wait before all pending messages will be sent after
# closing a socket. The default value of -1 specifies an infinite linger
# period. The value of 0 specifies no linger period. Pending messages shall be
# discarded immediately when the socket is closed. Positive values specify an
# upper bound for the linger period. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_cast_timeout
# from .Values.conf.default.oslo.messaging.zmq_linger
{{ if not .Values.conf.default.oslo.messaging.zmq_linger }}#{{ end }}zmq_linger = {{ .Values.conf.default.oslo.messaging.zmq_linger | default "-1" }}

# The default number of seconds that poll should wait. Poll raises timeout
# exception when timeout expired. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_poll_timeout
# from .Values.conf.default.oslo.messaging.rpc_poll_timeout
{{ if not .Values.conf.default.oslo.messaging.rpc_poll_timeout }}#{{ end }}rpc_poll_timeout = {{ .Values.conf.default.oslo.messaging.rpc_poll_timeout | default "1" }}

# Expiration timeout in seconds of a name service record about existing target
# ( < 0 means no timeout). (integer value)
# Deprecated group/name - [DEFAULT]/zmq_target_expire
# from .Values.conf.default.oslo.messaging.zmq_target_expire
{{ if not .Values.conf.default.oslo.messaging.zmq_target_expire }}#{{ end }}zmq_target_expire = {{ .Values.conf.default.oslo.messaging.zmq_target_expire | default "300" }}

# Update period in seconds of a name service record about existing target.
# (integer value)
# Deprecated group/name - [DEFAULT]/zmq_target_update
# from .Values.conf.default.oslo.messaging.zmq_target_update
{{ if not .Values.conf.default.oslo.messaging.zmq_target_update }}#{{ end }}zmq_target_update = {{ .Values.conf.default.oslo.messaging.zmq_target_update | default "180" }}

# Use PUB/SUB pattern for fanout methods. PUB/SUB always uses proxy. (boolean
# value)
# Deprecated group/name - [DEFAULT]/use_pub_sub
# from .Values.conf.default.oslo.messaging.use_pub_sub
{{ if not .Values.conf.default.oslo.messaging.use_pub_sub }}#{{ end }}use_pub_sub = {{ .Values.conf.default.oslo.messaging.use_pub_sub | default "false" }}

# Use ROUTER remote proxy. (boolean value)
# Deprecated group/name - [DEFAULT]/use_router_proxy
# from .Values.conf.default.oslo.messaging.use_router_proxy
{{ if not .Values.conf.default.oslo.messaging.use_router_proxy }}#{{ end }}use_router_proxy = {{ .Values.conf.default.oslo.messaging.use_router_proxy | default "false" }}

# This option makes direct connections dynamic or static. It makes sense only
# with use_router_proxy=False which means to use direct connections for direct
# message types (ignored otherwise). (boolean value)
# from .Values.conf.default.oslo.messaging.use_dynamic_connections
{{ if not .Values.conf.default.oslo.messaging.use_dynamic_connections }}#{{ end }}use_dynamic_connections = {{ .Values.conf.default.oslo.messaging.use_dynamic_connections | default "false" }}

# How many additional connections to a host will be made for failover reasons.
# This option is actual only in dynamic connections mode. (integer value)
# from .Values.conf.default.oslo.messaging.zmq_failover_connections
{{ if not .Values.conf.default.oslo.messaging.zmq_failover_connections }}#{{ end }}zmq_failover_connections = {{ .Values.conf.default.oslo.messaging.zmq_failover_connections | default "2" }}

# Minimal port number for random ports range. (port value)
# Minimum value: 0
# Maximum value: 65535
# Deprecated group/name - [DEFAULT]/rpc_zmq_min_port
# from .Values.conf.default.oslo.messaging.rpc_zmq_min_port
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_min_port }}#{{ end }}rpc_zmq_min_port = {{ .Values.conf.default.oslo.messaging.rpc_zmq_min_port | default "49153" }}

# Maximal port number for random ports range. (integer value)
# Minimum value: 1
# Maximum value: 65536
# Deprecated group/name - [DEFAULT]/rpc_zmq_max_port
# from .Values.conf.default.oslo.messaging.rpc_zmq_max_port
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_max_port }}#{{ end }}rpc_zmq_max_port = {{ .Values.conf.default.oslo.messaging.rpc_zmq_max_port | default "65536" }}

# Number of retries to find free port number before fail with ZMQBindError.
# (integer value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_bind_port_retries
# from .Values.conf.default.oslo.messaging.rpc_zmq_bind_port_retries
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_bind_port_retries }}#{{ end }}rpc_zmq_bind_port_retries = {{ .Values.conf.default.oslo.messaging.rpc_zmq_bind_port_retries | default "100" }}

# Default serialization mechanism for serializing/deserializing
# outgoing/incoming messages (string value)
# Allowed values: json, msgpack
# Deprecated group/name - [DEFAULT]/rpc_zmq_serialization
# from .Values.conf.default.oslo.messaging.rpc_zmq_serialization
{{ if not .Values.conf.default.oslo.messaging.rpc_zmq_serialization }}#{{ end }}rpc_zmq_serialization = {{ .Values.conf.default.oslo.messaging.rpc_zmq_serialization | default "json" }}

# This option configures round-robin mode in zmq socket. True means not keeping
# a queue when server side disconnects. False means to keep queue and messages
# even if server is disconnected, when the server appears we send all
# accumulated messages to it. (boolean value)
# from .Values.conf.default.oslo.messaging.zmq_immediate
{{ if not .Values.conf.default.oslo.messaging.zmq_immediate }}#{{ end }}zmq_immediate = {{ .Values.conf.default.oslo.messaging.zmq_immediate | default "true" }}

# Enable/disable TCP keepalive (KA) mechanism. The default value of -1 (or any
# other negative value) means to skip any overrides and leave it to OS default;
# 0 and 1 (or any other positive value) mean to disable and enable the option
# respectively. (integer value)
# from .Values.conf.default.oslo.messaging.zmq_tcp_keepalive
{{ if not .Values.conf.default.oslo.messaging.zmq_tcp_keepalive }}#{{ end }}zmq_tcp_keepalive = {{ .Values.conf.default.oslo.messaging.zmq_tcp_keepalive | default "-1" }}

# The duration between two keepalive transmissions in idle condition. The unit
# is platform dependent, for example, seconds in Linux, milliseconds in Windows
# etc. The default value of -1 (or any other negative value and 0) means to
# skip any overrides and leave it to OS default. (integer value)
# from .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_idle
{{ if not .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_idle }}#{{ end }}zmq_tcp_keepalive_idle = {{ .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_idle | default "-1" }}

# The number of retransmissions to be carried out before declaring that remote
# end is not available. The default value of -1 (or any other negative value
# and 0) means to skip any overrides and leave it to OS default. (integer
# value)
# from .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_cnt
{{ if not .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_cnt }}#{{ end }}zmq_tcp_keepalive_cnt = {{ .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_cnt | default "-1" }}

# The duration between two successive keepalive retransmissions, if
# acknowledgement to the previous keepalive transmission is not received. The
# unit is platform dependent, for example, seconds in Linux, milliseconds in
# Windows etc. The default value of -1 (or any other negative value and 0)
# means to skip any overrides and leave it to OS default. (integer value)
# from .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_intvl
{{ if not .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_intvl }}#{{ end }}zmq_tcp_keepalive_intvl = {{ .Values.conf.default.oslo.messaging.zmq_tcp_keepalive_intvl | default "-1" }}

# Maximum number of (green) threads to work concurrently. (integer value)
# from .Values.conf.default.oslo.messaging.rpc_thread_pool_size
{{ if not .Values.conf.default.oslo.messaging.rpc_thread_pool_size }}#{{ end }}rpc_thread_pool_size = {{ .Values.conf.default.oslo.messaging.rpc_thread_pool_size | default "100" }}

# Expiration timeout in seconds of a sent/received message after which it is
# not tracked anymore by a client/server. (integer value)
# from .Values.conf.default.oslo.messaging.rpc_message_ttl
{{ if not .Values.conf.default.oslo.messaging.rpc_message_ttl }}#{{ end }}rpc_message_ttl = {{ .Values.conf.default.oslo.messaging.rpc_message_ttl | default "300" }}

# Wait for message acknowledgements from receivers. This mechanism works only
# via proxy without PUB/SUB. (boolean value)
# from .Values.conf.default.oslo.messaging.rpc_use_acks
{{ if not .Values.conf.default.oslo.messaging.rpc_use_acks }}#{{ end }}rpc_use_acks = {{ .Values.conf.default.oslo.messaging.rpc_use_acks | default "false" }}

# Number of seconds to wait for an ack from a cast/call. After each retry
# attempt this timeout is multiplied by some specified multiplier. (integer
# value)
# from .Values.conf.default.oslo.messaging.rpc_ack_timeout_base
{{ if not .Values.conf.default.oslo.messaging.rpc_ack_timeout_base }}#{{ end }}rpc_ack_timeout_base = {{ .Values.conf.default.oslo.messaging.rpc_ack_timeout_base | default "15" }}

# Number to multiply base ack timeout by after each retry attempt. (integer
# value)
# from .Values.conf.default.oslo.messaging.rpc_ack_timeout_multiplier
{{ if not .Values.conf.default.oslo.messaging.rpc_ack_timeout_multiplier }}#{{ end }}rpc_ack_timeout_multiplier = {{ .Values.conf.default.oslo.messaging.rpc_ack_timeout_multiplier | default "2" }}

# Default number of message sending attempts in case of any problems occurred:
# positive value N means at most N retries, 0 means no retries, None or -1 (or
# any other negative values) mean to retry forever. This option is used only if
# acknowledgments are enabled. (integer value)
# from .Values.conf.default.oslo.messaging.rpc_retry_attempts
{{ if not .Values.conf.default.oslo.messaging.rpc_retry_attempts }}#{{ end }}rpc_retry_attempts = {{ .Values.conf.default.oslo.messaging.rpc_retry_attempts | default "3" }}

# List of publisher hosts SubConsumer can subscribe on. This option has higher
# priority then the default publishers list taken from the matchmaker. (list
# value)
# from .Values.conf.default.oslo.messaging.subscribe_on
{{ if not .Values.conf.default.oslo.messaging.subscribe_on }}#{{ end }}subscribe_on = {{ .Values.conf.default.oslo.messaging.subscribe_on | default "" }}

# Size of executor thread pool. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_thread_pool_size
# from .Values.conf.default.oslo.messaging.executor_thread_pool_size
{{ if not .Values.conf.default.oslo.messaging.executor_thread_pool_size }}#{{ end }}executor_thread_pool_size = {{ .Values.conf.default.oslo.messaging.executor_thread_pool_size | default "64" }}

# Seconds to wait for a response from a call. (integer value)
# from .Values.conf.default.oslo.messaging.rpc_response_timeout
{{ if not .Values.conf.default.oslo.messaging.rpc_response_timeout }}#{{ end }}rpc_response_timeout = {{ .Values.conf.default.oslo.messaging.rpc_response_timeout | default "60" }}

# A URL representing the messaging driver to use and its full configuration.
# (string value)
# from .Values.conf.default.oslo.messaging.transport_url
{{ if not .Values.conf.default.oslo.messaging.transport_url }}#{{ end }}transport_url = {{ .Values.conf.default.oslo.messaging.transport_url | default "<None>" }}

# DEPRECATED: The messaging driver to use, defaults to rabbit. Other drivers
# include amqp and zmq. (string value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.default.oslo.messaging.rpc_backend
{{ if not .Values.conf.default.oslo.messaging.rpc_backend }}#{{ end }}rpc_backend = {{ .Values.conf.default.oslo.messaging.rpc_backend | default "rabbit" }}

# The default exchange under which topics are scoped. May be overridden by an
# exchange name specified in the transport_url option. (string value)
# from .Values.conf.default.oslo.messaging.control_exchange
{{ if not .Values.conf.default.oslo.messaging.control_exchange }}#{{ end }}control_exchange = {{ .Values.conf.default.oslo.messaging.control_exchange | default "openstack" }}


[cache]

#
# From oslo.cache
#

# Prefix for building the configuration dictionary for the cache region. This
# should not need to be changed unless there is another dogpile.cache region
# with the same configuration name. (string value)
# from .Values.conf.cache.oslo.cache.config_prefix
{{ if not .Values.conf.cache.oslo.cache.config_prefix }}#{{ end }}config_prefix = {{ .Values.conf.cache.oslo.cache.config_prefix | default "cache.oslo" }}

# Default TTL, in seconds, for any cached item in the dogpile.cache region.
# This applies to any cached method that doesn't have an explicit cache
# expiration time defined for it. (integer value)
# from .Values.conf.cache.oslo.cache.expiration_time
{{ if not .Values.conf.cache.oslo.cache.expiration_time }}#{{ end }}expiration_time = {{ .Values.conf.cache.oslo.cache.expiration_time | default "600" }}

# Dogpile.cache backend module. It is recommended that Memcache or Redis
# (dogpile.cache.redis) be used in production deployments. For eventlet-based
# or highly threaded servers, Memcache with pooling (oslo_cache.memcache_pool)
# is recommended. For low thread servers, dogpile.cache.memcached is
# recommended. Test environments with a single instance of the server can use
# the dogpile.cache.memory backend. (string value)
# from .Values.conf.cache.oslo.cache.backend
{{ if not .Values.conf.cache.oslo.cache.backend }}#{{ end }}backend = {{ .Values.conf.cache.oslo.cache.backend | default "dogpile.cache.null" }}

# Arguments supplied to the backend module. Specify this option once per
# argument to be passed to the dogpile.cache backend. Example format:
# "<argname>:<value>". (multi valued)
# from .Values.conf.cache.oslo.cache.backend_argument
{{ if not .Values.conf.cache.oslo.cache.backend_argument }}#{{ end }}backend_argument = {{ .Values.conf.cache.oslo.cache.backend_argument | default "" }}

# Proxy classes to import that will affect the way the dogpile.cache backend
# functions. See the dogpile.cache documentation on changing-backend-behavior.
# (list value)
# from .Values.conf.cache.oslo.cache.proxies
{{ if not .Values.conf.cache.oslo.cache.proxies }}#{{ end }}proxies = {{ .Values.conf.cache.oslo.cache.proxies | default "" }}

# Global toggle for caching. (boolean value)
# from .Values.conf.cache.oslo.cache.enabled
{{ if not .Values.conf.cache.oslo.cache.enabled }}#{{ end }}enabled = {{ .Values.conf.cache.oslo.cache.enabled | default "false" }}

# Extra debugging from the cache backend (cache keys, get/set/delete/etc
# calls). This is only really useful if you need to see the specific cache-
# backend get/set/delete calls with the keys/values.  Typically this should be
# left set to false. (boolean value)
# from .Values.conf.cache.oslo.cache.debug_cache_backend
{{ if not .Values.conf.cache.oslo.cache.debug_cache_backend }}#{{ end }}debug_cache_backend = {{ .Values.conf.cache.oslo.cache.debug_cache_backend | default "false" }}

# Memcache servers in the format of "host:port". (dogpile.cache.memcache and
# oslo_cache.memcache_pool backends only). (list value)
# from .Values.conf.cache.oslo.cache.memcache_servers
{{ if not .Values.conf.cache.oslo.cache.memcache_servers }}#{{ end }}memcache_servers = {{ .Values.conf.cache.oslo.cache.memcache_servers | default "localhost:11211" }}

# Number of seconds memcached server is considered dead before it is tried
# again. (dogpile.cache.memcache and oslo_cache.memcache_pool backends only).
# (integer value)
# from .Values.conf.cache.oslo.cache.memcache_dead_retry
{{ if not .Values.conf.cache.oslo.cache.memcache_dead_retry }}#{{ end }}memcache_dead_retry = {{ .Values.conf.cache.oslo.cache.memcache_dead_retry | default "300" }}

# Timeout in seconds for every call to a server. (dogpile.cache.memcache and
# oslo_cache.memcache_pool backends only). (integer value)
# from .Values.conf.cache.oslo.cache.memcache_socket_timeout
{{ if not .Values.conf.cache.oslo.cache.memcache_socket_timeout }}#{{ end }}memcache_socket_timeout = {{ .Values.conf.cache.oslo.cache.memcache_socket_timeout | default "3" }}

# Max total number of open connections to every memcached server.
# (oslo_cache.memcache_pool backend only). (integer value)
# from .Values.conf.cache.oslo.cache.memcache_pool_maxsize
{{ if not .Values.conf.cache.oslo.cache.memcache_pool_maxsize }}#{{ end }}memcache_pool_maxsize = {{ .Values.conf.cache.oslo.cache.memcache_pool_maxsize | default "10" }}

# Number of seconds a connection to memcached is held unused in the pool before
# it is closed. (oslo_cache.memcache_pool backend only). (integer value)
# from .Values.conf.cache.oslo.cache.memcache_pool_unused_timeout
{{ if not .Values.conf.cache.oslo.cache.memcache_pool_unused_timeout }}#{{ end }}memcache_pool_unused_timeout = {{ .Values.conf.cache.oslo.cache.memcache_pool_unused_timeout | default "60" }}

# Number of seconds that an operation will wait to get a memcache client
# connection. (integer value)
# from .Values.conf.cache.oslo.cache.memcache_pool_connection_get_timeout
{{ if not .Values.conf.cache.oslo.cache.memcache_pool_connection_get_timeout }}#{{ end }}memcache_pool_connection_get_timeout = {{ .Values.conf.cache.oslo.cache.memcache_pool_connection_get_timeout | default "10" }}


[cors]

#
# From oslo.middleware
#

# Indicate whether this resource may be shared with the domain received in the
# requests "origin" header. Format: "<protocol>://<host>[:<port>]", no trailing
# slash. Example: https://horizon.example.com (list value)
# from .Values.conf.cors.oslo.middleware.allowed_origin
{{ if not .Values.conf.cors.oslo.middleware.allowed_origin }}#{{ end }}allowed_origin = {{ .Values.conf.cors.oslo.middleware.allowed_origin | default "<None>" }}

# Indicate that the actual request can include user credentials (boolean value)
# from .Values.conf.cors.oslo.middleware.allow_credentials
{{ if not .Values.conf.cors.oslo.middleware.allow_credentials }}#{{ end }}allow_credentials = {{ .Values.conf.cors.oslo.middleware.allow_credentials | default "true" }}

# Indicate which headers are safe to expose to the API. Defaults to HTTP Simple
# Headers. (list value)
# from .Values.conf.cors.oslo.middleware.expose_headers
{{ if not .Values.conf.cors.oslo.middleware.expose_headers }}#{{ end }}expose_headers = {{ .Values.conf.cors.oslo.middleware.expose_headers | default "" }}

# Maximum cache age of CORS preflight requests. (integer value)
# from .Values.conf.cors.oslo.middleware.max_age
{{ if not .Values.conf.cors.oslo.middleware.max_age }}#{{ end }}max_age = {{ .Values.conf.cors.oslo.middleware.max_age | default "3600" }}

# Indicate which methods can be used during the actual request. (list value)
# from .Values.conf.cors.oslo.middleware.allow_methods
{{ if not .Values.conf.cors.oslo.middleware.allow_methods }}#{{ end }}allow_methods = {{ .Values.conf.cors.oslo.middleware.allow_methods | default "OPTIONS,GET,HEAD,POST,PUT,DELETE,TRACE,PATCH" }}

# Indicate which header field names may be used during the actual request.
# (list value)
# from .Values.conf.cors.oslo.middleware.allow_headers
{{ if not .Values.conf.cors.oslo.middleware.allow_headers }}#{{ end }}allow_headers = {{ .Values.conf.cors.oslo.middleware.allow_headers | default "" }}


[cors.subdomain]

#
# From oslo.middleware
#

# Indicate whether this resource may be shared with the domain received in the
# requests "origin" header. Format: "<protocol>://<host>[:<port>]", no trailing
# slash. Example: https://horizon.example.com (list value)
# from .Values.conf.cors.subdomain.oslo.middleware.allowed_origin
{{ if not .Values.conf.cors.subdomain.oslo.middleware.allowed_origin }}#{{ end }}allowed_origin = {{ .Values.conf.cors.subdomain.oslo.middleware.allowed_origin | default "<None>" }}

# Indicate that the actual request can include user credentials (boolean value)
# from .Values.conf.cors.subdomain.oslo.middleware.allow_credentials
{{ if not .Values.conf.cors.subdomain.oslo.middleware.allow_credentials }}#{{ end }}allow_credentials = {{ .Values.conf.cors.subdomain.oslo.middleware.allow_credentials | default "true" }}

# Indicate which headers are safe to expose to the API. Defaults to HTTP Simple
# Headers. (list value)
# from .Values.conf.cors.subdomain.oslo.middleware.expose_headers
{{ if not .Values.conf.cors.subdomain.oslo.middleware.expose_headers }}#{{ end }}expose_headers = {{ .Values.conf.cors.subdomain.oslo.middleware.expose_headers | default "" }}

# Maximum cache age of CORS preflight requests. (integer value)
# from .Values.conf.cors.subdomain.oslo.middleware.max_age
{{ if not .Values.conf.cors.subdomain.oslo.middleware.max_age }}#{{ end }}max_age = {{ .Values.conf.cors.subdomain.oslo.middleware.max_age | default "3600" }}

# Indicate which methods can be used during the actual request. (list value)
# from .Values.conf.cors.subdomain.oslo.middleware.allow_methods
{{ if not .Values.conf.cors.subdomain.oslo.middleware.allow_methods }}#{{ end }}allow_methods = {{ .Values.conf.cors.subdomain.oslo.middleware.allow_methods | default "OPTIONS,GET,HEAD,POST,PUT,DELETE,TRACE,PATCH" }}

# Indicate which header field names may be used during the actual request.
# (list value)
# from .Values.conf.cors.subdomain.oslo.middleware.allow_headers
{{ if not .Values.conf.cors.subdomain.oslo.middleware.allow_headers }}#{{ end }}allow_headers = {{ .Values.conf.cors.subdomain.oslo.middleware.allow_headers | default "" }}


[database]

#
# From oslo.db
#

# DEPRECATED: The file name to use with SQLite. (string value)
# Deprecated group/name - [DEFAULT]/sqlite_db
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Should use config option connection or slave_connection to connect
# the database.
# from .Values.conf.database.oslo.db.sqlite_db
{{ if not .Values.conf.database.oslo.db.sqlite_db }}#{{ end }}sqlite_db = {{ .Values.conf.database.oslo.db.sqlite_db | default "oslo.sqlite" }}

# If True, SQLite uses synchronous mode. (boolean value)
# Deprecated group/name - [DEFAULT]/sqlite_synchronous
# from .Values.conf.database.oslo.db.sqlite_synchronous
{{ if not .Values.conf.database.oslo.db.sqlite_synchronous }}#{{ end }}sqlite_synchronous = {{ .Values.conf.database.oslo.db.sqlite_synchronous | default "true" }}

# The back end to use for the database. (string value)
# Deprecated group/name - [DEFAULT]/db_backend
# from .Values.conf.database.oslo.db.backend
{{ if not .Values.conf.database.oslo.db.backend }}#{{ end }}backend = {{ .Values.conf.database.oslo.db.backend | default "sqlalchemy" }}

# The SQLAlchemy connection string to use to connect to the database. (string
# value)
# Deprecated group/name - [DEFAULT]/sql_connection
# Deprecated group/name - [DATABASE]/sql_connection
# Deprecated group/name - [sql]/connection
# from .Values.conf.database.oslo.db.connection
{{ if not .Values.conf.database.oslo.db.connection }}#{{ end }}connection = {{ .Values.conf.database.oslo.db.connection | default "<None>" }}

# The SQLAlchemy connection string to use to connect to the slave database.
# (string value)
# from .Values.conf.database.oslo.db.slave_connection
{{ if not .Values.conf.database.oslo.db.slave_connection }}#{{ end }}slave_connection = {{ .Values.conf.database.oslo.db.slave_connection | default "<None>" }}

# The SQL mode to be used for MySQL sessions. This option, including the
# default, overrides any server-set SQL mode. To use whatever SQL mode is set
# by the server configuration, set this to no value. Example: mysql_sql_mode=
# (string value)
# from .Values.conf.database.oslo.db.mysql_sql_mode
{{ if not .Values.conf.database.oslo.db.mysql_sql_mode }}#{{ end }}mysql_sql_mode = {{ .Values.conf.database.oslo.db.mysql_sql_mode | default "TRADITIONAL" }}

# Timeout before idle SQL connections are reaped. (integer value)
# Deprecated group/name - [DEFAULT]/sql_idle_timeout
# Deprecated group/name - [DATABASE]/sql_idle_timeout
# Deprecated group/name - [sql]/idle_timeout
# from .Values.conf.database.oslo.db.idle_timeout
{{ if not .Values.conf.database.oslo.db.idle_timeout }}#{{ end }}idle_timeout = {{ .Values.conf.database.oslo.db.idle_timeout | default "3600" }}

# Minimum number of SQL connections to keep open in a pool. (integer value)
# Deprecated group/name - [DEFAULT]/sql_min_pool_size
# Deprecated group/name - [DATABASE]/sql_min_pool_size
# from .Values.conf.database.oslo.db.min_pool_size
{{ if not .Values.conf.database.oslo.db.min_pool_size }}#{{ end }}min_pool_size = {{ .Values.conf.database.oslo.db.min_pool_size | default "1" }}

# Maximum number of SQL connections to keep open in a pool. Setting a value of
# 0 indicates no limit. (integer value)
# Deprecated group/name - [DEFAULT]/sql_max_pool_size
# Deprecated group/name - [DATABASE]/sql_max_pool_size
# from .Values.conf.database.oslo.db.max_pool_size
{{ if not .Values.conf.database.oslo.db.max_pool_size }}#{{ end }}max_pool_size = {{ .Values.conf.database.oslo.db.max_pool_size | default "5" }}

# Maximum number of database connection retries during startup. Set to -1 to
# specify an infinite retry count. (integer value)
# Deprecated group/name - [DEFAULT]/sql_max_retries
# Deprecated group/name - [DATABASE]/sql_max_retries
# from .Values.conf.database.oslo.db.max_retries
{{ if not .Values.conf.database.oslo.db.max_retries }}#{{ end }}max_retries = {{ .Values.conf.database.oslo.db.max_retries | default "10" }}

# Interval between retries of opening a SQL connection. (integer value)
# Deprecated group/name - [DEFAULT]/sql_retry_interval
# Deprecated group/name - [DATABASE]/reconnect_interval
# from .Values.conf.database.oslo.db.retry_interval
{{ if not .Values.conf.database.oslo.db.retry_interval }}#{{ end }}retry_interval = {{ .Values.conf.database.oslo.db.retry_interval | default "10" }}

# If set, use this value for max_overflow with SQLAlchemy. (integer value)
# Deprecated group/name - [DEFAULT]/sql_max_overflow
# Deprecated group/name - [DATABASE]/sqlalchemy_max_overflow
# from .Values.conf.database.oslo.db.max_overflow
{{ if not .Values.conf.database.oslo.db.max_overflow }}#{{ end }}max_overflow = {{ .Values.conf.database.oslo.db.max_overflow | default "50" }}

# Verbosity of SQL debugging information: 0=None, 100=Everything. (integer
# value)
# Minimum value: 0
# Maximum value: 100
# Deprecated group/name - [DEFAULT]/sql_connection_debug
# from .Values.conf.database.oslo.db.connection_debug
{{ if not .Values.conf.database.oslo.db.connection_debug }}#{{ end }}connection_debug = {{ .Values.conf.database.oslo.db.connection_debug | default "0" }}

# Add Python stack traces to SQL as comment strings. (boolean value)
# Deprecated group/name - [DEFAULT]/sql_connection_trace
# from .Values.conf.database.oslo.db.connection_trace
{{ if not .Values.conf.database.oslo.db.connection_trace }}#{{ end }}connection_trace = {{ .Values.conf.database.oslo.db.connection_trace | default "false" }}

# If set, use this value for pool_timeout with SQLAlchemy. (integer value)
# Deprecated group/name - [DATABASE]/sqlalchemy_pool_timeout
# from .Values.conf.database.oslo.db.pool_timeout
{{ if not .Values.conf.database.oslo.db.pool_timeout }}#{{ end }}pool_timeout = {{ .Values.conf.database.oslo.db.pool_timeout | default "<None>" }}

# Enable the experimental use of database reconnect on connection lost.
# (boolean value)
# from .Values.conf.database.oslo.db.use_db_reconnect
{{ if not .Values.conf.database.oslo.db.use_db_reconnect }}#{{ end }}use_db_reconnect = {{ .Values.conf.database.oslo.db.use_db_reconnect | default "false" }}

# Seconds between retries of a database transaction. (integer value)
# from .Values.conf.database.oslo.db.db_retry_interval
{{ if not .Values.conf.database.oslo.db.db_retry_interval }}#{{ end }}db_retry_interval = {{ .Values.conf.database.oslo.db.db_retry_interval | default "1" }}

# If True, increases the interval between retries of a database operation up to
# db_max_retry_interval. (boolean value)
# from .Values.conf.database.oslo.db.db_inc_retry_interval
{{ if not .Values.conf.database.oslo.db.db_inc_retry_interval }}#{{ end }}db_inc_retry_interval = {{ .Values.conf.database.oslo.db.db_inc_retry_interval | default "true" }}

# If db_inc_retry_interval is set, the maximum seconds between retries of a
# database operation. (integer value)
# from .Values.conf.database.oslo.db.db_max_retry_interval
{{ if not .Values.conf.database.oslo.db.db_max_retry_interval }}#{{ end }}db_max_retry_interval = {{ .Values.conf.database.oslo.db.db_max_retry_interval | default "10" }}

# Maximum retries in case of connection error or deadlock error before error is
# raised. Set to -1 to specify an infinite retry count. (integer value)
# from .Values.conf.database.oslo.db.db_max_retries
{{ if not .Values.conf.database.oslo.db.db_max_retries }}#{{ end }}db_max_retries = {{ .Values.conf.database.oslo.db.db_max_retries | default "20" }}


[healthcheck]

#
# From oslo.middleware
#

# DEPRECATED: The path to respond to healtcheck requests on. (string value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# from .Values.conf.healthcheck.oslo.middleware.path
{{ if not .Values.conf.healthcheck.oslo.middleware.path }}#{{ end }}path = {{ .Values.conf.healthcheck.oslo.middleware.path | default "/healthcheck" }}

# Show more detailed information as part of the response (boolean value)
# from .Values.conf.healthcheck.oslo.middleware.detailed
{{ if not .Values.conf.healthcheck.oslo.middleware.detailed }}#{{ end }}detailed = {{ .Values.conf.healthcheck.oslo.middleware.detailed | default "false" }}

# Additional backends that can perform health checks and report that
# information back as part of a request. (list value)
# from .Values.conf.healthcheck.oslo.middleware.backends
{{ if not .Values.conf.healthcheck.oslo.middleware.backends }}#{{ end }}backends = {{ .Values.conf.healthcheck.oslo.middleware.backends | default "" }}

# Check the presence of a file to determine if an application is running on a
# port. Used by DisableByFileHealthcheck plugin. (string value)
# from .Values.conf.healthcheck.oslo.middleware.disable_by_file_path
{{ if not .Values.conf.healthcheck.oslo.middleware.disable_by_file_path }}#{{ end }}disable_by_file_path = {{ .Values.conf.healthcheck.oslo.middleware.disable_by_file_path | default "<None>" }}

# Check the presence of a file based on a port to determine if an application
# is running on a port. Expects a "port:path" list of strings. Used by
# DisableByFilesPortsHealthcheck plugin. (list value)
# from .Values.conf.healthcheck.oslo.middleware.disable_by_file_paths
{{ if not .Values.conf.healthcheck.oslo.middleware.disable_by_file_paths }}#{{ end }}disable_by_file_paths = {{ .Values.conf.healthcheck.oslo.middleware.disable_by_file_paths | default "" }}


[matchmaker_redis]

#
# From oslo.messaging
#

# DEPRECATED: Host to locate redis. (string value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.matchmaker_redis.oslo.messaging.host
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.host }}#{{ end }}host = {{ .Values.conf.matchmaker_redis.oslo.messaging.host | default "127.0.0.1" }}

# DEPRECATED: Use this port to connect to redis host. (port value)
# Minimum value: 0
# Maximum value: 65535
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.matchmaker_redis.oslo.messaging.port
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.port }}#{{ end }}port = {{ .Values.conf.matchmaker_redis.oslo.messaging.port | default "6379" }}

# DEPRECATED: Password for Redis server (optional). (string value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.matchmaker_redis.oslo.messaging.password
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.password }}#{{ end }}password = {{ .Values.conf.matchmaker_redis.oslo.messaging.password | default "" }}

# DEPRECATED: List of Redis Sentinel hosts (fault tolerance mode), e.g.,
# [host:port, host1:port ... ] (list value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.matchmaker_redis.oslo.messaging.sentinel_hosts
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.sentinel_hosts }}#{{ end }}sentinel_hosts = {{ .Values.conf.matchmaker_redis.oslo.messaging.sentinel_hosts | default "" }}

# Redis replica set name. (string value)
# from .Values.conf.matchmaker_redis.oslo.messaging.sentinel_group_name
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.sentinel_group_name }}#{{ end }}sentinel_group_name = {{ .Values.conf.matchmaker_redis.oslo.messaging.sentinel_group_name | default "oslo-messaging-zeromq" }}

# Time in ms to wait between connection attempts. (integer value)
# from .Values.conf.matchmaker_redis.oslo.messaging.wait_timeout
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.wait_timeout }}#{{ end }}wait_timeout = {{ .Values.conf.matchmaker_redis.oslo.messaging.wait_timeout | default "2000" }}

# Time in ms to wait before the transaction is killed. (integer value)
# from .Values.conf.matchmaker_redis.oslo.messaging.check_timeout
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.check_timeout }}#{{ end }}check_timeout = {{ .Values.conf.matchmaker_redis.oslo.messaging.check_timeout | default "20000" }}

# Timeout in ms on blocking socket operations. (integer value)
# from .Values.conf.matchmaker_redis.oslo.messaging.socket_timeout
{{ if not .Values.conf.matchmaker_redis.oslo.messaging.socket_timeout }}#{{ end }}socket_timeout = {{ .Values.conf.matchmaker_redis.oslo.messaging.socket_timeout | default "10000" }}


[oslo_messaging_amqp]

#
# From oslo.messaging
#

# Name for the AMQP container. must be globally unique. Defaults to a generated
# UUID (string value)
# Deprecated group/name - [amqp1]/container_name
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.container_name
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.container_name }}#{{ end }}container_name = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.container_name | default "<None>" }}

# Timeout for inactive connections (in seconds) (integer value)
# Deprecated group/name - [amqp1]/idle_timeout
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.idle_timeout
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.idle_timeout }}#{{ end }}idle_timeout = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.idle_timeout | default "0" }}

# Debug: dump AMQP frames to stdout (boolean value)
# Deprecated group/name - [amqp1]/trace
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.trace
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.trace }}#{{ end }}trace = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.trace | default "false" }}

# CA certificate PEM file used to verify the server's certificate (string
# value)
# Deprecated group/name - [amqp1]/ssl_ca_file
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_ca_file
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_ca_file }}#{{ end }}ssl_ca_file = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_ca_file | default "" }}

# Self-identifying certificate PEM file for client authentication (string
# value)
# Deprecated group/name - [amqp1]/ssl_cert_file
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_cert_file
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_cert_file }}#{{ end }}ssl_cert_file = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_cert_file | default "" }}

# Private key PEM file used to sign ssl_cert_file certificate (optional)
# (string value)
# Deprecated group/name - [amqp1]/ssl_key_file
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_key_file
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_key_file }}#{{ end }}ssl_key_file = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_key_file | default "" }}

# Password for decrypting ssl_key_file (if encrypted) (string value)
# Deprecated group/name - [amqp1]/ssl_key_password
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_key_password
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_key_password }}#{{ end }}ssl_key_password = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.ssl_key_password | default "<None>" }}

# DEPRECATED: Accept clients using either SSL or plain TCP (boolean value)
# Deprecated group/name - [amqp1]/allow_insecure_clients
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Not applicable - not a SSL server
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.allow_insecure_clients
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.allow_insecure_clients }}#{{ end }}allow_insecure_clients = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.allow_insecure_clients | default "false" }}

# Space separated list of acceptable SASL mechanisms (string value)
# Deprecated group/name - [amqp1]/sasl_mechanisms
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_mechanisms
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_mechanisms }}#{{ end }}sasl_mechanisms = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_mechanisms | default "" }}

# Path to directory that contains the SASL configuration (string value)
# Deprecated group/name - [amqp1]/sasl_config_dir
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_config_dir
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_config_dir }}#{{ end }}sasl_config_dir = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_config_dir | default "" }}

# Name of configuration file (without .conf suffix) (string value)
# Deprecated group/name - [amqp1]/sasl_config_name
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_config_name
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_config_name }}#{{ end }}sasl_config_name = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.sasl_config_name | default "" }}

# User name for message broker authentication (string value)
# Deprecated group/name - [amqp1]/username
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.username
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.username }}#{{ end }}username = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.username | default "" }}

# Password for message broker authentication (string value)
# Deprecated group/name - [amqp1]/password
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.password
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.password }}#{{ end }}password = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.password | default "" }}

# Seconds to pause before attempting to re-connect. (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_interval
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_interval }}#{{ end }}connection_retry_interval = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_interval | default "1" }}

# Increase the connection_retry_interval by this many seconds after each
# unsuccessful failover attempt. (integer value)
# Minimum value: 0
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_backoff
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_backoff }}#{{ end }}connection_retry_backoff = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_backoff | default "2" }}

# Maximum limit for connection_retry_interval + connection_retry_backoff
# (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_interval_max
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_interval_max }}#{{ end }}connection_retry_interval_max = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.connection_retry_interval_max | default "30" }}

# Time to pause between re-connecting an AMQP 1.0 link that failed due to a
# recoverable error. (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.link_retry_delay
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.link_retry_delay }}#{{ end }}link_retry_delay = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.link_retry_delay | default "10" }}

# The maximum number of attempts to re-send a reply message which failed due to
# a recoverable error. (integer value)
# Minimum value: -1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_reply_retry
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_reply_retry }}#{{ end }}default_reply_retry = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_reply_retry | default "0" }}

# The deadline for an rpc reply message delivery. (integer value)
# Minimum value: 5
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_reply_timeout
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_reply_timeout }}#{{ end }}default_reply_timeout = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_reply_timeout | default "30" }}

# The deadline for an rpc cast or call message delivery. Only used when caller
# does not provide a timeout expiry. (integer value)
# Minimum value: 5
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_send_timeout
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_send_timeout }}#{{ end }}default_send_timeout = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_send_timeout | default "30" }}

# The deadline for a sent notification message delivery. Only used when caller
# does not provide a timeout expiry. (integer value)
# Minimum value: 5
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_notify_timeout
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_notify_timeout }}#{{ end }}default_notify_timeout = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_notify_timeout | default "30" }}

# The duration to schedule a purge of idle sender links. Detach link after
# expiry. (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_sender_link_timeout
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_sender_link_timeout }}#{{ end }}default_sender_link_timeout = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_sender_link_timeout | default "600" }}

# Indicates the addressing mode used by the driver.
# Permitted values:
# 'legacy'   - use legacy non-routable addressing
# 'routable' - use routable addresses
# 'dynamic'  - use legacy addresses if the message bus does not support routing
# otherwise use routable addressing (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.addressing_mode
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.addressing_mode }}#{{ end }}addressing_mode = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.addressing_mode | default "dynamic" }}

# address prefix used when sending to a specific server (string value)
# Deprecated group/name - [amqp1]/server_request_prefix
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.server_request_prefix
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.server_request_prefix }}#{{ end }}server_request_prefix = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.server_request_prefix | default "exclusive" }}

# address prefix used when broadcasting to all servers (string value)
# Deprecated group/name - [amqp1]/broadcast_prefix
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.broadcast_prefix
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.broadcast_prefix }}#{{ end }}broadcast_prefix = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.broadcast_prefix | default "broadcast" }}

# address prefix when sending to any server in group (string value)
# Deprecated group/name - [amqp1]/group_request_prefix
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.group_request_prefix
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.group_request_prefix }}#{{ end }}group_request_prefix = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.group_request_prefix | default "unicast" }}

# Address prefix for all generated RPC addresses (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.rpc_address_prefix
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.rpc_address_prefix }}#{{ end }}rpc_address_prefix = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.rpc_address_prefix | default "openstack.org/om/rpc" }}

# Address prefix for all generated Notification addresses (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.notify_address_prefix
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.notify_address_prefix }}#{{ end }}notify_address_prefix = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.notify_address_prefix | default "openstack.org/om/notify" }}

# Appended to the address prefix when sending a fanout message. Used by the
# message bus to identify fanout messages. (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.multicast_address
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.multicast_address }}#{{ end }}multicast_address = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.multicast_address | default "multicast" }}

# Appended to the address prefix when sending to a particular RPC/Notification
# server. Used by the message bus to identify messages sent to a single
# destination. (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.unicast_address
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.unicast_address }}#{{ end }}unicast_address = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.unicast_address | default "unicast" }}

# Appended to the address prefix when sending to a group of consumers. Used by
# the message bus to identify messages that should be delivered in a round-
# robin fashion across consumers. (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.anycast_address
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.anycast_address }}#{{ end }}anycast_address = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.anycast_address | default "anycast" }}

# Exchange name used in notification addresses.
# Exchange name resolution precedence:
# Target.exchange if set
# else default_notification_exchange if set
# else control_exchange if set
# else 'notify' (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_notification_exchange
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_notification_exchange }}#{{ end }}default_notification_exchange = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_notification_exchange | default "<None>" }}

# Exchange name used in RPC addresses.
# Exchange name resolution precedence:
# Target.exchange if set
# else default_rpc_exchange if set
# else control_exchange if set
# else 'rpc' (string value)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.default_rpc_exchange
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.default_rpc_exchange }}#{{ end }}default_rpc_exchange = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.default_rpc_exchange | default "<None>" }}

# Window size for incoming RPC Reply messages. (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.reply_link_credit
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.reply_link_credit }}#{{ end }}reply_link_credit = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.reply_link_credit | default "200" }}

# Window size for incoming RPC Request messages (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.rpc_server_credit
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.rpc_server_credit }}#{{ end }}rpc_server_credit = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.rpc_server_credit | default "100" }}

# Window size for incoming Notification messages (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.notify_server_credit
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.notify_server_credit }}#{{ end }}notify_server_credit = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.notify_server_credit | default "100" }}

# Send messages of this type pre-settled.
# Pre-settled messages will not receive acknowledgement
# from the peer. Note well: pre-settled messages may be
# silently discarded if the delivery fails.
# Permitted values:
# 'rpc-call' - send RPC Calls pre-settled
# 'rpc-reply'- send RPC Replies pre-settled
# 'rpc-cast' - Send RPC Casts pre-settled
# 'notify'   - Send Notifications pre-settled
#  (multi valued)
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.pre_settled
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.pre_settled }}#{{ end }}pre_settled = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.pre_settled | default "rpc-cast" }}
# from .Values.conf.oslo_messaging_amqp.oslo.messaging.pre_settled
{{ if not .Values.conf.oslo_messaging_amqp.oslo.messaging.pre_settled }}#{{ end }}pre_settled = {{ .Values.conf.oslo_messaging_amqp.oslo.messaging.pre_settled | default "rpc-reply" }}


[oslo_messaging_kafka]

#
# From oslo.messaging
#

# DEPRECATED: Default Kafka broker Host (string value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_default_host
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_default_host }}#{{ end }}kafka_default_host = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_default_host | default "localhost" }}

# DEPRECATED: Default Kafka broker Port (port value)
# Minimum value: 0
# Maximum value: 65535
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_default_port
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_default_port }}#{{ end }}kafka_default_port = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_default_port | default "9092" }}

# Max fetch bytes of Kafka consumer (integer value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_max_fetch_bytes
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_max_fetch_bytes }}#{{ end }}kafka_max_fetch_bytes = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_max_fetch_bytes | default "1048576" }}

# Default timeout(s) for Kafka consumers (integer value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_consumer_timeout
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_consumer_timeout }}#{{ end }}kafka_consumer_timeout = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.kafka_consumer_timeout | default "1.0" }}

# Pool Size for Kafka Consumers (integer value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.pool_size
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.pool_size }}#{{ end }}pool_size = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.pool_size | default "10" }}

# The pool size limit for connections expiration policy (integer value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.conn_pool_min_size
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.conn_pool_min_size }}#{{ end }}conn_pool_min_size = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.conn_pool_min_size | default "2" }}

# The time-to-live in sec of idle connections in the pool (integer value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.conn_pool_ttl
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.conn_pool_ttl }}#{{ end }}conn_pool_ttl = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.conn_pool_ttl | default "1200" }}

# Group id for Kafka consumer. Consumers in one group will coordinate message
# consumption (string value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.consumer_group
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.consumer_group }}#{{ end }}consumer_group = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.consumer_group | default "oslo_messaging_consumer" }}

# Upper bound on the delay for KafkaProducer batching in seconds (floating
# point value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.producer_batch_timeout
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.producer_batch_timeout }}#{{ end }}producer_batch_timeout = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.producer_batch_timeout | default "0.0" }}

# Size of batch for the producer async send (integer value)
# from .Values.conf.oslo_messaging_kafka.oslo.messaging.producer_batch_size
{{ if not .Values.conf.oslo_messaging_kafka.oslo.messaging.producer_batch_size }}#{{ end }}producer_batch_size = {{ .Values.conf.oslo_messaging_kafka.oslo.messaging.producer_batch_size | default "16384" }}


[oslo_messaging_notifications]

#
# From oslo.messaging
#

# The Drivers(s) to handle sending notifications. Possible values are
# messaging, messagingv2, routing, log, test, noop (multi valued)
# Deprecated group/name - [DEFAULT]/notification_driver
# from .Values.conf.oslo_messaging_notifications.oslo.messaging.driver
{{ if not .Values.conf.oslo_messaging_notifications.oslo.messaging.driver }}#{{ end }}driver = {{ .Values.conf.oslo_messaging_notifications.oslo.messaging.driver | default "" }}

# A URL representing the messaging driver to use for notifications. If not set,
# we fall back to the same configuration used for RPC. (string value)
# Deprecated group/name - [DEFAULT]/notification_transport_url
# from .Values.conf.oslo_messaging_notifications.oslo.messaging.transport_url
{{ if not .Values.conf.oslo_messaging_notifications.oslo.messaging.transport_url }}#{{ end }}transport_url = {{ .Values.conf.oslo_messaging_notifications.oslo.messaging.transport_url | default "<None>" }}

# AMQP topic used for OpenStack notifications. (list value)
# Deprecated group/name - [rpc_notifier2]/topics
# Deprecated group/name - [DEFAULT]/notification_topics
# from .Values.conf.oslo_messaging_notifications.oslo.messaging.topics
{{ if not .Values.conf.oslo_messaging_notifications.oslo.messaging.topics }}#{{ end }}topics = {{ .Values.conf.oslo_messaging_notifications.oslo.messaging.topics | default "notifications" }}


[oslo_messaging_rabbit]

#
# From oslo.messaging
#

# Use durable queues in AMQP. (boolean value)
# Deprecated group/name - [DEFAULT]/amqp_durable_queues
# Deprecated group/name - [DEFAULT]/rabbit_durable_queues
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.amqp_durable_queues
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.amqp_durable_queues }}#{{ end }}amqp_durable_queues = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.amqp_durable_queues | default "false" }}

# Auto-delete queues in AMQP. (boolean value)
# Deprecated group/name - [DEFAULT]/amqp_auto_delete
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.amqp_auto_delete
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.amqp_auto_delete }}#{{ end }}amqp_auto_delete = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.amqp_auto_delete | default "false" }}

# SSL version to use (valid only if SSL enabled). Valid values are TLSv1 and
# SSLv23. SSLv2, SSLv3, TLSv1_1, and TLSv1_2 may be available on some
# distributions. (string value)
# Deprecated group/name - [DEFAULT]/kombu_ssl_version
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_version
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_version }}#{{ end }}kombu_ssl_version = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_version | default "" }}

# SSL key file (valid only if SSL enabled). (string value)
# Deprecated group/name - [DEFAULT]/kombu_ssl_keyfile
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_keyfile
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_keyfile }}#{{ end }}kombu_ssl_keyfile = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_keyfile | default "" }}

# SSL cert file (valid only if SSL enabled). (string value)
# Deprecated group/name - [DEFAULT]/kombu_ssl_certfile
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_certfile
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_certfile }}#{{ end }}kombu_ssl_certfile = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_certfile | default "" }}

# SSL certification authority file (valid only if SSL enabled). (string value)
# Deprecated group/name - [DEFAULT]/kombu_ssl_ca_certs
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_ca_certs
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_ca_certs }}#{{ end }}kombu_ssl_ca_certs = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_ssl_ca_certs | default "" }}

# How long to wait before reconnecting in response to an AMQP consumer cancel
# notification. (floating point value)
# Deprecated group/name - [DEFAULT]/kombu_reconnect_delay
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_reconnect_delay
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_reconnect_delay }}#{{ end }}kombu_reconnect_delay = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_reconnect_delay | default "1.0" }}

# EXPERIMENTAL: Possible values are: gzip, bz2. If not set compression will not
# be used. This option may not be available in future versions. (string value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_compression
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_compression }}#{{ end }}kombu_compression = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_compression | default "<None>" }}

# How long to wait a missing client before abandoning to send it its replies.
# This value should not be longer than rpc_response_timeout. (integer value)
# Deprecated group/name - [oslo_messaging_rabbit]/kombu_reconnect_timeout
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_missing_consumer_retry_timeout
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_missing_consumer_retry_timeout }}#{{ end }}kombu_missing_consumer_retry_timeout = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_missing_consumer_retry_timeout | default "60" }}

# Determines how the next RabbitMQ node is chosen in case the one we are
# currently connected to becomes unavailable. Takes effect only if more than
# one RabbitMQ node is provided in config. (string value)
# Allowed values: round-robin, shuffle
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_failover_strategy
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_failover_strategy }}#{{ end }}kombu_failover_strategy = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.kombu_failover_strategy | default "round-robin" }}

# DEPRECATED: The RabbitMQ broker address where a single node is used. (string
# value)
# Deprecated group/name - [DEFAULT]/rabbit_host
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_host
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_host }}#{{ end }}rabbit_host = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_host | default "localhost" }}

# DEPRECATED: The RabbitMQ broker port where a single node is used. (port
# value)
# Minimum value: 0
# Maximum value: 65535
# Deprecated group/name - [DEFAULT]/rabbit_port
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_port
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_port }}#{{ end }}rabbit_port = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_port | default "5672" }}

# DEPRECATED: RabbitMQ HA cluster host:port pairs. (list value)
# Deprecated group/name - [DEFAULT]/rabbit_hosts
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_hosts
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_hosts }}#{{ end }}rabbit_hosts = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_hosts | default "$rabbit_host:$rabbit_port" }}

# Connect over SSL for RabbitMQ. (boolean value)
# Deprecated group/name - [DEFAULT]/rabbit_use_ssl
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_use_ssl
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_use_ssl }}#{{ end }}rabbit_use_ssl = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_use_ssl | default "false" }}

# DEPRECATED: The RabbitMQ userid. (string value)
# Deprecated group/name - [DEFAULT]/rabbit_userid
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_userid
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_userid }}#{{ end }}rabbit_userid = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_userid | default "guest" }}

# DEPRECATED: The RabbitMQ password. (string value)
# Deprecated group/name - [DEFAULT]/rabbit_password
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_password
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_password }}#{{ end }}rabbit_password = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_password | default "guest" }}

# The RabbitMQ login method. (string value)
# Allowed values: PLAIN, AMQPLAIN, RABBIT-CR-DEMO
# Deprecated group/name - [DEFAULT]/rabbit_login_method
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_login_method
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_login_method }}#{{ end }}rabbit_login_method = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_login_method | default "AMQPLAIN" }}

# DEPRECATED: The RabbitMQ virtual host. (string value)
# Deprecated group/name - [DEFAULT]/rabbit_virtual_host
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# Reason: Replaced by [DEFAULT]/transport_url
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_virtual_host
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_virtual_host }}#{{ end }}rabbit_virtual_host = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_virtual_host | default "/" }}

# How frequently to retry connecting with RabbitMQ. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_retry_interval
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_retry_interval }}#{{ end }}rabbit_retry_interval = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_retry_interval | default "1" }}

# How long to backoff for between retries when connecting to RabbitMQ. (integer
# value)
# Deprecated group/name - [DEFAULT]/rabbit_retry_backoff
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_retry_backoff
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_retry_backoff }}#{{ end }}rabbit_retry_backoff = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_retry_backoff | default "2" }}

# Maximum interval of RabbitMQ connection retries. Default is 30 seconds.
# (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_interval_max
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_interval_max }}#{{ end }}rabbit_interval_max = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_interval_max | default "30" }}

# DEPRECATED: Maximum number of RabbitMQ connection retries. Default is 0
# (infinite retry count). (integer value)
# Deprecated group/name - [DEFAULT]/rabbit_max_retries
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_max_retries
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_max_retries }}#{{ end }}rabbit_max_retries = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_max_retries | default "0" }}

# Try to use HA queues in RabbitMQ (x-ha-policy: all). If you change this
# option, you must wipe the RabbitMQ database. In RabbitMQ 3.0, queue mirroring
# is no longer controlled by the x-ha-policy argument when declaring a queue.
# If you just want to make sure that all queues (except those with auto-
# generated names) are mirrored across all nodes, run: "rabbitmqctl set_policy
# HA '^(?!amq\.).*' '{"ha-mode": "all"}' " (boolean value)
# Deprecated group/name - [DEFAULT]/rabbit_ha_queues
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_ha_queues
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_ha_queues }}#{{ end }}rabbit_ha_queues = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_ha_queues | default "false" }}

# Positive integer representing duration in seconds for queue TTL (x-expires).
# Queues which are unused for the duration of the TTL are automatically
# deleted. The parameter affects only reply and fanout queues. (integer value)
# Minimum value: 1
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_transient_queues_ttl
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_transient_queues_ttl }}#{{ end }}rabbit_transient_queues_ttl = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_transient_queues_ttl | default "1800" }}

# Specifies the number of messages to prefetch. Setting to zero allows
# unlimited messages. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_qos_prefetch_count
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_qos_prefetch_count }}#{{ end }}rabbit_qos_prefetch_count = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rabbit_qos_prefetch_count | default "0" }}

# Number of seconds after which the Rabbit broker is considered down if
# heartbeat's keep-alive fails (0 disable the heartbeat). EXPERIMENTAL (integer
# value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_timeout_threshold
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_timeout_threshold }}#{{ end }}heartbeat_timeout_threshold = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_timeout_threshold | default "60" }}

# How often times during the heartbeat_timeout_threshold we check the
# heartbeat. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_rate
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_rate }}#{{ end }}heartbeat_rate = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_rate | default "2" }}

# Deprecated, use rpc_backend=kombu+memory or rpc_backend=fake (boolean value)
# Deprecated group/name - [DEFAULT]/fake_rabbit
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.fake_rabbit
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.fake_rabbit }}#{{ end }}fake_rabbit = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.fake_rabbit | default "false" }}

# Maximum number of channels to allow (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.channel_max
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.channel_max }}#{{ end }}channel_max = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.channel_max | default "<None>" }}

# The maximum byte size for an AMQP frame (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.frame_max
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.frame_max }}#{{ end }}frame_max = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.frame_max | default "<None>" }}

# How often to send heartbeats for consumer's connections (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_interval
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_interval }}#{{ end }}heartbeat_interval = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.heartbeat_interval | default "3" }}

# Enable SSL (boolean value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.ssl
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.ssl }}#{{ end }}ssl = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.ssl | default "<None>" }}

# Arguments passed to ssl.wrap_socket (dict value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.ssl_options
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.ssl_options }}#{{ end }}ssl_options = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.ssl_options | default "<None>" }}

# Set socket timeout in seconds for connection's socket (floating point value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.socket_timeout
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.socket_timeout }}#{{ end }}socket_timeout = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.socket_timeout | default "0.25" }}

# Set TCP_USER_TIMEOUT in seconds for connection's socket (floating point
# value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.tcp_user_timeout
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.tcp_user_timeout }}#{{ end }}tcp_user_timeout = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.tcp_user_timeout | default "0.25" }}

# Set delay for reconnection to some host which has connection error (floating
# point value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.host_connection_reconnect_delay
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.host_connection_reconnect_delay }}#{{ end }}host_connection_reconnect_delay = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.host_connection_reconnect_delay | default "0.25" }}

# Connection factory implementation (string value)
# Allowed values: new, single, read_write
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.connection_factory
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.connection_factory }}#{{ end }}connection_factory = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.connection_factory | default "single" }}

# Maximum number of connections to keep queued. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_max_size
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_max_size }}#{{ end }}pool_max_size = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_max_size | default "30" }}

# Maximum number of connections to create above `pool_max_size`. (integer
# value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_max_overflow
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_max_overflow }}#{{ end }}pool_max_overflow = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_max_overflow | default "0" }}

# Default number of seconds to wait for a connections to available (integer
# value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_timeout
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_timeout }}#{{ end }}pool_timeout = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_timeout | default "30" }}

# Lifetime of a connection (since creation) in seconds or None for no
# recycling. Expired connections are closed on acquire. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_recycle
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_recycle }}#{{ end }}pool_recycle = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_recycle | default "600" }}

# Threshold at which inactive (since release) connections are considered stale
# in seconds or None for no staleness. Stale connections are closed on acquire.
# (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_stale
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_stale }}#{{ end }}pool_stale = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.pool_stale | default "60" }}

# Default serialization mechanism for serializing/deserializing
# outgoing/incoming messages (string value)
# Allowed values: json, msgpack
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_serializer_type
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_serializer_type }}#{{ end }}default_serializer_type = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_serializer_type | default "json" }}

# Persist notification messages. (boolean value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_persistence
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_persistence }}#{{ end }}notification_persistence = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_persistence | default "false" }}

# Exchange name for sending notifications (string value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_notification_exchange
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_notification_exchange }}#{{ end }}default_notification_exchange = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_notification_exchange | default "${control_exchange}_notification" }}

# Max number of not acknowledged message which RabbitMQ can send to
# notification listener. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_listener_prefetch_count
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_listener_prefetch_count }}#{{ end }}notification_listener_prefetch_count = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_listener_prefetch_count | default "100" }}

# Reconnecting retry count in case of connectivity problem during sending
# notification, -1 means infinite retry. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_notification_retry_attempts
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_notification_retry_attempts }}#{{ end }}default_notification_retry_attempts = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_notification_retry_attempts | default "-1" }}

# Reconnecting retry delay in case of connectivity problem during sending
# notification message (floating point value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_retry_delay
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_retry_delay }}#{{ end }}notification_retry_delay = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.notification_retry_delay | default "0.25" }}

# Time to live for rpc queues without consumers in seconds. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_queue_expiration
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_queue_expiration }}#{{ end }}rpc_queue_expiration = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_queue_expiration | default "60" }}

# Exchange name for sending RPC messages (string value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_rpc_exchange
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_rpc_exchange }}#{{ end }}default_rpc_exchange = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_rpc_exchange | default "${control_exchange}_rpc" }}

# Exchange name for receiving RPC replies (string value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_exchange
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_exchange }}#{{ end }}rpc_reply_exchange = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_exchange | default "${control_exchange}_rpc_reply" }}

# Max number of not acknowledged message which RabbitMQ can send to rpc
# listener. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_listener_prefetch_count
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_listener_prefetch_count }}#{{ end }}rpc_listener_prefetch_count = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_listener_prefetch_count | default "100" }}

# Max number of not acknowledged message which RabbitMQ can send to rpc reply
# listener. (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_listener_prefetch_count
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_listener_prefetch_count }}#{{ end }}rpc_reply_listener_prefetch_count = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_listener_prefetch_count | default "100" }}

# Reconnecting retry count in case of connectivity problem during sending
# reply. -1 means infinite retry during rpc_timeout (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_retry_attempts
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_retry_attempts }}#{{ end }}rpc_reply_retry_attempts = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_retry_attempts | default "-1" }}

# Reconnecting retry delay in case of connectivity problem during sending
# reply. (floating point value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_retry_delay
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_retry_delay }}#{{ end }}rpc_reply_retry_delay = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_reply_retry_delay | default "0.25" }}

# Reconnecting retry count in case of connectivity problem during sending RPC
# message, -1 means infinite retry. If actual retry attempts in not 0 the rpc
# request could be processed more than one time (integer value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_rpc_retry_attempts
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_rpc_retry_attempts }}#{{ end }}default_rpc_retry_attempts = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.default_rpc_retry_attempts | default "-1" }}

# Reconnecting retry delay in case of connectivity problem during sending RPC
# message (floating point value)
# from .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_retry_delay
{{ if not .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_retry_delay }}#{{ end }}rpc_retry_delay = {{ .Values.conf.oslo_messaging_rabbit.oslo.messaging.rpc_retry_delay | default "0.25" }}


[oslo_messaging_zmq]

#
# From oslo.messaging
#

# ZeroMQ bind address. Should be a wildcard (*), an ethernet interface, or IP.
# The "host" option should point or resolve to this address. (string value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_bind_address
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_bind_address
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_bind_address }}#{{ end }}rpc_zmq_bind_address = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_bind_address | default "*" }}

# MatchMaker driver. (string value)
# Allowed values: redis, sentinel, dummy
# Deprecated group/name - [DEFAULT]/rpc_zmq_matchmaker
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_matchmaker
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_matchmaker }}#{{ end }}rpc_zmq_matchmaker = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_matchmaker | default "redis" }}

# Number of ZeroMQ contexts, defaults to 1. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_contexts
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_contexts
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_contexts }}#{{ end }}rpc_zmq_contexts = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_contexts | default "1" }}

# Maximum number of ingress messages to locally buffer per topic. Default is
# unlimited. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_topic_backlog
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_topic_backlog
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_topic_backlog }}#{{ end }}rpc_zmq_topic_backlog = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_topic_backlog | default "<None>" }}

# Directory for holding IPC sockets. (string value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_ipc_dir
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_ipc_dir
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_ipc_dir }}#{{ end }}rpc_zmq_ipc_dir = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_ipc_dir | default "/var/run/openstack" }}

# Name of this node. Must be a valid hostname, FQDN, or IP address. Must match
# "host" option, if running Nova. (string value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_host
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_host
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_host }}#{{ end }}rpc_zmq_host = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_host | default "localhost" }}

# Number of seconds to wait before all pending messages will be sent after
# closing a socket. The default value of -1 specifies an infinite linger
# period. The value of 0 specifies no linger period. Pending messages shall be
# discarded immediately when the socket is closed. Positive values specify an
# upper bound for the linger period. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_cast_timeout
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_linger
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_linger }}#{{ end }}zmq_linger = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_linger | default "-1" }}

# The default number of seconds that poll should wait. Poll raises timeout
# exception when timeout expired. (integer value)
# Deprecated group/name - [DEFAULT]/rpc_poll_timeout
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_poll_timeout
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_poll_timeout }}#{{ end }}rpc_poll_timeout = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_poll_timeout | default "1" }}

# Expiration timeout in seconds of a name service record about existing target
# ( < 0 means no timeout). (integer value)
# Deprecated group/name - [DEFAULT]/zmq_target_expire
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_target_expire
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_target_expire }}#{{ end }}zmq_target_expire = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_target_expire | default "300" }}

# Update period in seconds of a name service record about existing target.
# (integer value)
# Deprecated group/name - [DEFAULT]/zmq_target_update
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_target_update
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_target_update }}#{{ end }}zmq_target_update = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_target_update | default "180" }}

# Use PUB/SUB pattern for fanout methods. PUB/SUB always uses proxy. (boolean
# value)
# Deprecated group/name - [DEFAULT]/use_pub_sub
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.use_pub_sub
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.use_pub_sub }}#{{ end }}use_pub_sub = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.use_pub_sub | default "false" }}

# Use ROUTER remote proxy. (boolean value)
# Deprecated group/name - [DEFAULT]/use_router_proxy
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.use_router_proxy
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.use_router_proxy }}#{{ end }}use_router_proxy = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.use_router_proxy | default "false" }}

# This option makes direct connections dynamic or static. It makes sense only
# with use_router_proxy=False which means to use direct connections for direct
# message types (ignored otherwise). (boolean value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.use_dynamic_connections
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.use_dynamic_connections }}#{{ end }}use_dynamic_connections = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.use_dynamic_connections | default "false" }}

# How many additional connections to a host will be made for failover reasons.
# This option is actual only in dynamic connections mode. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_failover_connections
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_failover_connections }}#{{ end }}zmq_failover_connections = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_failover_connections | default "2" }}

# Minimal port number for random ports range. (port value)
# Minimum value: 0
# Maximum value: 65535
# Deprecated group/name - [DEFAULT]/rpc_zmq_min_port
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_min_port
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_min_port }}#{{ end }}rpc_zmq_min_port = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_min_port | default "49153" }}

# Maximal port number for random ports range. (integer value)
# Minimum value: 1
# Maximum value: 65536
# Deprecated group/name - [DEFAULT]/rpc_zmq_max_port
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_max_port
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_max_port }}#{{ end }}rpc_zmq_max_port = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_max_port | default "65536" }}

# Number of retries to find free port number before fail with ZMQBindError.
# (integer value)
# Deprecated group/name - [DEFAULT]/rpc_zmq_bind_port_retries
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_bind_port_retries
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_bind_port_retries }}#{{ end }}rpc_zmq_bind_port_retries = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_bind_port_retries | default "100" }}

# Default serialization mechanism for serializing/deserializing
# outgoing/incoming messages (string value)
# Allowed values: json, msgpack
# Deprecated group/name - [DEFAULT]/rpc_zmq_serialization
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_serialization
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_serialization }}#{{ end }}rpc_zmq_serialization = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_zmq_serialization | default "json" }}

# This option configures round-robin mode in zmq socket. True means not keeping
# a queue when server side disconnects. False means to keep queue and messages
# even if server is disconnected, when the server appears we send all
# accumulated messages to it. (boolean value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_immediate
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_immediate }}#{{ end }}zmq_immediate = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_immediate | default "true" }}

# Enable/disable TCP keepalive (KA) mechanism. The default value of -1 (or any
# other negative value) means to skip any overrides and leave it to OS default;
# 0 and 1 (or any other positive value) mean to disable and enable the option
# respectively. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive }}#{{ end }}zmq_tcp_keepalive = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive | default "-1" }}

# The duration between two keepalive transmissions in idle condition. The unit
# is platform dependent, for example, seconds in Linux, milliseconds in Windows
# etc. The default value of -1 (or any other negative value and 0) means to
# skip any overrides and leave it to OS default. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_idle
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_idle }}#{{ end }}zmq_tcp_keepalive_idle = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_idle | default "-1" }}

# The number of retransmissions to be carried out before declaring that remote
# end is not available. The default value of -1 (or any other negative value
# and 0) means to skip any overrides and leave it to OS default. (integer
# value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_cnt
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_cnt }}#{{ end }}zmq_tcp_keepalive_cnt = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_cnt | default "-1" }}

# The duration between two successive keepalive retransmissions, if
# acknowledgement to the previous keepalive transmission is not received. The
# unit is platform dependent, for example, seconds in Linux, milliseconds in
# Windows etc. The default value of -1 (or any other negative value and 0)
# means to skip any overrides and leave it to OS default. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_intvl
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_intvl }}#{{ end }}zmq_tcp_keepalive_intvl = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.zmq_tcp_keepalive_intvl | default "-1" }}

# Maximum number of (green) threads to work concurrently. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_thread_pool_size
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_thread_pool_size }}#{{ end }}rpc_thread_pool_size = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_thread_pool_size | default "100" }}

# Expiration timeout in seconds of a sent/received message after which it is
# not tracked anymore by a client/server. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_message_ttl
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_message_ttl }}#{{ end }}rpc_message_ttl = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_message_ttl | default "300" }}

# Wait for message acknowledgements from receivers. This mechanism works only
# via proxy without PUB/SUB. (boolean value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_use_acks
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_use_acks }}#{{ end }}rpc_use_acks = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_use_acks | default "false" }}

# Number of seconds to wait for an ack from a cast/call. After each retry
# attempt this timeout is multiplied by some specified multiplier. (integer
# value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_ack_timeout_base
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_ack_timeout_base }}#{{ end }}rpc_ack_timeout_base = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_ack_timeout_base | default "15" }}

# Number to multiply base ack timeout by after each retry attempt. (integer
# value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_ack_timeout_multiplier
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_ack_timeout_multiplier }}#{{ end }}rpc_ack_timeout_multiplier = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_ack_timeout_multiplier | default "2" }}

# Default number of message sending attempts in case of any problems occurred:
# positive value N means at most N retries, 0 means no retries, None or -1 (or
# any other negative values) mean to retry forever. This option is used only if
# acknowledgments are enabled. (integer value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_retry_attempts
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_retry_attempts }}#{{ end }}rpc_retry_attempts = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.rpc_retry_attempts | default "3" }}

# List of publisher hosts SubConsumer can subscribe on. This option has higher
# priority then the default publishers list taken from the matchmaker. (list
# value)
# from .Values.conf.oslo_messaging_zmq.oslo.messaging.subscribe_on
{{ if not .Values.conf.oslo_messaging_zmq.oslo.messaging.subscribe_on }}#{{ end }}subscribe_on = {{ .Values.conf.oslo_messaging_zmq.oslo.messaging.subscribe_on | default "" }}


[oslo_middleware]

#
# From oslo.middleware
#

# The maximum body size for each  request, in bytes. (integer value)
# Deprecated group/name - [DEFAULT]/osapi_max_request_body_size
# Deprecated group/name - [DEFAULT]/max_request_body_size
# from .Values.conf.oslo_middleware.oslo.middleware.max_request_body_size
{{ if not .Values.conf.oslo_middleware.oslo.middleware.max_request_body_size }}#{{ end }}max_request_body_size = {{ .Values.conf.oslo_middleware.oslo.middleware.max_request_body_size | default "114688" }}

# DEPRECATED: The HTTP Header that will be used to determine what the original
# request protocol scheme was, even if it was hidden by a SSL termination
# proxy. (string value)
# This option is deprecated for removal.
# Its value may be silently ignored in the future.
# from .Values.conf.oslo_middleware.oslo.middleware.secure_proxy_ssl_header
{{ if not .Values.conf.oslo_middleware.oslo.middleware.secure_proxy_ssl_header }}#{{ end }}secure_proxy_ssl_header = {{ .Values.conf.oslo_middleware.oslo.middleware.secure_proxy_ssl_header | default "X-Forwarded-Proto" }}

# Whether the application is behind a proxy or not. This determines if the
# middleware should parse the headers or not. (boolean value)
# from .Values.conf.oslo_middleware.oslo.middleware.enable_proxy_headers_parsing
{{ if not .Values.conf.oslo_middleware.oslo.middleware.enable_proxy_headers_parsing }}#{{ end }}enable_proxy_headers_parsing = {{ .Values.conf.oslo_middleware.oslo.middleware.enable_proxy_headers_parsing | default "false" }}


[oslo_policy]

#
# From oslo.policy
#

# The file that defines policies. (string value)
# Deprecated group/name - [DEFAULT]/policy_file
# from .Values.conf.oslo_policy.oslo.policy.policy_file
{{ if not .Values.conf.oslo_policy.oslo.policy.policy_file }}#{{ end }}policy_file = {{ .Values.conf.oslo_policy.oslo.policy.policy_file | default "policy.json" }}

# Default rule. Enforced when a requested rule is not found. (string value)
# Deprecated group/name - [DEFAULT]/policy_default_rule
# from .Values.conf.oslo_policy.oslo.policy.policy_default_rule
{{ if not .Values.conf.oslo_policy.oslo.policy.policy_default_rule }}#{{ end }}policy_default_rule = {{ .Values.conf.oslo_policy.oslo.policy.policy_default_rule | default "default" }}

# Directories where policy configuration files are stored. They can be relative
# to any directory in the search path defined by the config_dir option, or
# absolute paths. The file defined by policy_file must exist for these
# directories to be searched.  Missing or empty directories are ignored. (multi
# valued)
# Deprecated group/name - [DEFAULT]/policy_dirs
# from .Values.conf.oslo_policy.oslo.policy.policy_dirs
{{ if not .Values.conf.oslo_policy.oslo.policy.policy_dirs }}#{{ end }}policy_dirs = {{ .Values.conf.oslo_policy.oslo.policy.policy_dirs | default "policy.d" }}


[profiler]

#
# From osprofiler
#

#
# Enables the profiling for all services on this node. Default value is False
# (fully disable the profiling feature).
#
# Possible values:
#
# * True: Enables the feature
# * False: Disables the feature. The profiling cannot be started via this
# project
# operations. If the profiling is triggered by another project, this project
# part
# will be empty.
#  (boolean value)
# Deprecated group/name - [profiler]/profiler_enabled
# from .Values.conf.profiler.osprofiler.enabled
{{ if not .Values.conf.profiler.osprofiler.enabled }}#{{ end }}enabled = {{ .Values.conf.profiler.osprofiler.enabled | default "false" }}

#
# Enables SQL requests profiling in services. Default value is False (SQL
# requests won't be traced).
#
# Possible values:
#
# * True: Enables SQL requests profiling. Each SQL query will be part of the
# trace and can the be analyzed by how much time was spent for that.
# * False: Disables SQL requests profiling. The spent time is only shown on a
# higher level of operations. Single SQL queries cannot be analyzed this
# way.
#  (boolean value)
# from .Values.conf.profiler.osprofiler.trace_sqlalchemy
{{ if not .Values.conf.profiler.osprofiler.trace_sqlalchemy }}#{{ end }}trace_sqlalchemy = {{ .Values.conf.profiler.osprofiler.trace_sqlalchemy | default "false" }}

#
# Secret key(s) to use for encrypting context data for performance profiling.
# This string value should have the following format:
# <key1>[,<key2>,...<keyn>],
# where each key is some random string. A user who triggers the profiling via
# the REST API has to set one of these keys in the headers of the REST API call
# to include profiling results of this node for this particular project.
#
# Both "enabled" flag and "hmac_keys" config options should be set to enable
# profiling. Also, to generate correct profiling information across all
# services
# at least one key needs to be consistent between OpenStack projects. This
# ensures it can be used from client side to generate the trace, containing
# information from all possible resources. (string value)
# from .Values.conf.profiler.osprofiler.hmac_keys
{{ if not .Values.conf.profiler.osprofiler.hmac_keys }}#{{ end }}hmac_keys = {{ .Values.conf.profiler.osprofiler.hmac_keys | default "SECRET_KEY" }}

#
# Connection string for a notifier backend. Default value is messaging:// which
# sets the notifier to oslo_messaging.
#
# Examples of possible values:
#
# * messaging://: use oslo_messaging driver for sending notifications.
# * mongodb://127.0.0.1:27017 : use mongodb driver for sending notifications.
# * elasticsearch://127.0.0.1:9200 : use elasticsearch driver for sending
# notifications.
#  (string value)
# from .Values.conf.profiler.osprofiler.connection_string
{{ if not .Values.conf.profiler.osprofiler.connection_string }}#{{ end }}connection_string = {{ .Values.conf.profiler.osprofiler.connection_string | default "messaging://" }}

#
# Document type for notification indexing in elasticsearch.
#  (string value)
# from .Values.conf.profiler.osprofiler.es_doc_type
{{ if not .Values.conf.profiler.osprofiler.es_doc_type }}#{{ end }}es_doc_type = {{ .Values.conf.profiler.osprofiler.es_doc_type | default "notification" }}

#
# This parameter is a time value parameter (for example: es_scroll_time=2m),
# indicating for how long the nodes that participate in the search will
# maintain
# relevant resources in order to continue and support it.
#  (string value)
# from .Values.conf.profiler.osprofiler.es_scroll_time
{{ if not .Values.conf.profiler.osprofiler.es_scroll_time }}#{{ end }}es_scroll_time = {{ .Values.conf.profiler.osprofiler.es_scroll_time | default "2m" }}

#
# Elasticsearch splits large requests in batches. This parameter defines
# maximum size of each batch (for example: es_scroll_size=10000).
#  (integer value)
# from .Values.conf.profiler.osprofiler.es_scroll_size
{{ if not .Values.conf.profiler.osprofiler.es_scroll_size }}#{{ end }}es_scroll_size = {{ .Values.conf.profiler.osprofiler.es_scroll_size | default "10000" }}

#
# Redissentinel provides a timeout option on the connections.
# This parameter defines that timeout (for example: socket_timeout=0.1).
#  (floating point value)
# from .Values.conf.profiler.osprofiler.socket_timeout
{{ if not .Values.conf.profiler.osprofiler.socket_timeout }}#{{ end }}socket_timeout = {{ .Values.conf.profiler.osprofiler.socket_timeout | default "0.1" }}

#
# Redissentinel uses a service name to identify a master redis service.
# This parameter defines the name (for example:
# sentinal_service_name=mymaster).
#  (string value)
# from .Values.conf.profiler.osprofiler.sentinel_service_name
{{ if not .Values.conf.profiler.osprofiler.sentinel_service_name }}#{{ end }}sentinel_service_name = {{ .Values.conf.profiler.osprofiler.sentinel_service_name | default "mymaster" }}
