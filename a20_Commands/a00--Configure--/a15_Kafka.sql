
------------------------------------------------------------------------------------
-- Start Kafka
------------------------------------------------------------------------------------

vi /Users/rgunasekaran/installations/kafka_2.11-2.3.0/config/server.properties
  + log.dirs=/Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/kafka
mkdir -p /Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/kafka


cd /Users/rgunasekaran/installations/kafka_2.11-2.3.0;
./bin/kafka-server-start.sh config/server.properties

[2019-10-01 21:39:06,088] INFO Registered kafka:type=kafka.Log4jController MBean (kafka.utils.Log4jControllerRegistration$)
[2019-10-01 21:39:06,369] INFO Registered signal handlers for TERM, INT, HUP (org.apache.kafka.common.utils.LoggingSignalHandler)
[2019-10-01 21:39:06,369] INFO starting (kafka.server.KafkaServer)
[2019-10-01 21:39:06,370] INFO Connecting to zookeeper on localhost:2181 (kafka.server.KafkaServer)
[2019-10-01 21:39:06,384] INFO [ZooKeeperClient Kafka server] Initializing a new session to localhost:2181. (kafka.zookeeper.ZooKeeperClient)
[2019-10-01 21:39:06,390] INFO Client environment:zookeeper.version=3.4.14-4c25d480e66aadd371de8bd2fd8da255ac140bcf, built on 03/06/2019 16:18 GMT (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,390] INFO Client environment:host.name=192.168.0.13 (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,390] INFO Client environment:java.version=1.8.0_121 (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,390] INFO Client environment:java.vendor=Oracle Corporation (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,390] INFO Client environment:java.home=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/jre (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,390] INFO Client environment:java.class.path=/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/activation-1.1.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/aopalliance-repackaged-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/argparse4j-0.7.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/audience-annotations-0.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/commons-lang3-3.8.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-api-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-basic-auth-extension-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-file-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-json-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-runtime-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-transforms-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/guava-20.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/hk2-api-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/hk2-locator-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/hk2-utils-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-annotations-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-core-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-databind-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-dataformat-csv-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-datatype-jdk8-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-jaxrs-base-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-jaxrs-json-provider-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-module-jaxb-annotations-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-module-paranamer-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-module-scala_2.11-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jakarta.annotation-api-1.3.4.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jakarta.inject-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jakarta.ws.rs-api-2.1.5.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/javassist-3.22.0-CR2.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/javax.servlet-api-3.1.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/javax.ws.rs-api-2.1.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jaxb-api-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-client-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-common-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-container-servlet-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-container-servlet-core-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-hk2-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-media-jaxb-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-server-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-client-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-continuation-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-http-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-io-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-security-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-server-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-servlet-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-servlets-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-util-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jopt-simple-5.0.4.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jsr305-3.0.2.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-clients-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-log4j-appender-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-examples-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-scala_2.11-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-test-utils-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-tools-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka_2.11-2.3.0-sources.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka_2.11-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/log4j-1.2.17.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/lz4-java-1.6.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/maven-artifact-3.6.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/metrics-core-2.2.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/osgi-resource-locator-1.0.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/paranamer-2.8.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/plexus-utils-3.2.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/reflections-0.9.11.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/rocksdbjni-5.18.3.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/scala-library-2.11.12.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/scala-logging_2.11-3.9.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/scala-reflect-2.11.12.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/slf4j-api-1.7.26.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/slf4j-log4j12-1.7.26.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/snappy-java-1.1.7.3.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/spotbugs-annotations-3.1.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/validation-api-2.0.1.Final.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/zkclient-0.11.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/zookeeper-3.4.14.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/zstd-jni-1.4.0-1.jar (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:java.library.path=/Users/rgunasekaran/Library/Java/Extensions:/Library/Java/Extensions:/Network/Library/Java/Extensions:/System/Library/Java/Extensions:/usr/lib/java:. (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:java.io.tmpdir=/var/folders/xl/jgm6cj295330fyryvqpwmt61pf5yhs/T/ (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:java.compiler=<NA> (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:os.name=Mac OS X (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:os.arch=x86_64 (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:os.version=10.12.6 (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:user.name=rgunasekaran (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:user.home=/Users/rgunasekaran (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,394] INFO Client environment:user.dir=/Users/rgunasekaran/installations/kafka_2.11-2.3.0 (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,395] INFO Initiating client connection, connectString=localhost:2181 sessionTimeout=6000 watcher=kafka.zookeeper.ZooKeeperClient$ZooKeeperClientWatcher$@55141def (org.apache.zookeeper.ZooKeeper)
[2019-10-01 21:39:06,408] INFO [ZooKeeperClient Kafka server] Waiting until connected. (kafka.zookeeper.ZooKeeperClient)
[2019-10-01 21:39:06,410] INFO Opening socket connection to server localhost/127.0.0.1:2181. Will not attempt to authenticate using SASL (unknown error) (org.apache.zookeeper.ClientCnxn)
[2019-10-01 21:39:06,422] INFO Socket connection established to localhost/127.0.0.1:2181, initiating session (org.apache.zookeeper.ClientCnxn)
[2019-10-01 21:39:06,495] INFO Session establishment complete on server localhost/127.0.0.1:2181, sessionid = 0x100091f51c90000, negotiated timeout = 6000 (org.apache.zookeeper.ClientCnxn)
[2019-10-01 21:39:06,498] INFO [ZooKeeperClient Kafka server] Connected. (kafka.zookeeper.ZooKeeperClient)
[2019-10-01 21:39:06,718] INFO Cluster ID = 8UfVGETYR7S2gio_sHk3sQ (kafka.server.KafkaServer)
[2019-10-01 21:39:06,721] WARN No meta.properties file under dir /Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/kafka/meta.properties (kafka.server.BrokerMetadataCheckpoint)
[2019-10-01 21:39:06,756] INFO KafkaConfig values:
	advertised.host.name = null
	advertised.listeners = null
	advertised.port = null
	alter.config.policy.class.name = null
	alter.log.dirs.replication.quota.window.num = 11
	alter.log.dirs.replication.quota.window.size.seconds = 1
	authorizer.class.name =
	auto.create.topics.enable = true
	auto.leader.rebalance.enable = true
	background.threads = 10
	broker.id = 0
	broker.id.generation.enable = true
	broker.rack = null
	client.quota.callback.class = null
	compression.type = producer
	connection.failed.authentication.delay.ms = 100
	connections.max.idle.ms = 600000
	connections.max.reauth.ms = 0
	control.plane.listener.name = null
	controlled.shutdown.enable = true
	controlled.shutdown.max.retries = 3
	controlled.shutdown.retry.backoff.ms = 5000
	controller.socket.timeout.ms = 30000
	create.topic.policy.class.name = null
	default.replication.factor = 1
	delegation.token.expiry.check.interval.ms = 3600000
	delegation.token.expiry.time.ms = 86400000
	delegation.token.master.key = null
	delegation.token.max.lifetime.ms = 604800000
	delete.records.purgatory.purge.interval.requests = 1
	delete.topic.enable = true
	fetch.purgatory.purge.interval.requests = 1000
	group.initial.rebalance.delay.ms = 0
	group.max.session.timeout.ms = 1800000
	group.max.size = 2147483647
	group.min.session.timeout.ms = 6000
	host.name =
	inter.broker.listener.name = null
	inter.broker.protocol.version = 2.3-IV1
	kafka.metrics.polling.interval.secs = 10
	kafka.metrics.reporters = []
	leader.imbalance.check.interval.seconds = 300
	leader.imbalance.per.broker.percentage = 10
	listener.security.protocol.map = PLAINTEXT:PLAINTEXT,SSL:SSL,SASL_PLAINTEXT:SASL_PLAINTEXT,SASL_SSL:SASL_SSL
	listeners = null
	log.cleaner.backoff.ms = 15000
	log.cleaner.dedupe.buffer.size = 134217728
	log.cleaner.delete.retention.ms = 86400000
	log.cleaner.enable = true
	log.cleaner.io.buffer.load.factor = 0.9
	log.cleaner.io.buffer.size = 524288
	log.cleaner.io.max.bytes.per.second = 1.7976931348623157E308
	log.cleaner.max.compaction.lag.ms = 9223372036854775807
	log.cleaner.min.cleanable.ratio = 0.5
	log.cleaner.min.compaction.lag.ms = 0
	log.cleaner.threads = 1
	log.cleanup.policy = [delete]
	log.dir = /tmp/kafka-logs
	log.dirs = /Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/kafka
	log.flush.interval.messages = 9223372036854775807
	log.flush.interval.ms = null
	log.flush.offset.checkpoint.interval.ms = 60000
	log.flush.scheduler.interval.ms = 9223372036854775807
	log.flush.start.offset.checkpoint.interval.ms = 60000
	log.index.interval.bytes = 4096
	log.index.size.max.bytes = 10485760
	log.message.downconversion.enable = true
	log.message.format.version = 2.3-IV1
	log.message.timestamp.difference.max.ms = 9223372036854775807
	log.message.timestamp.type = CreateTime
	log.preallocate = false
	log.retention.bytes = -1
	log.retention.check.interval.ms = 300000
	log.retention.hours = 168
	log.retention.minutes = null
	log.retention.ms = null
	log.roll.hours = 168
	log.roll.jitter.hours = 0
	log.roll.jitter.ms = null
	log.roll.ms = null
	log.segment.bytes = 1073741824
	log.segment.delete.delay.ms = 60000
	max.connections = 2147483647
	max.connections.per.ip = 2147483647
	max.connections.per.ip.overrides =
	max.incremental.fetch.session.cache.slots = 1000
	message.max.bytes = 1000012
	metric.reporters = []
	metrics.num.samples = 2
	metrics.recording.level = INFO
	metrics.sample.window.ms = 30000
	min.insync.replicas = 1
	num.io.threads = 8
	num.network.threads = 3
	num.partitions = 1
	num.recovery.threads.per.data.dir = 1
	num.replica.alter.log.dirs.threads = null
	num.replica.fetchers = 1
	offset.metadata.max.bytes = 4096
	offsets.commit.required.acks = -1
	offsets.commit.timeout.ms = 5000
	offsets.load.buffer.size = 5242880
	offsets.retention.check.interval.ms = 600000
	offsets.retention.minutes = 10080
	offsets.topic.compression.codec = 0
	offsets.topic.num.partitions = 50
	offsets.topic.replication.factor = 1
	offsets.topic.segment.bytes = 104857600
	password.encoder.cipher.algorithm = AES/CBC/PKCS5Padding
	password.encoder.iterations = 4096
	password.encoder.key.length = 128
	password.encoder.keyfactory.algorithm = null
	password.encoder.old.secret = null
	password.encoder.secret = null
	port = 9092
	principal.builder.class = null
	producer.purgatory.purge.interval.requests = 1000
	queued.max.request.bytes = -1
	queued.max.requests = 500
	quota.consumer.default = 9223372036854775807
	quota.producer.default = 9223372036854775807
	quota.window.num = 11
	quota.window.size.seconds = 1
	replica.fetch.backoff.ms = 1000
	replica.fetch.max.bytes = 1048576
	replica.fetch.min.bytes = 1
	replica.fetch.response.max.bytes = 10485760
	replica.fetch.wait.max.ms = 500
	replica.high.watermark.checkpoint.interval.ms = 5000
	replica.lag.time.max.ms = 10000
	replica.socket.receive.buffer.bytes = 65536
	replica.socket.timeout.ms = 30000
	replication.quota.window.num = 11
	replication.quota.window.size.seconds = 1
	request.timeout.ms = 30000
	reserved.broker.max.id = 1000
	sasl.client.callback.handler.class = null
	sasl.enabled.mechanisms = [GSSAPI]
	sasl.jaas.config = null
	sasl.kerberos.kinit.cmd = /usr/bin/kinit
	sasl.kerberos.min.time.before.relogin = 60000
	sasl.kerberos.principal.to.local.rules = [DEFAULT]
	sasl.kerberos.service.name = null
	sasl.kerberos.ticket.renew.jitter = 0.05
	sasl.kerberos.ticket.renew.window.factor = 0.8
	sasl.login.callback.handler.class = null
	sasl.login.class = null
	sasl.login.refresh.buffer.seconds = 300
	sasl.login.refresh.min.period.seconds = 60
	sasl.login.refresh.window.factor = 0.8
	sasl.login.refresh.window.jitter = 0.05
	sasl.mechanism.inter.broker.protocol = GSSAPI
	sasl.server.callback.handler.class = null
	security.inter.broker.protocol = PLAINTEXT
	socket.receive.buffer.bytes = 102400
	socket.request.max.bytes = 104857600
	socket.send.buffer.bytes = 102400
	ssl.cipher.suites = []
	ssl.client.auth = none
	ssl.enabled.protocols = [TLSv1.2, TLSv1.1, TLSv1]
	ssl.endpoint.identification.algorithm = https
	ssl.key.password = null
	ssl.keymanager.algorithm = SunX509
	ssl.keystore.location = null
	ssl.keystore.password = null
	ssl.keystore.type = JKS
	ssl.principal.mapping.rules = [DEFAULT]
	ssl.protocol = TLS
	ssl.provider = null
	ssl.secure.random.implementation = null
	ssl.trustmanager.algorithm = PKIX
	ssl.truststore.location = null
	ssl.truststore.password = null
	ssl.truststore.type = JKS
	transaction.abort.timed.out.transaction.cleanup.interval.ms = 60000
	transaction.max.timeout.ms = 900000
	transaction.remove.expired.transaction.cleanup.interval.ms = 3600000
	transaction.state.log.load.buffer.size = 5242880
	transaction.state.log.min.isr = 1
	transaction.state.log.num.partitions = 50
	transaction.state.log.replication.factor = 1
	transaction.state.log.segment.bytes = 104857600
	transactional.id.expiration.ms = 604800000
	unclean.leader.election.enable = false
	zookeeper.connect = localhost:2181
	zookeeper.connection.timeout.ms = 6000
	zookeeper.max.in.flight.requests = 10
	zookeeper.session.timeout.ms = 6000
	zookeeper.set.acl = false
	zookeeper.sync.time.ms = 2000
 (kafka.server.KafkaConfig)
[2019-10-01 21:39:06,766] INFO KafkaConfig values:
	advertised.host.name = null
	advertised.listeners = null
	advertised.port = null
	alter.config.policy.class.name = null
	alter.log.dirs.replication.quota.window.num = 11
	alter.log.dirs.replication.quota.window.size.seconds = 1
	authorizer.class.name =
	auto.create.topics.enable = true
	auto.leader.rebalance.enable = true
	background.threads = 10
	broker.id = 0
	broker.id.generation.enable = true
	broker.rack = null
	client.quota.callback.class = null
	compression.type = producer
	connection.failed.authentication.delay.ms = 100
	connections.max.idle.ms = 600000
	connections.max.reauth.ms = 0
	control.plane.listener.name = null
	controlled.shutdown.enable = true
	controlled.shutdown.max.retries = 3
	controlled.shutdown.retry.backoff.ms = 5000
	controller.socket.timeout.ms = 30000
	create.topic.policy.class.name = null
	default.replication.factor = 1
	delegation.token.expiry.check.interval.ms = 3600000
	delegation.token.expiry.time.ms = 86400000
	delegation.token.master.key = null
	delegation.token.max.lifetime.ms = 604800000
	delete.records.purgatory.purge.interval.requests = 1
	delete.topic.enable = true
	fetch.purgatory.purge.interval.requests = 1000
	group.initial.rebalance.delay.ms = 0
	group.max.session.timeout.ms = 1800000
	group.max.size = 2147483647
	group.min.session.timeout.ms = 6000
	host.name =
	inter.broker.listener.name = null
	inter.broker.protocol.version = 2.3-IV1
	kafka.metrics.polling.interval.secs = 10
	kafka.metrics.reporters = []
	leader.imbalance.check.interval.seconds = 300
	leader.imbalance.per.broker.percentage = 10
	listener.security.protocol.map = PLAINTEXT:PLAINTEXT,SSL:SSL,SASL_PLAINTEXT:SASL_PLAINTEXT,SASL_SSL:SASL_SSL
	listeners = null
	log.cleaner.backoff.ms = 15000
	log.cleaner.dedupe.buffer.size = 134217728
	log.cleaner.delete.retention.ms = 86400000
	log.cleaner.enable = true
	log.cleaner.io.buffer.load.factor = 0.9
	log.cleaner.io.buffer.size = 524288
	log.cleaner.io.max.bytes.per.second = 1.7976931348623157E308
	log.cleaner.max.compaction.lag.ms = 9223372036854775807
	log.cleaner.min.cleanable.ratio = 0.5
	log.cleaner.min.compaction.lag.ms = 0
	log.cleaner.threads = 1
	log.cleanup.policy = [delete]
	log.dir = /tmp/kafka-logs
	log.dirs = /Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/kafka
	log.flush.interval.messages = 9223372036854775807
	log.flush.interval.ms = null
	log.flush.offset.checkpoint.interval.ms = 60000
	log.flush.scheduler.interval.ms = 9223372036854775807
	log.flush.start.offset.checkpoint.interval.ms = 60000
	log.index.interval.bytes = 4096
	log.index.size.max.bytes = 10485760
	log.message.downconversion.enable = true
	log.message.format.version = 2.3-IV1
	log.message.timestamp.difference.max.ms = 9223372036854775807
	log.message.timestamp.type = CreateTime
	log.preallocate = false
	log.retention.bytes = -1
	log.retention.check.interval.ms = 300000
	log.retention.hours = 168
	log.retention.minutes = null
	log.retention.ms = null
	log.roll.hours = 168
	log.roll.jitter.hours = 0
	log.roll.jitter.ms = null
	log.roll.ms = null
	log.segment.bytes = 1073741824
	log.segment.delete.delay.ms = 60000
	max.connections = 2147483647
	max.connections.per.ip = 2147483647
	max.connections.per.ip.overrides =
	max.incremental.fetch.session.cache.slots = 1000
	message.max.bytes = 1000012
	metric.reporters = []
	metrics.num.samples = 2
	metrics.recording.level = INFO
	metrics.sample.window.ms = 30000
	min.insync.replicas = 1
	num.io.threads = 8
	num.network.threads = 3
	num.partitions = 1
	num.recovery.threads.per.data.dir = 1
	num.replica.alter.log.dirs.threads = null
	num.replica.fetchers = 1
	offset.metadata.max.bytes = 4096
	offsets.commit.required.acks = -1
	offsets.commit.timeout.ms = 5000
	offsets.load.buffer.size = 5242880
	offsets.retention.check.interval.ms = 600000
	offsets.retention.minutes = 10080
	offsets.topic.compression.codec = 0
	offsets.topic.num.partitions = 50
	offsets.topic.replication.factor = 1
	offsets.topic.segment.bytes = 104857600
	password.encoder.cipher.algorithm = AES/CBC/PKCS5Padding
	password.encoder.iterations = 4096
	password.encoder.key.length = 128
	password.encoder.keyfactory.algorithm = null
	password.encoder.old.secret = null
	password.encoder.secret = null
	port = 9092
	principal.builder.class = null
	producer.purgatory.purge.interval.requests = 1000
	queued.max.request.bytes = -1
	queued.max.requests = 500
	quota.consumer.default = 9223372036854775807
	quota.producer.default = 9223372036854775807
	quota.window.num = 11
	quota.window.size.seconds = 1
	replica.fetch.backoff.ms = 1000
	replica.fetch.max.bytes = 1048576
	replica.fetch.min.bytes = 1
	replica.fetch.response.max.bytes = 10485760
	replica.fetch.wait.max.ms = 500
	replica.high.watermark.checkpoint.interval.ms = 5000
	replica.lag.time.max.ms = 10000
	replica.socket.receive.buffer.bytes = 65536
	replica.socket.timeout.ms = 30000
	replication.quota.window.num = 11
	replication.quota.window.size.seconds = 1
	request.timeout.ms = 30000
	reserved.broker.max.id = 1000
	sasl.client.callback.handler.class = null
	sasl.enabled.mechanisms = [GSSAPI]
	sasl.jaas.config = null
	sasl.kerberos.kinit.cmd = /usr/bin/kinit
	sasl.kerberos.min.time.before.relogin = 60000
	sasl.kerberos.principal.to.local.rules = [DEFAULT]
	sasl.kerberos.service.name = null
	sasl.kerberos.ticket.renew.jitter = 0.05
	sasl.kerberos.ticket.renew.window.factor = 0.8
	sasl.login.callback.handler.class = null
	sasl.login.class = null
	sasl.login.refresh.buffer.seconds = 300
	sasl.login.refresh.min.period.seconds = 60
	sasl.login.refresh.window.factor = 0.8
	sasl.login.refresh.window.jitter = 0.05
	sasl.mechanism.inter.broker.protocol = GSSAPI
	sasl.server.callback.handler.class = null
	security.inter.broker.protocol = PLAINTEXT
	socket.receive.buffer.bytes = 102400
	socket.request.max.bytes = 104857600
	socket.send.buffer.bytes = 102400
	ssl.cipher.suites = []
	ssl.client.auth = none
	ssl.enabled.protocols = [TLSv1.2, TLSv1.1, TLSv1]
	ssl.endpoint.identification.algorithm = https
	ssl.key.password = null
	ssl.keymanager.algorithm = SunX509
	ssl.keystore.location = null
	ssl.keystore.password = null
	ssl.keystore.type = JKS
	ssl.principal.mapping.rules = [DEFAULT]
	ssl.protocol = TLS
	ssl.provider = null
	ssl.secure.random.implementation = null
	ssl.trustmanager.algorithm = PKIX
	ssl.truststore.location = null
	ssl.truststore.password = null
	ssl.truststore.type = JKS
	transaction.abort.timed.out.transaction.cleanup.interval.ms = 60000
	transaction.max.timeout.ms = 900000
	transaction.remove.expired.transaction.cleanup.interval.ms = 3600000
	transaction.state.log.load.buffer.size = 5242880
	transaction.state.log.min.isr = 1
	transaction.state.log.num.partitions = 50
	transaction.state.log.replication.factor = 1
	transaction.state.log.segment.bytes = 104857600
	transactional.id.expiration.ms = 604800000
	unclean.leader.election.enable = false
	zookeeper.connect = localhost:2181
	zookeeper.connection.timeout.ms = 6000
	zookeeper.max.in.flight.requests = 10
	zookeeper.session.timeout.ms = 6000
	zookeeper.set.acl = false
	zookeeper.sync.time.ms = 2000
 (kafka.server.KafkaConfig)
[2019-10-01 21:39:06,787] INFO [ThrottledChannelReaper-Fetch]: Starting (kafka.server.ClientQuotaManager$ThrottledChannelReaper)
[2019-10-01 21:39:06,787] INFO [ThrottledChannelReaper-Produce]: Starting (kafka.server.ClientQuotaManager$ThrottledChannelReaper)
[2019-10-01 21:39:06,788] INFO [ThrottledChannelReaper-Request]: Starting (kafka.server.ClientQuotaManager$ThrottledChannelReaper)
[2019-10-01 21:39:06,811] INFO Loading logs. (kafka.log.LogManager)
[2019-10-01 21:39:06,815] INFO Logs loading complete in 4 ms. (kafka.log.LogManager)
[2019-10-01 21:39:06,823] INFO Starting log cleanup with a period of 300000 ms. (kafka.log.LogManager)
[2019-10-01 21:39:06,825] INFO Starting log flusher with a default period of 9223372036854775807 ms. (kafka.log.LogManager)
[2019-10-01 21:39:07,117] INFO Awaiting socket connections on 0.0.0.0:9092. (kafka.network.Acceptor)
[2019-10-01 21:39:07,144] INFO [SocketServer brokerId=0] Created data-plane acceptor and processors for endpoint : EndPoint(null,9092,ListenerName(PLAINTEXT),PLAINTEXT) (kafka.network.SocketServer)
[2019-10-01 21:39:07,146] INFO [SocketServer brokerId=0] Started 1 acceptor threads for data-plane (kafka.network.SocketServer)
[2019-10-01 21:39:07,161] INFO [ExpirationReaper-0-Produce]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,162] INFO [ExpirationReaper-0-Fetch]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,163] INFO [ExpirationReaper-0-DeleteRecords]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,163] INFO [ExpirationReaper-0-ElectPreferredLeader]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,172] INFO [LogDirFailureHandler]: Starting (kafka.server.ReplicaManager$LogDirFailureHandler)
[2019-10-01 21:39:07,198] INFO Creating /brokers/ids/0 (is it secure? false) (kafka.zk.KafkaZkClient)
[2019-10-01 21:39:07,215] INFO Stat of the created znode at /brokers/ids/0 is: 24,24,1569983947210,1569983947210,1,0,0,72067624158691328,194,0,24
 (kafka.zk.KafkaZkClient)
[2019-10-01 21:39:07,215] INFO Registered broker 0 at path /brokers/ids/0 with addresses: ArrayBuffer(EndPoint(192.168.0.13,9092,ListenerName(PLAINTEXT),PLAINTEXT)), czxid (broker epoch): 24 (kafka.zk.KafkaZkClient)
[2019-10-01 21:39:07,216] WARN No meta.properties file under dir /Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/kafka/meta.properties (kafka.server.BrokerMetadataCheckpoint)
[2019-10-01 21:39:07,257] INFO [ExpirationReaper-0-topic]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,259] INFO [ExpirationReaper-0-Heartbeat]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,260] INFO [ExpirationReaper-0-Rebalance]: Starting (kafka.server.DelayedOperationPurgatory$ExpiredOperationReaper)
[2019-10-01 21:39:07,268] INFO Successfully created /controller_epoch with initial epoch 0 (kafka.zk.KafkaZkClient)
[2019-10-01 21:39:07,271] INFO [GroupCoordinator 0]: Starting up. (kafka.coordinator.group.GroupCoordinator)
[2019-10-01 21:39:07,272] INFO [GroupCoordinator 0]: Startup complete. (kafka.coordinator.group.GroupCoordinator)
[2019-10-01 21:39:07,273] INFO [GroupMetadataManager brokerId=0] Removed 0 expired offsets in 1 milliseconds. (kafka.coordinator.group.GroupMetadataManager)
[2019-10-01 21:39:07,281] INFO [ProducerId Manager 0]: Acquired new producerId block (brokerId:0,blockStartProducerId:0,blockEndProducerId:999) by writing to Zk with path version 1 (kafka.coordinator.transaction.ProducerIdManager)
[2019-10-01 21:39:07,299] INFO [TransactionCoordinator id=0] Starting up. (kafka.coordinator.transaction.TransactionCoordinator)
[2019-10-01 21:39:07,300] INFO [Transaction Marker Channel Manager 0]: Starting (kafka.coordinator.transaction.TransactionMarkerChannelManager)
[2019-10-01 21:39:07,300] INFO [TransactionCoordinator id=0] Startup complete. (kafka.coordinator.transaction.TransactionCoordinator)
[2019-10-01 21:39:07,335] INFO [/config/changes-event-process-thread]: Starting (kafka.common.ZkNodeChangeNotificationListener$ChangeEventProcessThread)
[2019-10-01 21:39:07,342] INFO [SocketServer brokerId=0] Started data-plane processors for 1 acceptors (kafka.network.SocketServer)
[2019-10-01 21:39:07,346] INFO Kafka version: 2.3.0 (org.apache.kafka.common.utils.AppInfoParser)
[2019-10-01 21:39:07,346] INFO Kafka commitId: fc1aaa116b661c8a (org.apache.kafka.common.utils.AppInfoParser)
[2019-10-01 21:39:07,346] INFO Kafka startTimeMs: 1569983947343 (org.apache.kafka.common.utils.AppInfoParser)
[2019-10-01 21:39:07,347] INFO [KafkaServer id=0] started (kafka.server.KafkaServer)
