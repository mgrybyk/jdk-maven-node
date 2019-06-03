ARG MAVEN_JDK_VERSION=latest

FROM maven:${MAVEN_JDK_VERSION}
USER root


# install nodejs as root
# https://github.com/nodesource/distributions/blob/master/README.md#debinstall
ARG NODE_VERSION=12
RUN \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get update -qqy && \
    apt-get install -qqy gcc g++ make nodejs && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*
