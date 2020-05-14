

kafka-configs.sh

This tool helps to manipulate and describe entity config for a topic, client, user or broker
Option                                 Description
------                                 -----------
--add-config <String>                  Key Value pairs of configs to add.
                                         Square brackets can be used to group
                                         values which contain commas: 'k1=v1,
                                         k2=[v1,v2,v2],k3=v3'. The following
                                         is a list of valid configurations:
                                         For entity-type 'topics':
                                       	cleanup.policy
                                       	compression.type
                                       	delete.retention.ms
                                       	file.delete.delay.ms
                                       	flush.messages
                                       	flush.ms
                                       	follower.replication.throttled.
                                         replicas
                                       	index.interval.bytes
                                       	leader.replication.throttled.replicas
                                       	max.compaction.lag.ms
                                       	max.message.bytes
                                       	message.downconversion.enable
                                       	message.format.version
                                       	message.timestamp.difference.max.ms
                                       	message.timestamp.type
                                       	min.cleanable.dirty.ratio
                                       	min.compaction.lag.ms
                                       	min.insync.replicas
                                       	preallocate
                                       	retention.bytes
                                       	retention.ms
                                       	segment.bytes
                                       	segment.index.bytes
                                       	segment.jitter.ms
                                       	segment.ms
                                       	unclean.leader.election.enable
                                       For entity-type 'brokers':
                                       	advertised.listeners
                                       	background.threads
                                       	compression.type
                                       	follower.replication.throttled.rate
                                       	leader.replication.throttled.rate
                                       	listener.security.protocol.map
                                       	listeners
                                       	log.cleaner.backoff.ms
                                       	log.cleaner.dedupe.buffer.size
                                       	log.cleaner.delete.retention.ms
                                       	log.cleaner.io.buffer.load.factor
                                       	log.cleaner.io.buffer.size
                                       	log.cleaner.io.max.bytes.per.second
                                       	log.cleaner.max.compaction.lag.ms
                                       	log.cleaner.min.cleanable.ratio
                                       	log.cleaner.min.compaction.lag.ms
                                       	log.cleaner.threads
                                       	log.cleanup.policy
                                       	log.flush.interval.messages
                                       	log.flush.interval.ms
                                       	log.index.interval.bytes
                                       	log.index.size.max.bytes
                                       	log.message.downconversion.enable
                                       	log.message.timestamp.difference.max.
                                         ms
                                       	log.message.timestamp.type
                                       	log.preallocate
                                       	log.retention.bytes
                                       	log.retention.ms
                                       	log.roll.jitter.ms
                                       	log.roll.ms
                                       	log.segment.bytes
                                       	log.segment.delete.delay.ms
                                       	max.connections
                                       	max.connections.per.ip
                                       	max.connections.per.ip.overrides
                                       	message.max.bytes
                                       	metric.reporters
                                       	min.insync.replicas
                                       	num.io.threads
                                       	num.network.threads
                                       	num.recovery.threads.per.data.dir
                                       	num.replica.fetchers
                                       	principal.builder.class
                                       	replica.alter.log.dirs.io.max.bytes.
                                         per.second
                                       	sasl.enabled.mechanisms
                                       	sasl.jaas.config
                                       	sasl.kerberos.kinit.cmd
                                       	sasl.kerberos.min.time.before.relogin
                                       	sasl.kerberos.principal.to.local.rules
                                       	sasl.kerberos.service.name
                                       	sasl.kerberos.ticket.renew.jitter
                                       	sasl.kerberos.ticket.renew.window.
                                         factor
                                       	sasl.login.refresh.buffer.seconds
                                       	sasl.login.refresh.min.period.seconds
                                       	sasl.login.refresh.window.factor
                                       	sasl.login.refresh.window.jitter
                                       	sasl.mechanism.inter.broker.protocol
                                       	ssl.cipher.suites
                                       	ssl.client.auth
                                       	ssl.enabled.protocols
                                       	ssl.endpoint.identification.algorithm
                                       	ssl.key.password
                                       	ssl.keymanager.algorithm
                                       	ssl.keystore.location
                                       	ssl.keystore.password
                                       	ssl.keystore.type
                                       	ssl.protocol
                                       	ssl.provider
                                       	ssl.secure.random.implementation
                                       	ssl.trustmanager.algorithm
                                       	ssl.truststore.location
                                       	ssl.truststore.password
                                       	ssl.truststore.type
                                       	unclean.leader.election.enable
                                       For entity-type 'users':
                                       	SCRAM-SHA-256
                                       	SCRAM-SHA-512
                                       	consumer_byte_rate
                                       	producer_byte_rate
                                       	request_percentage
                                       For entity-type 'clients':
                                       	consumer_byte_rate
                                       	producer_byte_rate
                                       	request_percentage
                                       Entity types 'users' and 'clients' may
                                         be specified together to update
                                         config for clients of a specific
                                         user.
--all                                  List all configs for the given entity
                                         (includes static configuration when
                                         the entity type is brokers)
--alter                                Alter the configuration for the entity.
--bootstrap-server <String: server to  The Kafka server to connect to. This
  connect to>                            is required for describing and
                                         altering broker configs.
--broker <String>                      The broker's ID.
--broker-defaults                      The config defaults for all brokers.
--broker-logger <String>               The broker's ID for its logger config.
--client <String>                      The client's ID.
--client-defaults                      The config defaults for all clients.
--command-config <String: command      Property file containing configs to be
  config property file>                  passed to Admin Client. This is used
                                         only with --bootstrap-server option
                                         for describing and altering broker
                                         configs.
--delete-config <String>               config keys to remove 'k1,k2'
--describe                             List configs for the given entity.
--entity-default                       Default entity name for
                                         clients/users/brokers (applies to
                                         corresponding entity type in command
                                         line)
--entity-name <String>                 Name of entity (topic name/client
                                         id/user principal name/broker id)
--entity-type <String>                 Type of entity
                                         (topics/clients/users/brokers/broker-
                                         loggers)
--force                                Suppress console prompts
--help                                 Print usage information.
--topic <String>                       The topic's name.
--user <String>                        The user's principal name.
--user-defaults                        The config defaults for all users.
--version                              Display Kafka version.
--zk-tls-config-file <String:          Identifies the file where ZooKeeper
  ZooKeeper TLS configuration>           client TLS connectivity properties
                                         are defined.  Any properties other
                                         than zookeeper.clientCnxnSocket,
                                         zookeeper.ssl.cipher.suites,
                                         zookeeper.ssl.client.enable,
                                         zookeeper.ssl.crl.enable, zookeeper.
                                         ssl.enabled.protocols, zookeeper.ssl.
                                         endpoint.identification.algorithm,
                                         zookeeper.ssl.keystore.location,
                                         zookeeper.ssl.keystore.password,
                                         zookeeper.ssl.keystore.type,
                                         zookeeper.ssl.ocsp.enable, zookeeper.
                                         ssl.protocol, zookeeper.ssl.
                                         truststore.location, zookeeper.ssl.
                                         truststore.password, zookeeper.ssl.
                                         truststore.type are ignored.
--zookeeper <String: urls>             DEPRECATED. The connection string for
                                         the zookeeper connection in the form
                                         host:port. Multiple URLS can be
                                         given to allow fail-over. Replaced
                                         by --bootstrap-server, REQUIRED
                                         unless --bootstrap-server is given.