
== groupBy(),groupByKey ==# 44

# Is a stateful transformation # ??? why

-- KTable

    # Unlike KStream which only cause addition,
      this can cause addition, deletion or update

    # Returns **KGroupedTable

    # Will trigger a repartition because the key changes

    # Example
    table.groupBy( (key, value) => <somekey> )

-- KStream

    # TODO

    # Returns **KGroupedStream