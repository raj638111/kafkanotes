package rj.a10_Demo

import java.util.Properties

import a10_logger.CustomLogger
import org.apache.kafka.clients.producer.{KafkaProducer, ProducerConfig, ProducerRecord}
import org.apache.kafka.common.serialization.StringSerializer
import org.apache.log4j.Logger

object a10_Producer{

  val log: Logger = CustomLogger.getLogger(this.getClass.getName)

  def main(args: Array[String]): Unit = {
    writeToTopic()
  }

  def writeToTopic() = {
    // Create Producer Record (topic, value)
    val record = new ProducerRecord[String, String]("first_topic", "hello world2")
    // Set Config
    val properties = new Properties()
    properties.setProperty(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG, "127.0.0.1:9092")
    properties.setProperty(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, classOf[StringSerializer].getName)
    properties.setProperty(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, classOf[StringSerializer].getName)
    // Create Producer
    val producer = new KafkaProducer[String, String](properties)
    // Send Record to Producer
    producer.send(record) // **Async call
    producer.flush() // Ensure that all buffered records are available for send()
                     // producer.close(): Flush & Close producer
  }


}
