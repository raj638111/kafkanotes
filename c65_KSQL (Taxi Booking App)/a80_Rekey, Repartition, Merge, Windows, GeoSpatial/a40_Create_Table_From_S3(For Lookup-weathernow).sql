

-- Create table (not working for me???)

create table weathernow with (kafka_topic='WEATHERREKEYED', value_format='AVRO', key='CITY_NAME');

Schema for message values on topic WEATHERREKEYED does not exist in the Schema Registry.Subject: WEATHERREKEYED-value
Possible causes include:
- The topic itself does not exist	-> Use SHOW TOPICS; to check
- Messages on the topic are not serialized using a format Schema Registry supports	-> Use PRINT 'WEATHERREKEYED' FROM BEGINNING; to verify
- Messages on the topic have not been serialized using a Confluent Schema Registry supported serializer	-> See https://docs.confluent.io/current/schema-registry/docs/serializer-formatter.html
- The schema is registered on a different instance of the Schema Registry	-> Use the REST API to list available subjects	https://docs.confluent.io/current/schema-registry/docs/api.html#get--subjects
- You do not have permissions to access the Schema Registry.Subject: WEATHERREKEYED-value	-> See https://docs.confluent.io/current/schema-registry/docs/security.html

-- Create table (This works)
  (After adding data in a70_e10 ..which I did not do earlier, the topic WEATHERREKEYED
   got created which resolved the issue)

create table weathernow with (kafka_topic='WEATHERREKEYED', value_format='AVRO', key='CITY_NAME');

 Message
---------------
 Table created
---------------

--

select * from weathernow emit changes;
+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+
|ROWTIME        |ROWKEY         |CITY_NAME      |CITY_COUNTRY   |LATITUDE       |LONGITUDE      |DESCRIPTION    |RAIN           |
+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+
|1589580172869  |Sydney         |Sydney         |AU             |-33.8688       |151.2093       |light rain     |1.25           |
|1589580172879  |Seattle        |Seattle        |US             |47.6062        |-122.3321      |heavy rain     |7.0            |
...

select * from weathernow where city_name = 'San Diego' emit changes;
+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+
|ROWTIME        |ROWKEY         |CITY_NAME      |CITY_COUNTRY   |LATITUDE       |LONGITUDE      |DESCRIPTION    |RAIN           |
+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+
|1589580172880  |San Diego      |San Diego      |US             |32.7157        |-117.1611      |fog            |2.0            |
--

list tables;

Table Name   | Kafka Topic    | Format    | Windowed
------------------------------------------------------
 COUNTRYTABLE | COUNTRY-CSV    | DELIMITED | false
 WEATHERNOW   | WEATHERREKEYED | AVRO      | false
------------------------------------------------------