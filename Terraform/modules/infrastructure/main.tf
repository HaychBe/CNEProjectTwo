provider "aws" {
    version                 = "~> 3.0"
    region                  = var.region
    shared_credentials_file = "~/.aws/credentials"
}

module "aws_vpc" {
    source          = "./vpc"

    environment     = var.environment
}

module "security_group" {
    source      = "./SG"

    environment = var.environment
    vpc_id_SG   = module.aws_vpc.vpc_id
}

module "ec2_instances" {
    source      = "./ec2"

    environment = var.environment
    subnet_id   = module.subnets.public_subnetA

    tags = {
        Name = "projectTwo-JenkinsKubernetes"
    }
}

module "ec2_instances" {
    source      = "./ec2"

    environment = var.environment
    subnet_id   = module.subnets.public_subnetB

    tags = {
        Name = "projectTwo-Test"
    }
}