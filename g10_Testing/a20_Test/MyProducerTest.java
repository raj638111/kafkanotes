
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.List;
import org.apache.kafka.clients.producer.MockProducer;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.common.serialization.IntegerSerializer;
import org.apache.kafka.common.serialization.StringSerializer;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class MyProducerTest {

    // MockProducer is provided by Kafka for testing
    // It ^^ simulates the 'Producer' API, so that we do not need a real
    // kafka cluster for testing our producer application
    MockProducer<Integer, String> mockProducer;
    MyProducer myProducer;

    // Contains data sent so System.out during the test.
    private ByteArrayOutputStream systemOutContent;
    // Contains data sent so System.err during the test.
    private ByteArrayOutputStream systemErrContent;
    private final PrintStream originalSystemOut = System.out;
    private final PrintStream originalSystemErr = System.err;

    // All @Before method gets executed before each tests
    @Before
    public void setUp() {
        // Arguments
        // autoComplete: false
        //  false - Tells MockProducer to not respond to send. We have to explicitly
        //          tell the MockProducer to respond by call like 'mockProducer.completeNext()'
        //  true - Tells MockProducer to respond automatically (???: Have not tested this though)
        mockProducer = new MockProducer<>(false, new IntegerSerializer(),
                new StringSerializer());
        myProducer = new MyProducer();
        myProducer.producer = mockProducer;
    }

    // Setting this up to capture the sys.out & sys.err
    @Before
    public void setUpStreams() {
        systemOutContent = new ByteArrayOutputStream();
        systemErrContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(systemOutContent));
        System.setErr(new PrintStream(systemErrContent));
    }

    @After
    public void restoreStreams() {
        System.setOut(originalSystemOut);
        System.setErr(originalSystemErr);
    }

    @Test
    public void testPublishRecord_sent_data() {
        // Perform a simple test to verify that the producer sends the correct data to
        // the correct topic when publishRecord is called.
        // Provide key & value
        myProducer.publishRecord(1, "Test Data");

        // This basically tells...
        // "Hey MockProducer, next time when someone calls send(), go ahead and complete
        //  that request"
        //  Note: There are other methods available too, like making the MockProducer
        //        to throw an error when some calls send()
        mockProducer.completeNext();

        List<ProducerRecord<Integer, String>> records = mockProducer.history();
        Assert.assertEquals(1, records.size());
        ProducerRecord<Integer, String> record = records.get(0);
        // Assert key, value, topic & sys.out content
        Assert.assertEquals(Integer.valueOf(1), record.key());
        Assert.assertEquals("Test Data", record.value());
        Assert.assertEquals("test_topic", record.topic());
        Assert.assertEquals("key=1, value=Test Data\n", systemOutContent.toString());
    }

}