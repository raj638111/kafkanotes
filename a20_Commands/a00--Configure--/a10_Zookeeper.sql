
------------------------------------------------------------------------------------
-- Start Zookeeper
------------------------------------------------------------------------------------

vi /Users/rgunasekaran/installations/kafka_2.11-2.3.0/config/zookeeper.properties
  + dataDir=/Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/zookeeper

mkdir -p /Users/rgunasekaran/installations/kafka_2.11-2.3.0/data/zookeeper


cd /Users/rgunasekaran/installations/kafka_2.11-2.3.0;
./bin/zookeeper-server-start.sh config/zookeeper.properties

[2019-10-01 21:37:28,474] INFO Reading configuration from: config/zookeeper.properties (org.apache.zookeeper.server.quorum.QuorumPeerConfig)
[2019-10-01 21:37:28,478] INFO autopurge.snapRetainCount set to 3 (org.apache.zookeeper.server.DatadirCleanupManager)
[2019-10-01 21:37:28,478] INFO autopurge.purgeInterval set to 0 (org.apache.zookeeper.server.DatadirCleanupManager)
[2019-10-01 21:37:28,478] INFO Purge task is not scheduled. (org.apache.zookeeper.server.DatadirCleanupManager)
[2019-10-01 21:37:28,478] WARN Either no config or no quorum defined in config, running  in standalone mode (org.apache.zookeeper.server.quorum.QuorumPeerMain)
[2019-10-01 21:37:28,490] INFO Reading configuration from: config/zookeeper.properties (org.apache.zookeeper.server.quorum.QuorumPeerConfig)
[2019-10-01 21:37:28,490] INFO Starting server (org.apache.zookeeper.server.ZooKeeperServerMain)
[2019-10-01 21:37:28,498] INFO Server environment:zookeeper.version=3.4.14-4c25d480e66aadd371de8bd2fd8da255ac140bcf, built on 03/06/2019 16:18 GMT (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,498] INFO Server environment:host.name=192.168.0.13 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,498] INFO Server environment:java.version=1.8.0_121 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,498] INFO Server environment:java.vendor=Oracle Corporation (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,498] INFO Server environment:java.home=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/jre (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,498] INFO Server environment:java.class.path=/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/activation-1.1.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/aopalliance-repackaged-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/argparse4j-0.7.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/audience-annotations-0.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/commons-lang3-3.8.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-api-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-basic-auth-extension-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-file-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-json-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-runtime-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/connect-transforms-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/guava-20.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/hk2-api-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/hk2-locator-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/hk2-utils-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-annotations-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-core-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-databind-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-dataformat-csv-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-datatype-jdk8-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-jaxrs-base-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-jaxrs-json-provider-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-module-jaxb-annotations-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-module-paranamer-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jackson-module-scala_2.11-2.9.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jakarta.annotation-api-1.3.4.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jakarta.inject-2.5.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jakarta.ws.rs-api-2.1.5.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/javassist-3.22.0-CR2.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/javax.servlet-api-3.1.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/javax.ws.rs-api-2.1.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jaxb-api-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-client-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-common-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-container-servlet-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-container-servlet-core-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-hk2-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-media-jaxb-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jersey-server-2.28.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-client-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-continuation-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-http-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-io-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-security-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-server-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-servlet-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-servlets-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jetty-util-9.4.18.v20190429.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jopt-simple-5.0.4.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/jsr305-3.0.2.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-clients-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-log4j-appender-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-examples-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-scala_2.11-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-streams-test-utils-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka-tools-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka_2.11-2.3.0-sources.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/kafka_2.11-2.3.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/log4j-1.2.17.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/lz4-java-1.6.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/maven-artifact-3.6.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/metrics-core-2.2.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/osgi-resource-locator-1.0.1.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/paranamer-2.8.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/plexus-utils-3.2.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/reflections-0.9.11.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/rocksdbjni-5.18.3.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/scala-library-2.11.12.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/scala-logging_2.11-3.9.0.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/scala-reflect-2.11.12.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/slf4j-api-1.7.26.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/slf4j-log4j12-1.7.26.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/snappy-java-1.1.7.3.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/spotbugs-annotations-3.1.9.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/validation-api-2.0.1.Final.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/zkclient-0.11.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/zookeeper-3.4.14.jar:/Users/rgunasekaran/installations/kafka_2.11-2.3.0/bin/../libs/zstd-jni-1.4.0-1.jar (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:java.library.path=/Users/rgunasekaran/Library/Java/Extensions:/Library/Java/Extensions:/Network/Library/Java/Extensions:/System/Library/Java/Extensions:/usr/lib/java:. (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:java.io.tmpdir=/var/folders/xl/jgm6cj295330fyryvqpwmt61pf5yhs/T/ (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:java.compiler=<NA> (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:os.name=Mac OS X (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:os.arch=x86_64 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:os.version=10.12.6 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:user.name=rgunasekaran (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:user.home=/Users/rgunasekaran (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,502] INFO Server environment:user.dir=/Users/rgunasekaran/installations/kafka_2.11-2.3.0 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,509] INFO tickTime set to 3000 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,509] INFO minSessionTimeout set to -1 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,510] INFO maxSessionTimeout set to -1 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:37:28,520] INFO Using org.apache.zookeeper.server.NIOServerCnxnFactory as server connection factory (org.apache.zookeeper.server.ServerCnxnFactory)
[2019-10-01 21:37:28,531] INFO binding to port 0.0.0.0/0.0.0.0:2181 (org.apache.zookeeper.server.NIOServerCnxnFactory)
[2019-10-01 21:39:06,423] INFO Accepted socket connection from /127.0.0.1:50890 (org.apache.zookeeper.server.NIOServerCnxnFactory)
[2019-10-01 21:39:06,431] INFO Client attempting to establish new session at /127.0.0.1:50890 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:39:06,432] INFO Creating new log file: log.1 (org.apache.zookeeper.server.persistence.FileTxnLog)
[2019-10-01 21:39:06,494] INFO Established session 0x100091f51c90000 with negotiated timeout 6000 for client /127.0.0.1:50890 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-10-01 21:39:06,555] INFO Got user-level KeeperException when processing sessionid:0x100091f51c90000 type:create cxid:0x2 zxid:0x3 txntype:-1 reqpath:n/a Error Path:/brokers Error:KeeperErrorCode = NoNode for /brokers (org.apache.zookeeper.server.PrepRequestProcessor)
[2019-10-01 21:39:06,561] INFO Got user-level KeeperException when processing sessionid:0x100091f51c90000 type:create cxid:0x6 zxid:0x7 txntype:-1 reqpath:n/a Error Path:/config Error:KeeperErrorCode = NoNode for /config (org.apache.zookeeper.server.PrepRequestProcessor)
[2019-10-01 21:39:06,566] INFO Got user-level KeeperException when processing sessionid:0x100091f51c90000 type:create cxid:0x9 zxid:0xa txntype:-1 reqpath:n/a Error Path:/admin Error:KeeperErrorCode = NoNode for /admin (org.apache.zookeeper.server.PrepRequestProcessor)
[2019-10-01 21:39:06,715] INFO Got user-level KeeperException when processing sessionid:0x100091f51c90000 type:create cxid:0x15 zxid:0x15 txntype:-1 reqpath:n/a Error Path:/cluster Error:KeeperErrorCode = NoNode for /cluster (org.apache.zookeeper.server.PrepRequestProcessor)
[2019-10-01 21:39:07,366] INFO Got user-level KeeperException when processing sessionid:0x100091f51c90000 type:multi cxid:0x38 zxid:0x1c txntype:-1 reqpath:n/a aborting remaining multi ops. Error Path:/admin/preferred_replica_election Error:KeeperErrorCode = NoNode for /admin/preferred_replica_election (org.apache.zookeeper.server.PrepRequestProcessor)
