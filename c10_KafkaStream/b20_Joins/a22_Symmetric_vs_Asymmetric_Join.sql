

-- Symmetric Join

  # Arrival of each input in left or right result in a resultant record
    + Example
      - KStream - KStream
      - KTable - KTable
      https://www.confluent.io/blog/crossing-streams-joins-apache-kafka/


-- Asymmetric Join

  # Arrival of only one side of the record will trigger a resultant record
    + Example
      - KStream - KTable
        . Here data update in KTable do not trigger any result
        . Only data arrival in KStream will trigger a result

