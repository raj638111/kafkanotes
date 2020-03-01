name := "a40_example"
version := "1.0"

scalaSource in Compile := baseDirectory.value / "a10_Code"
scalaSource in Test := baseDirectory.value / "a20_Test"
Compile / scalaSource := baseDirectory.value / "a12_resource"
Test / scalaSource := baseDirectory.value / "a22_resource"

seq(sbtavro.SbtAvro.avroSettings: _*)
(javaSource in avroConfig) := baseDirectory.value / "a10_Code/rj/a30_avro"
(stringType in avroConfig) := "String"

scalaVersion := "2.11.8"

libraryDependencies ++= Seq(
	"org.apache.kafka" %% "kafka-streams-scala" % "2.3.1" exclude("org.rocksdb","rocksdbjni"),
	"org.scalatest" %% "scalatest" % "3.0.4" % "test",
	"org.rocksdb" % "rocksdbjni" % "6.4.6",
  "log4j" % "log4j" % "1.2.17"
)

assemblyMergeStrategy in assembly := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x =>
    MergeStrategy.first
}
