
# Note:
    + Standalone mode
        - In standalone mode, the file can be ***outside of the cluster,
          but in Distributed mode the file needs to be placed in the cluster
        - In standalone mode, we have launched a separate tool container,
          apart from the kafka cluster container

# Identify the container we have kafka running

docker ps

CONTAINER ID        IMAGE                           COMMAND                  CREATED             STATUS              PORTS                                                                                                                                                  NAMES
4a88ab9571ef        landoop/fast-data-dev:cp3.3.0   "/usr/local/bin/dumb…"   6 minutes ago       Up 6 minutes        0.0.0.0:2181->2181/tcp, 0.0.0.0:3030->3030/tcp, 0.0.0.0:8081-8083->8081-8083/tcp, 0.0.0.0:9092->9092/tcp, 0.0.0.0:9581-9585->9581-9585/tcp, 3031/tcp   code_kafka-cluster_1


# Login to the container

docker exec -it 4a88ab9571ef bash
root@fast-data-dev / $


# Create the file

touch demo-file.txt

cat demo-file.txt
hi
hello