
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.MockConsumer;
import org.apache.kafka.clients.consumer.OffsetResetStrategy;
import org.apache.kafka.common.TopicPartition;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

/**
 *
 * @author will
 */
public class MyConsumerTest {

    // MockConsumer is provided by Kafka for testing
    // It ^^ simulates the 'Consumer' API, so that we do not need a real
    // kafka cluster for testing our consumer application
    MockConsumer<Integer, String> mockConsumer;
    MyConsumer myConsumer;

    // Contains data sent so System.out during the test.
    private ByteArrayOutputStream systemOutContent;
    private final PrintStream originalSystemOut = System.out;

    @Before
    public void setUp() {
        mockConsumer = new MockConsumer<>(OffsetResetStrategy.EARLIEST);
        myConsumer = new MyConsumer();
        myConsumer.consumer = mockConsumer;
    }

    @Before
    public void setUpStreams() {
        systemOutContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(systemOutContent));
    }

    @After
    public void restoreStreams() {
        System.setOut(originalSystemOut);
    }

    @Test
    public void testHandleRecords_output() {
        // Verify that the testHandleRecords writes the correct data to System.out
        String topic = "test_topic";

        // Create a record that would be consumed by the Consumer
        // Specify topic, partition, offset, key & value
        ConsumerRecord<Integer, String> record = new ConsumerRecord<>(topic,
                0, 1, 2, "Test value");

        // Specify the topic & partition for the consumer to read from
        mockConsumer.assign(Arrays.asList(new TopicPartition(topic, 0)));

        // Specify offset for consumer: TopicPartition(topic, partitionNo), offset
        HashMap<TopicPartition, Long> beginningOffsets = new HashMap<>();
        beginningOffsets.put(new TopicPartition("test_topic", 0), 0L);
        mockConsumer.updateBeginningOffsets(beginningOffsets);

        mockConsumer.addRecord(record);

        myConsumer.handleRecords();
        Assert.assertEquals("key=2, value=Test value, topic=test_topic, partition=0, offset=1\n", systemOutContent.toString());
    }

}