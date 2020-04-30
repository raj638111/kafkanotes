

-- Creating a window (Code snippet)

import java.time.Duration;
import org.apache.kafka.streams.kstream.TimeWindows;


// A tumbling time window with a size of 5 minutes (and, by definition, an implicit
// advance interval of 5 minutes).
Duration windowSizeMs = Duration.ofMinutes(5);
TimeWindows.of(windowSizeMs);

// The above is equivalent to the following code:
TimeWindows.of(windowSizeMs).advanceBy(windowSizeMs);

-- Using a Window

// Key (String) is user ID, value (Avro record) is the page view event for that user.
// Such a data stream is often called a "clickstream".
KStream<String, GenericRecord> pageViews = ...;

// Count page views per window, per user, with tumbling windows of size 5 minutes
KTable<Windowed<String>, Long> windowedPageViewCounts = pageViews
    .groupByKey(Grouped.with(Serdes.String(), genericAvroSerde))
    .windowedBy(TimeWindows.of(Duration.ofMinutes(5)))
    .count();

https://docs.confluent.io/current/streams/developer-guide/dsl-api.html#tumbling-time-windows