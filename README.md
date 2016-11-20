# ansible-jenkins-exam
Example for testing jenkins

build the docker image

docker build -t jenkins-ansible .

docker run

docker run -v "/(path for local work folder)/ansible-jenkins-example:/build:rw" jenkins-ansible /bin/bash -c 'cd /build && ./ 
test_it’
