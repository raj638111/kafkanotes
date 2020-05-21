

-- How to execute Datagen?

--ksql-datagen schema=./datagen/userprofile.avro format=json topic=USERPROFILE key=userid maxInterval=5000 iterations=10
ksql-datagen schema=./datagen/userprofile.avro format=json topic=USERPROFILE key=userid msgRate=1 iterations=1000


maxInterval:  In milliseconds (Creates message in max of every 5 seconds)
iterations:   Total no of messages
msgRate: No of messages per second

-- Validate

(Peeks at every 5th record)

print 'USERPROFILE' interval 5;

Format:JSON
{"ROWTIME":1583702473634,"ROWKEY":"null","userid":1000,"firstname":"Alison","lastname":"Smith","countrycode":"GB","rating":4.7}
{"ROWTIME":1583705941896,"ROWKEY":"1004","userid":"1004","firstname":"Alice","lastname":"Coen","countrycode":"IN","rating":"3.9"}
{"ROWTIME":1583705949365,"ROWKEY":"1009","userid":"1009","firstname":"Alice","lastname":"Coen","countrycode":"AU","rating":"3.9"}
{"ROWTIME":1583705957987,"ROWKEY":"1014","userid":"1014","firstname":"Heidi","lastname":"Jones","countrycode":"IN","rating":"3.7"}
{"ROWTIME":1583705974456,"ROWKEY":"1019","userid":"1019","firstname":"Heidi","lastname":"Dotty","countrycode":"AU","rating":"4.9"}
{"ROWTIME":1583705982757,"ROWKEY":"1024","userid":"1024","firstname":"Bob","lastname":"Smith","countrycode":"AU","rating":"4.9"}

