
Question to Fengchao:
----------------------

-- userEventCoreUI & sessionEventCoreUI

  # Are they both KStream or One of them is KStream & one of them is KTable?

  # What kind of Join are we performing?
    + Is it Sliding Window (only possible when KStream to KStream)

  # How do we manage late arriving data in either userEvent or userSession?
    + Suppose we are using State Store to store late arriving data?

  # As we are joining what is the common key used in both event & session
    for joining the topic?

  # Suppose both event & session are partitioned by the same key?

I understand join is based on key b/w 2 topics
What if one key in a join arrives late? What happens to
join in this case?
  + Would be a good idea to test this scenario

What is symmetric & asymmetric join?

# Notes are redundant for joins & aggregation. Refactor those
# Interactive queries: Create examples if possible to read state-store

# Create a project with KStream(Event) and KTable (Session)
  + How do u make a join if there is no session for an event?
    . Store the event in KTable & Checkback later (after few seconds)

  + How do u make a join if there is no event for a session?
    . We do not need to do anything here


What is the use of Materialized.as("counts-store")?
-- In Progress

Kafka - 48
Kafka Streams - 5

-- Kafka beginners

https://github.com/simplesteph/kafka-beginners-course