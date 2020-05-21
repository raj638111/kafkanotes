

  # Can be done with the same Partition reassignment tool (b15)

  # Example Configuration
    (Change the replication factor of the my-topic from 1 to 2)
    {
      "partitions": [
      {
      "partition": 0,
      "replicas": [
        1,
        2
        ],
      "topic": "my-topic"
      }
      ],
      "version": 1
    }