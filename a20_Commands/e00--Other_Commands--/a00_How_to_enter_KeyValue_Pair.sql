
-- Produce message with key/value pair

./bin/kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic first_topic --property parse.key=true --property key.separator=,

>key,value
>nextkey,nextvalue
>3rdkey,3rdvalue
>^C

-- Consume message with key/value pair

./bin/kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning --property print.key=true --property key.separator=,
null,message
null,blue
null,red
null,india
null,germany
null,second message
null,first line
null,gree
null,black
null,usa
null,russia
key,value
null,3rd message
null,second line
null,yellow
null,white
null,france
null,china
nextkey,nextvalue
3rdkey,3rdvalue
^CProcessed a total of 20 messages