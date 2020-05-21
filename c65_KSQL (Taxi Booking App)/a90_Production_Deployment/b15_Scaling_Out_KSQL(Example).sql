

-- Multi Server (This setup has two KSQL server running)

docker-compose  -f docker-compose-prod.yml up -d
ksql-datagen schema=./datagen/userprofile.avro format=json topic=USERPROFILE key=userid maxInterval=1000 iterations=10000

In KSQL


CREATE STREAM userprofile (userid INT, firstname VARCHAR, lastname VARCHAR, countrycode VARCHAR, rating DOUBLE)
  WITH (VALUE_FORMAT = 'JSON', KAFKA_TOPIC = 'USERPROFILE');

create stream up_lastseen as
SELECT TIMESTAMPTOSTRING(rowtime, 'dd/MMM HH:mm:ss') as createtime, firstname
from userprofile;
kafka-console-consumer --bootstrap-server localhost:9092  --topic UP_LASTSEEN

-- Stop the 2 instances in different way & check what happens?

# List all the process (This will show the 2 KSQL server process that are running)
docker-compose -f docker-compose-prod.yml ps

# stop 1 (Our KSQL app will still run)
docker-compose -f docker-compose-prod.yml stop ksql-server-1

# re-start 1
docker-compose -f docker-compose-prod.yml start ksql-server-1

# stop 2 (Our KSQL app will still run)
docker-compose -f docker-compose-prod.yml stop ksql-server-2

# stop 1 (Our KSQL app will no longer run)
docker-compose -f docker-compose-prod.yml stop ksql-server-1

# start 2 (Our KSQL app will start running again)
docker-compose -f docker-compose-prod.yml start ksql-server-1

# start 1
docker-compose -f docker-compose-prod.yml start ksql-server-1