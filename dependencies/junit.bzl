load("@bazel_tools//tools/build_defs/repo:maven_rules.bzl", "maven_jar")

def junit_platform_dependencies():
  maven_jar(
    name = "junit_platform_commons",
    artifact = "org.junit.platform:junit-platform-commons:1.0.1",
  )
  maven_jar(
    name = "junit_platform_engine",
    artifact = "org.junit.platform:junit-platform-engine:1.0.1",
  )
  maven_jar(
    name = "junit_platform_launcher",
    artifact = "org.junit.platform:junit-platform-launcher:1.0.1",
  )
  maven_jar(
    name = "junit_platform_runner",
    artifact = "org.junit.platform:junit-platform-runner:1.0.1",
  )
  maven_jar(
    name = "junit_platform_console",
    artifact = "org.junit.platform:junit-platform-console:1.0.1",
  )
  maven_jar(
    name = "junit_platform_console_standalone",
    artifact = "org.junit.platform:junit-platform-console-standalone:1.0.1",
  )
  maven_jar(
    name = "junit_platform_suite_api",
    artifact = "org.junit.platform:junit-platform-suite-api:1.0.1",
  )
  maven_jar(
    name = "junit_platform_surefire_provider",
    artifact = "org.junit.platform:junit-platform-surefire-provider:1.0.1",
  )
  maven_jar(
    name = "junit_platform_gradle_plugin",
    artifact = "org.junit.platform:junit-platform-gradle-plugin:1.0.1",
  )

def junit_jupiter_dependencies():
  maven_jar(
    name = "junit_jupiter_api",
    artifact = "org.junit.jupiter:junit-jupiter-api:5.0.1",
  )
  maven_jar(
    name = "junit_jupiter_engine",
    artifact = "org.junit.jupiter:junit-jupiter-engine:5.0.1",
  )
  maven_jar(
    name = "junit_jupiter_params",
    artifact = "org.junit.jupiter:junit-jupiter-params:5.0.1",
  )
  maven_jar(
    name = "junit_jupiter_migrationsupport",
    artifact = "org.junit.jupiter:junit-jupiter-migrationsupport:5.0.1",
  )

def junit_vintage_dependencies():
  maven_jar(
    name = "junit_vintage_engine",
    artifact = "org.junit.vintage:junit-vintage-engine:4.12.1",
  )

def junit_optional_dependencies():
  maven_jar(
    name = "apiguardian_api",
    artifact = "org.apiguardian:apiguardian-api:1.0.0",
  )

def junit_3rd_party_dependencies():
  maven_jar(
    name = "opentest4j",
    artifact = "org.opentest4j:opentest4j:1.0.0",
  )

def junit_dependencies():
  junit_platform_dependencies()
  junit_jupiter_dependencies()
  junit_vintage_dependencies()
  junit_3rd_party_dependencies()
  junit_optional_dependencies()
