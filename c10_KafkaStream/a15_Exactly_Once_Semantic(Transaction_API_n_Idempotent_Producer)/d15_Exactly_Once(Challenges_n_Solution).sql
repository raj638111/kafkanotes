

1. Broker can fail

  # What is the problem?
    + This can lead to loss of message

  # How is this solved?
    + Through Replication
    + If N is the replication factor. Kafka can tolerate N-1 broker failures
      at a given time to guarantee **NO loss of data
      . Example... if we have 10 node cluster and N is 3; In a give time
        2 Brokers holding the 2 of the 2 partition can fail


2. Producer to broker RPC can fail

  # Why does the RPC fail?
    + Because of N/W error
    + Broker can crash

  # What is the problem?

    1 Leads to duplication of message?
      . The broker can crash after writing a message but before
        it sends an ack back to the producer
      . So, producer will retry again to send the message resulting in
        duplication

    2 Leads to loss of data?
      . Broker can crash before writing a message to topic (or)
        there is a N/W failure
      . If the producer do not retry this can lead to loss of data
      . How is this solved?
        ~ By making the producer retry

  # (1) How is duplication of message issue solved?
    ~ ***Through the use of idempotent producer


3. Client can fail

  # Note
    + Client represents a typical streaming application which has
      . Consumer
      . Processing logic
      . Producer

  # What is the problem?

    1 Zombie Producer?
      . If we have a new producer started for some reason, but we still have
        the old / zombie producer running and sending message, the broker
        should know a way to discard message from Zombie producer

    2. Consumer offset commit issue?
      . A consumer reads data, some processing is done, producer writes the`
      ` result to a topic. But before the offset is committed for the consumer
        the application crashes
      . In this case, when the new client starts, we would read the already
        processed input message from input topic resulting in duplication

  # (1) How is Zombie producer issue solved?

    . Through the use of Transaction API; Transaction provides Zombie Fencing
      which makes the broker to discard message from Zombie producer

    . We provide `transactional.id` in our stream client, which is used
      for Zombie fencing

  # (2) How is Consumer offset commit issue solved?

    . As the Transaction API provides atomic commit, we can make
      both offset commit (by consumer to the offset topic) & write from producer
      in one single transaction, avoiding the message from input topic
      processed again


https://www.confluent.io/blog/transactions-apache-kafka/
https://www.confluent.io/blog/exactly-once-semantics-are-possible-heres-how-apache-kafka-does-it/