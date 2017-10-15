def jackson_dependencies():
  maven_jar(
    name = "jackson_core",
    artifact = "com.fasterxml.jackson.core:jackson-core:2.9.2",
  )
  maven_jar(
    name = "jackson_annotations",
    artifact = "com.fasterxml.jackson.core:jackson-annotations:2.9.2",
  )
  maven_jar(
    name = "jackson_databind",
    artifact = "com.fasterxml.jackson.core:jackson-databind:2.9.2",
  )

def gson_dependencies():
  maven_jar(
    name = "gson",
    artifact = "com.google.code.gson:gson:2.8.2",
  )

def json_dependencies():
  jackson_dependencies()
  gson_dependencies()
