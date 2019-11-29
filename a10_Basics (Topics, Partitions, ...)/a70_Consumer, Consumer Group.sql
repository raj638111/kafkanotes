
-- Consumer

  + Reads data from a topic
  + What is transparent to us? (ie taken care automatically for us)
    - Consumer knows which broker to read from 
    - Knows how to recover on broker failures
  + Order
    - Data is read in order within each partition
  + Multiple partitions
    - Can read from multiple partitions in Parallel
    - Example if we have P1 & P2
      . Will read little bit from P1 & little bit from P2 etc...
      
-- Consumer Group

  + Consumer read data in Consumer Group
    - Basically a Consumer Group represents an application
  + Lot of consumers are grouped into one Consumer Group
  + Exclusive Partitions
    - Each consumer reads exclusively from a specific partition
    - Achieved by Kafka using Group coordinator & Consumer Coordinator
  + What if we have more consumer than the no of partitions?
    - Those consumers will be inactive