
-- Old Stream with old schema
ksql> describe complaints_avro;

Name                 : COMPLAINTS_AVRO
 Field          | Type
--------------------------------------------
 ROWTIME        | BIGINT           (system)
 ROWKEY         | VARCHAR(STRING)  (system)
 CUSTOMER_NAME  | VARCHAR(STRING)
 COMPLAINT_TYPE | VARCHAR(STRING)
 TRIP_COST      | DOUBLE
 NEW_CUSTOMER   | BOOLEAN
--------------------------------------------

# This consumer(The Stream here is consumer) will not break; event
# with the new field that is added to the kafka topic
select  * from complaints_avro;


-- New stream with new schema

ksql> create stream complaints_avro_v2 with (kafka_topic='COMPLAINTS_AVRO', value_format='AVRO');

ksql> describe complaints_avro_v2;

Name                 : COMPLAINTS_AVRO_V2
 Field           | Type
---------------------------------------------
 ROWTIME         | BIGINT           (system)
 ROWKEY          | VARCHAR(STRING)  (system)
 CUSTOMER_NAME   | VARCHAR(STRING)
 COMPLAINT_TYPE  | VARCHAR(STRING)
 TRIP_COST       | DOUBLE
 NEW_CUSTOMER    | BOOLEAN
 NUMBER_OF_RIDES | INTEGER                         <-- *** NOTE new column
---------------------------------------------
For runtime statistics and query details run: DESCRIBE EXTENDED <Stream,Table>;