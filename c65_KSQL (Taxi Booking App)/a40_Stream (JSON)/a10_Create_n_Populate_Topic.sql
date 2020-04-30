
-- Create topic

kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic USERPROFILE

-- Load JSON data

/Users/raj $ kafka-console-producer --broker-list localhost:9092 --topic USERPROFILE << EOF
> {"userid": 1000, "firstname": "Alison", "lastname": "Smith", "countrycode": "GB", "rating": 4.7}
> EOF
>>/Users/raj $

