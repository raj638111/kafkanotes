
-- Dump log segment

  # What does this provide?
    - Allows us to view individual messages without needing to consume & decode them

  # What is the need?
    - To check a bad message if the consumer cannot handle that

  # Example 1
  Decode the log segment file named 00000000000052368601.log, showing
  the message summaries

  kafka-run-class.sh kafka.tools.DumpLogSegments --files 00000000000052368601.log

  Dumping 00000000000052368601.log
  Starting offset: 52368601
  offset: 52368601 position: 0 NoTimestampType
  ...

  # Example 2
  Decode the log segment file named 00000000000052368601.log, showing
  the message data

  kafka-run-class.sh kafka.tools.DumpLogSegments --files 00000000000052368601.log --print-data-log

  offset: 52368601 position: 0 NoTimestampType: -1 isvalid: true
  payloadsize: 661 magic: 0 compresscodec: GZIPCompressionCodec crc:
  1194341321 payload: test message 1

-- Dump log index

  # It is also possible to use this tool to validate the index file that goes along with a log
    segment
    (Index is used for finding messages withing a log segment)

  # Available options
    + --index-sanity-check  Checks if index is in a usable state
    + --verify-index-only   Checks for mismatches in the index

    kafka-run-class.sh kafka.tools.DumpLogSegments --files \
    00000000000052368601.index,00000000000052368601.log --index-sanity-check

    Dumping 00000000000052368601.index
    00000000000052368601.index passed sanity check.
    Dumping 00000000000052368601.log
    Starting offset: 52368601
    offset: 52368601 position: 0 NoTimestampType: -1 isvalid: true



