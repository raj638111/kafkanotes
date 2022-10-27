

-- Standalone mode #9

    # Single Worker (Process)
        + Runs all the connectors & tasks

    # Configuration
        + Is bundled with the process using CLI

    # Advantage
        + Easy to get started (Good for development & testing)

    # Disadvantage
        + No fault tolerant
        + No scalability
        + Hard to monitor

-- Distributed Mode (For Production)

    # Multiple Workers
        + Runs connectors & tasks

    # Configuration
        + Is submitted using REST API

    # Advantage
        + Easy to scale
        + Fault tolerant (Rebalancing in case of worker dies)