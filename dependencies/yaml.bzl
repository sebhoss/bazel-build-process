def snakeyaml_dependencies():
  native.maven_jar(
    name = "snakeyaml",
    artifact = "org.yaml:snakeyaml:1.19",
    sha1 = "2d998d3d674b172a588e54ab619854d073f555b5",
  )

def yaml_dependencies():
  snakeyaml_dependencies()
