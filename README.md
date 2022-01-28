# Ansible Tool Box
The purpose of this repository is install and configure the neccesary software and tools in a linux machine based on my needs. 

___

## Requisites

This project has been made for install everything in a __Linux Mint 20.3 Cinnamon Edition SO__, if you have some throubles executing this ansible playbooks, take a look into software documentation to check the differences in the installation commands. 

___
## Instructions

At first you should configure which programs and tools you want to install, you can do it enabling the variables located in the __configuration.yml__ file. To enable a tool you must change the zero value to one.

*Example:*
``` yaml
    #BEFORE, the script will not install python
    PYTHON: 0 

    #AFTER, the script will install python
    PYTHON: 1
```
Once you have done the neccesary changes, you can continue to the installation, to do that you should type the next command in the linux terminal:

``` bash
    make configure-linux
```
___
## Contribution

This project was created with the purpose to improve the local enviroments setup times, if you want to contribute with some new steps, feel free to make a __Pull Request__. I will do my best effort to check the steps and merge the incoming contributions as soon as possible.

This has been made by a programmer for programmers.
___
## Support
This project has been made with love by [@Jorduque16](https://github.com/Jorduque16)