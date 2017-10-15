def javapoet_dependencies():
  maven_jar(
    name = "javapoet",
    artifact = "com.squareup:javapoet:1.9.0",
  )

def square_dependencies():
  javapoet_dependencies()
