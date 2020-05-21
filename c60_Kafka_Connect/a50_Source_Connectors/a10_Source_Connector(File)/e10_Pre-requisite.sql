

// Get into container bash
docker run --rm -it --net=host landoop/fast-data-dev:cp3.3.0 bash

// Create target kafka topic
kafka-topics --create --topic demo-2-distributed --partitions 3 \
--replication-factor 1 --zookeeper 127.0.0.1:2181