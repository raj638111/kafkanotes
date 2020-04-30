
# 2 Aggregate Example
    + KGroupedStream > KTable
    + KGroupedTable > KTable


Rolling aggregation. Aggregates the values of (non-windowed) records by
the grouped key. Aggregating is a generalization of reduce and allows,
for example, the aggregate value to have a different type than the input values

When aggregating a grouped stream, you must provide an initializer
(e.g., aggValue = 0) and an “adder” aggregator (e.g., aggValue + curValue).

When aggregating a grouped table, you must provide a “subtractor”
aggregator (think: aggValue - oldValue).

Several variants of aggregate exist, see Javadocs for details.

KGroupedStream<byte[], String> groupedStream = ...;
KGroupedTable<byte[], String> groupedTable = ...;

// Java 8+ examples, using lambda expressions

// Aggregating a KGroupedStream (note how the value type changes from String to Long)
KTable<byte[], Long> aggregatedStream = groupedStream.aggregate(
    () -> 0L, /* initializer */
    (aggKey, newValue, aggValue) -> aggValue + newValue.length(), /* adder */
    Materialized.as("aggregated-stream-store") /* state store name */
        .withValueSerde(Serdes.Long()); /* serde for aggregate value */

// Aggregating a KGroupedTable (note how the value type changes from String to Long)
KTable<byte[], Long> aggregatedTable = groupedTable.aggregate(
    () -> 0L, /* initializer */
    (aggKey, newValue, aggValue) -> aggValue + newValue.length(), /* adder */
    (aggKey, oldValue, aggValue) -> aggValue - oldValue.length(), /* subtractor */
    Materialized.as("aggregated-table-store") /* state store name */
	.withValueSerde(Serdes.Long()) /* serde for aggregate value */


-- Detailed behavior of KGroupedStream:

    Input records with null keys are ignored.
    When a record key is received for the first time, the initializer is called (and called before the adder).
    Whenever a record with a non-null value is received, the adder is called.

-- Detailed behavior of KGroupedTable:

    Input records with null keys are ignored.
    When a record key is received for the first time, the initializer is called (and called before the adder and subtractor). Note that, in contrast to KGroupedStream, over time the initializer may be called more than once for a key as a result of having received input tombstone records for that key (see below).
    When the first non-null value is received for a key (e.g., INSERT), then only the adder is called.
    When subsequent non-null values are received for a key (e.g., UPDATE), then (1) the subtractor is called with the old value as stored in the table and (2) the adder is called with the new value of the input record that was just received. The order of execution for the subtractor and adder is not defined.
    When a tombstone record – i.e. a record with a null value – is received for a key (e.g., DELETE), then only the subtractor is called. Note that, whenever the subtractor returns a null value itself, then the corresponding key is removed from the resulting KTable. If that happens, any next input record for that key will trigger the initializer again.