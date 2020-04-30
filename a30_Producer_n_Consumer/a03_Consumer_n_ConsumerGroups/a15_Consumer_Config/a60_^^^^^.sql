

-- max.poll.interval.ms vs
--   session.timeout.ms

  # The goal of having 2 properties (KIP-62) is to allow
    quick detection of failing consumer by Group Coordinator

    + session.timeout.ms is kept lower than max.poll.interval.ms
      . Example
        ~ session.timeout.ms = 30 seconds
        ~ max.poll.interval.ms = 1 min

  # Two threads

    ~ Those 2 properties are associated with 2 threads in Consumer App

    1. Heartbeat Thread
       + Sends a heart beat every session.timeout.ms
       + If heart beat thread crashes for some reason (Generally
         whole application crash), Group Coordinator can detect that
         after session.timeout.ms

    2. Processing thread
       + This is the thread where we read data & process message
       + If Processing thread dies, or take more time than max.poll.interval.ms
         to make another poll, than Group Coordinator can detect
         that after max.poll.interval.ms


  https://stackoverflow.com/a/39759329/892857