name := "a40_example"

version := "1.0"

scalaVersion := "2.11.12"

resolvers += "confluent" at "http://packages.confluent.io/maven/"

scalaSource in Compile := baseDirectory.value / "a10_Code"
scalaSource in Test := baseDirectory.value / "a20_Test"


libraryDependencies ++= Seq(
  "org.scala-lang" % "scala-library" % scalaVersion.value,
  //"org.apache.kafka" % "kafka-clients" % "2.3.0",
  //"org.apache.kafka" % "kafka-streams" % "2.3.1",
	"org.apache.kafka" %% "kafka-streams-scala" % "2.3.1" exclude("org.rocksdb","rocksdbjni"),
	"org.scalatest" %% "scalatest" % "3.0.4" % "test",
	"org.rocksdb" % "rocksdbjni" % "6.4.6"
)

assemblyMergeStrategy in assembly := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x =>
    MergeStrategy.first
}
