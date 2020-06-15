
-- Request Handler Idle ratio

  # JMX Bean
    kafka.server:type=KafkaRequestHandlerPool,name=RequestHandlerAvgIdlePercent
    Value: Float, between zero and one inclusive

  # Lower this number, the more loaded the broker is. Experience
    tells us that idle ratios lower than 20% indicate a potential problem, and lower
    than 10% is usually an active performance problem

  # Kafka uses two thread pools for handling all client requests
    + Network Handlers
      - Responsible for reading and writing data to the clients across the network
    + Request Handlers
      - Responsible for servicing the client request itself, which includes
        reading or writing the messages to disk
      - *** As the brokers get more heavily loaded,
        there is a significant impact on this thread poo
