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
	sudo apt install ansible

configure-linux: ansible-dependencies install-ansible	
	ansible-playbook all.yml
	ansible-playbook steps/03_linux_utilities.yml --ask-become-pass
	ansible-playbook steps/04_vscode.yml --ask-become-pass
	ansible-playbook steps/05_golang.yml --ask-become-pass
