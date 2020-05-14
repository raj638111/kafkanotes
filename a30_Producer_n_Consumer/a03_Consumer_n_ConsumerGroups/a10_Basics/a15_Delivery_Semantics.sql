

-- Delivery Semantics for a Consumer client

  # At most Once

    - Offset is comitted as soon as the message is received, after which the PROCESSING
      of message is done (Like transforming the message and writing it to a sink...
      ie (a database or another kafka topic etc...))

    - Disadvantage
      ~ If the client crashes during the processing phase, then the message
        is lost as we have already committed the offset

  # At least once

    - Offset is committed only after the processing is done

    - Disadvantage

      ~ There might be duplicate messages in our sink

      ~ How to avoid duplicate in sink?

        . Make our processing logic idempotent (ie say for example if we are using a database
          ...make a select query and check if that ID is already present. If not,
          then to the insert into datastore)... So this actually makes our client to deliver
          **EXACTLY ONCE semantics

        . ^^^ Note: Unique ID for each kafka message can be extracted using
          record.topic() + record.partition() + record.offset()

  # Exactly Once

    - Can be achieved,

      + For Kafka -> Kafka workflows
        - Either through KStream
        - If Consumer & Producer is used, through Idempotent Producer and Transaction API

      + For Kafka -> Other Sink worfkow
        - If an idempotent consumer is used (For kafka -> other sinks)

