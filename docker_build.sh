#!/bin/bash

# Get the project name and version from the package.json
PROJECT_NAME=addressbook

# Get some information from git if not already set
GIT_BRANCH=${GIT_BRANCH}
GIT_BRANCH=`echo $GIT_BRANCH | sed 's|/|_|g'`

# Get Docker to build our container
echo "Building docker container ${PROJECT_NAME}"
echo "  Branch: ${GIT_BRANCH}"

# copy WAR file into the current directory
cp /var/lib/jenkins/workspace/addressbook_build/target/addressbook-2.0.war .

docker build  --build-arg "GIT_BRANCH=${GIT_BRANCH}" -t "balasekar/${PROJECT_NAME}:${GIT_BRANCH}" .

# Push the repository to our private Docker registry
docker push "balasekar/${PROJECT_NAME}:${GIT_BRANCH}"