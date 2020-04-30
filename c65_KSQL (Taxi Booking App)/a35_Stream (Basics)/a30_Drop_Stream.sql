

-- Drop a stream (DDL)

drop stream if exists users_stream;

-- Drop a stream + underlying kafka topic (DDL)

drop stream if exists users_stream delete topic;

 Message
---------------------------------------------------
 Source `USERS_STREAM` (topic: USERS) was dropped.
---------------------------------------------------

