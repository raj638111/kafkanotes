
-- Message

  + Messages are written to topic -> partition in the order they are sent
  + Each partition hold many messages
  + which partition does my message go?
    - Is randomly allocated a partition by default
    - Key
      . Can be specified to send a message to specific partition 
	+ Offset
	 - Each message in a partition gets incremental id called Offset
	 - Offset starts from 0, 1, ...
	 - Ordered
	   . Messages are ordered by writing time within a Partition
	 - Not ordered
	   - Messages are not ordered across partitions

-- Message Retention
  + Messages are retained only for a week by default
  
