
-- Select data from Stream

# Note: This only starts listing newly arriving data #7
select name, countrycode from users_stream;

Table 'USERS_STREAM' is not materialized. Refer to https://cnfl.io/queries for info
on query types. If you intended to issue a push query, resubmit with the EMIT CHANGES clause


select name, countrycode from users_stream emit changes;

+--------------------------------------------------------------------+--------------------------------------------------------------------+
|NAME                                                                |COUNTRYCODE                                                         |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|Ed                                                                  |GB                                                                  |