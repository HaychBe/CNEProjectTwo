output "My_IPProd" {
value = module.ec2_instanceProd.My_IP
}

output "My_IPTest" {
value = module.ec2_instanceTest.My_IP
}

output "prod_RDS_endpoint"{
    value = module.RDS_instances.prod_RDS_endpoint
}

output "test_RDS_endpoint"{
    value = module.RDS_instances.test_RDS_endpoint
}