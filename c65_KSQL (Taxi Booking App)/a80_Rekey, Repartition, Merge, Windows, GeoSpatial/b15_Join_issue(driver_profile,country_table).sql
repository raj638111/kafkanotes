

select dp.driver_name, ct.countryname, dp.rating
from DRIVER_PROFILE dp
left join COUNTRYTABLE ct on ct.countrycode=dp.countrycode emit changes;

Can't join DP with CT since the number of partitions don't match. DP partitions = 2; CT partitions = 1. Please repartition either one so that the number of partitions match.

