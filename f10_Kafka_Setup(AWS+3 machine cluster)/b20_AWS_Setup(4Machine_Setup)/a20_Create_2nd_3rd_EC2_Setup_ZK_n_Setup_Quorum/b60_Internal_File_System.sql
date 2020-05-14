
#18

./ (/data/zookeeper)
  . myid
    - Is the file with server id created by us

  + version-2 // All other dir / files are managed by Zookeeper
    - Holds zookeeper data

    . acceptEpoch (Internal to Zookeeper)
    . currentEpoch
    . log.XXX
      - Zookeeper data files
    . snapshot.XXX

