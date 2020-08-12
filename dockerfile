FROM centos:7
MAINTAINER Rahul Reddy Yerva
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install nodejs -y
WORKDIR /
COPY Code /home/
CMD npm install -g @angular/cli
