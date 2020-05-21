

select up.firstname, up.lastname, up.countrycode, ct.countryname
from userprofile up
left join
countrytable ct
on up.countrycode = ct.countrycode emit changes limit 3;

+---------------------------------+---------------------------------+---------------------------------+---------------------------------+
|FIRSTNAME                        |LASTNAME                         |UP_COUNTRYCODE                   |COUNTRYNAME                      |
+---------------------------------+---------------------------------+---------------------------------+---------------------------------+
|Alison                           |Smith                            |GB                               |UK                               |
|Bob                              |Smith                            |US                               |United States                    |
|Grace                            |Coen                             |AU                               |Australia                        |
Limit Reached
Query terminated



