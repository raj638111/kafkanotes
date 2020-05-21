
-- Create new stream by rekeying using 'partition'

  create stream weatherrekeyed as select * from weatherraw partition by city_name;
  Message
  ----------------------------------------------
   Created query with ID CSAS_WEATHERREKEYED_19
  ----------------------------------------------

-- Check if the new Stream has key

  describe extended weatherrekeyed;

  Name                 : WEATHERREKEYED
  Type                 : STREAM
  Key field            : CITY_NAME ** Note the key here
  Timestamp field      : Not set - using <ROWTIME>
  Key format           : KAFKA
  Value format         : AVRO
  Kafka topic          : WEATHERREKEYED (partitions: 1, replication: 1)
  Statement            : CREATE STREAM WEATHERREKEYED WITH (KAFKA_TOPIC='WEATHERREKEYED', PARTITIONS=1, REPLICAS=1) AS SELECT *
  FROM WEATHERRAW WEATHERRAW
  PARTITION BY WEATHERRAW.CITY_NAME
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
  CSAS_WEATHERREKEYED_19 (RUNNING) : CREATE STREAM WEATHERREKEYED WITH (KAFKA_TOPIC='WEATHERREKEYED', PARTITIONS=1, REPLICAS=1) AS SELECT *FROM WEATHERRAW WEATHERRAWPARTITION BY WEATHERRAW.CITY_NAMEEMIT CHANGES;

  For query topology and execution plan please run: EXPLAIN <QueryId>

  Local runtime statistics
  ------------------------


  (Statistics of the local KSQL server interaction with the Kafka topic WEATHERREKEYED)

-- Select (Validate if rowkey is same as city_name)

set 'auto.offset.reset' = 'earliest';
Successfully changed local property 'auto.offset.reset' to 'earliest'. Use the UNSET command to revert your change.

select rowkey, city_name from weatherrekeyed emit changes limit 10;
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|ROWKEY                                                              |CITY_NAME                                                           |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|Sydney                                                              |Sydney                                                              |
|Seattle                                                             |Seattle                                                             |
|San Francisco                                                       |San Francisco                                                       |

