

-- Retriable Exception

  + NOT_ENOUGH_REPLICAS
  + NOT_LEADER_FOR_PARTITION
  + LEADER_NOT_AVAILABLE
  + REBALANCE_IN_PROGRESS

-- Client Side Exceptions

  (These are exceptions we can get even before message is sent
   by send() to the broker...and before we get a Future<...> object)

  + SerializationException
  + BufferExhaustedException
  + MessageSizeTooLargeException