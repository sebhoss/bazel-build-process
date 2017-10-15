def javapoet_dependencies():
  native.maven_jar(
    name = "javapoet",
    artifact = "com.squareup:javapoet:1.9.0",
    sha1 = "00ecc5cf9c221d55481163e773b24336db149e51",
  )

def square_dependencies():
  javapoet_dependencies()
