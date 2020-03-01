

-- Internal topics

    # Kafka streams application creates internal / intermediary topics
    # Used to save/ restor state & repartition data
    # Are managed by Kafka stream
    # Are prefixed with the `application.id` parameter

    # Two Types
        + Repartitioning Topics
            . When a key is transformed by a processor, repartitioning will happen
        + Changelog Topics
            . When aggregation is performed, kakfa streams will save compacted
              data in these topics


