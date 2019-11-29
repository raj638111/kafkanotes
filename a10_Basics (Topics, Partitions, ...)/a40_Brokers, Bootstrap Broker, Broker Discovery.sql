
-- Broker

  + Is a server in kafka cluster
  + ID
    - Each broker is identified by an ID (Integer)
  + Each broker contains partitions
  + Each broker knows about all other brokers, partitions and topics (ie Metadata)

-- Bootstrap Broker / Bootstrap Server

  + By connecting to a Bootstrap broker, we connect to the entire cluster
  + All Brokers are also Bootstrap Server

-- How many brokers do I need for a cluster?

  + 3 is good to start with ??? Why    
  
-- Brokers vs Topics vs Partitions

  + Equally distributed
    - Partitions of a Topic is equally distributed across multiple brokers

-- Broker Discovery (Steps)

  1. Client connects to bootstrap server
  2. Client makes a Metadata request to bootstrap server
  3. Bootstrap server provides list of all brokers available in the cluster
  3. Client connects automatically to the required broker for producing / consuming
