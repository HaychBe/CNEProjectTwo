resource "aws_instance" "instance" {
    ami                         = var.ami_id
    instance_type               = var.instance_type
    associate_public_ip_address = true
    subnet_id                   = var.subnet_id   
    vpc_security_group_ids      = var.vpc_security_group_ids
    key_name                    = "ProjectTwo-KeyV2"

    lifecycle {
        create_before_destroy = true
    }

    tags = {
        Name = "ProjectTwo-VM"
    }
}