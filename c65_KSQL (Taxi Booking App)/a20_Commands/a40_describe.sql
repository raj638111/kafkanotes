describe extended USER_PROFILE_PRETTY;

Name                 : USER_PROFILE_PRETTY
Type                 : STREAM
Key field            :
Timestamp field      : Not set - using <ROWTIME>
Key format           : KAFKA
Value format         : JSON
Kafka topic          : USER_PROFILE_PRETTY (partitions: 1, replication: 1)
Statement            : CREATE STREAM USER_PROFILE_PRETTY WITH (KAFKA_TOPIC='USER_PROFILE_PRETTY', PARTITIONS=1, REPLICAS=1) AS SELECT ((((((((USERPROFILE.FIRSTNAME + ' ') + UCASE(USERPROFILE.LASTNAME)) + ' from ') + USERPROFILE.COUNTRYCODE) + ' has a rating of ') + CAST(USERPROFILE.RATING AS STRING)) + ' stars. ') + (CASE WHEN (USERPROFILE.RATING < 2.5) THEN 'Poor' WHEN (USERPROFILE.RATING BETWEEN 2.5 AND 4.2) THEN 'Good' ELSE 'Excellent' END)) DESCRIPTION
FROM USERPROFILE USERPROFILE
EMIT CHANGES;

 Field       | Type
-----------------------------------------
 ROWTIME     | BIGINT           (system)
 ROWKEY      | VARCHAR(STRING)  (system)
 DESCRIPTION | VARCHAR(STRING)
-----------------------------------------

Queries that write from this STREAM
-----------------------------------
CSAS_USER_PROFILE_PRETTY_0 (RUNNING) : CREATE STREAM USER_PROFILE_PRETTY WITH (KAFKA_TOPIC='USER_PROFILE_PRETTY', PARTITIONS=1, REPLICAS=1) AS SELECT ((((((((USERPROFILE.FIRSTNAME + ' ') + UCASE(USERPROFILE.LASTNAME)) + ' from ') + USERPROFILE.COUNTRYCODE) + ' has a rating of ') + CAST(USERPROFILE.RATING AS STRING)) + ' stars. ') + (CASE WHEN (USERPROFILE.RATING < 2.5) THEN 'Poor' WHEN (USERPROFILE.RATING BETWEEN 2.5 AND 4.2) THEN 'Good' ELSE 'Excellent' END)) DESCRIPTIONFROM USERPROFILE USERPROFILEEMIT CHANGES;

For query topology and execution plan please run: EXPLAIN <QueryId>

Local runtime statistics
------------------------
messages-per-sec:         0   total-messages:       222     last-message: 2020-05-15T16:14:11.402Z

(Statistics of the local KSQL server interaction with the Kafka topic USER_PROFILE_PRETTY)