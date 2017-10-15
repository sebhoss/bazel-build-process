load("@bazel_tools//tools/build_defs/repo:maven_rules.bzl", "maven_jar")

def javapoet_type_guesser():
  maven_jar(
    name = "javapoet_type_guesser",
    artifact = "de.xn--ho-hia.javapoet:javapoet-type-guesser:2017.03.19-185842",
  )

def sebhoss_dependencies():
  javapoet_type_guesser()
