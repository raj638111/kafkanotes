
-- Following are the requests for which metrics are provided

  • ApiVersions
  • ControlledShutdown
  • CreateTopics
  • DeleteTopics
  • DescribeGroups
  • Fetch
  • FetchConsumer
  • FetchFollower
  • GroupCoordinator
  • Heartbeat
  • JoinGroup
  • LeaderAndIsr
  • LeaveGroup
  • ListGroups
  • Metadata
  • OffsetCommit
  • OffsetFetch
  • Offsets
  • Produce
  • SaslHandshake
  • StopReplica
  • SyncGroup
  • UpdateMetadata

-- Eight metrics are provided for each of this request

  -- Seven Time Metrics

    (Each time metric provide a set of precentile for requests)

    # Total time
      + kafka.network:type=RequestMetrics,name=TotalTimeMs,request=Fetch
      + Total amount of time the broker spends processing the request,
        from receiving it to sending the response back to the requestor

    # Request queue time
      + kafka.network:type=RequestMetrics,name=RequestQueueTimeMs,request=Fetch
      + The amount of time the request spends in queue after it has been received but
        before processing starts

    # Local time
      + kafka.network:type=RequestMetrics,name=LocalTimeMs,request=Fetch
      + The amount of time the partition leader spends processing a request, including
        sending it to disk (but not necessarily flushing it)

    # Remote time
      + kafka.network:type=RequestMetrics,name=RemoteTimeMs,request=Fetch
      + The amount of time spent waiting for the followers before request processing can
        complete

    # Throttle time
      + kafka.network:type=RequestMetrics,name=ThrottleTimeMs,request=Fetch
      + The amount of time the response must be held in order to slow the requestor
        down to satisfy client quota settings

    # Response queue time
      + kafka.network:type=RequestMetrics,name=ResponseQueueTimeMs,request=Fetch
      + The amount of time the response to the request spends in the queue before it can
        be sent to the requestor

    # Response send time
      + kafka.network:type=RequestMetrics,name=ResponseSendTimeMs,request=Fetch
      + The amount of time spent actually sending the response

  -- One Rate Metric

    # Requests per second
      + kafka.network:type=RequestMetrics,name=RequestsPerSec,request=Fetch
      + Is a rate metric


-- Attributes provided for each of the above ^^ metric

  # Percentiles
    50thPercentile, 75thPercentile, 95thPercentile, 98thPercentile,
    99thPercentile, 999thPercentile
  # Count
  # Absolute count of number of requests since process start
  # Min
  # Minimum value for all requests
  # Max
  # Maximum value for all requests
  # Mean
  # Average value for all requests
  # StdDev
