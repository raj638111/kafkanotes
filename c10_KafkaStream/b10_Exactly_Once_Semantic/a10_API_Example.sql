
    -- #55
    props.put(StreamsConfig.PROCESSING_GUARANTEE_CONFIG, StreamsConfig.EXACTLY_ONCE)

    # Note:
        + The **producer that produce message for the EXACTLY_ONCE KStream
          application should also have idempotent producer in order to avoid
          duplicate message being sent