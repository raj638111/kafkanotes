

describe userprofile;

Name                 : USERPROFILE
 Field       | Type
-----------------------------------------
 ROWTIME     | BIGINT           (system)
 ROWKEY      | VARCHAR(STRING)  (system)
 USERID      | INTEGER
 FIRSTNAME   | VARCHAR(STRING)
 LASTNAME    | VARCHAR(STRING)
 COUNTRYCODE | VARCHAR(STRING)
 RATING      | DOUBLE
-----------------------------------------
For runtime statistics and query details run: DESCRIBE EXTENDED <Stream,Table>;

# ROWTIME & ROWKEY
  + Are metdata columns added by KSQL
  + ROWTIME
    + The time in which data was created (EPOCH time) ?? 10.1
  + ROWKEY
    + Key of the topic???