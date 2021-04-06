resource "aws_vpc" "main" {
    cidr_block  = "10.0.0.0/16"

    tags = {
        Name = "ProjectTwo-VPC"
    }
}

resource "aws_subnet" "public_subnetA" {
    vpc_id      = var.vpc_id
    cidr_block  = "10.0.0.0/24"

    tags = {
        Name = "ProjectTwo-Subnet_publicA"
    }
}

resource "aws_subnet" "public_subnetB" {
    vpc_id      = var.vpc_id
    cidr_block  = "10.0.1.0/24"

    tags = {
        Name = "ProjectTwo-Subnet_publicB"
    }
}
