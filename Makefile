.PHONY: configure-linux

SHELL = /usr/bin/env bash

ansible-dependencies:
	##* Install ansible dependencies
	sudo -H apt install python3-pip -y
	pip3 install setuptools
	pip3 install wheel

install-ansible:
	##* Install ansible
	pip3 install ansible==2.9.6

configure-linux: ansible-dependencies install-ansible
	##* Install software and packages base on the configuration file
	ansible-playbook steps/01_python.yml
	ansible-playbook steps/02_aws_cli.yml
	ansible-playbook steps/03_linux_utilities.yml
	ansible-playbook steps/04_vscode.yml
	ansible-playbook steps/05_golang.yml
	## TODO: PHP y PHP-fpm
	## TODO: Configure visual studio code theme
	## TODO: COnfigure Vim as code editor
	## TODO: Mysqlserver
	## TODO: NGinx
	## TODO: Google Chrome
	## TODO: Spotify
	## TODO: Mysql Workbench
	## TODO: DbBeaver
	## TODO: Nodejs
	## TODO: Slack
	## TODO: Discord
	## TODO: Anydesk