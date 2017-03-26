load("@bazel_tools//tools/build_defs/repo:maven_rules.bzl", "maven_jar")

def sebhoss_dependencies():
  maven_jar(
    name = "de_xn__ho_hia_javapoet_javapoet_type_guesser",
    artifact = "de.xn--ho-hia.javapoet:javapoet-type-guesser:2017.03.19-185842",
  )
  native.bind(
    name = "javapoet_type_guesser",
    actual = "@de_xn__ho_hia_javapoet_javapoet_type_guesser//jar",
  )
