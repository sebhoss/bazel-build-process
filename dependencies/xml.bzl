def xstream_dependencies():
  native.maven_jar(
    name = "xstream",
    artifact = "com.thoughtworks.xstream:xstream:1.4.9",
  )

def xml_dependencies():
  xstream_dependencies()
