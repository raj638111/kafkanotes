
-- enable.auto.commit = false + synchronous processing of batches
  # 78

  # Is recommended
  # Here we explicitly commit the offset

  # consumer.poll()
    process(batch)
    consumer.commitSync()

  # Example
    + Accumulate data into buffer
    + Flush buffer to database
    + Commit the offset