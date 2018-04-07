def junit_platform_dependencies():
  native.maven_jar(
    name = "junit_platform_commons",
    artifact = "org.junit.platform:junit-platform-commons:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_engine",
    artifact = "org.junit.platform:junit-platform-engine:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_launcher",
    artifact = "org.junit.platform:junit-platform-launcher:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_runner",
    artifact = "org.junit.platform:junit-platform-runner:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_console",
    artifact = "org.junit.platform:junit-platform-console:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_console_standalone",
    artifact = "org.junit.platform:junit-platform-console-standalone:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_suite_api",
    artifact = "org.junit.platform:junit-platform-suite-api:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_surefire_provider",
    artifact = "org.junit.platform:junit-platform-surefire-provider:1.1.0",
  )
  native.maven_jar(
    name = "junit_platform_gradle_plugin",
    artifact = "org.junit.platform:junit-platform-gradle-plugin:1.1.0",
  )

def junit_jupiter_dependencies():
  native.maven_jar(
    name = "junit_jupiter_api",
    artifact = "org.junit.jupiter:junit-jupiter-api:5.1.0",
  )
  native.maven_jar(
    name = "junit_jupiter_engine",
    artifact = "org.junit.jupiter:junit-jupiter-engine:5.1.0",
  )
  native.maven_jar(
    name = "junit_jupiter_params",
    artifact = "org.junit.jupiter:junit-jupiter-params:5.1.0",
  )
  native.maven_jar(
    name = "junit_jupiter_migrationsupport",
    artifact = "org.junit.jupiter:junit-jupiter-migrationsupport:5.1.0",
  )

def junit_vintage_dependencies():
  native.maven_jar(
    name = "junit_vintage_engine",
    artifact = "org.junit.vintage:junit-vintage-engine:5.1.0",
  )

def junit_optional_dependencies():
  native.maven_jar(
    name = "apiguardian_api",
    artifact = "org.apiguardian:apiguardian-api:1.0.0",
  )

def junit_3rd_party_dependencies():
  native.maven_jar(
    name = "opentest4j",
    artifact = "org.opentest4j:opentest4j:1.0.0",
  )

def junit_dependencies():
  junit_platform_dependencies()
  junit_jupiter_dependencies()
  junit_vintage_dependencies()
  junit_3rd_party_dependencies()
  junit_optional_dependencies()
