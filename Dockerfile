# Container of Addressbook pushed into Docker hub
# Pull base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "balasekar <baalasekar@gmail.com">

# Copy to images tomcat path
ADD addressbook-2.0.war /usr/local/tomcat/webapps/