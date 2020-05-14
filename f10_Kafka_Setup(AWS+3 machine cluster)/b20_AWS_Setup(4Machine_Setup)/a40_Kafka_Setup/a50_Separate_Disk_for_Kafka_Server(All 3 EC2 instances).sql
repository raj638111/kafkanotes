

-- Create Volumes for Kafka in each EC2 instance

  Elastic Block Storage > Volumes
  > GP2
    (Throughput optimized HDD ST1 is good option but requires minimum 500GB
    that costs lot of money)
  > 2GB > us-east-1c > Add tag (Name = Kafka Data Server 1)
  --
  Once created Attach the volume to instance
  Elastic Block Storage > Volumes > Name(kafka-ebs-us-east-1c) > Attach > Server1
  (Got a warning... Linux kernels may rename your devices to /dev/xvdf
    through /dev/xvdp internally, even when the device name entered
    here (and shown in the details) is /dev/sdf through /dev/sdp.)



  Elastic Block Storage > Volumes
  > GP2
    (Throughput optimized HDD ST1 is good option but requires minimum 500GB
    that costs lot of money)
  > 2GB > us-east-1d > (Name = Kafka Data Server 2)
  --
  Once created Attach the volume to instance
  Elastic Block Storage > Volumes > Name(kafka-ebs-us-east-1c) > Attach > Server2
  (Got a warning... Linux kernels may rename your devices to /dev/xvdf
    through /dev/xvdp internally, even when the device name entered
    here (and shown in the details) is /dev/sdf through /dev/sdp.)




  Elastic Block Storage > Volumes
  > GP2
    (Throughput optimized HDD ST1 is good option but requires minimum 500GB
    that costs lot of money)
  > 2GB > us-east-1e > (Name = Kafka Data Server 3)
  --
  Once created Attach the volume to instance
  Elastic Block Storage > Volumes > Name(kafka-ebs-us-east-1c) > Attach > Server3
  (Got a warning... Linux kernels may rename your devices to /dev/xvdf
    through /dev/xvdp internally, even when the device name entered
    here (and shown in the details) is /dev/sdf through /dev/sdp.)
