

-- Log Compaction

    + Improves performance when dealing with KTables
    + Less reads to get to the final state & Less time to recover
    + Has to set / enabled by us on topics that get created

-- What happens in Log compaction

    + **The idea is to keep only the latest update for a key in our log
    + Ensures the log contains at least the last known value for a
      specific key within the partition
    + Very useful if we need a snapshot instead of full history


