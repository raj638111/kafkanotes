

-- Create & populate USERS topic

kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic USERS
Created topic USERS.

kafka-console-producer --broker-list localhost:9092 --topic USERS
Alice,US