
# Both Group Coordinator & Group Leader are responsible
  for doing Consumer Group Re-balance


-- Group Coordinator

  + Is basically a broker in the cluster
  + Every Consumer Group gets its own Group Coordinator
  + Consumer interacts with Group coordinator to commit its
    offset to __consumer_offset topic
    (ie... consumer do not directly write to __consumer_offset topic)

-- Group Leader

  + Is one on of the Consumer in the Consumer Group
  + First consumer to join the group always becomes the Group Leader



