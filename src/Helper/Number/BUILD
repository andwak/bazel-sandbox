load("@rules_cc//cc:defs.bzl", "cc_library", "cc_test")

cc_library(
    name = "NumberGeneratorLibrary",
    hdrs = ["NumberGenerator.h"],
    srcs = ["NumberGenerator.cpp"],
    visibility = ["//visibility:public"],
)

cc_test(
    name = "NumberGeneratorTests",
    srcs = ["NumberGenerator_Test.cpp"],
    deps = [
            "//Helper/Number:NumberGeneratorLibrary",
            "@googletest//:gtest_main",
        ],
)