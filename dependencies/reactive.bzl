def rxjava_dependencies():
  native.maven_jar(
    name = "rxjava",
    artifact = "io.reactivex.rxjava2:rxjava:2.1.5",
    sha1 = "1de589f16cd088be91ca6877cb836529276a6bb2",
  )
  native.maven_jar(
    name = "reactive_streams",
    artifact = "org.reactivestreams:reactive-streams:1.0.1",
    sha1 = "1b1c911686eb40179219466e6a59b634b9d7a748",
  )

def reactive_dependencies():
  rxjava_dependencies()
