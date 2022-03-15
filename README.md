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

To build all applications the following command should be used.
The host platform and toolchain needs to be defined correctly for .Net toolchain

`bazel build --host_platform=@io_bazel_rules_dotnet//dotnet/toolchain:linux_amd64_6.0.101 --platforms=@io_bazel_rules_dotnet//dotnet/toolchain:linux_amd64_6.0.101 //...`

# Running the Application

## Running the CSharp Application

`bazel run --host_platform=@io_bazel_rules_dotnet//dotnet/toolchain:linux_amd64_6.0.101 --platforms=@io_bazel_rules_dotnet//dotnet/toolchain:linux_amd64_6.0.101 //HelloWorldC#:HelloWorld.exe`

## Running the C++ Application

`bazel run --host_platform=@io_bazel_rules_dotnet//dotnet/toolchain:linux_amd64_6.0.101 --platforms=@io_bazel_rules_dothain:linux_amd64_6.0.101 //HelloWorldC++:HelloWorld`