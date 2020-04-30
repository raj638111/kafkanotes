package rj

import java.time.Duration
import java.util.Properties
import org.apache.kafka.clients.consumer.ConsumerConfig
import org.apache.kafka.streams.kstream.Materialized
import org.apache.kafka.streams.scala.ImplicitConversions._
import org.apache.kafka.streams.scala._
import org.apache.kafka.streams.scala.kstream._
import org.apache.kafka.streams.{KafkaStreams, StreamsConfig}
import org.apache.log4j.Logger

/**
 * Kafka stream using High Level DSL
 */
object a10_StreamStarterApp {

  val log: Logger = CustomLogger.getLogger(this.getClass.getName)

  def main(args: Array[String]): Unit = {
    import Serdes._
    val configs: Properties = {
      val p = new Properties()
      p.put(StreamsConfig.APPLICATION_ID_CONFIG, "wordcount-application")
      p.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092")
      p.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest")
      p
    }

    val builder = new StreamsBuilder
    // Create stream from input topic
    val input: KStream[String, String] = builder.stream[String, String]("WordCountInput")
    val wordCounts: KTable[String, Long] = input
      .flatMapValues(textLine => textLine.toLowerCase.split("\\W+"))
      .groupBy((_, word) => word)
      .count()(Materialized.as("counts-store"))
    wordCounts.toStream.to("WordCountOutput")

    val streams: KafkaStreams = new KafkaStreams(builder.build(), configs)
    streams.start()
    // Print the Topology
    log.info(streams)

    // Close the Kafka stream gracefully or else we might get,
    //  + Errors
    //  + Duplicates
    //  + Corrupted State
    sys.ShutdownHookThread {
      log.info("end")
      streams.close(Duration.ofSeconds(20))
    }
    log.info("end1")
  }
}



/*



scala -classpath target/scala-2.11/a40_example-assembly-1.0.jar rj.a10_StreamStarterApp
  p.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.String.getClass)
  p.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String.getClass)
*/