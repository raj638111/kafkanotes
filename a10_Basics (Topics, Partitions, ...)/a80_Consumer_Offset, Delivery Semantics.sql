
-- Consumer Offset

  + Consumer stores the offset in the Kafka topic named '__consumer_offsets'
    - Steps
       1. Consumer reads a message from an offset
       2. Consumer process the message
       3. Consumer commits the offset to the topic `__consumer_offsets`

  + Why does a consumer need to store the offset?
    - If Consumer goes down... After the restart, the new consumer in Consumer Group
      can start reading + processing from the first unprocessed message instead of
      reprocessing existing message

-- Delivery Semantics

  1. 'At most Once'
    + Offsets are committed as soon as the message is received
    + Advantage
      - No duplicate data
    + Disadvantage
      - `Message will be lost` if the processing goes wrong
      - Not preferred usually

  2. 'At least once' (Preferred)
    + Offset is committed after the message is processed
    + Advantage
      - Message never gets lost
    + Disadvantage
      - Can result in duplicate. So we have to ensure the processing of a duplicate
        data is Idempotent

  3. 'Exactly Once'
    + Kafka => Kafka workflows
      + Achieved using Streams API
    + Kafka => External systems
      + Achieved using an Idempotent Producer
    + Advantage
      + No duplicate data
      + Message never gets lost
    + Disadvantage
      + Difficult to implement for Kafka => External systems as this requires
        an idempotent consumer

