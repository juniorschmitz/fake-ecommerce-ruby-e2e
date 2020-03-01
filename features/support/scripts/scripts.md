# How to install Docker on Ubuntu EC2 instances
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker

# How to use Zalenium directly on EC2 instances
## Getting Zalenium Dependencies
docker pull elgalu/selenium
docker pull dosel/zalenium

## Running Zalenium
docker run --rm -ti --name zalenium -p 4444:4444 -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/videos:/home/seluser/videos --privileged dosel/zalenium start

docker run --rm -ti --name zalenium -p 4444:4444 -e --desiredContainers 4 -e PULL_SELENIUM_IMAGE=true -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/videos:/home/seluser/videos --privileged dosel/zalenium start

## Running parallel E2E tests for verifying Zalenium features
bundle exec parallel_cucumber features/specs/ -n 4 -o '-p parallel'


# Running Selenium Grid with Google cAdvisor (without Zalenium)
sudo docker run --volume=/:/rootfs:ro --volume=/var/run:/var/run:rw --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --volume=/dev/disk/:/dev/disk:ro --publish=8080:8080 --detach=true --name=cadvisor google/cadvisor:latest

sudo docker network create grid
sudo docker run -d -p 4444:4444 --net grid --name selenium-hub selenium/hub:latest

sudo docker run -d -P -p <port4VNC>:5900 --net grid -e HUB_HOST=selenium-hub -v /dev/shm:/dev/shm selenium/node-chrome-debug:latest
sudo docker run -d -P -p <port4VNC>:5900 --net grid -e HUB_HOST=selenium-hub -v /dev/shm:/dev/shm selenium/node-firefox-debug:latest


# install Jenkins Amazon EC2 Linux
https://linuxize.com/post/how-to-install-jenkins-on-centos-7/
sudo yum update
sudo yum install java-1.8.0-openjdk-devel
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins
sudo service jenkins start
sudo systemctl enable jenkins
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

# How to remove JDK 7 and add JDK 8(For running Jenkins on Amazon Linux Servers)
rpm -aq | grep -i jdk
sudo yum remove <desired_java_version>
sudo yum install java-1.8.0-openjdk-devel

# SELE
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker

curl -s https://aerokube.com/cm/bash | bash \
    && ./cm selenoid start --vnc --tmpfs 128

:4444/wd/hub
:8080