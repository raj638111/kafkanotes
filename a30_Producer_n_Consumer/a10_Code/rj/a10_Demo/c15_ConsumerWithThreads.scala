package rj.a10_Demo

import java.time.Duration
import java.util.Properties

import a10_logger.CustomLogger
import org.apache.kafka.clients.consumer.{ConsumerConfig, KafkaConsumer}
import org.apache.kafka.common.serialization.StringDeserializer
import org.apache.log4j.Logger

import scala.collection.JavaConverters._

// We can use thread to perform a graceful shutdown of Consumers
// Udemy course: 50
object c15_ConsumerWithThreads {

  val log: Logger = CustomLogger.getLogger(this.getClass.getName)

  def main(args: Array[String]): Unit = {
    val prop = new Properties()
    prop.setProperty(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG, "127.0.0.1:9092")
    prop.setProperty(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, classOf[StringDeserializer].getName)
    prop.setProperty(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, classOf[StringDeserializer].getName)
    prop.setProperty(ConsumerConfig.GROUP_ID_CONFIG, "groupid_1")
    prop.setProperty(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest") // earliest, latest
    // TODO: ...
  }

}
