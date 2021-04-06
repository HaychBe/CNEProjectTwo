output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnetA" {
    value = aws_subnet.public_subnet.id
}

output "public_subnetB" {
    value = aws_subnet.public_subnet.id
}