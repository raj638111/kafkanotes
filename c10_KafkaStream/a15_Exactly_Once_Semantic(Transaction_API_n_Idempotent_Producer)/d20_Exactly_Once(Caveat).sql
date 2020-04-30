

  # The Processing logic & Side effect

    + The stream client has 3 parts
      . Consumer
      . Processing Logic
      . Producer

    + If the processing logic has side effect like writing to an external database,
      the data written to the DB is not guranteed to have exactly once semantics

  https://www.confluent.io/blog/transactions-apache-kafka/
