def jmustache_dependencies():
  maven_jar(
    name = "jmustache",
    artifact = "com.samskivert:jmustache:1.13",
  )

def mustache_java_dependencies():
  maven_jar(
    name = "mustache_java",
    artifact = "com.github.spullara.mustache.java:compiler:0.9.4",
  )

def templating_dependencies():
  jmustache_dependencies()
  mustache_java_dependencies()
