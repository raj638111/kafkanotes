name := "g10_Testing"
version := "1.0"

scalaSource in Compile := baseDirectory.value / "a10_Code"
scalaSource in Test := baseDirectory.value / "a20_Test"

scalaVersion := "2.11.8"

libraryDependencies ++= Seq(
  "org.apache.kafka" % "kafka-clients" % "2.3.0",
	"org.apache.kafka" % "kafka-streams" % "2.3.0",
	// Includes libraries for stream testing: TopologyTestDriver, etc...
	"org.apache.kafka" % "kafka-streams-test-utils" % "2.3.0",
	"junit" % "junit" % "4.12"
)
