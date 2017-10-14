def logging_dependencies():
  maven_jar(
    name = "org_apache_logging_log4j_log4j_api",
    artifact = "org.apache.logging.log4j:log4j-api:2.8",
  )
  maven_jar(
    name = "org_apache_logging_log4j_log4j_core",
    artifact = "org.apache.logging.log4j:log4j-core:2.8",
  )
  maven_jar(
    name = "org_slf4j_slf4j_api",
    artifact = "org.slf4j:slf4j-api:1.7.21",
  )
  maven_jar(
    name = "org_slf4j_slf4j_ext",
    artifact = "org.slf4j:slf4j-ext:1.7.21",
  )
  maven_jar(
    name = "ch_qos_logback_logback_classic",
    artifact = "ch.qos.logback:logback-classic:1.2.2",
  )
  maven_jar(
    name = "ch_qos_logback_logback_core",
    artifact = "ch.qos.logback:logback-core:1.2.2",
  )
