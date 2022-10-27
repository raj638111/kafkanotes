

-- Request Syntax (Content-Type + Accept-header) #44

    # 'Content-Type' and 'Accept'-header (Accept is one of the header)
      needs be specified

    # Content-Type (Format)
      application/vnd.kafka[.embedded_format].[api_version]+[serialization_format]
      where,
      + embedded_format = json or binary or avro
      + api_version = v2
      + serialization_format = json

-- Example

    Content-Type: application/vnd.kafka.avro.v2+json
    Accept: application/vnd.kafka.v2+json