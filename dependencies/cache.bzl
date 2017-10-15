def caffeine_dependencies():
  maven_jar(
    name = "caffeine",
    artifact = "com.github.ben-manes.caffeine:caffeine:2.5.6",
  )

def ehcache_dependencies():
  maven_jar(
    name = "ehcache",
    artifact = "org.ehcache:ehcache:3.4.0",
  )

def cache_dependencies():
  caffeine_dependencies()
  ehcache_dependencies()
