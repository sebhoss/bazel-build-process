def caffeine_dependencies():
  native.maven_jar(
    name = "caffeine",
    artifact = "com.github.ben-manes.caffeine:caffeine:2.5.6",
    sha1 = "91f8c131fcdb8cc195ea0913b3d672f7bb96f5c7",
  )

def ehcache_dependencies():
  native.maven_jar(
    name = "ehcache",
    artifact = "org.ehcache:ehcache:3.4.0",
    sha1 = "cac1f0840af0040a81401dfa55fa31a4ccc17932",
  )

def cache_dependencies():
  caffeine_dependencies()
  ehcache_dependencies()
