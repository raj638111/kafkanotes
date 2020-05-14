

  # 64

  # Compression can be enabled at the producer level
  # `compression.type`
    + default: None
    + Available values: gzip, lz4 & snappy
    + (ProducerConfig.COMPRESSION_TYPE_CONFIG, "snappy")
  # Larger the batch of message being sent, more the compression will be
    + Related settings: linger.ms, batch.size


  # Advantages
    + Smaller size
    + Less N/W latency
    + Better throughput
    + Better disk utilization

  # Disadvantages
    + Producer (Compression) & Consumer(Decompression) consumes CPU cycles

  # Recommended
    + Use snappy or lz4

  https://blog.cloudflare.com/squeezing-the-firehose


