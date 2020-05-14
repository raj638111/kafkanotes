
  # 19

  # *** Latency is key for Zookeeper and any of these variables will affect it,
    + Fast Disk (Good)
    + No RAM swap (Good)
    + Separate disk for logs and snapshots
      (Refer previous notes for the location of logs & snapshots in EC2 instance)
    + High performance N/W (low latency)
      (Keep the instances close)
    + Reasonable no of zookeeper servers (Refer beginning notes on
      optimal quorum sizing ie 1, 3, 5, 7 etc...)
    + Isolate Zookeeper instance from other processes

