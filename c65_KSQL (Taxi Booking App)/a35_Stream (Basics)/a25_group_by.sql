
-- Group by

select countrycode, count(*) from users_stream
group by countrycode
emit changes;

+--------------------------------------------------------------------+--------------------------------------------------------------------+
|COUNTRYCODE                                                         |KSQL_COL_1                                                          |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|AU                                                                  |1                                                                   |
|US                                                                  |2                                                                   |
|GB                                                                  |2                                                                   |
Press CTRL-C to interrupt


