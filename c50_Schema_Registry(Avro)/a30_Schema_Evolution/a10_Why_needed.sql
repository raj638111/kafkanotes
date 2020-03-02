
-- Why needed? #21

    # The idea is to evolve our schema for changing business needs
      (ie addition of new column etc...) without breaking the consumers
      that are reading the data

-- Types of Schema Evolution

    1. Backward Compatible
        + New schema can be used to read old data
        + Example: v2 schema can be used to read v1 data

    2. Forward Compatible
        + Old schema is used to read new data
        + Example: v1 schema is used to read v2 data

    3. Full
        + Both backward and forward compatible

    4. Breaking
        + None of the above
