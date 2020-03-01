

# flatMap takes one record & produce zero, one or more record #27

-- flatMap

    # Change key, so marks the data for  repartition
    # KStream only

-- flatMapValues
    # Do not change key, so no repartition is triggered
    # KStream only