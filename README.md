# docker-sonarqube-mobile-ci
Dockerized SonarQube for mobile projects and CI+CD pipelines - Android (Java, Kotlin), iOS (Swift)

This [repository](https://github.com/Paldom/docker-sonarqube-mobile-ci) contains the Dockerfile of the [dpal/docker-sonarqube-mobile-ci](https://hub.docker.com/r/dpal/docker-sonarqube-mobile-ci/) image, built on [official SonarQube](https://github.com/SonarSource/docker-sonarqube) image, extended with plugins recommended for native mobile apps.

### Common plugins

- sonarqube-community-branch-plugin
- sonar-checkstyle
- sonar-pmd
- sonar-findbugs
- sonar-detekt
- sonar-swift
- sonar-yaml
- mutation-analysis-plugin

### Android plugin

*Note: sonar-android plugin is no longer supported, requires sonarqube 7.1. Default Kotlin plugin is used instead.*
- [sonar-android](https://github.com/ofields/sonar-android)

### Kotlin plugins

*Note: sonar-kotlin is bundled from sonarqube version 8.5, but detekt plugins is still need to be installed*
- [sonar-detekt](https://github.com/detekt/sonar-kotlin)

### Swfit plugin

- [Backelite/sonar-swift](https://github.com/Idean/sonar-swift)

## Usage

### Prerequisites

* SonarScanner
* Android/iOS project to analyze
* Install prerequisites of [Backelite/sonar-swift](https://github.com/Idean/sonar-swift#prerequisites)

### Pull image

#### From Docker Hub

```sh
docker pull dpal/docker-sonarqube-mobile-ci:latest
```

#### Or build from GitHub

```sh
docker build -t dpal/docker-sonarqube-mobile-ci github.com/paldom/docker-sonarqube-mobile-ci
```

### Run docker image

Here's an example how to run this docker container:

```sh
docker run -d --name sonarqube -p 9000:9000 dpal/docker-sonarqube-mobile-ci
```

For advanced usage and more details see [official guide](https://hub.docker.com/_/sonarqube).