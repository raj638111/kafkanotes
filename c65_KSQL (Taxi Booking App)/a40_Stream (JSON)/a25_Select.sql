
# 8

ksql> select firstname, lastname, countrycode, rating from userprofile
>emit changes;
>
+---------------------------------+---------------------------------+---------------------------------+---------------------------------+
|FIRSTNAME                        |LASTNAME                         |COUNTRYCODE                      |RATING                           |
+---------------------------------+---------------------------------+---------------------------------+---------------------------------+
|Alison                           |Smith                            |GB                               |4.7                              |
Press CTRL-C to interrupt


