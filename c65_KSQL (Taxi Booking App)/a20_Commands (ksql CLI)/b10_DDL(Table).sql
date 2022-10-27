
#12
-- Create topic COUNTRY-CSV

  kafka-topics --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic COUNTRY-CSV
  Created topic COUNTRY-CSV.

-- Produce data to topic COUNTRY-CSV
  (Ensure we specify the key, as the Table needs a key)

  kafka-console-producer --broker-list localhost:9092 --topic COUNTRY-CSV --property "parse.key=true"  --property "key.separator=:" << EOF

  > AU:AU,Australia
  > IN:IN,India
  > GB:GB,UK
  > US:US,United States
  > EOF

-- Create table

  CREATE TABLE COUNTRYTABLE  (countrycode VARCHAR, countryname VARCHAR) WITH (KAFKA_TOPIC='COUNTRY-CSV', VALUE_FORMAT='DELIMITED', KEY = 'countrycode');

  Message
  ---------------
   Table created
  ---------------

  list tables;
  Table Name   | Kafka Topic | Format    | Windowed
  ---------------------------------------------------
   COUNTRYTABLE | COUNTRY-CSV | DELIMITED | false
  ---------------------------------------------------

  describe extended COUNTRYTABLE;

  Name                 : COUNTRYTABLE
  Type                 : TABLE
  Key field            : COUNTRYCODE
  Timestamp field      : Not set - using <ROWTIME>
  Key format           : KAFKA
  Value format         : DELIMITED
  Kafka topic          : COUNTRY-CSV (partitions: 1, replication: 1)
  Statement            : CREATE TABLE COUNTRYTABLE  (countrycode VARCHAR, countryname VARCHAR) WITH (KAFKA_TOPIC='COUNTRY-CSV', VALUE_FORMAT='DELIMITED', KEY = 'countrycode');

   Field       | Type
  -----------------------------------------
   ROWTIME     | BIGINT           (system)
   ROWKEY      | VARCHAR(STRING)  (system)
   COUNTRYCODE | VARCHAR(STRING)
   COUNTRYNAME | VARCHAR(STRING)
  -----------------------------------------

  Local runtime statistics
  ------------------------


  (Statistics of the local KSQL server interaction with the Kafka topic COUNTRY-CSV)


  select countrycode, countryname from COUNTRYTABLE emit changes;
  +--------------------------------------------------------------------+--------------------------------------------------------------------+
  |COUNTRYCODE                                                         |COUNTRYNAME                                                         |
  +--------------------------------------------------------------------+--------------------------------------------------------------------+
  |AU                                                                  |Australia                                                           |
  |IN                                                                  |India                                                               |
  |GB                                                                  |UK                                                                  |
  |US                                                                  |United States                                                       |