#!/bin/bash

mvn -f build/pom.xml clean &&
mvn -Dmaven.test.skip.exec=true -f core/pom.xml install &&
mvn -Dmaven.test.skip.exec=true -f prepare-content-app/pom.xml install &&
mvn -f build/pom.xml -Dmaven.test.skip.exec=true process-resources &&
mvn -f build/pom.xml -Dmaven.test.skip.exec=true package
