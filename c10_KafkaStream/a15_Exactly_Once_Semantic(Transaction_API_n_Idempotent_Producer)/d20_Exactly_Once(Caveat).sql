

-- The Processing logic & Side effect

    + The stream client has 3 parts
      . Consumer
      . Processing Logic
      . Producer

    + If the processing logic has side effect like writing to an external database,
      the data written to the DB is not guranteed to have exactly once semantics

  https://www.confluent.io/blog/transactions-apache-kafka/


-- Latency #55

    + As results are published in transactions, this might incur a *small latency
        . Can be configured using `commit.interval.ms`
    + Latency tradeoff is calculated to be 10 to 20%
