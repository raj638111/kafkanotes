
------------------------------------------------------------------------------------
-- Start Zookeeper
------------------------------------------------------------------------------------

vi $HOME/kafka/config/zookeeper.properties
  + dataDir=/Users/raj/kafka/data/zookeeper

mkdir -p $HOME/kafka/data/zookeeper


cd $HOME/kafka
./bin/zookeeper-server-start.sh config/zookeeper.properties

[2019-11-29 15:29:08,884] INFO Reading configuration from: config/zookeeper.properties (org.apache.zookeeper.server.quorum.QuorumPeerConfig)
[2019-11-29 15:29:08,888] INFO autopurge.snapRetainCount set to 3 (org.apache.zookeeper.server.DatadirCleanupManager)
[2019-11-29 15:29:08,889] INFO autopurge.purgeInterval set to 0 (org.apache.zookeeper.server.DatadirCleanupManager)
[2019-11-29 15:29:08,889] INFO Purge task is not scheduled. (org.apache.zookeeper.server.DatadirCleanupManager)
[2019-11-29 15:29:08,889] WARN Either no config or no quorum defined in config, running  in standalone mode (org.apache.zookeeper.server.quorum.QuorumPeerMain)
[2019-11-29 15:29:08,905] INFO Reading configuration from: config/zookeeper.properties (org.apache.zookeeper.server.quorum.QuorumPeerConfig)
[2019-11-29 15:29:08,906] INFO Starting server (org.apache.zookeeper.server.ZooKeeperServerMain)
[2019-11-29 15:29:13,918] INFO Server environment:zookeeper.version=3.4.14-4c25d480e66aadd371de8bd2fd8da255ac140bcf, built on 03/06/2019 16:18 GMT (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,918] INFO Server environment:host.name=192.168.0.11 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,919] INFO Server environment:java.version=1.8.0_232 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,919] INFO Server environment:java.vendor=AdoptOpenJDK (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,919] INFO Server environment:java.home=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/jre (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,919] INFO Server environment:java.class.path=/Users/raj/kafka/bin/../libs/activation-1.1.1.jar:/Users/raj/kafka/bin/../libs/aopalliance-repackaged-2.5.0.jar:/Users/raj/kafka/bin/../libs/argparse4j-0.7.0.jar:/Users/raj/kafka/bin/../libs/audience-annotations-0.5.0.jar:/Users/raj/kafka/bin/../libs/commons-lang3-3.8.1.jar:/Users/raj/kafka/bin/../libs/connect-api-2.3.1.jar:/Users/raj/kafka/bin/../libs/connect-basic-auth-extension-2.3.1.jar:/Users/raj/kafka/bin/../libs/connect-file-2.3.1.jar:/Users/raj/kafka/bin/../libs/connect-json-2.3.1.jar:/Users/raj/kafka/bin/../libs/connect-runtime-2.3.1.jar:/Users/raj/kafka/bin/../libs/connect-transforms-2.3.1.jar:/Users/raj/kafka/bin/../libs/guava-20.0.jar:/Users/raj/kafka/bin/../libs/hk2-api-2.5.0.jar:/Users/raj/kafka/bin/../libs/hk2-locator-2.5.0.jar:/Users/raj/kafka/bin/../libs/hk2-utils-2.5.0.jar:/Users/raj/kafka/bin/../libs/jackson-annotations-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-core-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-databind-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-dataformat-csv-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-datatype-jdk8-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-jaxrs-base-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-jaxrs-json-provider-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-module-jaxb-annotations-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-module-paranamer-2.10.0.jar:/Users/raj/kafka/bin/../libs/jackson-module-scala_2.12-2.10.0.jar:/Users/raj/kafka/bin/../libs/jakarta.activation-api-1.2.1.jar:/Users/raj/kafka/bin/../libs/jakarta.annotation-api-1.3.4.jar:/Users/raj/kafka/bin/../libs/jakarta.inject-2.5.0.jar:/Users/raj/kafka/bin/../libs/jakarta.ws.rs-api-2.1.5.jar:/Users/raj/kafka/bin/../libs/jakarta.xml.bind-api-2.3.2.jar:/Users/raj/kafka/bin/../libs/javassist-3.22.0-CR2.jar:/Users/raj/kafka/bin/../libs/javax.servlet-api-3.1.0.jar:/Users/raj/kafka/bin/../libs/javax.ws.rs-api-2.1.1.jar:/Users/raj/kafka/bin/../libs/jaxb-api-2.3.0.jar:/Users/raj/kafka/bin/../libs/jersey-client-2.28.jar:/Users/raj/kafka/bin/../libs/jersey-common-2.28.jar:/Users/raj/kafka/bin/../libs/jersey-container-servlet-2.28.jar:/Users/raj/kafka/bin/../libs/jersey-container-servlet-core-2.28.jar:/Users/raj/kafka/bin/../libs/jersey-hk2-2.28.jar:/Users/raj/kafka/bin/../libs/jersey-media-jaxb-2.28.jar:/Users/raj/kafka/bin/../libs/jersey-server-2.28.jar:/Users/raj/kafka/bin/../libs/jetty-client-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-continuation-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-http-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-io-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-security-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-server-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-servlet-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-servlets-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jetty-util-9.4.18.v20190429.jar:/Users/raj/kafka/bin/../libs/jopt-simple-5.0.4.jar:/Users/raj/kafka/bin/../libs/jsr305-3.0.2.jar:/Users/raj/kafka/bin/../libs/kafka-clients-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka-log4j-appender-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka-streams-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka-streams-examples-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka-streams-scala_2.12-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka-streams-test-utils-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka-tools-2.3.1.jar:/Users/raj/kafka/bin/../libs/kafka_2.12-2.3.1-sources.jar:/Users/raj/kafka/bin/../libs/kafka_2.12-2.3.1.jar:/Users/raj/kafka/bin/../libs/log4j-1.2.17.jar:/Users/raj/kafka/bin/../libs/lz4-java-1.6.0.jar:/Users/raj/kafka/bin/../libs/maven-artifact-3.6.1.jar:/Users/raj/kafka/bin/../libs/metrics-core-2.2.0.jar:/Users/raj/kafka/bin/../libs/osgi-resource-locator-1.0.1.jar:/Users/raj/kafka/bin/../libs/paranamer-2.8.jar:/Users/raj/kafka/bin/../libs/plexus-utils-3.2.0.jar:/Users/raj/kafka/bin/../libs/reflections-0.9.11.jar:/Users/raj/kafka/bin/../libs/rocksdbjni-5.18.3.jar:/Users/raj/kafka/bin/../libs/scala-library-2.12.10.jar:/Users/raj/kafka/bin/../libs/scala-library-2.12.8.jar:/Users/raj/kafka/bin/../libs/scala-logging_2.12-3.9.0.jar:/Users/raj/kafka/bin/../libs/scala-reflect-2.12.8.jar:/Users/raj/kafka/bin/../libs/slf4j-api-1.7.26.jar:/Users/raj/kafka/bin/../libs/slf4j-log4j12-1.7.26.jar:/Users/raj/kafka/bin/../libs/snappy-java-1.1.7.3.jar:/Users/raj/kafka/bin/../libs/spotbugs-annotations-3.1.9.jar:/Users/raj/kafka/bin/../libs/validation-api-2.0.1.Final.jar:/Users/raj/kafka/bin/../libs/zkclient-0.11.jar:/Users/raj/kafka/bin/../libs/zookeeper-3.4.14.jar:/Users/raj/kafka/bin/../libs/zstd-jni-1.4.0-1.jar (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,923] INFO Server environment:java.library.path=/Users/raj/Library/Java/Extensions:/Library/Java/Extensions:/Network/Library/Java/Extensions:/System/Library/Java/Extensions:/usr/lib/java:. (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,923] INFO Server environment:java.io.tmpdir=/var/folders/ty/297_tr6524nf3p8vynp7v1z00000gn/T/ (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:java.compiler=<NA> (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:os.name=Mac OS X (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:os.arch=x86_64 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:os.version=10.15.1 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:user.name=raj (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:user.home=/Users/raj (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,924] INFO Server environment:user.dir=/Users/raj/installations/kafka_2.12-2.3.1 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,934] INFO tickTime set to 3000 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,934] INFO minSessionTimeout set to -1 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,934] INFO maxSessionTimeout set to -1 (org.apache.zookeeper.server.ZooKeeperServer)
[2019-11-29 15:29:13,949] INFO Using org.apache.zookeeper.server.NIOServerCnxnFactory as server connection factory (org.apache.zookeeper.server.ServerCnxnFactory)
[2019-11-29 15:29:13,962] INFO binding to port 0.0.0.0/0.0.0.0:2181 (org.apache.zookeeper.server.NIOServerCnxnFactory)