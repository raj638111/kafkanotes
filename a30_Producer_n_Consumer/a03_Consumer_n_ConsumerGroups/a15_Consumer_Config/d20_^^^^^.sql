

-- auto.offset.reset

  # Hypothetical scenario (Offset is no more available in the Broker)

    + Data retention period is default = 7 days
    + Consumer is down for 7 days
    + If the consumer is started after 7 days, will the consumer offset be
      available in kafka?
        - No
        - How do we deal with this?
          . Set 'keep auto.offset.reset=latest'
            ~ This ensures if the consumer cannot find the offset,
              it will start reading from the latest offset
          . Set 'keep auto.offset.reset=earliest'
            ~ This ensures if the consumer cannot find the offset,
              it will start reading from the earliest offset
          . Set 'keep auto.offset.reset=none'
            ~ This ensures if the consumer cannot find the offset,
              an exception is thrown (So this will need manual intervention)

-- offset.retention.minutes

  # Hypothetical scenario (Offset is lost in the consumer)

  # How can consumer lost the offset?
    - In kakfa < 2.0; If the consumer did not read any new message for 1 day
    - In kafka >= 2.0; If the consumer did not read any new message for 7 days
    ~ How do we control this time?
      By changing; 'offset.retention.minutes' broker settings

-- Best practice

  # Set data retention period & offset.retention.minutes to the same value


