variable "region" {
  default = "eu-west-2"
}
variable "aws_access_key" {
  description = "the user aws access key"
  # default should be in terraform.tfvars
}
variable "aws_secret_key" {
  description = "the user aws secret key"
  # default should be in terraform.tfvars
}
# variable "account_name" {
#   default = "CHOGM"
#   description = "the account name, matches to resource group"
# }
# Key Pair
variable "key_name" {
  default = "ec2_PemKey-bbd"
  description = "the ssh key to use in the EC2 machines"
}

# VPC settings
variable "vpc-fullcidr" {
  # 172.28.0.0 - 172.28.255.255
  default = "172.28.0.0/16"
  description = "the vpc cdir"
}
variable "Subnet-Public-AzA-CIDR" {
  # 172.28.0.0 - 172.28.0.255
  default = "172.28.0.0/24"
  description = "the cidr of the subnet"
}

variable "server_port" {
  default = "80"
  description = "Port on which sample server will run"
}
# EC2 AMI
variable "aws_ami" {
  default = "ami-996372fd"
  description = "EC2 instace where the Vault is installed"
}
