

create stream my_stream as select firstname from userprofile;

 Message
-----------------------------------------
 Created query with ID CSAS_MY_STREAM_27
-----------------------------------------


show queries;

 Query ID                      | Status  | Sink Name             | Sink Kafka Topic      | Query String
---------------------------------------------------------------------------------------------------------------------------------------------
 CSAS_UP_JOINED_5              | RUNNING | UP_JOINED             | UP_JOINED             | CREATE STREAM UP_JOINED WITH (KAFKA_TOPIC='UP_JOINED', PARTITIONS=1, REPLICAS=1) AS SELECT (((((((UP.FIRSTNAME + ' ') + UCASE(UP.LASTNAME)) + ' from ') + CT.COUNTRYNAME) + ' has a rating of ') + CAST(UP.RATING AS STRING)) + ' stars.') DESCRIPTIONFROM USERPROFILE UPLEFT OUTER JOIN COUNTRYTABLE CT ON ((CT.COUNTRYCODE = UP.COUNTRYCODE))EMIT CHANGES;
 CSAS_MY_STREAM_27             | RUNNING | MY_STREAM             | MY_STREAM             | CREATE STREAM MY_STREAM WITH (KAFKA_TOPIC='MY_STREAM', PARTITIONS=1, REPLICAS=1) AS SELECT USERPROFILE.FIRSTNAME FIRSTNAMEFROM USERPROFILE USERPROFILEEMIT CHANGES;
 CSAS_WEATHERRAW_13            | RUNNING | WEATHERRAW            | WEATHERRAW            | CREATE STREAM WEATHERRAW WITH (KAFKA_TOPIC='WEATHERRAW', PARTITIONS=1, REPLICAS=1, VALUE_FORMAT='AVRO') AS SELECT  WEATHER.CITY->NAME CITY_NAME,  WEATHER.CITY->COUNTRY CITY_COUNTRY,  WEATHER.CITY->LATITUDE LATITUDE,  WEATHER.CITY->LONGITUDE LONGITUDE,  WEATHER.DESCRIPTION DESCRIPTION,  WEATHER.RAIN RAINFROM WEATHER WEATHEREMIT CHANGES;
 CSAS_DRIVERPROFILE_REKEYED_21 | RUNNING | DRIVERPROFILE_REKEYED | DRIVERPROFILE_REKEYED | CREATE STREAM DRIVERPROFILE_REKEYED WITH (KAFKA_TOPIC='DRIVERPROFILE_REKEYED', PARTITIONS=1, REPLICAS=1) AS SELECT *FROM DRIVER_PROFILE DRIVER_PROFILEPARTITION BY DRIVER_PROFILE.DRIVER_NAMEEMIT CHANGES;
 CSAS_WEATHERREKEYED_19        | RUNNING | WEATHERREKEYED        | WEATHERREKEYED        | CREATE STREAM WEATHERREKEYED WITH (KAFKA_TOPIC='WEATHERREKEYED', PARTITIONS=1, REPLICAS=1) AS SELECT *FROM WEATHERRAW WEATHERRAWPARTITION BY WEATHERRAW.CITY_NAMEEMIT CHANGES;
---------------------------------------------------------------------------------------------------------------------------------------------
For detailed information on a Query run: EXPLAIN <Query ID>;

--

explain CSAS_MY_STREAM_27;

ID                   : CSAS_MY_STREAM_27
SQL                  : CREATE STREAM MY_STREAM WITH (KAFKA_TOPIC='MY_STREAM', PARTITIONS=1, REPLICAS=1) AS SELECT USERPROFILE.FIRSTNAME FIRSTNAME
FROM USERPROFILE USERPROFILE
EMIT CHANGES;
Status               : RUNNING

 Field     | Type
---------------------------------------
 ROWTIME   | BIGINT           (system)
 ROWKEY    | VARCHAR(STRING)  (system)
 FIRSTNAME | VARCHAR(STRING)
---------------------------------------

Sources that this query reads from:
-----------------------------------
USERPROFILE

For source description please run: DESCRIBE [EXTENDED] <SourceId>

Sinks that this query writes to:
-----------------------------------
MY_STREAM

For sink description please run: DESCRIBE [EXTENDED] <SinkId>

Execution plan
--------------
 > [ SINK ] | Schema: ROWKEY STRING KEY, FIRSTNAME STRING | Logger: CSAS_MY_STREAM_27.MY_STREAM
		 > [ PROJECT ] | Schema: ROWKEY STRING KEY, FIRSTNAME STRING | Logger: CSAS_MY_STREAM_27.Project
				 > [ SOURCE ] | Schema: ROWKEY STRING KEY, USERID INTEGER, FIRSTNAME STRING, LASTNAME STRING, COUNTRYCODE STRING, RATING DOUBLE, ROWTIME BIGINT, ROWKEY STRING | Logger: CSAS_MY_STREAM_27.KsqlTopic.Source


Processing topology (***This is basically the KStream Topology)
-------------------
Topologies:
   Sub-topology: 0
    Source: KSTREAM-SOURCE-0000000000 (topics: [USERPROFILE])
      --> KSTREAM-TRANSFORMVALUES-0000000001
    Processor: KSTREAM-TRANSFORMVALUES-0000000001 (stores: [])
      --> Project
      <-- KSTREAM-SOURCE-0000000000
    Processor: Project (stores: [])
      --> KSTREAM-SINK-0000000003
      <-- KSTREAM-TRANSFORMVALUES-0000000001
    Sink: KSTREAM-SINK-0000000003 (topic: MY_STREAM)
      <-- Project



Overridden Properties
---------------------
 Property          | Value
---------------------------
 auto.offset.reset |
---------------------------


--

## Kafka Streams Topology Visualizer
_Converts an ASCII Kafka Topology description into a hand drawn diagram._

- See https://zz85.github.io/kafka-streams-viz/
