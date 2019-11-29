
-- Delete

kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic second_topic --delete

Topic second_topic is marked for deletion.
Note: This will have no impact if delete.topic.enable is not set to true.

# **BC
  + Only marked for deletion but not immediately deleted