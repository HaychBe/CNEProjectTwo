# CNEProjectTwo

# Introduction

For this project I have been tasked with creating a CI/CD pipeline in order to facicilate testing and deployment of a flask application.

## Requirements

The requirements for this project were as follows:

* A Testing VM to test new build deployments
* A deployment VM contain Kubernetes and Jenkins to facilitate automatic cluster deployment of a new image

# Infrastructure

The infrastructure is detailed below using the diagram.

This infrastructure is created to automatically deploy resources to create and host a flask application test/production environment and facilitate automatic deployment of new builds. 

This project utilised to following applications/hosts to fulfil:

* AWS
* Ansible
* Kubernetes
* Terraform
* Pytest

![Diagram Picture](./pictures/ProjectTwo.png)