
import java.util.Properties;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.common.serialization.IntegerDeserializer;
import org.apache.kafka.common.serialization.IntegerSerializer;
import org.apache.kafka.common.serialization.Serdes;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.apache.kafka.common.serialization.StringSerializer;
import org.apache.kafka.streams.StreamsConfig;
import org.apache.kafka.streams.Topology;
import org.apache.kafka.streams.TopologyTestDriver;
import org.apache.kafka.streams.test.ConsumerRecordFactory;
import org.apache.kafka.streams.test.OutputVerifier;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class MyStreamsTest {

    MyStreams myStreams;
    TopologyTestDriver testDriver;

    @Before
    public void setUp() {
        myStreams = new MyStreams();
        Topology topology = myStreams.topology;

        Properties props = new Properties();
        props.put(StreamsConfig.APPLICATION_ID_CONFIG, "test");
        props.put(StreamsConfig.BOOTSTRAP_SERVERS_CONFIG, "dummy:1234");
        props.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG, Serdes.Integer().getClass().getName());
        props.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG, Serdes.String().getClass().getName());

        // ***We are going to test our 'topology' using TopologyTestDriver
        testDriver = new TopologyTestDriver(topology, props);
    }

    @After
    public void tearDown() {
        testDriver.close();
    }

    @Test
    public void test_first_name() {
        // Verify that the stream reverses the record value

        // Create 'ConsumerRecordFactory' to create 'ConsumerRecord'
        // *** The reason we need 'ConsumerRecordFactory' is because the
        //     ConsumerRecord should be of type 'ConsumerRecord<byte[], byte[]>'
        //     and can only be created using ConsumerRecordFactory
        ConsumerRecordFactory<Integer, String> factory =
                new ConsumerRecordFactory<>("test_input_topic",
                        new IntegerSerializer(), new StringSerializer());
        ConsumerRecord<byte[], byte[]> record = factory.create("test_input_topic",
                1, "reverse");

        // Add data from input topic into TopologyTestDriver
        testDriver.pipeInput(record);

        // Read output from topology using TopologyTestDriver
        ProducerRecord<Integer, String> outputRecord = testDriver.readOutput("test_output_topic",
                new IntegerDeserializer(), new StringDeserializer());

        // Check if the output is right
        OutputVerifier.compareKeyValue(outputRecord, 1, "esrever");
    }

}