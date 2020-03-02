
# Is also an Avro object like GenericRecord
# Is obtained using **Code Generation from Avro schema


# What is the advantage?
    + Type safety

# How is code generation done?
    avro schema - Plugin -> Generated Code


# Plugins
    + Is available for different build tools
        - gradle
        - maven (official avro library support this plugin)
        - sbt
            . https://github.com/sbt/sbt-avro
            . https://stackoverflow.com/questions/40921977/integrating-avro-into-sbt-workflow
            . How to generate the Java Source
                ~ Add schema file path + path for generated java source in sbt
                ~ Run sbt avro:generate
                (Example generate avro file is in package ../a30_Generated_Avro)
