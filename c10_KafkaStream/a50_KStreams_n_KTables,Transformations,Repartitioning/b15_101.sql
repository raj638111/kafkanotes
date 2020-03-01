

-- Marked for repartition

    # As soon as an operation possibly change the key,
      the stream will be marked for repartition
        - map()
        - flatMap()
        - selectKey()

    # Repartitioning will redistribute the data b/w the streams application
      so incur performance cost

    # Other operations that could trigger repartition

