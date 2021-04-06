resource "aws_instance" "instance" {
    ami                         = var.ami_id
    instance_type               = "t2.micro"
    subnet_id                   = var.public_subnet
    associate_public_ip_address = true   

    tags = {
        Name = "ProjectTwo-VM"
    }
}

# resource "aws_instance" "test_instance" {
#     ami                         = var.ami_id
#     instance_type               = "t2.micro"
#     subnet_id                   = var.public_subnet
#     associate_public_ip_address = true

#     tags = {
#         Name = "ProjectTwo-test-VM"
#     }
# }