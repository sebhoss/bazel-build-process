def javapoet_type_guesser():
  native.maven_jar(
    name = "javapoet_type_guesser",
    artifact = "de.xn--ho-hia.javapoet:javapoet-type-guesser:2017.03.19-185842",
    sha1 = "4d8af93ca44631ac7198607cfefca100cb8fbf0f",
  )

def sebhoss_dependencies():
  javapoet_type_guesser()
