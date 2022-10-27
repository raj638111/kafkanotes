
-- DDL (Create Stream) #7

create stream users_stream (name VARCHAR, countrycode VARCHAR)
with (KAFKA_TOPIC='USERS', VALUE_FORMAT='DELIMITED');

 Message
----------------
 Stream created
----------------

# 'DELIMITED': By default means Command Delimited