
#26
-- geo_distance()

  # Provides distance b/w  two (latitude, longitude) pairs

--

create stream - distance of car to waiting rider
At KSQL prompt

select * from rr_world emit changes;

describe rr_world;

create stream requested_journey as
select rr.latitude as from_latitude
, rr.longitude as from_longitude
, rr.user
, rr.city_name as city_name
, w.city_country
, w.latitude as to_latitude
, w.longitude as to_longitude
, w.description as weather_description
, w.rain
from rr_world rr
left join weathernow w on rr.city_name = w.city_name;


create stream ridetodest as
select user
, city_name
, city_country
, weather_description
, rain
, GEO_DISTANCE(from_latitude, from_longitude, to_latitude, to_longitude, 'km') as dist
from requested_journey;


select user + ' is travelling ' + cast(round(dist) as varchar) +' km to ' + city_name + ' where the weather is reported as ' + weather_description
from ridetodest emit changes;

Alice is at (52,0) and is travelling 215 km to Manchester where it is SUNNY
Heidi is at (51,-1) and is travelling 88 km to London where it is heavy rain
Grace is at (50,-1) and is travelling 138 km to London where it is heavy rain