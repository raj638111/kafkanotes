package rj.a10_Demo

import java.util.Properties

import a10_logger.CustomLogger
import org.apache.kafka.clients.producer._
import org.apache.kafka.common.serialization.StringSerializer
import org.apache.log4j.Logger

/** #63
  * Set of keys always goes to the same partition.
  * Partition is decided based on the hash of the key
  * Beware: *** Changing the no of partition for a topic might send a key to a different
  *   partition
  */
object a25_SafeProducer{

  val log: Logger = CustomLogger.getLogger(this.getClass.getName)

  def writeToTopic() = {
    // Set Config
    val properties = new Properties()
    properties.setProperty(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG, "127.0.0.1:9092")
    properties.setProperty(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, classOf[StringSerializer].getName)
    properties.setProperty(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, classOf[StringSerializer].getName)

    /** Safe Producer Settings */
    // Enable idemtpotent producer to avoid duplicates message being committed in Kafka
    properties.setProperty(ProducerConfig.ENABLE_IDEMPOTENCE_DOC, "true")
    // We do not need to set these (as these are defaults for idempotent producer ^).
    // but would be a good practice to set explicitly for better readability
    properties.setProperty(ProducerConfig.ACKS_CONFIG, "all")
    properties.setProperty(ProducerConfig.RETRIES_CONFIG, Integer.MAX_VALUE.toString)
    // Use 5 for version >= 1.1 or use 1
    properties.setProperty(ProducerConfig.MAX_IN_FLIGHT_REQUESTS_PER_CONNECTION, "5")

    // Create Producer
    val producer = new KafkaProducer[String, String](properties)
    1 to 10 map { no =>
      // Create Producer Record (topic, value)
      val record = new ProducerRecord[String, String]("first_topic",
        s"id_${no}", s"hello world ${no}")
      // Send Record to Producer (Async call) and get status in a Callback
      producer.send(record, new Callback {
        override def onCompletion(meta: RecordMetadata, exception: Exception): Unit = {
          // ***Executes every time a record is successfully sent or exception is thrown
          exception match {
            case null =>
              log.info(
                s"""
                   |New Metadata received:
                   |Topic -> ${meta.topic()}
                   |Partition -> ${meta.partition()}
                   |Offset -> ${meta.offset()}
                   |Timestamp -> ${meta.timestamp()}
                   |""".stripMargin)
          }
        }
      })
    }
    producer.flush() // Ensure that all buffered records are available for send()
                     // producer.close(): Flush & Close producer
    producer.close()
  }


}
