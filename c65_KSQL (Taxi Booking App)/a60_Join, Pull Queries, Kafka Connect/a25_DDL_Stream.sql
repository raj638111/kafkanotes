
-- Create new stream

  create stream up_joined as
  select up.firstname
  + ' ' + ucase(up.lastname)
  + ' from ' + ct.countryname
  + ' has a rating of ' + cast(rating as varchar) + ' stars.' as description
  from USERPROFILE up
  left join COUNTRYTABLE ct on ct.countrycode=up.countrycode;

  Message
  ----------------------------------------
   Created query with ID CSAS_UP_JOINED_5
  ----------------------------------------

-- Describe

  describe extended up_joined;

  Name                 : UP_JOINED
  Type                 : STREAM
  Key field            :
  Timestamp field      : Not set - using <ROWTIME>
  Key format           : KAFKA
  Value format         : JSON
  Kafka topic          : UP_JOINED (partitions: 1, replication: 1)
  Statement            : CREATE STREAM UP_JOINED WITH (KAFKA_TOPIC='UP_JOINED', PARTITIONS=1, REPLICAS=1) AS SELECT (((((((UP.FIRSTNAME + ' ') + UCASE(UP.LASTNAME)) + ' from ') + CT.COUNTRYNAME) + ' has a rating of ') + CAST(UP.RATING AS STRING)) + ' stars.') DESCRIPTION
  FROM USERPROFILE UP
  LEFT OUTER JOIN COUNTRYTABLE CT ON ((CT.COUNTRYCODE = UP.COUNTRYCODE))
  EMIT CHANGES;

   Field       | Type
  -----------------------------------------
   ROWTIME     | BIGINT           (system)
   ROWKEY      | VARCHAR(STRING)  (system)
   DESCRIPTION | VARCHAR(STRING)
  -----------------------------------------

  Queries that write from this STREAM
  -----------------------------------
  CSAS_UP_JOINED_5 (RUNNING) : CREATE STREAM UP_JOINED WITH (KAFKA_TOPIC='UP_JOINED', PARTITIONS=1, REPLICAS=1) AS SELECT (((((((UP.FIRSTNAME + ' ') + UCASE(UP.LASTNAME)) + ' from ') + CT.COUNTRYNAME) + ' has a rating of ') + CAST(UP.RATING AS STRING)) + ' stars.') DESCRIPTIONFROM USERPROFILE UPLEFT OUTER JOIN COUNTRYTABLE CT ON ((CT.COUNTRYCODE = UP.COUNTRYCODE))EMIT CHANGES;

  For query topology and execution plan please run: EXPLAIN <QueryId>

  Local runtime statistics
  ------------------------
  messages-per-sec:     17.48   total-messages:      1739     last-message: 2020-05-15T17:58:09.881Z

  (Statistics of the local KSQL server interaction with the Kafka topic UP_JOINED)

-- Select

  select * from up_joined emit changes limit 5;

+---------------------------------------------+---------------------------------------------+---------------------------------------------+
|ROWTIME                                      |ROWKEY                                       |DESCRIPTION                                  |
+---------------------------------------------+---------------------------------------------+---------------------------------------------+
|1589555940677                                |GB                                           |Alison SMITH from null has a rating of 4.7 st|
|                                             |                                             |ars.                                         |
|1589556087917                                |US                                           |Bob SMITH from null has a rating of 4.2 stars|
|                                             |                                             |.                                            |
|1589557265451                                |AU                                           |Grace COEN from null has a rating of 3.7 star|
|                                             |                                             |s.                                           |
|1589557265470                                |AU                                           |Grace DOTTY from null has a rating of 3.4 sta|
|                                             |                                             |rs.                                          |
|1589557265470                                |AU                                           |Bob EDISON from null has a rating of 4.9 star|
|                                             |                                             |s.                                           |
Limit Reached
Query terminated