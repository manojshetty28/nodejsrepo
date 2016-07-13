FROM centos:7

MAINTAINER Vaibhav Jain <vaibhavjain882@gmail.com>

RUN yum -y install curl

RUN curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -

RUN yum -y install nodejs
 
RUN mkdir "/ecsTest"
WORKDIR /ecsTest

ADD node_modules node_modules
ADD app.js package.json ./

CMD ["node","app.js"]
