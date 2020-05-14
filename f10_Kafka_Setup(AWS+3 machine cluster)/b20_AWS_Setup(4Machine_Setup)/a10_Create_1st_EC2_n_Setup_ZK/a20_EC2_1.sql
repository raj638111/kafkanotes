
-- Launch Instance

  # Ubuntu Server 16.04 LTS (HVM)
    t2.Medium
    Subnet: us-east-1c (**The 1st subnet in VPC)
    Primary IP = 172.31.9.1 (This is going to the ***Private IP)
    Storage (EBS - Elastic Block Storage): Size 20GB (SSD Gp2)
      + Disable Delete on Termination (then how do we delete this EBS explicitly?)
    Tag:
      Name Server1
    Security Group (kafka-zookeeper)
      + Rule 1
        - SSH from My IP (Source)
      + Rule 2
        - Custom TCP Rule
        - Port = 2181 ; zookeeper port
        - Custom CIDR = 172.31.0.0/16 (What is CIDR?)
      + Rule 3
        - Same as Rule 2; but port 2888; another zookeeper port
      + Rule 3
        - Same as Rule 2; but port 3888; another zookeeper port
      + Rule 4
        - Same as Rule 2; but access from my IP
    Review & Launch > Launch > Choose a key pair for SSH connection (rajkp)


  # Change termination behavior of private IP (ie 172.31.9.1) ; so that the N/W interface
    is not lost when the instance is shut down
     + Network Interface > eth0 > Interface ID (Click) > Right Click >
       Change Termination Behaviour > Unselect 'Delete on termination'









