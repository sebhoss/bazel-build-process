def rxjava_dependencies():
  native.maven_jar(
    name = "rxjava",
    artifact = "io.reactivex.rxjava2:rxjava:2.1.5",
  )

def reactive_dependencies():
  rxjava_dependencies()
