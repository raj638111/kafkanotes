
-- Overall work

  End - End pipeline

  1. GA Pipeline
    + BigQuery > GSC > AWS

  2. EDAP Pipeline
    + KStream > Kafka Connect (S3) > Spark (Hive) > Druid / Redshift > Looker
    + Joins(userEvent + sessionEvent), Bot Filtering
    + Event enrichment, Attribution (booking, 6 months history)

  3. Data Monitoring Framework (Dimensions, metric, Upper bound, lower bound)
     (Lateral view explode, Pivot)

  # Hints
    + visitorid - cookie - 2 years
    + session_id - 24 hours
    + visitid - Inactive 30 min, change in UTM parameter

-- Optimization

  # Optimization
    - Allocate more resource
    - Increase Shuffle partition size (default of 200)
    - Data Skew
      . Remove outliers if possible
      . Add salting key (3 hours 30 minutes)

-- Challenging

  1. Data Monitoring: Salting
  2. GA Pipeline: BigQuery API, JSON schema inference
  3. Druid (Stream ingestion spec (Kafka), Batch ingestion spec)



-- Immigration

+ Find immigraiton classification : ie EB2 or ?
+ Get perm filed & approval document
+ Get labor document


