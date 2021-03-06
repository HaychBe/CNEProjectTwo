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

resource "aws_internet_gateway" "igw_vpc" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "ProjectTwo-IGW"
    }
}

resource "aws_route_table" "rt_vpc" {
    vpc_id  = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw_vpc.id
    }
}

resource "aws_route_table_association" "public_subnetA_rta" {
    subnet_id   = aws_subnet.public_subnetA.id
    route_table_id  = aws_route_table.rt_vpc.id
}

resource "aws_route_table_association" "public_subnetB_rta" {
    subnet_id   = aws_subnet.public_subnetB.id
    route_table_id  = aws_route_table.rt_vpc.id
} 