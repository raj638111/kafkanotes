

-- Floats & Doubles #12

    # Are floating **binary point types
        + ie in memory is represented like this
          ~ 10001.10010110011

    # Use case
        + **Imprecise computation like scientific computation as these
            types are **fast
        + Example: Someones weight can be in double or float as it does not
          need to be tremendously accurate


-- Decimal

    # Is a floating Decimal point type vis-a-vis Binary types (ie Floats & Doubles)
    # Example: 12345.65789
      (*** Some decimals cannot be accurately represented as floats or doubles)

    # Use case
        + Decimal is used for ***Money (as this needs to be precise)
        + Used when exactly accurate results are needed

    # Logical Type
        + Decimal is part of avro logical type

    # Byte(binary), Gibberish
        + Printing an avro as json that has decimal will print gibberish
          as the underlying type is bytes (which is ***binary) instead
          of the decimal value

        + Error prone
            - Depending on the language library transforming these bytes to decimal
              is very error prone (AVRO-1869 did not get it right first time)

    # Recommendations
        + Avoid Decimal
            - Avoid using decimal as logical type if using language other than java
        + Use **string (Highly recommended)
            - Looks good, easy to parse and understand
        + Create own "Decimal" type with
            - Integer part (long)
            - Decimal part (long)
        + Create own "Fraction" type with
            - Numerator (long)
            - Denominator (long)
