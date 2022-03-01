# Introduction

This environment and application has been created to evaluate the Bazel build system.

# Docker

## Building the Image

To build the docker image for this application execute the following command

`docker build -t bazel-sandbox .`

## Running the Image

To run the docker image execute the following command

`docker run -i -t --rm -v ${pwd}/src:/src bazel-sandbox`