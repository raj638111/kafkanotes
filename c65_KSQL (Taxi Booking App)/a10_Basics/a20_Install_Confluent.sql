

  1. Install Confluent platform
  2. Install ConfluentCLI
    + Is used to install & administer confluent **development platform
    + https://docs.confluent.io/current/cli/installing.html
    curl -L --http1.1 https://cnfl.io/cli | sh -s -- -b /Users/raj/confluent/bin

  3. Start KSQL Server

    confluent local start ksql-server

    Starting zookeeper
    zookeeper is [UP]
    Starting kafka
    kafka is [UP]
    Starting schema-registry
    schema-registry is [UP]
    Starting ksql-server
    ksql-server is [UP]


  # Check current status of server

    confluent local status

    control-center is [DOWN]
    ksql-server is [UP]
    connect is [DOWN]
    kafka-rest is [DOWN]
    schema-registry is [UP]
    kafka is [UP]
    zookeeper is [UP]

  # Checkout KSQL

    ksql


                  ===========================================
                  =        _  __ _____  ____  _             =
                  =       | |/ // ____|/ __ \| |            =
                  =       | ' /| (___ | |  | | |            =
                  =       |  <  \___ \| |  | | |            =
                  =       | . \ ____) | |__| | |____        =
                  =       |_|\_\_____/ \___\_\______|       =
                  =                                         =
                  =  Streaming SQL Engine for Apache Kafka® =
                  ===========================================

Copyright 2017-2019 Confluent Inc.

CLI v5.4.1, Server v5.4.1 located at http://localhost:8088

Having trouble? Type 'help' (case-insensitive) for a rundown of how things work!

ksql>