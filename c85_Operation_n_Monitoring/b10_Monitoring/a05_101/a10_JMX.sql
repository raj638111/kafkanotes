
-- JMX

  + All the metrics are exposed via the JMX (Java Management Extension) interface
  + Enabled through
    KAFKA_JMX_OPTS="-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.local.only=false -Djava.rmi.server.hostname=localhost"
  + Utilities to access the JMX metrics
    - JConsole
    - etc...