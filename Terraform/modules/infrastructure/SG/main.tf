resource "aws_security_group" "projectSG" {

    name            = "ProjectTwo-SG"
    description     = "Allow SSH Connections"
    vpc_id          = var.vpc_id

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_block  = "10.0.0.0/16"
    }

    tags = {
        Name = "ProjectTwo-SG"
    }
}