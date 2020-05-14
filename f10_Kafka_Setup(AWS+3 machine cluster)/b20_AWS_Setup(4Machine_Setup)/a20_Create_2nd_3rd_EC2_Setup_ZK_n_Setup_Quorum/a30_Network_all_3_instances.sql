
# Start zookeeper on all machines & test connectivity
  sudo service zookeeper start
  # Check if works
  nc -vz localhost 2181 (or)
  nc -vz zookeeper1 2181 (Can test this from any machine)
  nc -vz zookeeper2 2181
  nc -vz zookeeper3 2181


# Setup the Quorum
  # Stop service on all machines
  sudo service zookeeper stop
  # Refer next script for all the commands...
