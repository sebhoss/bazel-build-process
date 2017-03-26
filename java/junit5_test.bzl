def junit5_test_ext(name, runtime_deps=[], size="small"):
  all_runtime_deps = [
    "//external:junit5_jupiter_engine",
    "//external:junit5_platform_console",
    "//external:junit5_platform_commons",
    "//external:junit5_platform_engine",
    "//external:junit5_platform_launcher",
    "//external:opentest4j",
  ]
  for dep in runtime_deps:
    all_runtime_deps.append(dep)
  native.java_test(
    name = name,
    main_class = "org.junit.platform.console.ConsoleLauncher",
    use_testrunner = False,
    size = size,
    args = [
      "--select-class %s" % name,
    ],
    runtime_deps = all_runtime_deps,
  )

def junit5_scanning_test(name, srcs=[], deps=[], runtime_deps=[], size="small"):
  all_deps = [
    "//external:junit5_jupiter_api",
  ]
  for dep in deps:
    all_deps.append(dep)
  all_runtime_deps = [
    "//external:junit5_jupiter_engine",
    "//external:junit5_platform_console",
    "//external:junit5_platform_commons",
    "//external:junit5_platform_engine",
    "//external:junit5_platform_launcher",
    "//external:opentest4j",
  ]
  for dep in runtime_deps:
    all_runtime_deps.append(dep)
  native.java_test(
    name = name,
    main_class = "org.junit.platform.console.ConsoleLauncher",
    use_testrunner = False,
    size = size,
    args = [
      "--scan-class-path",
    ],
    srcs = srcs,
    deps = all_deps,
    runtime_deps = all_runtime_deps,
  )


def junit5_test(name, deps=[], size="small"):
  junit5_scanning_test(
    name = name,
    deps = deps,
    size = size,
    srcs = ["javatest/%s.java" % name]
  )

def junit5_alltests(name, runtime_deps=[], size="small"):
  junit5_scanning_test(
    name = name,
    runtime_deps = runtime_deps,
    size = size,
  )
