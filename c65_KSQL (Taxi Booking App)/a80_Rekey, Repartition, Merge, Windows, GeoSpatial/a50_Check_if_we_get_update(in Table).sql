

Let's make it sunny! At UNIX prompt

cat demo-weather-changes.json | kafka-console-producer --broker-list localhost:9092 --topic WEATHERNESTED

At KSQL prompt

select * from weathernow where city_name = 'San Diego' emit changes;

+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+
|ROWTIME        |ROWKEY         |CITY_NAME      |CITY_COUNTRY   |LATITUDE       |LONGITUDE      |DESCRIPTION    |RAIN           |
+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+
|1589580753948  |San Diego      |San Diego      |US             |32.7157        |-117.1611      |SUNNY          |2.0            |