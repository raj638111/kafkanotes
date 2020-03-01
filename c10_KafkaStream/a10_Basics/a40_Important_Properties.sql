

  # bootstrap.servers

  # auto.offset.reset.config
    + `earliest`
      - Consume the topic from the earliest offset
    + `latest`
      - Consume the topic from the latest offset

  # application.id
    + Is specific to streams application only
    + = Consumer `group.id`
    + Is the prefix to default `client.id`
    + Is the prefix to internal changelog topics
    + Beware
      . Changing this id will make Kafka consider the application
        as a new streams application

  # default.key.serde
  # default.value.serde


