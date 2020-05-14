

-- Create 2nd EC2 instance using AMI

  Launch (Images > AMIs > Kafka-Zookeeper) >
    t2.medium
    Subnet = us-east-1d (**The 2nd subnet in VPC)
    Primary IP = 172.31.19.230 (This is going to the ***Private IP)
    Storage: 20GB (Our snapshot had 20GB; so we got 20GB as default value)
    Tag: Name = Server2
    Security Group:
      (Select the existing group we have created earlier)
      kafka-zookeeper

-- Create 3rd EC2 instance using AMI

  Launch (Images > AMIs > Kafka-Zookeeper) >
    t2.medium
    Subnet = us-east-1e (**The 2nd subnet in VPC)
    Primary IP = 172.31.35.20 (This is going to the ***Private IP)
    Storage: 20GB (Our snapshot had 20GB; so we got 20GB as default value)
    Tag: Name = Server2
    Security Group:
      (Select the existing group we have created earlier)
      kafka-zookeeper