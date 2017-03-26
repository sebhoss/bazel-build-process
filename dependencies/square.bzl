load("@bazel_tools//tools/build_defs/repo:maven_rules.bzl", "maven_jar")

def square_dependencies():
  maven_jar(
    name = "com_squareup_javapoet",
    artifact = "com.squareup:javapoet:1.8.0",
  )
  native.bind(
    name = "javapoet",
    actual = "@com_squareup_javapoet//jar",
  )
