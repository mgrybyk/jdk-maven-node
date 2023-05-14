# jdk-maven-node
Dockerfile with JDK, Maven and NodeJS. Versions are configurable.

## Updates

The image updates every week on Monday.

## Build

You may build image with desired versions of JDK, Maven and NodeJS:
- **MAVEN_JDK_VERSION**=`3-eclipse-temurin-17` see available versions - [maven docker image](https://hub.docker.com/_/maven/)
- **NODE_VERSION**=`lts` see available version - [Node.js Binary Distributions](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)

### Examples

#### Command Line

`docker build --build-arg NODE_VERSION=20 --build-arg MAVEN_JDK_VERSION=3-eclipse-temurin-17 -f Dockerfile -t jdk-mvn-node .`

#### Jenkins Pipeline

`docker.build('jdk-mvn-node', '--build-arg NODE_VERSION=20 --build-arg MAVEN_JDK_VERSION=3-eclipse-temurin-17 -f Dockerfile .')`
