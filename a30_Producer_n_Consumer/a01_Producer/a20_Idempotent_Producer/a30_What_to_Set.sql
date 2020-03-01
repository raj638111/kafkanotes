

-- Safe configuration settings
   (Safe here implies avoiding duplicate + optionally ordered data)

    # producerProps.put("enable.idempotence", true)
    # `min.insync.replicas` = 2
    # Other defaults for idempotent producer


** Note: Running a safe producer might impact throughput & latency
         (Always test your use case)


