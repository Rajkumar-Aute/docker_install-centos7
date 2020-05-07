# docker_installation_script
Script for docker installation on CentOS7

clone the script file and change the file permission to executible

If git not installed on your machine follow the below steps

Login in into CentOs server and run below command
'''

sudo yum install git -y \
git clone https://github.com/rajsaute/docker_installation_script.git \
cd docker_installation_script\
chmod +x install_docker_centos7.sh \
sh ./install_docker_centos7.sh
'''
