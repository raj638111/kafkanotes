

  # bootstrap.servers
  # auto.offset.reset.config
    + `earliest`
      - Consume from topic start
      - If application is reconnected for first stime starting
        start from the earliest offset
    + ...
  # application.id
    + = Consumer `group.id`
    + Is the prefix to default `client.id`
    + Is the prefix to internal changelog topics
    + Beware
      . Changing this id will make Kafka consider the application
        as a new streams application

  # default.key.serde
  # default.value.serde


