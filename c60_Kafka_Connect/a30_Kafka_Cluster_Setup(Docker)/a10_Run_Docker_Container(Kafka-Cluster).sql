
# **Wait for ~5 minutes for the connectors to get loaded

/Users/raj/ws/stephane/kafka-connect/code $ docker-compose up kafka-cluster
Starting code_kafka-cluster_1 ... done
Attaching to code_kafka-cluster_1
kafka-cluster_1  | Setting advertised host to 127.0.0.1.
kafka-cluster_1  | Operating system RAM available is 3679 MiB, which is less than the lowest
kafka-cluster_1  | recommended of 5120 MiB. Your system performance may be seriously impacted.
kafka-cluster_1  | Starting services.
kafka-cluster_1  | This is landoop’s fast-data-dev. Kafka 0.11.0.0, Confluent OSS 3.3.0.
kafka-cluster_1  | You may visit http://127.0.0.1:3030 in about a minute.
kafka-cluster_1  | 2020-03-02 22:49:35,090 CRIT Supervisor running as root (no user in config file)
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/01-zookeeper.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/02-broker.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/03-schema-registry.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/04-rest-proxy.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/05-connect-distributed.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/06-caddy.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,090 WARN Included extra file "/etc/supervisord.d/07-smoke-tests.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,091 WARN Included extra file "/etc/supervisord.d/08-logs-to-kafka.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,091 WARN Included extra file "/etc/supervisord.d/99-supervisord-sample-data.conf" during parsing
kafka-cluster_1  | 2020-03-02 22:49:35,093 INFO supervisord started with pid 7
kafka-cluster_1  | 2020-03-02 22:49:36,098 INFO spawned: 'sample-data' with pid 97
kafka-cluster_1  | 2020-03-02 22:49:36,105 INFO spawned: 'zookeeper' with pid 98
kafka-cluster_1  | 2020-03-02 22:49:36,110 INFO spawned: 'caddy' with pid 99
kafka-cluster_1  | 2020-03-02 22:49:36,113 INFO spawned: 'broker' with pid 101
kafka-cluster_1  | 2020-03-02 22:49:36,116 INFO spawned: 'smoke-tests' with pid 102
kafka-cluster_1  | 2020-03-02 22:49:36,118 INFO spawned: 'connect-distributed' with pid 104
kafka-cluster_1  | 2020-03-02 22:49:36,120 INFO spawned: 'logs-to-kafka' with pid 110
kafka-cluster_1  | 2020-03-02 22:49:36,123 INFO spawned: 'schema-registry' with pid 114
kafka-cluster_1  | 2020-03-02 22:49:36,125 INFO spawned: 'rest-proxy' with pid 116
kafka-cluster_1  | 2020-03-02 22:49:37,128 INFO success: sample-data entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,128 INFO success: zookeeper entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,128 INFO success: caddy entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,129 INFO success: broker entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,129 INFO success: smoke-tests entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,129 INFO success: connect-distributed entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,130 INFO success: logs-to-kafka entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,131 INFO success: schema-registry entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:37,131 INFO success: rest-proxy entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:40,119 INFO exited: schema-registry (exit status 1; not expected)
kafka-cluster_1  | 2020-03-02 22:49:40,125 INFO spawned: 'schema-registry' with pid 281
kafka-cluster_1  | 2020-03-02 22:49:40,564 INFO exited: rest-proxy (exit status 1; not expected)
kafka-cluster_1  | 2020-03-02 22:49:40,713 INFO spawned: 'rest-proxy' with pid 316
kafka-cluster_1  | 2020-03-02 22:49:41,163 INFO success: schema-registry entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-02 22:49:41,791 INFO success: rest-proxy entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)