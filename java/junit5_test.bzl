def junit5_classpath_test(name, runtime_deps=[], size="small"):
  all_runtime_deps = [
    "@junit_jupiter_engine//jar",
    "@junit_platform_console//jar",
    "@junit_platform_commons//jar",
    "@junit_platform_engine//jar",
    "@junit_platform_launcher//jar",
    "@opentest4j//jar",
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
      "@junit5_jupiter_api//jar",
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
      "@junit_jupiter_engine//jar",
      "@junit_platform_console//jar",
      "@junit_platform_commons//jar",
      "@junit_platform_engine//jar",
      "@junit_platform_launcher//jar",
      "@opentest4j//jar",
    ],
  )

def junit5_test_in_package(name, package, size="small", deps=[]):
  all_deps = [
      "@junit_jupiter_api//jar",
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
      "@junit_jupiter_engine//jar",
      "@junit_platform_console//jar",
      "@junit_platform_commons//jar",
      "@junit_platform_engine//jar",
      "@junit_platform_launcher//jar",
      "@opentest4j//jar",
    ],
  )

def junit5(file, size="small", deps=[], data=[]):
  all_deps = [
      "@junit_jupiter_api//jar",
  ]
  for dep in deps:
    all_deps.append(dep)
  native.java_test(
    name = file[14:-5].replace("/", "."),
    main_class = "org.junit.platform.console.ConsoleLauncher",
    use_testrunner = False,
    size = size,
    args = [
      "--select-class %s" % file[14:-5].replace("/", "."),
    ],
    srcs = [
      "%s" % file,
    ],
    deps = all_deps,
    data = data,
    runtime_deps = [
      "@junit_jupiter_engine//jar",
      "@junit_platform_console//jar",
      "@junit_platform_commons//jar",
      "@junit_platform_engine//jar",
      "@junit_platform_launcher//jar",
      "@opentest4j//jar",
    ],
  )
