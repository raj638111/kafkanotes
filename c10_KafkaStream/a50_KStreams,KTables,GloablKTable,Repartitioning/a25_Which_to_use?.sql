

-- KStream vs KTable #23

    # KStream
        + Read a topic that is not compacted
        + If new data is partial information / transactional
        + Example
            - Credit card transaction
            - Page view event
            - Server log entry

    # KTable
        + Read a topic that is log compacted (ie aggregations)
        + If a structure like database table is needed,
          where every update is self sufficient

