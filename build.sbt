name := "kafkanotes"

version := "1.0"

scalaVersion := "2.11.12"

val sparkVersion = "2.2.2"

resolvers += "confluent" at "http://packages.confluent.io/maven/"

lazy val z10_util = project
lazy val a30_Producer_n_Consumer = project.dependsOn(z10_util % "test->test;compile->compile")
lazy val a40_example = (project in file("c10_KafkaStream/a40_example")).dependsOn(z10_util % "test->test;compile->compile")
//scalaSource in Compile := baseDirectory.value / "a30_code"
//scalaSource in Test := baseDirectory.value / "a30_code"

libraryDependencies ++= Seq(
  //"org.scala-lang" % "scala-library" % scalaVersion.value,
  //"org.apache.kafka" % "kafka-clients" % "2.3.0",
  //"log4j" % "log4j" % "1.2.17",
	//"org.scalatest" %% "scalatest" % "3.0.4" % "test"
)
