load("//:buckaroo/defs.bzl", "buckaroo_workspace")

a = "@" + buckaroo_workspace("github.com/njlr/bazel-test-a") + "//:a"

cc_library(
  name = "b",
  includes = [
    "include",
  ],
  hdrs = glob([
    "include/*.hpp",
  ]),
  srcs = glob([
    "include/*.hpp",
    "src/*.cpp",
  ]),
  deps = [
    a,
  ],
  visibility = [
    "//visibility:public",
  ],
)

cc_binary(
  name = "app",
  srcs = [
    "main.cpp",
  ],
  deps = [
    a,
    ":b",
  ],
)
