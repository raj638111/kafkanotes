
-- Drop a stream
  (This do not work, as the query needs to be dropped before dropping the stream)

drop stream user_profile_pretty;

Cannot drop USER_PROFILE_PRETTY.
The following queries read from this source: [].
The following queries write into this source: [CSAS_USER_PROFILE_PRETTY_0].
You need to terminate them before dropping USER_PROFILE_PRETTY.

-- Terminate running query

terminate CSAS_USER_PROFILE_PRETTY_0;

 Message
-------------------
 Query terminated.
-------------------

-- Drop stream now

drop stream user_profile_pretty;

Message
------------------------------------------------------------------------
 Source `USER_PROFILE_PRETTY` (topic: USER_PROFILE_PRETTY) was dropped.
------------------------------------------------------------------------

-- Additional options for drop stream

# Delete only if exists
if exists <stream name>

# Drop the topic associated with the stream
delete topic <topic>
