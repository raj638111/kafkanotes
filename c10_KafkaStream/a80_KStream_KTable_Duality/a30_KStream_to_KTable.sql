
-- Way 1

    # groupByKey() + Aggregation(count(), aggregate(), reduce())

    val kTable = stream.groupByKey().count

-- Way 2

    # Write back to kafka & read as a table
    # Advantage
        + No aggregation is performed
        + Get full behaviour of KTable (ie insert, update, delete)
    stream.to("topic")
    builder.table("topic")
