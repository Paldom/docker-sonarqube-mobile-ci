FROM sonarqube:8.9.0-community

USER root

RUN apk add --no-cache wget

USER sonarqube

# Download and install sonar plugins

## Branch

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/mc1arke/sonarqube-community-branch-plugin/releases/download/1.7.0/sonarqube-community-branch-plugin-1.7.0.jar
RUN wget -P /opt/sonarqube/lib/common/ https://github.com/mc1arke/sonarqube-community-branch-plugin/releases/download/1.7.0/sonarqube-community-branch-plugin-1.7.0.jar

## SCM

# SCM plugins are included by default
# RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.9.1.1834.jar
# RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.2.1027.jar

## JAVA

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/checkstyle/sonar-checkstyle/releases/download/8.40/checkstyle-sonar-plugin-8.40.jar
RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/jensgerdes/sonar-pmd/releases/download/3.3.1/sonar-pmd-plugin-3.3.1.jar
RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/spotbugs/sonar-findbugs/releases/download/4.0.3/sonar-findbugs-plugin-4.0.3.jar

# Jacaco plugins are included by default from version 8.5
# RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-jacoco-plugin/sonar-jacoco-plugin-1.0.2.475.jar

## Kotlin

# sonar-kotlin-plugin is installed by default
# RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-kotlin-plugin/sonar-kotlin-plugin-1.7.0.883.jar
RUN wget -P /opt/sonarqube/extensions/plugins/  https://github.com/detekt/sonar-kotlin/releases/download/2.3.0/sonar-detekt-2.3.0.jar

## Android / Kotlin

## sonar-android-plugin is no longer supported
## RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/ofields/sonar-android/releases/download/1.1/sonar-android-plugin-1.1.jar

## Swfit

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/Idean/sonar-swift/releases/download/0.4.6/backelite-sonar-swift-plugin-0.4.6.jar

## YAML (e.g. Swagger)

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/sbaudoin/sonar-yaml/releases/download/v1.5.2/sonar-yaml-plugin-1.5.2.jar

# Mutation analysis

RUN wget -P /opt/sonarqube/extensions/plugins/  https://github.com/devcon5io/mutation-analysis-plugin/releases/download/v1.5/mutation-analysis-plugin-1.5.jar