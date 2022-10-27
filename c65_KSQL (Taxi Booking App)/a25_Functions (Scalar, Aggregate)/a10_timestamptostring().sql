
# Scalar Functions
  Are actually UDF
# Aggregate Functions
  Are actually UDAF

# 10
select timestamptostring(rowtime, 'dd/MMM HH:mm') as createtime, firstname from userprofile emit changes limit 5;

+--------------------------------------------------------------------+--------------------------------------------------------------------+
|CREATETIME                                                          |FIRSTNAME                                                           |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|15/May 10:19                                                        |Alison                                                              |
|15/May 10:21                                                        |Bob                                                                 |
|15/May 10:41                                                        |Grace                                                               |
|15/May 10:41                                                        |Grace                                                               |
|15/May 10:41                                                        |Bob                                                                 |
Limit Reached
Query terminated