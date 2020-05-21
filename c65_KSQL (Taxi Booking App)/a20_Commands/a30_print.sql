
-- print (Only show new arriving data in a topic) #6

  # Default: Only shows new arriving data
  # Use 'CTRL-C' to exit out of 'print' command

  print 'USERS';

  Format:STRING
  3/8/20 1:56:27 PM CDT , NULL , Bob,GB
  3/8/20 1:57:38 PM CDT , NULL , Carole,AU
  3/8/20 1:57:44 PM CDT , NULL , Dan,US

  ^CTopic printing ceased

-- print (Show data from beginning of the topic)

  print 'USERS' from beginning;

  Format:STRING
  3/8/20 1:52:31 PM CDT , NULL , Alice,US
  3/8/20 1:56:27 PM CDT , NULL , Bob,GB
  3/8/20 1:57:38 PM CDT , NULL , Carole,AU
  3/8/20 1:57:44 PM CDT , NULL , Dan,US

-- print (Other options)

  # limit: Get only <limit> records (Terminates after printing 2 records)
  print 'USERS' from beginning limit 2;

  Format:STRING
  3/8/20 1:52:31 PM CDT , NULL , Alice,US
  3/8/20 1:56:27 PM CDT , NULL , Bob,GB


  # interval: Get every <interval> records
  print 'USERS' from beginning interval 2 limit 2;

  Format:STRING
  3/8/20 1:52:31 PM CDT , NULL , Alice,US
  3/8/20 1:57:38 PM CDT , NULL , Carole,AU

-- Peek

(Peeks at every 5th record)

print 'USERPROFILE' interval 5;

Format:JSON
{"ROWTIME":1583702473634,"ROWKEY":"null","userid":1000,"firstname":"Alison","lastname":"Smith","countrycode":"GB","rating":4.7}
{"ROWTIME":1583705941896,"ROWKEY":"1004","userid":"1004","firstname":"Alice","lastname":"Coen","countrycode":"IN","rating":"3.9"}
{"ROWTIME":1583705949365,"ROWKEY":"1009","userid":"1009","firstname":"Alice","lastname":"Coen","countrycode":"AU","rating":"3.9"}
{"ROWTIME":1583705957987,"ROWKEY":"1014","userid":"1014","firstname":"Heidi","lastname":"Jones","countrycode":"IN","rating":"3.7"}
{"ROWTIME":1583705974456,"ROWKEY":"1019","userid":"1019","firstname":"Heidi","lastname":"Dotty","countrycode":"AU","rating":"4.9"}
{"ROWTIME":1583705982757,"ROWKEY":"1024","userid":"1024","firstname":"Bob","lastname":"Smith","countrycode":"AU","rating":"4.9"}
