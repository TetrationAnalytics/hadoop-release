FROM centos:7

MAINTAINER Srivatsa <srivrama@tetrationanalytics.com>

# install dependencies for compiling hadoop
RUN yum update -y && \
        yum install -y wget \
        libprotobuf-dev \
        protobuf-compiler \
        maven \
        cmake \
        build-essential \
        pkg-config \
        libssl-dev \
        zlib1g-dev \
        llvm-gcc \
        automake \
        autoconf \
        make \
        openssl-devel

RUN yum groupinstall -y 'Development Tools'

RUN yum install -y zlib-devel
RUN yum install -y groovy

# Install jdk1.7 and update the path
RUN yum install -y java-1.7.0-openjdk-devel
RUN update-alternatives --set javac /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.131-2.6.9.0.el7_3.x86_64/bin/javac
RUN update-alternatives --set java /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.131-2.6.9.0.el7_3.x86_64/jre/bin/java

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
