package rj.a10_AvroProducer;

import java.util.Properties;
import io.confluent.kafka.serializers.KafkaAvroSerializer;
import org.apache.kafka.common.serialization.StringSerializer;
import rj.a30_Generated_Avro.Customer;
import org.apache.kafka.clients.producer.*;

public class a10_AvroProducer {

    public static void main(String[] args) {
        Properties properties = new Properties();
        // normal producer
        properties.setProperty("bootstrap.servers", "127.0.0.1:9092");
        properties.setProperty("acks", "all");
        properties.setProperty("retries", "10");
        // avro part
        properties.setProperty("key.serializer", StringSerializer.class.getName());
        properties.setProperty("value.serializer", KafkaAvroSerializer.class.getName());
        properties.setProperty("schema.registry.url", "http://127.0.0.1:8081");

        Producer<String, Customer> producer = new KafkaProducer<String, Customer>(properties);

        String topic = "customer-avro";

        // copied from avro examples
        Customer customer = Customer.newBuilder()
                .setAge(34)
                .setAutomatedEmail(false)
                .setFirstName("John")
                .setLastName("Doe")
                .setHeight(178f)
                .setWeight(75f)
                .build();

        ProducerRecord<String, Customer> producerRecord = new ProducerRecord<String, Customer>(
                topic, customer
        );

        System.out.println(customer);
        producer.send(producerRecord, new Callback() {
            @Override
            public void onCompletion(RecordMetadata metadata, Exception exception) {
                if (exception == null) {
                    System.out.println("Success!");
                    System.out.println(metadata);
                } else {
                    exception.printStackTrace();
                }
            }
        });

        producer.flush();
        producer.close();
    }
}

/* Output

{"first_name": "John", "last_name": "Doe", "age": 34, "height": 178.0, "weight": 75.0, "automated_email": false}
Success!
customer-avro-0@0
              ^     0 - Stands for partition 0
                ^   0 - Stands for offset
 */