

-- enable.auto.commit = true + synchronous processing of batches
  #78

  # Synchronous processing
    - Read message
    - Process message
    - ^^ repeat

  # With enable.auto.commit = true(which is the default),
    + Offsets are committed at regular interval (every time poll() is called) based on,
      - auto.commit.interval.ms (5000 ms default)

    + This provides 'At least once' semantic (When used along with Synchronous processing)
      (So the default behaviour for Consumer client is 'At least once' semantic)

    + With asynchronous processing we get 'At most once' semantic,
      as the offset will be committed before the data is processed
