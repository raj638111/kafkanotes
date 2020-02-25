package rj.a10_Demo

import java.time.Duration
import java.util.Properties

import a10_logger.CustomLogger
import org.apache.kafka.clients.consumer.{ConsumerConfig, KafkaConsumer}
import org.apache.kafka.common.serialization.{StringDeserializer, StringSerializer}
import org.apache.log4j.Logger

import collection.JavaConverters._

object c10_Consumer {

  val log: Logger = CustomLogger.getLogger(this.getClass.getName)

  def main(args: Array[String]): Unit = {
    val prop = new Properties()
    prop.setProperty(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG, "127.0.0.1:9092")
    prop.setProperty(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, classOf[StringDeserializer].getName)
    prop.setProperty(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, classOf[StringDeserializer].getName)
    prop.setProperty(ConsumerConfig.GROUP_ID_CONFIG, "groupid_1")
    prop.setProperty(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest") // earliest, latest

    val consumer = new KafkaConsumer[String, String](prop)
    consumer.subscribe(List("first_topic").asJava)
    while(true) {
      val records = consumer.poll(Duration.ofMillis(100))
      log.info("No of records -> " + records.asScala.size)
      records.asScala.foreach{record =>
        log.info(s"key -> ${record.key}, value -> ${record.value}")
        log.info(s"partition -> ${record.partition}, offset -> ${record.offset}")
      }
      Thread.sleep(100)
    }
  }

}
