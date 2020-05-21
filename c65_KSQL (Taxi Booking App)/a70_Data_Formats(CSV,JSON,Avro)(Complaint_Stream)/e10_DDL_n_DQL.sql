
-- DDL
  kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic WEATHERNESTED

  cat demo-weather.json | kafka-console-producer --broker-list localhost:9092 --topic WEATHERNESTED
  Extract like this - At KSQL prompt

  SET 'auto.offset.reset'='earliest';


  CREATE STREAM weather
        (city STRUCT <name VARCHAR, country VARCHAR, latitude DOUBLE, longitude DOUBLE>,
         description VARCHAR,
         clouds BIGINT,
         deg BIGINT,
         humidity BIGINT,
         pressure DOUBLE,
         rain DOUBLE)
  WITH (KAFKA_TOPIC='WEATHERNESTED', VALUE_FORMAT='JSON');

   Message
  ----------------
   Stream created
  ----------------

-- DQL

SELECT city->name AS city_name, city->country AS city_country, city->latitude as latitude, city->longitude as longitude, description, rain from weather emit changes;

-- Describe

describe extended weather;

Name                 : WEATHER
Type                 : STREAM
Key field            :  **** Note here Key field is not set? (This would be the next topic...Rekeying)
Timestamp field      : Not set - using <ROWTIME>
Key format           : KAFKA
Value format         : JSON
Kafka topic          : WEATHERNESTED (partitions: 1, replication: 1)
Statement            : CREATE STREAM weather
      (city STRUCT <name VARCHAR, country VARCHAR, latitude DOUBLE, longitude DOUBLE>,
       description VARCHAR,
       clouds BIGINT,
       deg BIGINT,
       humidity BIGINT,
       pressure DOUBLE,
       rain DOUBLE)
WITH (KAFKA_TOPIC='WEATHERNESTED', VALUE_FORMAT='JSON');

 Field       | Type
--------------------------------------------------------------------------------------------------------
 ROWTIME     | BIGINT           (system)
 ROWKEY      | VARCHAR(STRING)  (system)
 CITY        | STRUCT<NAME VARCHAR(STRING), COUNTRY VARCHAR(STRING), LATITUDE DOUBLE, LONGITUDE DOUBLE>
 DESCRIPTION | VARCHAR(STRING)
 CLOUDS      | BIGINT
 DEG         | BIGINT
 HUMIDITY    | BIGINT
 PRESSURE    | DOUBLE
 RAIN        | DOUBLE
--------------------------------------------------------------------------------------------------------

Local runtime statistics
------------------------


(Statistics of the local KSQL server interaction with the Kafka topic WEATHERNESTED)
ksql>


