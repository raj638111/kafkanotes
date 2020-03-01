

    // Only used in dev; and not in prod...why??? #41.01
    // https://www.confluent.io/blog/data-reprocessing-with-kafka-streams-resetting-a-streams-application/
    // Believe cleanup() makes the application to read the input
    // all overagain from the start?
    streams.cleanup()