

-- auto.offset.reset

  # Can be used to the offset to
    + earliest
      - Every time the query is run on a Stream, it always
        starts reading the data from the beginning of offset

    + latest

-- earliest (Examples)

  // This setting is valid only for this specific KSQL session. If we exit out
  // from KSQL session, we will lose this setting
  set 'auto.offset.reset' = 'earliest';

  select name, countrycode from users_stream emit changes;
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|NAME                                                                |COUNTRYCODE                                                         |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|Alice                                                               |US                                                                  |
|Bob                                                                 |GB                                                                  |
|Carole                                                              |AU                                                                  |
|Dan                                                                 |US                                                                  |
|Ed                                                                  |GB                                                                  |

  select name, countrycode from users_stream emit changes limit 4; (Query terminates immediately)
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|NAME                                                                |COUNTRYCODE                                                         |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|Alice                                                               |US                                                                  |
|Bob                                                                 |GB                                                                  |
|Carole                                                              |AU                                                                  |
|Dan                                                                 |US                                                                  |
Limit Reached
Query terminated

