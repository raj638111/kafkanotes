
-- Ports

  + Zookeeper ports
    2181 - client port, 2888 - peer port, 3888 - leader port
  + Bootstrap server (Broker)
    9092
  + KSQL Server
    8088
    Note down all the ports???

-- MirrorMaker

  + Active-Passive Mode
            ^^ The mirrored cluster is used only for reading
    ^^ Is used for both writing & reading


-- Security

  https://kafka.apache.org/documentation/#security

  + Authentication mechanism supported
    . SSL
      ~ When SSL is enabled, Zero Copy (Done using page cache I think???...)
        feature will be lost
        (as the message needs to be loaded into JVM for encryption, zero copy
         optimization is lost)

    . SASL
      ~  GSSAPI (Kerberos)
      ~  PLAIN
      ~  SCRAM-SHA-256
      ~  SCRAM-SHA-512
      ~  OAUTHBEARER


-- Setup

  + Broker
    - Heap Size
      . Only small heap size is needed (Example: 4GB RAM)
        (Rest of the RAM goes to page cache managed by OS)

-- Client & Broker

  + Bidirectional Compatibility
    - Starting from version 0.10.2 onwards,
      . Newer client can talk to new broker
      . Older client can also talk to new broker

-- Others
  + 24 ?
    (Watermark question?)

-- CAP Theorem & Kafka

