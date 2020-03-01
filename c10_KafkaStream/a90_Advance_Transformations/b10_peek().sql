
== peek() ==

    # Does a *side-effect operation and get the
      same KStream as a result

-- Examples of side-effect (external) operation

    # print the stream to console
    # statistics collection

    # Warning
        + Could be executed multiple times in case of failure
            . So this is more like **atleast once type of operation
