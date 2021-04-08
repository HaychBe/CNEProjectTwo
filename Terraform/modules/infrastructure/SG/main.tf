resource "aws_security_group" "ProjectSG" {
    name        = var.name
    description = "Allow SSH connection"
    vpc_id      = var.vpc_id_SG
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.SSH_Open]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.PORT_Open]
    }

    ingress {
        from_port = 3306
        to_port   = 3306
        protocol  = "tcp"
        cidr_blocks = [var.PORT_Open]
    }

    egress {
        from_port = var.outbound_port
        protocol  = "-1"
        to_port   = var.outbound_port
        cidr_blocks = [var.PORT_Open]

    }
}