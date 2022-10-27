
(Note: 'acks' is a producer setting)

-- acks = 0

    + No response is requested by producer from the broker (Leader)
    + ** Possible data loss
    + Useful where it is ok to lose data,
        - Metrics collection
        - Log collection

-- acks = 1 (Leader acknowledgement) //** Default

    + Leader response is requested by Producer from the broker
    + Guarantees data in commited by Leader
    + ** But replication is not guaranteed
    + When ack is not received, Producer may retry
    + There will be data loss, if the leader goes down, but the replicas have not
      replicated the data yet

-- acks = all (Leader + Replicas acknowledgement requested)
    + Ensures that data is comitted by Leader as well as replicas broker
    + Leader will collect & send the acks of all replicas
    + ** Adds latency as we have to wait for all the replicas to ack
    + -- min.insync.replicas
        . Is a topic / broker setting
        . Need to set when acks=all is used
        . Can be set at broker level or topic level (override)
        . Example: min.insync.replicas = 2 (2 is common)
            ~ Atleast 2 broker inclusive of leader should ack


# 60