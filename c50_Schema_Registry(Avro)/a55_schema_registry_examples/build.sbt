name := "a55_schema_registry_examples"
version := "1.0"

scalaSource in Compile := baseDirectory.value / "a10_Code"
scalaSource in Test := baseDirectory.value / "a20_Test"

javaSource in AvroConfig := baseDirectory.value / "a10_Code"
stringType in AvroConfig := "String"
sourceDirectory in AvroConfig := baseDirectory.value / "a12_resource/a10_avro"


scalaVersion := "2.11.8"

resolvers ++= Seq(
  "confluent" at "http://packages.confluent.io/maven/"
)

libraryDependencies ++= Seq(
  "org.apache.avro" % "avro" % "1.8.2",
  "org.apache.kafka" % "kafka-clients" % "2.4.0",
  "io.confluent" % "kafka-avro-serializer" % "5.4.0"
)

assemblyMergeStrategy in assembly := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x =>
    MergeStrategy.first
}
