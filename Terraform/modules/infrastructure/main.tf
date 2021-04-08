terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
        }
    }
}

provider "aws" {
    region  = var.region
}

module "aws_vpc" {
    source = "./vpc"
}

module "security_group" {
    source = "./SG"
    vpc_id_SG = module.aws_vpc.vpc_id
}

module "ec2_instanceProd" {
    source = "./ec2"
    subnet_id = module.aws_vpc.public_subnetA
    vpc_security_group_ids = [module.security_group.aws_psg_id]
}

module "ec2_instanceTest" {
    source = "./ec2"
    subnet_id = module.aws_vpc.public_subnetB
    vpc_security_group_ids = [module.security_group.aws_psg_id]
}

module "RDS_instances" {
    source                  = "./RDS"
    username                = var.username
    password                = var.password
    public_subnetA          = module.aws_vpc.public_subnetA
    public_subnetB          = module.aws_vpc.public_subnetB
    vpc_security_group_ids  = [module.security_group.aws_psg_id]

}