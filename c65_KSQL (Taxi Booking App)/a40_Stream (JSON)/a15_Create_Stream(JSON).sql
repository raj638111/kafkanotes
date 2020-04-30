
create stream userprofile (
  userid INT,
  firstname VARCHAR,
  lastname VARCHAR,
  countrycode VARCHAR,
  rating DOUBLE)
with (VALUE_FORMAT = 'JSON', KAFKA_TOPIC = 'USERPROFILE');

 Message
----------------
 Stream created
----------------

