

-- Possible Failures when producer is sending a message

  # Broker can Crash
  # N/W failure can happen

-- Possible semantics that can be achieved based on what **Producer does on such a failure

  # At least once semantics
  # At most once semantics
  # Exactly once semtantics

-- At least once semantics (**`acks=all` need to set for this)

  # Producer Behavior
    + The producer tries to resend a message when ackt times out or producer
      receives an error

  # There are 3 possible scenarios here based on what happens in broker

    + S1: Message is written to broker and acks is successfully returned
          to the broker
      - Yep, the message is written exactly once to the topic

    + S2: Message is written to broker; but acks is not returned to producer
          as the Broker might have failed or there is a N/W error
      - Producer will try again to send the message (as we have set acks=all)
        . Yep, the message is written more than once in this case

-- At most once semantic

  # Producer Behavior
    + Producer does not retry when an ack times out or receives an error

  # There are 3 possible scenario based on what happens in Broker
    + S1: Message is written to broker and acks is successfully returned
          to the broker
      - Yep, the message is written exactly once to the topic

    + S2: Message is written to broker; ; but acks is not returned to producer
          as the Broker might have failed or there is a N/W error
      - As the producer is not going to try again...
        . Yep, the message is written exactly once to the topic

    + S3: Message is NOT written to broker because of N/W failure or Broker
          has failed before writing the message to the topic
      - As the producer is not going to try again...
        . Yep, the message never gets written to the topic

-- Excactly Once Semantic

  # Producer Behavior
    + The producer tries to resend a message when ackt times out or producer
      receives an error

    + S1: Message is written to broker and acks is successfully returned
          to the broker
      - Yep, the message is written exactly once to the topic

    + S2: Message is written to broker; but acks is not returned to producer
          as the Broker might have failed or there is a N/W error
      - Producer will try again to send the message (as we have set acks=all) ...
        but what if the system guarantees the message is not written more
        than once to the topic?
        . Yep, the message is written exactly once to the topic
        . But how can this be achived?
          ~ This Requires cooperation b/w
            . Messaging system itself
            . Application producing message
            . Application consuming message
              > What happens if a consumer rewinds to a previous offset
                after consuming a message
                ~ Consumer will receive the same messages all over again




https://www.confluent.io/blog/exactly-once-semantics-are-possible-heres-how-apache-kafka-does-it/