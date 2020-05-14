

  # 43

  # ~140 parameters
    + There are around approximately 140 parameters in Kafka

  # auto.create.topics.enable=true
    + Set this to false in prod

  # background.threads=10
    + Increase if we have a good CPU

  # delete.topics.enable=false
    + Our choice

  # log.flush.interval.message
    + Never change this. Let the OS takes care of this

  # log.retention.hours=168 (7 days)
    + Set according to the requirement

  # message.max.bytes=1000012 (1MB)
    + This is the maximum size of the message
    + Increase if needed. but no recommended generally

  # min.insync.replicas=1
    + Set to 2 if needed the extra safety

  # num.io.threads=8
    + Increase if this if Network I/O is a bottleneck

  # num.network.threads=3
    + Increase if this if Network is a bottleneck

  # num.recovery.threads.per.data.dir=1
    + Set this to number of disks

  # num.replica.fetchers=1
    + Increase if replicas are lagging

  # offsets.retention.minutes=1440
    + After 24 hours you lose offsets
    + This can be increased if we know that the consumer will not be running for a week
      so that the last offset is retained when the consume starts after a week

  # unclean.leader.election.enable=true
    + Set this to 'false' if you do not want data loss

  # zookeeper.session.timeout.ms=6000


  # broker.rack=null
    + Helps to spread the partition b/w different racks
    + Set this to the availability zone in AWS when using AWS
    + Example: If the broker lives in availability zone 'a' set this to 'a'

  # default.replication.factor=1
    + Set to 2 or 3 as necessary

  # num.partitions=1
    + Set from 3 to 6

  # quota.producer.default=10485760
    + I suppose producer can produce only 10MB / second?

  # quota.consumer.default=10485760
    + I suppose consumer can consumer only 10MB / second?








