

-- Reading

    # Topic can be read as,
        + KStream
        + KTable (or)
        + GlobalKTable


-- KStream

    // Serdes are optional if we define default serdes
    builder.stream(Key Serde, Value Serde, Input topic)


-- KTable

    builder.table(...)

-- GlobalKTable

    builder.globalTable(...)

