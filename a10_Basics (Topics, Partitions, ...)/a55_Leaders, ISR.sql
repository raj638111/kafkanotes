
-- Leader
      
  + A Leader is assigned for each partition in a topic
  
  + Why needed? 
    - Example: 
      . With a replication of 2 a partition will be available in 2 brokers. So from which
        broker do I read the partition?
      . We read the partition from the Leader broker
      
  + **Only a Leader can receive & serve data for a given partition
  
  + So how does the message in replicated partition get sync with the message in Leader partition?
    - Happens transparently for us
    
  + ISR (In-sync replicas)
    - The replicas of a partition are basically called as ISR because it gets in sync with the Leader Partition
    
  + Who decides the Leader & ISR?
    - Well, Zookeeper
    
  + What if the Leader goes down?
    - Election happens for a new leader for that partition. Elected ISR becomes a Leader
    
  + What if the previous leader comes back again?
    - It will try to become the leader again...politics...

-- Preferred Leader

  + Is the broker that was Leader when the topic was first created
    ( It is preferred because when partitions are first created,
      the leaders are balanced between brokers )

-- Reference
    
  https://www.udemy.com/apache-kafka/learn/v4/t/lecture/11566876?start=0  
    