FROM ubuntu
MAINTAINER Pradeep Kumar

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get -y install ansible
RUN apt-get -y install python-pip
RUN pip install https://github.com/willthames/ansible-lint/archive/master.zip
RUN apt-get -y install rubygems-integration rubygems
RUN gem install serverspec
RUN gem install rake

# Required for Docker jenkins plugin
RUN apt-get -y install openssh-server
RUN mkdir /var/run/sshd
RUN apt-get -y install openjdk-8-jdk
RUN useradd jenkins
# This is not safe, this is a test
RUN echo "jenkins:xt4dFV4WdkURU3v8TRWu" | chpasswd
RUN echo "jenkins    ALL=NOPASSWD: ALL" >> /etc/sudoers
