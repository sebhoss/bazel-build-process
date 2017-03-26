load("@bazel_tools//tools/build_defs/repo:maven_rules.bzl", "maven_jar")

def logging_dependencies():
  maven_jar(
    name = "org_apache_logging_log4j_log4j_api",
    artifact = "org.apache.logging.log4j:log4j-api:2.8",
  )
  native.bind(
    name = "log4j_api",
    actual = "@org_apache_logging_log4j_log4j_api//jar",
  )
  maven_jar(
    name = "org_apache_logging_log4j_log4j_core",
    artifact = "org.apache.logging.log4j:log4j-core:2.8",
  )
  native.bind(
    name = "log4j_core",
    actual = "@org_apache_logging_log4j_log4j_core//jar",
  )
  maven_jar(
    name = "org_slf4j_slf4j_api",
    artifact = "org.slf4j:slf4j-api:1.7.21",
  )
  native.bind(
    name = "slf4j_api",
    actual = "@org_slf4j_slf4j_api//jar",
  )
