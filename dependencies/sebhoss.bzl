def sebhoss_dependencies():
  maven_jar(
    name = "javapoet_type_guesser",
    artifact = "de.xn--ho-hia.javapoet:javapoet-type-guesser:2017.03.19-185842",
  )

def metio_repository():
  maven_server(
    name = "metio",
    url = "https://repository.metio.wtf/repository/maven-public/",
  )
