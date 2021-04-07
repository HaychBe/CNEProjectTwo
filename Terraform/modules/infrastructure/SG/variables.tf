variable "outbound_port" {
  description = "List of outbound port"
  default     = 0
}
variable "SSH_Open" {
    default = "0.0.0.0/0"
}
variable "PORT_Open" {
    default = "0.0.0.0/0"
}
variable "vpc_id_SG" {
    default = "null"
}
variable "name" {
    default = "ProjectTwo-SG"
}