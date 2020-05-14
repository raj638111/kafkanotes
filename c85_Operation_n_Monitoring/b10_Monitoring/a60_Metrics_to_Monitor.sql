

    # Number of active controller #26
        + Should always be 1
        + Active Controller in Kafka
            - Leader Election
            - Assignments of Consumer Groups

    # Number of Under Replicated Partitions (URP)
        + Should always be 0
        + When not 0
            - This mean replica partitions are not catching up
              with the leader partition
            - Possible reason
                . Brokers are overloaded / misconfigured
                . Network is struggling

    # Number of offline partitions
        + Should always be 0
        + When not 0
            - A partition is offline means that the partition is down (Bad)


    # https://kafka.apache.org/documentation/#monitoring
    # https://docs.confluent.io/current/kafka/monitoring.html
