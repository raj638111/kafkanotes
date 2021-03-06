name := "a30_Producer_n_Consumer"
version := "1.0"

scalaSource in Compile := baseDirectory.value / "a10_Code"
scalaSource in Test := baseDirectory.value / "a20_Test"

libraryDependencies ++= Seq(
  "org.scala-lang" % "scala-library" % scalaVersion.value,
  "org.apache.kafka" % "kafka-clients" % "2.3.0",
	"org.scalatest" %% "scalatest" % "3.0.4" % "test"
)
