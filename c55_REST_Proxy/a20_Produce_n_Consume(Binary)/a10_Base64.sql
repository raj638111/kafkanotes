
-- Sending Binary data

    # Binary data raw bytes are encoded in Base64
        - Base64 encoding safely transfers bytes over the internet
          with out breaking any protocols

    # Batching in produce request is possible

    # Example data that can be sent,
      + Image, String with weird characters etc...

    # https://docs.confluent.io/current/kafka-rest/docs/index.html


-- Example

    http://www.utilities-online.info/base64

    Original: hello this is a message!!
    Base64: aGVsbG8gdGhpcyBpcyBhIG1lc3NhZ2UhIQ==

    Note: ^^ Characters like spaces, exclamation cannot be sent
          over the network. That is why we need Base64