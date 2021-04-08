output "prod_RDS_endpoint" {
    value = aws_db_instance.production.endpoint
}

output "test_RDS_endpoint" {
    value = aws_db_instance.test.endpoint
}