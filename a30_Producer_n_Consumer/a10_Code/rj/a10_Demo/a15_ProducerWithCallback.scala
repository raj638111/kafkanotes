package rj.a10_Demo

import java.util.Properties

import a10_logger.CustomLogger
import org.apache.kafka.clients.producer.{Callback, KafkaProducer, ProducerConfig, ProducerRecord, RecordMetadata}
import org.apache.kafka.common.serialization.StringSerializer
import org.apache.log4j.Logger

object a15_ProducerWithCallback{

  val log: Logger = CustomLogger.getLogger(this.getClass.getName)

  def writeToTopic() = {
    // Set Config
    val properties = new Properties()
    properties.setProperty(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG, "127.0.0.1:9092")
    properties.setProperty(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, classOf[StringSerializer].getName)
    properties.setProperty(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, classOf[StringSerializer].getName)
    // Create Producer
    val producer = new KafkaProducer[String, String](properties)
    1 to 10 map { no =>
      // Create Producer Record (topic, value)
      val record = new ProducerRecord[String, String]("first_topic", s"hello world ${no + 1}")
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
    producer.close() // **These 2 statement can also be placed in Shutdown hook 58-6:00
  }


}
