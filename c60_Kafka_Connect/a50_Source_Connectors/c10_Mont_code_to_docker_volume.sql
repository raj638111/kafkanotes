
-- Mount Mac code directory as volume into Container #24

cd /Users/raj/ws/kafkanotes/c60_Kafka_Connect/a50_Source_Connectors; ls

a10_Architecture.png					b20_file_stream_demo_standalone.properties
b00== FileStream Source Connector (Standalone) ==	b30_demo_file.txt
b05-- Configurations --					c00-- Run job --
b10_worker.properties					c10_Mont_code_to_docker_volume.sql

/Users/raj/ws/kafkanotes/c60_Kafka_Connect/a50_Source_Connectors $ docker run --rm -it -v "$(pwd)":/tutorial --net=host landoop/fast-data-dev:cp3.3.0 bash

root@fast-data-dev / $ ls /tutorial/
 a10_Architecture.png				      b10_worker.properties			  'c00-- Run job --'
'b00== FileStream Source Connector (Standalone) =='   b20_file_stream_demo_standalone.properties   c10_Mont_code_to_docker_volume.sql
'b05-- Configurations --'			      b30_demo_file.txt

-- Create the topic
    (Do it explicitly or else we will only have one partition if the topic is created through
     connector)

root@fast-data-dev / $ kafka-topics --create --topic demo-1-standalone --partitions 3 --replication-factor 1 --zookeeper 127.0.0.1:2181
Created topic "demo-1-standalone".

-- Run the standalone connector

# Usage is connect-standalone worker.properties connector1.properties [connector2.properties connector3.properties]
# ***When running standalone first argument should always be 'worker.properties' & the remaining
#  can be as many connectors as we want

root@fast-data-dev tutorial $ connect-standalone b10_worker.properties b20_file_stream_demo_standalone.properties

SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/opt/confluent/share/java/kafka/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/opt/confluent/share/java/kafka-connect-hdfs/slf4j-log4j12-1.7.5.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/opt/confluent/share/java/kafka-connect-twitter/kafka-connect-twitter-0.1-master-af63e4c-cp3.3.0-jar-with-dependencies.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [org.slf4j.impl.Log4jLoggerFactory]
[2020-03-03 03:21:01,968] INFO Registered loader: sun.misc.Launcher$AppClassLoader@764c12b6 (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:199)
[2020-03-03 03:21:01,974] INFO Added plugin 'io.confluent.connect.jdbc.JdbcSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,974] INFO Added plugin 'org.apache.kafka.connect.tools.MockSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,977] INFO Added plugin 'io.confluent.connect.hdfs.tools.SchemaSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,978] INFO Added plugin 'com.eneco.trading.kafka.connect.twitter.TwitterSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,978] INFO Added plugin 'org.apache.kafka.connect.file.FileStreamSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,978] INFO Added plugin 'org.apache.kafka.connect.tools.VerifiableSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,979] INFO Added plugin 'org.apache.kafka.connect.tools.MockConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,980] INFO Added plugin 'io.confluent.connect.jdbc.JdbcSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,980] INFO Added plugin 'org.apache.kafka.connect.tools.VerifiableSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,981] INFO Added plugin 'org.apache.kafka.connect.file.FileStreamSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,981] INFO Added plugin 'org.apache.kafka.connect.tools.MockSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,982] INFO Added plugin 'io.confluent.connect.s3.S3SinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,982] INFO Added plugin 'io.confluent.connect.storage.tools.SchemaSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,982] INFO Added plugin 'io.confluent.connect.hdfs.HdfsSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,983] INFO Added plugin 'io.confluent.connect.elasticsearch.ElasticsearchSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,986] INFO Added plugin 'com.eneco.trading.kafka.connect.twitter.TwitterSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,986] INFO Added plugin 'org.apache.kafka.connect.tools.SchemaSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,987] INFO Added plugin 'org.apache.kafka.connect.json.JsonConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,987] INFO Added plugin 'org.apache.kafka.connect.storage.StringConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,987] INFO Added plugin 'org.apache.kafka.connect.converters.ByteArrayConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,987] INFO Added plugin 'io.confluent.connect.avro.AvroConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,987] INFO Added plugin 'org.apache.kafka.connect.transforms.SetSchemaMetadata$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,988] INFO Added plugin 'org.apache.kafka.connect.transforms.Flatten$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,988] INFO Added plugin 'org.apache.kafka.connect.transforms.HoistField$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,988] INFO Added plugin 'org.apache.kafka.connect.transforms.RegexRouter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,989] INFO Added plugin 'org.apache.kafka.connect.transforms.ReplaceField$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,989] INFO Added plugin 'org.apache.kafka.connect.transforms.MaskField$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,989] INFO Added plugin 'org.apache.kafka.connect.transforms.TimestampConverter$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,989] INFO Added plugin 'org.apache.kafka.connect.transforms.ValueToKey' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,989] INFO Added plugin 'org.apache.kafka.connect.transforms.TimestampConverter$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,990] INFO Added plugin 'org.apache.kafka.connect.transforms.SetSchemaMetadata$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,990] INFO Added plugin 'org.apache.kafka.connect.transforms.ReplaceField$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,990] INFO Added plugin 'org.apache.kafka.connect.transforms.Cast$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,991] INFO Added plugin 'org.apache.kafka.connect.transforms.HoistField$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,991] INFO Added plugin 'org.apache.kafka.connect.transforms.InsertField$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,991] INFO Added plugin 'org.apache.kafka.connect.transforms.InsertField$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,991] INFO Added plugin 'org.apache.kafka.connect.transforms.TimestampRouter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,992] INFO Added plugin 'org.apache.kafka.connect.transforms.ExtractField$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,992] INFO Added plugin 'org.apache.kafka.connect.transforms.Flatten$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,993] INFO Added plugin 'org.apache.kafka.connect.transforms.MaskField$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,993] INFO Added plugin 'org.apache.kafka.connect.transforms.ExtractField$Key' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,993] INFO Added plugin 'org.apache.kafka.connect.transforms.Cast$Value' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:132)
[2020-03-03 03:21:01,996] INFO Added aliases 'TwitterSinkConnector' and 'TwitterSink' to plugin 'com.eneco.trading.kafka.connect.twitter.TwitterSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,996] INFO Added aliases 'TwitterSourceConnector' and 'TwitterSource' to plugin 'com.eneco.trading.kafka.connect.twitter.TwitterSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,997] INFO Added aliases 'ElasticsearchSinkConnector' and 'ElasticsearchSink' to plugin 'io.confluent.connect.elasticsearch.ElasticsearchSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,997] INFO Added aliases 'HdfsSinkConnector' and 'HdfsSink' to plugin 'io.confluent.connect.hdfs.HdfsSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,998] INFO Added aliases 'JdbcSinkConnector' and 'JdbcSink' to plugin 'io.confluent.connect.jdbc.JdbcSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,998] INFO Added aliases 'JdbcSourceConnector' and 'JdbcSource' to plugin 'io.confluent.connect.jdbc.JdbcSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,999] INFO Added aliases 'S3SinkConnector' and 'S3Sink' to plugin 'io.confluent.connect.s3.S3SinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,999] INFO Added aliases 'FileStreamSinkConnector' and 'FileStreamSink' to plugin 'org.apache.kafka.connect.file.FileStreamSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:01,999] INFO Added aliases 'FileStreamSourceConnector' and 'FileStreamSource' to plugin 'org.apache.kafka.connect.file.FileStreamSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,000] INFO Added aliases 'MockConnector' and 'Mock' to plugin 'org.apache.kafka.connect.tools.MockConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,000] INFO Added aliases 'MockSinkConnector' and 'MockSink' to plugin 'org.apache.kafka.connect.tools.MockSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,001] INFO Added aliases 'MockSourceConnector' and 'MockSource' to plugin 'org.apache.kafka.connect.tools.MockSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,001] INFO Added aliases 'VerifiableSinkConnector' and 'VerifiableSink' to plugin 'org.apache.kafka.connect.tools.VerifiableSinkConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,001] INFO Added aliases 'VerifiableSourceConnector' and 'VerifiableSource' to plugin 'org.apache.kafka.connect.tools.VerifiableSourceConnector' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,002] INFO Added aliases 'AvroConverter' and 'Avro' to plugin 'io.confluent.connect.avro.AvroConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,002] INFO Added aliases 'ByteArrayConverter' and 'ByteArray' to plugin 'org.apache.kafka.connect.converters.ByteArrayConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,002] INFO Added aliases 'JsonConverter' and 'Json' to plugin 'org.apache.kafka.connect.json.JsonConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,003] INFO Added aliases 'StringConverter' and 'String' to plugin 'org.apache.kafka.connect.storage.StringConverter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:293)
[2020-03-03 03:21:02,006] INFO Added alias 'RegexRouter' to plugin 'org.apache.kafka.connect.transforms.RegexRouter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:290)
[2020-03-03 03:21:02,007] INFO Added alias 'TimestampRouter' to plugin 'org.apache.kafka.connect.transforms.TimestampRouter' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:290)
[2020-03-03 03:21:02,008] INFO Added alias 'ValueToKey' to plugin 'org.apache.kafka.connect.transforms.ValueToKey' (org.apache.kafka.connect.runtime.isolation.DelegatingClassLoader:290)
[2020-03-03 03:21:02,048] INFO StandaloneConfig values:
	access.control.allow.methods =
	access.control.allow.origin =
	bootstrap.servers = [127.0.0.1:9092]
	internal.key.converter = class org.apache.kafka.connect.json.JsonConverter
	internal.value.converter = class org.apache.kafka.connect.json.JsonConverter
	key.converter = class org.apache.kafka.connect.json.JsonConverter
	offset.flush.interval.ms = 10000
	offset.flush.timeout.ms = 5000
	offset.storage.file.filename = standalone.offsets
	plugin.path = null
	rest.advertised.host.name = null
	rest.advertised.port = null
	rest.host.name = 127.0.0.1
	rest.port = 8086
	task.shutdown.graceful.timeout.ms = 5000
	value.converter = class org.apache.kafka.connect.json.JsonConverter
 (org.apache.kafka.connect.runtime.standalone.StandaloneConfig:223)
