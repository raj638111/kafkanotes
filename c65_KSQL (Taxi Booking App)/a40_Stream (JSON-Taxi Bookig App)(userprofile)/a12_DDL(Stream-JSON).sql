


-- Create topic

kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic USERPROFILE

-- Load JSON data

/Users/raj $ kafka-console-producer --broker-list localhost:9092 --topic USERPROFILE << EOF
> {"userid": 1000, "firstname": "Alison", "lastname": "Smith", "countrycode": "GB", "rating": 4.7}
> EOF
>>/Users/raj $

-- Create stream

create stream userprofile (
  userid INT,
  firstname VARCHAR,
  lastname VARCHAR,
  countrycode VARCHAR,
  rating DOUBLE)
with (VALUE_FORMAT = 'JSON', KAFKA_TOPIC = 'USERPROFILE');

 Message
----------------
 Stream created
----------------

describe extended userprofile;

Name                 : USERPROFILE
Type                 : STREAM
Key field            : ***Note: No key specified here
Timestamp field      : Not set - using <ROWTIME>
Key format           : KAFKA
Value format         : JSON
...