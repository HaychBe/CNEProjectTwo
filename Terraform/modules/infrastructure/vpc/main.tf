data "aws_availability_zones" "available" {
    state = "available"
}

resource "aws_vpc" "main" {

    cidr_block = var.vpc-cidr
    instance_tenancy = "default"
}

resource "aws_subnet" "public_subnetA" {

    cidr_block = var.public_subnetA
    availability_zone = data.aws_availability_zones.available.names[0]
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnetB" {

    cidr_block = var.public_subnetB
    availability_zone = data.aws_availability_zones.available.names[1]
    vpc_id = aws_vpc.main.id
    map_public_ip_on_launch = true
}