[2020-03-03 03:21:02,395] INFO Logging initialized @17953ms (org.eclipse.jetty.util.log:186)
[2020-03-03 03:21:02,804] INFO Kafka Connect starting (org.apache.kafka.connect.runtime.Connect:49)
[2020-03-03 03:21:02,804] INFO Herder starting (org.apache.kafka.connect.runtime.standalone.StandaloneHerder:70)
[2020-03-03 03:21:02,805] INFO Worker starting (org.apache.kafka.connect.runtime.Worker:144)
[2020-03-03 03:21:02,806] INFO Starting FileOffsetBackingStore with file standalone.offsets (org.apache.kafka.connect.storage.FileOffsetBackingStore:59)
[2020-03-03 03:21:02,813] INFO Worker started (org.apache.kafka.connect.runtime.Worker:149)
[2020-03-03 03:21:02,814] INFO Herder started (org.apache.kafka.connect.runtime.standalone.StandaloneHerder:72)
[2020-03-03 03:21:02,814] INFO Starting REST server (org.apache.kafka.connect.runtime.rest.RestServer:98)
[2020-03-03 03:21:02,999] INFO jetty-9.2.15.v20160210 (org.eclipse.jetty.server.Server:327)
Mar 03, 2020 3:21:03 AM org.glassfish.jersey.internal.Errors logErrors
WARNING: The following warnings have been detected: WARNING: The (sub)resource method listConnectors in org.apache.kafka.connect.runtime.rest.resources.ConnectorsResource contains empty path annotation.
WARNING: The (sub)resource method createConnector in org.apache.kafka.connect.runtime.rest.resources.ConnectorsResource contains empty path annotation.
WARNING: The (sub)resource method listConnectorPlugins in org.apache.kafka.connect.runtime.rest.resources.ConnectorPluginsResource contains empty path annotation.
WARNING: The (sub)resource method serverInfo in org.apache.kafka.connect.runtime.rest.resources.RootResource contains empty path annotation.

