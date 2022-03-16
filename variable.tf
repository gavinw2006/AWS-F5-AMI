variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}

# variable "azure_client_id" {}
# variable "client_certificate_path" {}
# variable "azure_subscription_id" {}
# variable "azure_tenant_id" {}

variable "cidr" { default = "10.0.0.0/16" }
variable "az" { default = "ap-southeast-2c" }

variable "ip-1" {}
variable "subnets" {
  type = map(any)
  default = {
    "s0" = "10.0.0.0/24"
    "s1" = "10.0.1.0/24"
  }
}

variable "private-ips" {
  type = map(any)
  default = {
    "ubuntu"   = "10.0.0.4"
    "ltm-mgmt" = "10.0.0.5"
    "ltm-ext"  = "10.0.1.4"
  }
}

variable "key_name" {}

variable "prefix" { default = "gw" }
variable "ubuntu_server_ami" { default = "ami-0b7dcd6e6fd797935" }
variable "ltm_ami" { default = "ami-025b283a7cb5af034" }
variable "ubuntu_server_instance_type" { default = "i3.metal" }
variable "ltm_instance_type" { default = "t2.medium" }
variable "mgmt-gw" { default = "10.0.0.1" }

variable "default_ec2_tags" {
  description = "Default set of tags to apply to EC2 instances"
  type        = map(any)
  default = {
    Owner = ""
  }
}
