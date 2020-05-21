
-- Create an equivalent kafka topic (with prefix db-<>) for the tables
-- with name 'carusers' (whitelist)
-- NOTE: All the changes in the table will be pulled into the topic
--       as and when there is a change in the table

CREATE SOURCE CONNECTOR `postgres-jdbc-source` WITH(
  "connector.class"='io.confluent.connect.jdbc.JdbcSourceConnector',
  "connection.url"='jdbc:postgresql://postgres:5432/postgres',
  "mode"='incrementing',
  "incrementing.column.name"='ref',
  "table.whitelist"='carusers',
  "connection.password"='password',
  "connection.user"='postgres',
  "topic.prefix"='db-',
  "key"='username');

Message
----------------------------------------
 Created connector postgres-jdbc-source
----------------------------------------

list topics;

Kafka Topic                 | Partitions | Partition Replicas
---------------------------------------------------------------
 _schemas                    | 1          | 1
 db-carusers                 | 1          | 1 *****
 default_ksql_processing_log | 1          | 1
 docker-connect-configs      | 1          | 1
 docker-connect-offsets      | 25         | 1
 docker-connect-status       | 5          | 1
---------------------------------------------------------------


print 'db-carusers' from beginning;

Format:AVRO
5/15/20 6:44:21 PM UTC, Alice, {"username": "Alice", "ref": 1}
5/15/20 6:44:21 PM UTC, Bob, {"username": "Bob", "ref": 2}
5/15/20 6:44:21 PM UTC, Charlie, {"username": "Charlie", "ref": 3}

-- Check if new row addition in table is pulled into topic?

docker-compose exec postgres psql -U postgres -c "insert into carusers(username) values('Derek')";
INSERT 0 1

(Outpt in KSQL)
5/15/20 6:49:15 PM UTC, Derek, {"username": "Derek", "ref": 4}