[2020-03-03 03:21:03,914] INFO Started o.e.j.s.ServletContextHandler@15031e39{/,null,AVAILABLE} (org.eclipse.jetty.server.handler.ContextHandler:744)
[2020-03-03 03:21:03,972] INFO Started ServerConnector@5e4d089e{HTTP/1.1}{127.0.0.1:8086} (org.eclipse.jetty.server.ServerConnector:266)
[2020-03-03 03:21:03,974] INFO Started @19532ms (org.eclipse.jetty.server.Server:379)
[2020-03-03 03:21:03,978] INFO REST server listening at http://127.0.0.1:8086/, advertising URL http://127.0.0.1:8086/ (org.apache.kafka.connect.runtime.rest.RestServer:150)
[2020-03-03 03:21:03,978] INFO Kafka Connect started (org.apache.kafka.connect.runtime.Connect:55)
[2020-03-03 03:21:04,019] INFO ConnectorConfig values:
	connector.class = org.apache.kafka.connect.file.FileStreamSourceConnector
	key.converter = null
	name = file-stream-demo-standalone
	tasks.max = 1
	transforms = null
	value.converter = null
 (org.apache.kafka.connect.runtime.ConnectorConfig:223)
[2020-03-03 03:21:04,022] INFO EnrichedConnectorConfig values:
	connector.class = org.apache.kafka.connect.file.FileStreamSourceConnector
	key.converter = null
	name = file-stream-demo-standalone
	tasks.max = 1
	transforms = null
	value.converter = null
 (org.apache.kafka.connect.runtime.ConnectorConfig$EnrichedConnectorConfig:223)
[2020-03-03 03:21:04,024] INFO Creating connector file-stream-demo-standalone of type org.apache.kafka.connect.file.FileStreamSourceConnector (org.apache.kafka.connect.runtime.Worker:204)
[2020-03-03 03:21:04,028] INFO Instantiated connector file-stream-demo-standalone with version 0.11.0.0-cp1 of type class org.apache.kafka.connect.file.FileStreamSourceConnector (org.apache.kafka.connect.runtime.Worker:207)
[2020-03-03 03:21:04,033] INFO Finished creating connector file-stream-demo-standalone (org.apache.kafka.connect.runtime.Worker:225)
[2020-03-03 03:21:04,034] INFO SourceConnectorConfig values:
	connector.class = org.apache.kafka.connect.file.FileStreamSourceConnector
	key.converter = null
	name = file-stream-demo-standalone
	tasks.max = 1
	transforms = null
	value.converter = null
 (org.apache.kafka.connect.runtime.SourceConnectorConfig:223)
[2020-03-03 03:21:04,035] INFO EnrichedConnectorConfig values:
	connector.class = org.apache.kafka.connect.file.FileStreamSourceConnector
	key.converter = null
	name = file-stream-demo-standalone
	tasks.max = 1
	transforms = null
	value.converter = null
 (org.apache.kafka.connect.runtime.ConnectorConfig$EnrichedConnectorConfig:223)
[2020-03-03 03:21:04,042] INFO Creating task file-stream-demo-standalone-0 (org.apache.kafka.connect.runtime.Worker:358)
[2020-03-03 03:21:04,043] INFO ConnectorConfig values:
	connector.class = org.apache.kafka.connect.file.FileStreamSourceConnector
	key.converter = null
	name = file-stream-demo-standalone
	tasks.max = 1
	transforms = null
	value.converter = null
 (org.apache.kafka.connect.runtime.ConnectorConfig:223)
