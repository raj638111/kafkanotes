

  #22

  # Copy docker compose (next notes) in EC2 instance in $home
    as zoonavigator-docker-compose.yml

  # Run docker compose
    docker-compose -f zoonavigator-docker-compose.yml up -d
    + up = start the container
    + -d = As daemon

  # Validate if the container is running
    + docker ps
    CONTAINER ID        IMAGE                              COMMAND             CREATED              STATUS                        PORTS               NAMES
    0d93d51141a8        elkozmon/zoonavigator-web:latest   "./run.sh"          About a minute ago   Up About a minute (healthy)                       zoonavigator-web
    efc548c65823        elkozmon/zoonavigator-api:latest   "./run.sh"          About a minute ago   Up About a minute (healthy)                       zoonavigator-api

    + curl localhost:8001
    + Check from browser
      http://54.175.216.24:8001
      - Connection string: zookeeper1:2181,zookeeper2:2181,zookeeper3:2181
        (No need to provide user name & password)
      - Refer the UI in 2nd note (c30) from this note
        + Click Create Node to create new node (Just like the command line but in UI)


