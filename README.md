# docker-sonarqube-mobile-ci
Dockerized SonarQube for mobile projects and CI+CD pipelines - Android (Java, Kotlin), iOS (Swift)

This [repository](https://github.com/Paldom/docker-sonarqube-mobile-ci) contains the Dockerfile of the [dpal/docker-sonarqube-mobile-ci](https://hub.docker.com/r/dpal/docker-sonarqube-mobile-ci/) image, built on [official SonarQube](https://github.com/SonarSource/docker-sonarqube) image, extended with plugins recommendend for native mobile apps.

### Common plugins

- sonar-scm-git-plugin
- sonar-github-plugin
- sonar-checkstyle
- sonar-pmd
- sonar-findbugs

### Android plugin

- [sonar-android](https://github.com/ofields/sonar-android)

### Kotlin plugin

- [sonar-kotlin-plugin](https://docs.sonarqube.org/display/PLUG/SonarKotlin)

### Swfit plugin

- [Backelite/sonar-swift](https://github.com/Backelite/sonar-swift)

## Usage

### Prerequisites

* SonarScanner
* Android/iOS project to analyize
* Install prerequisites of [Backelite/sonar-swift](https://github.com/Backelite/sonar-swift#prerequisites)

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
docker run -d --name sonarqube -p 9000:9000 sonarqube
```

For advanced usage and more details see [official guide](https://hub.docker.com/_/sonarqube).