[2020-03-03 03:21:04,045] INFO EnrichedConnectorConfig values:
	connector.class = org.apache.kafka.connect.file.FileStreamSourceConnector
	key.converter = null
	name = file-stream-demo-standalone
	tasks.max = 1
	transforms = null
	value.converter = null
 (org.apache.kafka.connect.runtime.ConnectorConfig$EnrichedConnectorConfig:223)
[2020-03-03 03:21:04,053] INFO TaskConfig values:
	task.class = class org.apache.kafka.connect.file.FileStreamSourceTask
 (org.apache.kafka.connect.runtime.TaskConfig:223)
[2020-03-03 03:21:04,054] INFO Instantiated task file-stream-demo-standalone-0 with version 0.11.0.0-cp1 of type org.apache.kafka.connect.file.FileStreamSourceTask (org.apache.kafka.connect.runtime.Worker:373)
[2020-03-03 03:21:04,085] INFO ProducerConfig values:
	acks = all
	batch.size = 16384
	bootstrap.servers = [127.0.0.1:9092]
	buffer.memory = 33554432
	client.id =
	compression.type = none
	connections.max.idle.ms = 540000
	enable.idempotence = false
	interceptor.classes = null
	key.serializer = class org.apache.kafka.common.serialization.ByteArraySerializer
	linger.ms = 0
	max.block.ms = 9223372036854775807
	max.in.flight.requests.per.connection = 1
	max.request.size = 1048576
	metadata.max.age.ms = 300000
	metric.reporters = []
	metrics.num.samples = 2
	metrics.recording.level = INFO
	metrics.sample.window.ms = 30000
	partitioner.class = class org.apache.kafka.clients.producer.internals.DefaultPartitioner
	receive.buffer.bytes = 32768
	reconnect.backoff.max.ms = 1000
	reconnect.backoff.ms = 50
	request.timeout.ms = 2147483647
	retries = 2147483647
	retry.backoff.ms = 100
	sasl.jaas.config = null
	sasl.kerberos.kinit.cmd = /usr/bin/kinit
	sasl.kerberos.min.time.before.relogin = 60000
	sasl.kerberos.service.name = null
	sasl.kerberos.ticket.renew.jitter = 0.05
	sasl.kerberos.ticket.renew.window.factor = 0.8
	sasl.mechanism = GSSAPI
	security.protocol = PLAINTEXT
	send.buffer.bytes = 131072
	ssl.cipher.suites = null
	ssl.enabled.protocols = [TLSv1.2, TLSv1.1, TLSv1]
	ssl.endpoint.identification.algorithm = null
	ssl.key.password = null
	ssl.keymanager.algorithm = SunX509
	ssl.keystore.location = null
	ssl.keystore.password = null
	ssl.keystore.type = JKS
	ssl.protocol = TLS
	ssl.provider = null
	ssl.secure.random.implementation = null
	ssl.trustmanager.algorithm = PKIX
	ssl.truststore.location = null
	ssl.truststore.password = null
	ssl.truststore.type = JKS
	transaction.timeout.ms = 60000
	transactional.id = null
	value.serializer = class org.apache.kafka.common.serialization.ByteArraySerializer
 (org.apache.kafka.clients.producer.ProducerConfig:223)
[2020-03-03 03:21:04,170] INFO Kafka version : 0.11.0.0-cp1 (org.apache.kafka.common.utils.AppInfoParser:83)
[2020-03-03 03:21:04,170] INFO Kafka commitId : 5cadaa94d0a69e0d (org.apache.kafka.common.utils.AppInfoParser:84)
[2020-03-03 03:21:04,182] INFO Created connector file-stream-demo-standalone (org.apache.kafka.connect.cli.ConnectStandalone:91)
[2020-03-03 03:21:04,183] INFO Source task WorkerSourceTask{id=file-stream-demo-standalone-0} finished initialization and start (org.apache.kafka.connect.runtime.WorkerSourceTask:143)



-- Start providing data to file 'b30_demo_file.txt'

    # Validation: The data added in the text file will get loaded into
      the topic 'demo-1-standalone' by kafka connector

    # 'standalone.offsets' file
        + Once connector start copying data from source (Text file) to topic,
          the connector will update this offset file