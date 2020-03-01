name := "a20_Avro_in_Java"
version := "1.0"

scalaSource in Compile := baseDirectory.value / "a10_Code"
scalaSource in Test := baseDirectory.value / "a20_Test"

javaSource in AvroConfig := baseDirectory.value / "a10_Code/rj/a30_Generated_Avro"
stringType in AvroConfig := "String"
sourceDirectory in AvroConfig := baseDirectory.value / "a12_resource/a10_avro"


scalaVersion := "2.11.8"

libraryDependencies ++= Seq(
  "org.apache.avro" % "avro" % "1.8.2"
)

assemblyMergeStrategy in assembly := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x =>
    MergeStrategy.first
}
