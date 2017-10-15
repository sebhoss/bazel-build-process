def xstream_dependencies():
  native.maven_jar(
    name = "cucumber_java8",
    artifact = "io.cucumber:cucumber-java8:2.0.1",
  )
  native.maven_jar(
    name = "cucumber_java",
    artifact = "io.cucumber:cucumber-java:2.0.1",
  )
  native.maven_jar(
    name = "cucumber_core",
    artifact = "io.cucumber:cucumber-core:2.0.1",
  )
  native.maven_jar(
    name = "gherkin",
    artifact = "io.cucumber:gherkin:5.0.0",
  )
  native.maven_jar(
    name = "cucumber_jvm_deps",
    artifact = "io.cucumber:cucumber-jvm-deps:2.0.1",
  )
