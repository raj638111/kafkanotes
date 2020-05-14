
-- buffer.memory

  # If producer produce messages faster than broker can take,
    the messages will be buffered in producer memory

  # Default value: 32MB (Size of send buffer)

  # What if the buffer is full?
    send() call will block

  # Is it possible to set any time limit for the block of send() method?
    + Yep, time limit can be set using `max.block.ms`
      - Default value: 60000 ms (ie 1 minute)
      - What happens after the time limit?
        ~ Exception is thrown

  # So, the Exception can be thrown because,
    + Producer has filled up its buffer
    + Broker is not accepting any new data
    + 60 seconds has elapsed