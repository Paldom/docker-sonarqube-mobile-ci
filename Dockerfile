FROM sonarqube:7.1

# Download and install sonar plugins

## SCM

RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.7.0.1491.jar 
RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.4.2.1027.jar

## JAVA

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/checkstyle/sonar-checkstyle/releases/download/4.17/checkstyle-sonar-plugin-4.17.jar
RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/jensgerdes/sonar-pmd/releases/download/3.1.3/sonar-pmd-plugin-3.1.3.jar
RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/spotbugs/sonar-findbugs/releases/download/3.9.2/sonar-findbugs-plugin-3.9.2.jar
RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-jacoco-plugin/sonar-jacoco-plugin-1.0.2.475.jar

## Android

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/ofields/sonar-android/releases/download/1.1/sonar-android-plugin-1.1.jar

## Kotlin

RUN wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-kotlin-plugin/sonar-kotlin-plugin-1.4.0.155.jar

## Swfit

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/Backelite/sonar-swift/releases/download/0.4.4/backelite-sonar-swift-plugin-0.4.4.jar