def junit5_classpath_test(name, runtime_deps=[], size="small"):
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

def junit5_test(name, size="small", deps=[]):
  all_deps = [
      "//external:junit5_jupiter_api",
  ]
  for dep in deps:
    all_deps.append(dep)
  native.java_test(
    name = name,
    main_class = "org.junit.platform.console.ConsoleLauncher",
    use_testrunner = False,
    size = size,
    args = [
      "--select-class %s" % name,
    ],
    srcs = [
      "%s.java" % name.replace(".", "/")
    ],
    deps = all_deps,
    runtime_deps = [
      "//external:junit5_jupiter_engine",
      "//external:junit5_platform_console",
      "//external:junit5_platform_commons",
      "//external:junit5_platform_engine",
      "//external:junit5_platform_launcher",
      "//external:opentest4j",
    ],
  )

def junit5_test_in_package(name, package, size="small", deps=[]):
  all_deps = [
      "//external:junit5_jupiter_api",
  ]
  for dep in deps:
    all_deps.append(dep)
  native.java_test(
    name = name,
    main_class = "org.junit.platform.console.ConsoleLauncher",
    use_testrunner = False,
    size = size,
    args = [
      "--select-class %s.%s" % (package, name),
    ],
    srcs = [
      "%s.java" % name.replace(".", "/")
    ],
    deps = all_deps,
    runtime_deps = [
      "//external:junit5_jupiter_engine",
      "//external:junit5_platform_console",
      "//external:junit5_platform_commons",
      "//external:junit5_platform_engine",
      "//external:junit5_platform_launcher",
      "//external:opentest4j",
    ],
  )
  