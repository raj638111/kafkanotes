
-- List all topics and streams

# We can use 'list topics' or 'list streams' or 'list tables'
ksql> list topics;

 Kafka Topic                 | Partitions | Partition Replicas
---------------------------------------------------------------
 _confluent-license          | 1          | 1
 _confluent-metrics          | 12         | 1
 _schemas                    | 1          | 1
 default_ksql_processing_log | 1          | 1
---------------------------------------------------------------

ksql> show topics;

 Kafka Topic                 | Partitions | Partition Replicas
---------------------------------------------------------------
 _confluent-license          | 1          | 1
 _confluent-metrics          | 12         | 1
 _confluent-monitoring       | 1          | 1
 _schemas                    | 1          | 1
 default_ksql_processing_log | 1          | 1
---------------------------------------------------------------
