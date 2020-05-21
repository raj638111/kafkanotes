
docker-compose up -d

Starting zookeeper ...
Starting zookeeper ... done
Creating kafka     ... done
Creating schema-registry ... done
Creating kafka-connect   ... done
Creating ksqldb-server   ... done
Creating ksqldb-cli      ... done

docker ps

CONTAINER ID        IMAGE                                          COMMAND                  CREATED              STATUS                            PORTS                                        NAMES
1cf40ee46889        confluentinc/ksqldb-cli:0.6.0                  "/bin/sh"                6 seconds ago        Up 5 seconds                                                                   ksqldb-cli
f133ed983ad4        confluentinc/ksqldb-server:0.6.0               "/usr/bin/docker/run"    6 seconds ago        Up 5 seconds                      0.0.0.0:8088->8088/tcp                       ksqldb-server
d6a3ef96c90b        confluentinc/cp-kafka-connect:5.4.0-beta1      "/etc/confluent/dock…"   7 seconds ago        Up 6 seconds (health: starting)   0.0.0.0:8083->8083/tcp, 9092/tcp             kafka-connect
3ba0e56fa353        confluentinc/cp-schema-registry:5.4.0-beta1    "/etc/confluent/dock…"   8 seconds ago        Up 7 seconds                      0.0.0.0:8081->8081/tcp                       schema-registry
dacc7a3aee4f        confluentinc/cp-enterprise-kafka:5.4.0-beta1   "/etc/confluent/dock…"   8 seconds ago        Up 7 seconds                      0.0.0.0:9092->9092/tcp                       kafka
559e27e290b6        postgres:11.2                                  "docker-entrypoint.s…"   About a minute ago   Up About a minute                 0.0.0.0:5432->5432/tcp                       postgres
61bc549e2244        confluentinc/cp-zookeeper:5.4.0-beta1          "/etc/confluent/dock…"   About a minute ago   Up 8 seconds                      2888/tcp, 0.0.0.0:2181->2181/tcp, 3888/tcp   zookeeper