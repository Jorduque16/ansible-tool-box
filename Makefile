.PHONY: configure-linux

SHELL = /usr/bin/env bash

ansible-dependencies:
	sudo add-apt-repository main
	sudo apt update
	sudo apt upgrade -y
	sudo -H apt install python3-pip -y
	pip3 install setuptools
	pip3 install wheel

install-ansible:
	sudo apt install ansible -y

configure-linux:
	ansible-playbook main.yml --ask-become-pass