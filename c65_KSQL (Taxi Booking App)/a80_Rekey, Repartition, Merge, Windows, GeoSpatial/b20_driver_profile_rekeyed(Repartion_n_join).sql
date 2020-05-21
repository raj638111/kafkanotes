

-- Create a new stream with explicit partition

create stream driverprofile_rekeyed with (partitions=1) as select * from DRIVER_PROFILE partition by driver_name;

-- This works
  (As both the stream & table has same no of partition (ie Co-partitioned)...
  and table rowkey & the topic key matches this join works now)

select dp2.driver_name, ct.countryname, dp2.rating
from DRIVERPROFILE_REKEYED dp2
left join COUNTRYTABLE ct on ct.countrycode=dp2.countrycode emit changes;

+---------------------------------------------+---------------------------------------------+---------------------------------------------+
|DRIVER_NAME                                  |COUNTRYNAME                                  |RATING                                       |
+---------------------------------------------+---------------------------------------------+---------------------------------------------+
|Mr. Speedy                                   |Australia                                    |2.4                                          |


--