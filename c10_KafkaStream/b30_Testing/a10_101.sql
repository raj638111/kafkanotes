

    # Advantage
        + Topology object can now be tested without the need to have kafka #69

    # Limitation
        + Requires small refactoring of the code

    # How is it done?
        + Instead of the input topic use,
            - `Consumer Record Generator (Factory)`
        + Instead of the output topic use,
            - `Producer Record Reader` (**We test the results here)
