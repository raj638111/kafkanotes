

  # The goal of having 2 properties (KIP-62) is to allow
    quick detection of failing consumer by Group Coordinator

  # session.timeout.ms is kept lower than max.poll.interval.ms
    . Example
      ~ session.timeout.ms = 30 seconds
      ~ max.poll.interval.ms = 1 min

  https://stackoverflow.com/a/39759329/892857