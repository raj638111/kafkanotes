

# Note: In order to combine two strea
create stream rr_america_raw with (kafka_topic='riderequest-america', value_format='avro');
create stream rr_europe_raw with (kafka_topic='riderequest-europe', value_format='avro');

select * from rr_america_raw emit changes;
select * from rr_europe_raw emit changes;

create stream rr_world as select 'Europe' as data_source, * from rr_europe_raw;
insert into rr_world      select 'Americas' as data_source, * from rr_america_raw;

select * from rr_world emit changes;