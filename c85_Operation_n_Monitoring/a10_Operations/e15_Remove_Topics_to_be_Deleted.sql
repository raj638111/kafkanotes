

-- What is 'Topics to be deleted'?

  + Any topic that is to be deleted (by using command line tool) has a node
    created in zookeeper under /admin/delete_topic
  + If topic deletion is disabled in the cluster, we will have a bloated list
    of nodes for each topics that was requested for deletion under /admin/delete_topic

-- How to remove 'Topics to be deleted'?

  + Just delete the nodes in Zookeeper


