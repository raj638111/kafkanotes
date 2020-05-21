

-- Garbage Collection

  For an Oracle Java 1.8 JRE running with G1 garbage collection,
  the beans to use are
  + Full GC cycles
    - java.lang:type=GarbageCollector,name=G1 Old Generation
  + Young GC cycles
    - java.lang:type=GarbageCollector,name=G1 Young Generation

  -- Attribute to watch in both Old & Young

    + CollectionCount
      - No of GC Cycles of that type since JVM is started
    + CollectionTime
      - Amount of time, in milliseconds, spent in that type of
        GC cycle since the JVM was started.


-- Java OS Monitoring

  # The two useful attributes are,

    + MaxFileDescriptorCount
      Maximum number of file descriptors (FDs) that the JVM is allowed to have open

    + OpenFileDescriptor
      There will be FDs open for every log segment and network connection,
      and they can add up quickly. A problem closing network connections
      properly could cause the broker to rapidly exhaust the number allowed
