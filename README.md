# Ansible Tool Box

The purpose of this repository is install and configure the necessary software and tools in a linux machine based on 
my daily use as a Developer.

## Problem description (Why this repository?)

On my current daily job I found some common situation, when i was configuring my linux machine or testing some new 
program and configuration, I break my operative system many times trying to optimize the resource usages, so i designed 
this repository to optimize these repetitive task.


## Menu

* [Requisites](#Requisites)
* [Instructions](#Instructions)
* [Contribution](#Contribution)
* [Support](#Support)

# Software And Package List
 
This is the complete list of Packages, Software and plugins automatized in this repository:

### Internet Browsers

* [Google Chrome](https://www.google.com/intl/es_es/chrome/?brand=YTUH&gclid=Cj0KCQjw0vWnBhC6ARIsAJpJM6dmH2R9kxsx2A01ABkqDlywA1oih0WPgOUOtD9sDTVYlC6DpFzhSFoaAhpyEALw_wcB&gclsrc=aw.ds)
* [Brave](https://brave.com/es/)

### Code Editors

* [Visual Studio Code](https://code.visualstudio.com)

### Software

* [Anydesk](https://anydesk.com/en)
* [DBeaver](https://dbeaver.io)
* [Discord](https://discord.com)
* [Slack](https://slack.com)
* [Spotify](https://www.spotify.com)

### Linux Plugins

* [AWS CLI](https://aws.amazon.com/es/cli/)
* Linux packages
  - vim
  - htop
  - xclip
  - git
  - net-tools
  - tree
  - zsh
  - snapd
  - nvm
* [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
* [Vim Pluggin Manager](https://github.com/junegunn/vim-plug)
* [Vim Molokai Theme](https://github.com/tomasr/molokai)

### Local Software for Developers

* [Mysql](https://www.mysql.com)
* [Nginx](https://www.nginx.com)

### Programming Languages

* [PHP](https://www.php.net)
* [NodeJs](https://nodejs.org/en)
* [Go](https://go.dev)
* [Python](https://www.python.org)

___

## Roles to include in a future:

These linux packages and software programs are in the road map to complement this repository:

* Docker
* Terraform
* Serverless Framework
* Pulumi
* Mozilla Firefox Browser
* Vivaldi Browser
* Opera Browser

> If you want to contribute creating the role for some of these packages, feel free to contact me (See Contribute section)

___

## Requisites

This project has been made for install everything in a __Linux Mint 20.3 Cinnamon Edition SO__, if you have some 
troubles executing this ansible playbooks, take a look into software documentation to check the differences in the 
installation commands. 

___

## Instructions

This repository will install the next software locally in you machine, this is mandatory to be executed successfully,
please take it in mind:

| Software | Version |
|----------|---------|
| Ansible  | 2.7     |
| Python   | 3.*     |

At first, you should configure which programs and tools you want to install, you can do it enabling the variables 
located in the __configuration.yml__ file. To enable a tool you must change the __false__ value to __true__.

*Example:*

``` yaml
    #BEFORE, the script will not install python
    PYTHON_ENABLED: false

    #AFTER, the script will install python
    PYTHON_ENABLED: true
```

Once you have done the necessary changes, and if you enabled the next steps, I suggest you check the ansible variables 
files on these roles to review if you need all of those configurations or packages, feel free to add or remove some of 
the packages or extensions:

- *[LINUX_PACKAGES](#roles/linux_config/vars/main.yml):*  lines 4 to 12
- *[VISUAL_STUDIO_CODE_TEHEME_AND_EXTENSIONS_ENABLED](#roles/code_editors/vars/main.yml):* lines 1 to 14

 When you are sure, you can continue with the installation with the next command in the linux terminal:

``` bash
    make configure-linux
```

Pay attention to the console because it will request you the root password for you local machine.

___

## Contribution

This project was created with the purpose to improve the local environments setup times, if you want to contribute with 
some new steps, extensions or packages, feel free to make a __Pull Request__. I will do my best effort to check the 
steps and merge the incoming contributions as soon as possible.

Also, if you have some suggestion or correction about how I am using ansible to solve this problem, feel free to contact me
i apreciate every comment and opinion to continue growing and improving my hard skills.

This has been made by a programmer for programmers.
___

## Support

This project has been made with love by [@Jorduque16](https://github.com/Jorduque16)