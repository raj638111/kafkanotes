
-- What is Kafka Streams?

  + Is a data processing & transformation library
  + **Reads FROM Kafka & Writes back TO Kafka
  + Leverages Producer & Consumer API

-- Use cases?
  + Data Transformation
  + Data Enrichment
  + Fraud Detection
  + Monitoring & Alerting

-- Features?

  + EXACTLY ONCE Capabilities
  + One record at a time processing (no batching like Spark Streaming)

-- Note

  + ***Both input & Output topic need to be created. The KStream application
    will not create the topics

