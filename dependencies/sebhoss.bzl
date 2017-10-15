def javapoet_type_guesser():
  native.maven_jar(
    name = "javapoet_type_guesser",
    artifact = "de.xn--ho-hia.javapoet:javapoet-type-guesser:2017.03.19-185842",
  )

def sebhoss_dependencies():
  javapoet_type_guesser()
