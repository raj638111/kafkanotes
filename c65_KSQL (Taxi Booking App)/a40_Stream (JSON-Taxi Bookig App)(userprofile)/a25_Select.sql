
# 8

ksql> select firstname, lastname, countrycode, rating from userprofile emit changes;
>
+---------------------------------+---------------------------------+---------------------------------+---------------------------------+
|FIRSTNAME                        |LASTNAME                         |COUNTRYCODE                      |RATING                           |
+---------------------------------+---------------------------------+---------------------------------+---------------------------------+
|Alison                           |Smith                            |GB                               |4.7                              |
Press CTRL-C to interrupt


-- More data

 kafka-console-producer --broker-list localhost:9092 --topic USERPROFILE << EOF
> {"userid": 1001, "firstname": "Bob", "lastname":"Smith", "countrycode": "US", "rating": 4.2}
> EOF

-- Check what is the value of rowkey

select rowkey, firstname, lastname, countrycode, rating from userprofile emit changes limit 10;
+--------------------------+--------------------------+--------------------------+--------------------------+--------------------------+
|ROWKEY                    |FIRSTNAME                 |LASTNAME                  |COUNTRYCODE               |RATING                    |
+--------------------------+--------------------------+--------------------------+--------------------------+--------------------------+
|null                      |Alison                    |Smith                     |GB                        |4.7                       |
|null                      |Bob                       |Smith                     |US                        |4.2                       |
|1000                      |Grace                     |Coen                      |AU                        |3.7                       |
|1001                      |Grace                     |Dotty                     |AU                        |3.4                       |
|1002                      |Bob                       |Edison                    |AU                        |4.9                       |
|1003                      |Carol                     |Smith                     |GB                        |4.9                       |
|1004                      |Bob                       |Dotty                     |IN                        |3.7                       |
|1005                      |Ivan                      |Edison                    |AU                        |3.9                       |
|1006                      |Alice                     |Coen                      |US                        |4.9                       |
|1007                      |Ivan                      |Jones                     |IN                        |2.2                       |
Limit Reached
Query terminated
