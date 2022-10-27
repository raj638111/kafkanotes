


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

-- Quiz

Which KSQL queries write to Kafka?
​
  CREATE STREAM WITH <topic> and CREATE TABLE WITH <topic>
  (Correct)
  ​COUNT and JOIN
  (Correct)
  ​SHOW STREAMS and EXPLAIN <query> statements
  ​SELECT … FROM foo WHERE ….
  ​CREATE STREAM AS SELECT and CREATE TABLE AS SELECT
  (Correct)

  SHOW STREAMS and EXPLAIN <query> statements run against the KSQL server that the KSQL client is connected to. They don’t communicate directly with Kafka. CREATE STREAM WITH <topic> and CREATE TABLE WITH <topic> write metadata to the KSQL command topic. Persistent queries based on CREATE STREAM AS SELECT and CREATE TABLE AS SELECT read and write to Kafka topics. Non-persistent queries based on SELECT that are stateless only read from Kafka topics, for example SELECT … FROM foo WHERE …. Non-persistent queries that are stateful read and write to Kafka, for example, COUNT and JOIN. The data in Kafka is deleted automatically when you terminate the query with CTRL-C.


