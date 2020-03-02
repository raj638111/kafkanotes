
#32


# Is a way to run docker commands in a structured way


/Users/raj/ws/stephane/code/2-start-kafka $ ls
confluent-tools.sh	docker-compose.yml

docker-compose up
# This downloads the image if the image is not downloaded yet (probably from docker hub???)
# Creates the kafka cluster (With Kafka, Schema Registry & REST Proxy)

Creating network "2-start-kafka_default" with the default driver
Pulling kafka-cluster (landoop/fast-data-dev:cp3.3.0)...
cp3.3.0: Pulling from landoop/fast-data-dev
b56ae66c2937: Pull complete
...
1c722c378726: Pull complete
Digest: sha256:0177ed6416dd0a549a6ec5028e0d19d93b323d03086a452976c251bb9d6a54e4
Status: Downloaded newer image for landoop/fast-data-dev:cp3.3.0
Creating 2-start-kafka_kafka-cluster_1 ... done
Attaching to 2-start-kafka_kafka-cluster_1
kafka-cluster_1  | Setting advertised host to 127.0.0.1.
kafka-cluster_1  | Operating system RAM available is 3642 MiB, which is less than the lowest
kafka-cluster_1  | recommended of 5120 MiB. Your system performance may be seriously impacted.
kafka-cluster_1  | Starting services.
kafka-cluster_1  | This is landoop’s fast-data-dev. Kafka 0.11.0.0, Confluent OSS 3.3.0.
kafka-cluster_1  | You may visit http://127.0.0.1:3030 in about a minute.
kafka-cluster_1  | 2020-03-01 20:35:38,079 CRIT Supervisor running as root (no user in config file)
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/01-zookeeper.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/02-broker.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/03-schema-registry.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/04-rest-proxy.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/05-connect-distributed.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/06-caddy.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/07-smoke-tests.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,079 WARN Included extra file "/etc/supervisord.d/08-logs-to-kafka.conf" during parsing
kafka-cluster_1  | 2020-03-01 20:35:38,081 INFO supervisord started with pid 6
kafka-cluster_1  | 2020-03-01 20:35:39,088 INFO spawned: 'zookeeper' with pid 95
kafka-cluster_1  | 2020-03-01 20:35:39,093 INFO spawned: 'caddy' with pid 96
kafka-cluster_1  | 2020-03-01 20:35:39,098 INFO spawned: 'broker' with pid 97
kafka-cluster_1  | 2020-03-01 20:35:39,102 INFO spawned: 'smoke-tests' with pid 98
kafka-cluster_1  | 2020-03-01 20:35:39,105 INFO spawned: 'connect-distributed' with pid 99
kafka-cluster_1  | 2020-03-01 20:35:39,107 INFO spawned: 'logs-to-kafka' with pid 104
kafka-cluster_1  | 2020-03-01 20:35:39,110 INFO spawned: 'schema-registry' with pid 107
kafka-cluster_1  | 2020-03-01 20:35:39,114 INFO spawned: 'rest-proxy' with pid 108
kafka-cluster_1  | 2020-03-01 20:35:40,089 INFO success: zookeeper entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,089 INFO success: caddy entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,095 INFO success: broker entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,119 INFO success: smoke-tests entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,120 INFO success: connect-distributed entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,120 INFO success: logs-to-kafka entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,120 INFO success: schema-registry entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:40,120 INFO success: rest-proxy entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:41,459 INFO exited: schema-registry (exit status 1; not expected)
kafka-cluster_1  | 2020-03-01 20:35:41,498 INFO spawned: 'schema-registry' with pid 294
kafka-cluster_1  | 2020-03-01 20:35:41,506 INFO exited: rest-proxy (exit status 1; not expected)
kafka-cluster_1  | 2020-03-01 20:35:41,588 INFO spawned: 'rest-proxy' with pid 302
kafka-cluster_1  | 2020-03-01 20:35:42,711 INFO success: schema-registry entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:35:42,711 INFO success: rest-proxy entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
kafka-cluster_1  | 2020-03-01 20:36:39,082 INFO exited: smoke-tests (exit status 0; expected)