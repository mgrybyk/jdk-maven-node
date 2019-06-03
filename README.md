# jdk-maven-node
Dockerfile with JDK, Maven and NodeJS. Versions are configurable.

## Build

Default versions:
- **MAVEN_JDK_VERSION**=`3-jdk-8` see available versions - [maven docker image](https://hub.docker.com/_/maven/)
- **NODE_VERSION**=`10` see available version - [Node.js Binary Distributions](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)

### Command Line

`docker build --build-arg NODE_VERSION=10 --build-arg MAVEN_JDK_VERSION=3-jdk-8 -f Dockerfile -t jdk-mvn-node .`

### Jenkins Pipeline

`docker.build('jdk-mvn-node', '--build-arg NODE_VERSION=10 --build-arg MAVEN_JDK_VERSION=3-jdk-8 -f Dockerfile .')`
