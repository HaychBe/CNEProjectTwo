variable "vpc-cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}
variable "public_subnetA" {
  description = "CIDR block for Public Subnet A"
  default     = "10.0.1.0/24"
}
variable "public_subnetB" {
  description = "CIDR block for Public Subnet B"
  default     = "10.0.2.0/24"
}