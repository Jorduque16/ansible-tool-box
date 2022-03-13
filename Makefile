.PHONY: configure-linux

SHELL = /usr/bin/env bash

ansible-dependencies:
	##* Install ansible dependencies
	sudo add-apt-repository main
	sudo apt update
	sudo apt upgrade -y
	sudo -H apt install python3-pip -y
	pip3 install setuptools
	pip3 install wheel

install-ansible:
	##* Install ansible
	pip3 install ansible==2.9.6

configure-linux: ansible-dependencies install-ansible	
	ansible-playbook all.yml
