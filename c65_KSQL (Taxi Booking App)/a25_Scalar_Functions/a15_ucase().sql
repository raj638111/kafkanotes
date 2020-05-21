

select timestamptostring(rowtime, 'dd/MMM HH:mm') as createtime, firstname + ' ' + ucase(lastname) as full_name from userprofile emit changes limit 5;

+--------------------------------------------------------------------+--------------------------------------------------------------------+
|CREATETIME                                                          |FULL_NAME                                                           |
+--------------------------------------------------------------------+--------------------------------------------------------------------+
|15/May 10:19                                                        |Alison SMITH                                                        |
|15/May 10:21                                                        |Bob SMITH                                                           |
|15/May 10:41                                                        |Grace COEN                                                          |
|15/May 10:41                                                        |Grace DOTTY                                                         |
|15/May 10:41                                                        |Bob EDISON                                                          |
Limit Reached
Query terminated