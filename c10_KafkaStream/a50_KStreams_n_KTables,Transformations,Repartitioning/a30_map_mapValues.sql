

-- map
    + Affects both key & value
    + Triggers repartition
    + KStream only

-- mapValues
    + Affects only value
    + Do not trigger repartition
    + KStream & KTable

** BC: If possible use mapValues to avoid repartition
