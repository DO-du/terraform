variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}


variable "aws_akey" {
  description = "AWS Access Key"
}

variable "aws_skey" {
  description = "AWS Access Secret Key"
}



#variable "ami_image" {
#  description = "Ubuntu 20.04 LTS Image"
#  type        = map(string)
#  default = {
#    ap-northeast-1 = "ami-09ff2b6ef00accc2e"
#    ap-northeast-2 = "ami-0b329fb1f17558744"
#  }
#}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "my_project"
}

variable "environment" {
  description = "Name of the environment"
  type        = string
  default     = "dev"
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "my-vpc"
}


variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availabilty zones for VPC"
  type        = list(string)
  default     = ["ap-northeast-2a", "ap-northeast-2c"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = false
}

variable "instances_per_subnet" {
  description = "Number of EC2 instances in each private subnet"
  type        = number
  default     = 2
}

