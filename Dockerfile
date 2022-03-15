FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install curl -y
RUN apt-get install git -y
RUN apt-get install gpg -y

# Install Bazel
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
RUN mv bazel.gpg /etc/apt/trusted.gpg.d/
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list

RUN apt-get update
RUN apt-get install bazel -y

# Install .Net SDK
RUN curl -fsSL https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -o packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install apt-transport-https -y
RUN apt-get update 
RUN apt-get install dotnet-sdk-6. -y

# Start folder for working
WORKDIR "/src"