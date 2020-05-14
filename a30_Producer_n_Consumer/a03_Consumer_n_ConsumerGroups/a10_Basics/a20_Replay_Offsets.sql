
  # 82
  # There are time we want to reset offsets for a 'Consumer Group', in order to
    reprocess the data

  # How do we do?
    kafka-consumer-groups -bootstrap-server <> -group <Consumer Group ID> --reset-offsets \
    execute --to-earliest --topic <topic>

