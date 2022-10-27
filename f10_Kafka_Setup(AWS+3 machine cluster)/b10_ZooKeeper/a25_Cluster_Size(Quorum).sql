
  #8

-- Quorum Size

  # What no of servers Zookeepers need to have?

    + Can be 1, 3, 5, 7, 9, ..., 2N + 1
      - where N = 0, 1, etc...
      - N is also the no of servers that can ****go down
        ..so for a 5 servers zookeeper, 2 * (2) + 1 ... 2 servers can go down

    + Why odd no of servers?
      - Because when voting happens, the votes need to have strict majority

--

