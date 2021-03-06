resource "aws_db_instance" "production" {
    allocated_storage           = 20
    storage_type                = "gp2"
    engine                      = "mysql"
    engine_version              = "5.7"
    instance_class              = "db.t2.micro"
    name                        = "prod_db"
    username                    = var.username
    password                    = var.password
    parameter_group_name        = "default.mysql5.7"
    db_subnet_group_name        = aws_db_subnet_group.default.name
    vpc_security_group_ids      = var.vpc_security_group_ids
    skip_final_snapshot         = true

    tags = {
        Name = "ProjectTwo-DBprod"
    }
}

resource "aws_db_instance" "test" {
    allocated_storage           = 20
    storage_type                = "gp2"
    engine                      = "mysql"
    engine_version              = "5.7"
    instance_class              = "db.t2.micro"
    name                        = "test_db"
    username                    = var.username
    password                    = var.password
    parameter_group_name        = "default.mysql5.7"
    db_subnet_group_name        = aws_db_subnet_group.default.name
    vpc_security_group_ids      = var.vpc_security_group_ids
    skip_final_snapshot         = true

    tags = {
        Name = "ProjectTwo-DBtest"
    }
}

resource "aws_db_subnet_group" "default" {
    name          = "master"
    subnet_ids    = [var.public_subnetA , var.public_subnetB]
}