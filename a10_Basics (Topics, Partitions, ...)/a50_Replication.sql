
-- Replication

  + Why useful?
    - When a machine goes down, we still can get the data from some other machine
      in which a partition (of a topic) is replicated
      
  + What is the suggested Replication Factor?
    - Usually 2(Risky) or 3 (Standard)
    
  + How is replication specified?
    - Replication is specified for a topic
    
  + Which broker does my partition get replicated?
    - A specific partition in one broker gets replicated in any other broker
      other then the same one (Makes sense...)
      
  + Note:
    - With a replication factor of N, N - 1 brokers can go down and still...
      producer / consumer can write / read from a specific partition without
      any date loss

-- Reference
    
  https://www.udemy.com/apache-kafka/learn/v4/t/lecture/11566876?start=0  
  
  
    