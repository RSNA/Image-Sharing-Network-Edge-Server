#!/bin/bash

docker run -it --rm --name rsnaedge-build -v maven-repo:/root/.m2 -v "$(pwd)":/usr/src/rsnaedge -w /usr/src/rsnaedge maven /usr/src/rsnaedge/build.sh
