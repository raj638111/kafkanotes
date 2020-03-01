
-- Producer
  
  + Writes data to a topic
    
  + To which broker -> Partition the data is sent to?
    - When key(Message key) is not specified, data is sent in round robin to broker1, broker2, etc...
      (yeppie looks like the load is balanced across brokers)
      
  + What is taken care automatically by producer for us?
    - Which broker & partition to write
    - Recovery in case of broker failure

  + Can producer get acknowledgement for data writes?
    - It can choose to get acknowledgement
    - These are the modes
      . acks = 0    Producer wont wait for acknowledgement from Leader
                    (Possible data loss when we send data to a broker that is down)
                    Dangerous
      . acks = 1    Is the default 
                    Producer will wait for acknowledgement from Leader
                    Limited data loss
                    ## so when does the data loss happens?
      . acks = all  Producer will wait for acknowledgement from Leader & all replicas
                    No data loss

-- Message Keys

  + Why do we need Message Key?
    - Based on message key, messages with the same key can be written to the
      same partition in a broker

  + **What if I change the partition count for a topic, will a message with a specific key
    go to the same partition?
    - Nope

  + How does a producer specify a key?
    - Well he can send a key along with a message
    
  + Does a key need to be any specific data type?
    - Nope; It can be string or number
    
  + What if key is null? or key is not sent?
    - Data is send in round robin to different partitions

  + How do we ensure certain set of messages always goes to the same partition?
    - With a key sent, all the messages for that Key will go the same partition
      (Kafka Guarantee)
      (By using Key Hashing, Key to Partition mapping is done)
    
  + Example (Topic to track trucks) (with 3 partitions)
    - Key: Can be truck ID (Can be a number or string)
    - T1 will always go to p0
      T5 will always go to P0
      T8 will always to to P1 etc..
    (Note here; we do not say which key goes to which partition, Producer decides
    based on Hashing. But all we know is a specific key will always go to a 
    specific partition)      
      
-- Reference

https://www.udemy.com/apache-kafka/learn/v4/t/lecture/11566878?start=2