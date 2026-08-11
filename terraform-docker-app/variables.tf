#--------- provider.tf -----------
variable "aws_region" {
  description = "aws region"
  default     = "us-east-1"
}
variable "aws_profile" {
  description = "aws_profile"
  default     = "default"
}

#--------- security_group.tf -----------

variable "ssh_port" {
  description = "ssh_port"
  default     = "22"
}
variable "ssh_protocol" {
  description = "ssh_protocol"
  default     = "tcp"
}
variable "cidr_blocks" {
  description = "cidr blocks"
  default     = ["0.0.0.0/0"]
}
variable "http_port" {
  description = "http port"
  default     = "80"
}
variable "http_protocol" {
  description = "http protocol"
  default     = "tcp"
}
variable "https_port" {
  description = "https port"
  default     = "443"
}
variable "https_protocol" {
  description = "https protocol"
  default     = "tcp"
}
variable "egress_port" {
  description = "egress port"
  default     = "0"
}
variable "egress_protocol" {
  description = "egress protocol"
  default     = "-1"
}

#--------- ec2.tf -----------
variable "instance_type" {
  description = "instance type"
  default     = "t3.micro"
}
variable "key_name" {
  description = "key name"
  default     = "venu"
}
