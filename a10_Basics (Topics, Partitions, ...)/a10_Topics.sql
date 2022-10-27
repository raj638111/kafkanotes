
-- Topic

  + Is similar to table in database
  + A kafka cluster can have multiple Topics

-- Internal Topics

  + __consumer_offsets
  + _schemas
    - Schemas are stored by schema registry in this topic
  + connect-configs
    - Stores configurations
  + connect-status
    - Helps to elect leaders for connect,
  + connect-offsets
    - Store source offsets for source connectors

-- Topic Properties

  + auto.create.topics.enable = true
    - Topic gets created when,
      . Producer sends message to a topic
      . Client requests metadata for a topic
      . Consumer reads message from a topic