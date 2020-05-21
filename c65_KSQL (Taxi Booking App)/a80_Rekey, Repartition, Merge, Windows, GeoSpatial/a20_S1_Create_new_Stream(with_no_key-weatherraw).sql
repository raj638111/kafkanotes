

-- DDL
  (Note: We are setting the data format as Avro; although the source Stream is in JSON)
  create stream weatherraw with (value_format='AVRO') as SELECT city->name AS city_name, city->country AS city_country, city->latitude as latitude, city->longitude as longitude, description, rain from weather ;

--

  list streams;
  -- note AVRO
  Stream Name         | Kafka Topic                 | Format
  ------------------------------------------------------------
   COMPLAINTS_AVRO_V2  | COMPLAINTS_AVRO             | AVRO
   KSQL_PROCESSING_LOG | default_ksql_processing_log | JSON
   UP_JOINED           | UP_JOINED                   | JSON
   USERPROFILE         | USERPROFILE                 | JSON
   WEATHER             | WEATHERNESTED               | JSON **
   WEATHERRAW          | WEATHERRAW                  | AVRO **
  ------------------------------------------------------------

--


  describe extended weatherraw;

  Name                 : WEATHERRAW
  Type                 : STREAM
  Key field            : *** Note: Key field is blank
  Timestamp field      : Not set - using <ROWTIME>
  Key format           : KAFKA
  Value format         : AVRO
  Kafka topic          : WEATHERRAW (partitions: 1, replication: 1)
  Statement            : CREATE STREAM WEATHERRAW WITH (KAFKA_TOPIC='WEATHERRAW', PARTITIONS=1, REPLICAS=1, VALUE_FORMAT='AVRO') AS SELECT
    WEATHER.CITY->NAME CITY_NAME,
    WEATHER.CITY->COUNTRY CITY_COUNTRY,
    WEATHER.CITY->LATITUDE LATITUDE,
    WEATHER.CITY->LONGITUDE LONGITUDE,
    WEATHER.DESCRIPTION DESCRIPTION,
    WEATHER.RAIN RAIN
  FROM WEATHER WEATHER
  EMIT CHANGES;

   Field        | Type
  ------------------------------------------
   ROWTIME      | BIGINT           (system)
   ROWKEY       | VARCHAR(STRING)  (system)
   CITY_NAME    | VARCHAR(STRING)
   CITY_COUNTRY | VARCHAR(STRING)
   LATITUDE     | DOUBLE
   LONGITUDE    | DOUBLE
   DESCRIPTION  | VARCHAR(STRING)
   RAIN         | DOUBLE
  ------------------------------------------

  Queries that write from this STREAM
  -----------------------------------
  CSAS_WEATHERRAW_13 (RUNNING) : CREATE STREAM WEATHERRAW WITH (KAFKA_TOPIC='WEATHERRAW', PARTITIONS=1, REPLICAS=1, VALUE_FORMAT='AVRO') AS SELECT  WEATHER.CITY->NAME CITY_NAME,  WEATHER.CITY->COUNTRY CITY_COUNTRY,  WEATHER.CITY->LATITUDE LATITUDE,  WEATHER.CITY->LONGITUDE LONGITUDE,  WEATHER.DESCRIPTION DESCRIPTION,  WEATHER.RAIN RAINFROM WEATHER WEATHEREMIT CHANGES;

  For query topology and execution plan please run: EXPLAIN <QueryId>

  Local runtime statistics
  ------------------------


  (Statistics of the local KSQL server interaction with the Kafka topic WEATHERRAW)


