
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