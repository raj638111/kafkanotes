
-- Launch Instance

  # Instances > instances > Launch Instance
    > Ubuntu 16.04 LTS > t2.small > No Subnet preference
    > Storage (8GB) > Tag (Name = Web Tools)
    > Create new security group (Name: WebTools, description: Security group for web tools)
      SSH from my ip
      + Custom TCP / Port 8001 / MyIp (Used for Zookeeper Navigator app)

--  Docker+ Setup

  # Refer next script...