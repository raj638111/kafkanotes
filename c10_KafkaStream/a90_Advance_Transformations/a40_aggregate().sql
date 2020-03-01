
== aggregate ==

    # Result type can be different from the input type
    # Advantage over count
        + We can code how count needs to be performed
          instead of simple addition like count()



-- KGroupedStream

    kGroupedStream.aggregate(
        <initializer>,
        <adder>,
        <Serde>
        <State store name>
    )

-- KGroupedTable

    kGroupedStream.aggregate(
        <initializer>,
        <adder>,
        <subtactor>, // Note here: We also get subtactor
        <Serde>
        <State store name>
    )
