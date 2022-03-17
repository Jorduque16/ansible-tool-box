# Ansible Tool Box

The purpose of this repository is install and configure the neccesary software and tools in a linux machine based on my needs.

___

## Requisites

This project has been made for install everything in a __Linux Mint 20.3 Cinnamon Edition SO__, if you have some throubles executing this ansible playbooks, take a look into software documentation to check the differences in the installation commands. 

___

## Instructions

At first you should configure which programs and tools you want to install, you can do it enabling the variables located in the __configuration.yml__ file. To enable a tool you must change the __false__ value to __true__.

*Example:*

``` yaml
    #BEFORE, the script will not install python
    PYTHON_ENABLED: false

    #AFTER, the script will install python
    PYTHON_ENABLED: true
```

Once you have done the neccesary changes, and if you enabled the next steps i suggest you check the ansible playbooks to review if you need all of those configurations, feel free to add or remove some of the packages or extensions:

- *[LINUX_UTILITIES_ENABLED](#steps/03_linux_utilities.yml):*  lines 24 to 31
- *[VISUAL_STUDIO_CODE_TEHEME_AND_EXTENSIONS_ENABLED](#steps/04_vscode.yml):* lines 45 to 57

 When you are sure, you can continue with the installation with the next command in the linux terminal:

``` bash
    make configure-linux
```

___

## Contribution

This project was created with the purpose to improve the local enviroments setup times, if you want to contribute with some new steps, extensions or packages, feel free to make a __Pull Request__. I will do my best effort to check the steps and merge the incoming contributions as soon as possible.

This has been made by a programmer for programmers.
___

## Support

This project has been made with love by [@Jorduque16](https://github.com/Jorduque16)