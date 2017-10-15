def snakeyaml_dependencies():
  native.maven_jar(
    name = "snakeyaml",
    artifact = "org.yaml:snakeyaml:1.18",
  )

def yaml_dependencies():
  snakeyaml_dependencies()
