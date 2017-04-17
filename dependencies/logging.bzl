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
  maven_jar(
    name = "org_slf4j_slf4j_ext",
    artifact = "org.slf4j:slf4j-ext:1.7.21",
  )
  native.bind(
    name = "slf4j_ext",
    actual = "@org_slf4j_slf4j_ext//jar",
  )
  maven_jar(
    name = "ch_qos_logback_logback_classic",
    artifact = "ch.qos.logback:logback-classic:1.2.2",
  )
  native.bind(
    name = "logback_classic",
    actual = "@ch_qos_logback_logback_classic//jar",
  )
  maven_jar(
    name = "ch_qos_logback_logback_core",
    artifact = "ch.qos.logback:logback-core:1.2.2",
  )
  native.bind(
    name = "logback_core",
    actual = "@ch_qos_logback_logback_core//jar",
  )
