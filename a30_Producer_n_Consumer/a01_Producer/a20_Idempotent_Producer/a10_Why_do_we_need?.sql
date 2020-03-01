

-- Idempotent producer #62

    # Can be used to avoid duplicate message in a partition
    # Example
        + producer -message-> broker -message-> comitted
        + Ack from broker failed because of network issue
        + Producer sends message again
    # Available from version >= 0.11
    # How is it achieved?
        + Producer sends produce request ID with each message
        + Broker can verify this ID to avoid duplicates