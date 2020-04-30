

-- Stream Partition

  # Stream Partition maps to Kafka Partition that is read

  https://docs.confluent.io/current/streams/architecture.html#stream-partitions-and-tasks

-- Record

  # A record maps to Kafka message

-- Task (Stream Task)

  # An application processor topology is scaled by breaking into
    multiple stream tasks

  # No of stream task is based on input stream partition for the application
  # Each stream task is assigned a specific set of partitions and
    this assignment **NEVER changes

-- Thread

  # A single logical application can have many application instances
    with each instances having any number of threads as configured

-- Tasks & Threads Example

  + Imagine a Kafka Streams application that consumes from two topics,
    A and B, with each having 3 partitions.

  + If we now start the application on a single machine with the
    number of threads configured to 2, we end up with two stream threads
    instance1-thread1 and instance1-thread2.

  + Kafka Streams will break this topology into three tasks because
    the maximum number of partitions across the input topics A and B
    is max(3, 3) == 3,
  + ...and then distribute the six input topic partitions evenly
    across these three tasks; in this case, each task will process
    records from one partition of each input topic,
    for a total of two input partitions per task.

  + Finally, these three tasks will be spread evenly – to the extent
    this is possible – across the two available threads, which in
    this example means that the first thread will run 2 tasks
    (consuming from 4 partitions) and the second thread will
    run 1 task (consuming from 2 partitions).

  https://docs.confluent.io/current/streams/architecture.html#example