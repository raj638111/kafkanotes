

    # Similar to Avro schema (ie .avsc)
        + Defined using JSON

    # Common fields
        + Name*
            - Name of the schema
        + Namespace*
            - Equivalent to package in Java
        + Doc
            - Documentation to explain the schema
        + Aliases
            - Optional other names for schema
        + Fields* (Array of field)
            - Name*
                . Name of the field
            - Doc
                . Documentation for the field
            - Type*
                . Can be,
                    ~ 'record' (Is a collection of multiple attributes)
                    ~ Primitive type (or)
                    ~ Complex type
                . Data type for the field (Can be primitive type)
            - Default
                . Default value for the field
            - Order
            - Aliases

        * Required