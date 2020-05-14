
bin/zookeeper-shell.sh localhost:2181
help
ls /

# Create a node & add data
  create /my-node "foo"
  ls /
    [my-node, zookeeper]

# Get node info

  get /my-node
    foo

# Update data
  set /my-node "new data"
  get /my-node
    new data

# Create deeper node
  create /my-node/new-node "some data"
  # A node without any data (ie empty data)
  create /my-node/another-node ""

# Remove node (Note: Remove is recursive)
  rmr /my-node

# Put a watch
  # Create the same node again
  create /my-node "some-data"
  # Lets create a watch
  #   Output: 'get path [watch]' has been deprecated. Please use 'get [-s] [-w] path' instead.
  get /my-node true
  # Lets change the data
  #   Output:
  #     WATCHER::
  #       WatchedEvent state:SyncConnected type:NodeDataChanged path:/my-node
  # Note: Watcher is good only for one time data change. If we change the data again
  #   we will not get notified
  set /my-node "new data"

  # Lets remove the node
  rmr /my-node