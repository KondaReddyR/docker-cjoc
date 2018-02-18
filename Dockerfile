FROM cloudbees/jenkins-operations-center

LABEL maintainer="Jagadeesh Bhogireddy <jagadeesh.msis@gmail.com>" \
      app="JenkinsOC" \
      app_version="2.89.4.2-rolling"

ENV JENKINS_UC https://jenkins-updates.cloudbees.com

COPY install-plugins.sh /usr/local/bin/install-plugins.sh

COPY plugins.txt /plugins.txt

RUN /usr/local/bin/install-plugins.sh `echo $(cat /plugins.txt)`


# install certificate logic here