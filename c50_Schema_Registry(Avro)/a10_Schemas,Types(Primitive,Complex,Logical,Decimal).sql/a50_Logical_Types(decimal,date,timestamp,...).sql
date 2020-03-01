

    # Why needed? #11
        + Gives meaning to primitive types
          (Seems more like Alias for a type)

    # Any predefined logical types? yep...
        + decimal
            - The underlying type is bytes
        + date (int)
            - Number of days since epoch
        + time-millis (long)
            - Number of milli seconds after midnight
        + timestamp-millis (long)
            - Number of milliseconds since UNIX epoch
            (**Most commonly used)

    # How is it done?
        + Add 'logicalType' field to the field
        + Example:
            {"name": "signup_ts", "type": "long", "logicType": "timestamp-millis"}
            (So here now type 'long' has an alias/logicalType of 'timestamp-millis')


    # ** Caution
        + Not supported by all languages
        + Do not play nicely with union