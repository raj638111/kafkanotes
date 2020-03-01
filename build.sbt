name := "kafkanotes"


lazy val z10_util = project
lazy val a30_Producer_n_Consumer = project.dependsOn(z10_util)
lazy val a40_example = (project in file("c10_KafkaStream/a40_example"))
lazy val a20_Avro_in_java = (project in file("c50_Schema_Registry(Avro)/a20_Avro_in_Java"))

lazy val root = (project in file("."))
  .aggregate(a30_Producer_n_Consumer, a40_example)

