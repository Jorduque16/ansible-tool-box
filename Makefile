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
	sudo apt install ansible -y

configure-linux: ansible-dependencies install-ansible	
	ansible-playbook steps/01_python.yml
	ansible-playbook steps/02_aws_cli.yml
	ansible-playbook steps/03_linux_utilities.yml --ask-become-pass
	ansible-playbook steps/04_vscode.yml --ask-become-pass
	ansible-playbook steps/05_golang.yml --ask-become-pass
	ansible-playbook steps/06_google_chrome.yml --ask-become-pass
	ansible-playbook steps/07_brave_browser.yml --ask-become-pass
	ansible-playbook steps/08_spotify.yml --ask-become-pass
	ansible-playbook steps/09_dbBeaver.yml --ask-become-pass
	ansible-playbook steps/10_slack.yml --ask-become-pass

	## TODO: PHP y PHP-fpm
	## TODO: Mysqlserver
	## TODO: NGinx
	## TODO: Nodejs
	## TODO: Discord
	## TODO: Anydesk
