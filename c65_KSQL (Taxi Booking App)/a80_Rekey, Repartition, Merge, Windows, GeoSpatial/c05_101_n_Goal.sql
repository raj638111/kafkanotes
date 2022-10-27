
-- 101

  # Multiple streams can be combined together into a single stream
  # Prerequisite
    + Schema of both the streams should be same
    + Recommended:
      Add a pseudo column to understand the origin of the stream



-- Goal (ie Hands-on)

  create stream of requested rides in Europe using data gen
  create stream of requested rides in USA using data gen
  combine into single stream of all requested rides using INSERT