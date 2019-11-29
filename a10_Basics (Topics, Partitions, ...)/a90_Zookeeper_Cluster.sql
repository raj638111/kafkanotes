
-- Zookeeper Cluster

  + Manages Kafka Cluster (ie all Brokers)
    - Keeps a list of all the brokers in cluster
  + Leader Election
    - Helps in performing leader election for partitions
  + Notification to Kafka
    - Sends notification to Kafka cluster in case of changes
      (ie new topic, broker dies, broker comes up, delete topics etc...)
  + Odd Number of Servers
    - Zookeeper by design works only with odd number of Zookeeper Servers
    - ie We can have only 3 / 5 / 7 Zookeepers
  + Leader
    - Zookeeper has One leader that handles writes from all brokers
    - Can also handle read from all brokers
  + Followers
    - Rest of the Zookeeper other than leaders are followers
    - They handle read from all brokers

  + Note:
    - Producers & Consumers do not write to Zookeepers, it is only
      the brokers that write / read metadata from Zookeeper
    - Since version > 0.10, Consumers Offsets are no longer stored in Zookeeper
