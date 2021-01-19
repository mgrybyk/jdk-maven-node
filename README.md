# jdk-maven-node
Dockerfile with JDK, Maven and NodeJS. Versions are configurable.

## Build

You may build image with desired versions of JDK, Maven and NodeJS:
- **MAVEN_JDK_VERSION**=`3-jdk-11` see available versions - [maven docker image](https://hub.docker.com/_/maven/)
- **NODE_VERSION**=`14` see available version - [Node.js Binary Distributions](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)

### Examples

#### Command Line

`docker build --build-arg NODE_VERSION=14 --build-arg MAVEN_JDK_VERSION=3-jdk-11 -f Dockerfile -t jdk-mvn-node .`

#### Jenkins Pipeline

`docker.build('jdk-mvn-node', '--build-arg NODE_VERSION=14 --build-arg MAVEN_JDK_VERSION=3-jdk-11 -f Dockerfile .')`
