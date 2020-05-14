
  # Kafka Setup > 34

  # Can be used to produce data for performance test

    + Create data of size 10KB

    base64 /dev/urandom | head -c 10000 | egrep -ao "\w" | tr -d '\n' > file10KB.txt

    + Send data to topic
    bin/kafka-producer-perf-test.sh --topic fourth_topic --num-records 10000 --throughput 10 --payload-file file10KB.txt --producer-props acks=1 bootstrap.servers=kafka1:9092,kafka2:9092,kafka3:9092 --payload-delimiter A

    throughput = no of records / second

