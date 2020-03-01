

    # Enums
        + Example: {"type": "enum", "name": "status", "symbols": ["BRONZE", "SILVER"]}
        + Compatibility
            - Changing enum value is forbidden once set

    # Arrays

        + Example: array[string]
            {"type": "array", "items": "string", ...}

    # Maps

        + Example: Map[Int, String]
            {"type": "map", "values": "string", ...}
            . how to specify the key???

    # Unions

        + Allows a field to take **different types
        + Example: ["string", "int", "boolean"]
        + Defaults
            + If defaults are defined, it should be of the first item in the
              union

        + Most common use case is to define an ***optional value
            {"name": "middle_name", "type": ["null", "string"], "default": null}
                                        Note: null is written without quotes ^^

