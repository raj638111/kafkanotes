

-- When new consumer is executed

  # When we run one more consumer (with the SAME Consumer Group) to the already existing
    consumer, the partitions assigned for the existing consumer gets rebalanced (gets reduced)

    + Why do we need rebalance?
      . So that the extra consumer can also read from the partition increasing
        the parallelism in reading

  PS: When a consumer is removed from the group (ie we kill that consumer application),
      group rebalance happen again