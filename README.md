# Introduction

This environment and application has been created to evaluate the Bazel build system.

# Docker

## Building the Image

To build the docker image for this application execute the following command

`docker build -t bazel-sandbox .`

## Running the Image

To run the docker image execute the following command

`docker run -i -t --rm -v ${pwd}/src:/src bazel-sandbox`

# Building the Application

The application for Bazel C++ can be build in the following way

`bazel build //...`

# Testing the Application

The tests for the application can be executed in the following way

`bazel test //...`

# Running the Application

## Running the C++ Application

The entry point of the application is a console application and this can be executed with the following command.

`bazel run //Console:Main`

# Aspects

## Executing the Aspect

`bazel clean`

`bazel build //... --aspects //Console:FirstAspect.bzl%print_aspect`

# Known Issues

The following chapter contains a list of known issues:

- The first unit test execution with gtest is working, the second execution using cache causes a dependency issue.  