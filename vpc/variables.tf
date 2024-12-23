# variables.tf

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default     = "us-east-1a"
}

variable "vpc_name" {
  description = "The name for the VPC"
  type        = string
  default     = "Main-vpc"
}

variable "public_subnet_name" {
  description = "The name for the public subnet"
  type        = string
  default     = "public-subnet"
}

variable "private_subnet_name" {
  description = "The name for the private subnet"
  type        = string
  default     = "private-subnet"
}

variable "igw_name" {
  description = "The name for the Internet Gateway"
  type        = string
  default     = "main-igw"
}

variable "natgw_name" {
  description = "The name for the NAT Gateway"
  type        = string
  default     = "main-natgw"
}

variable "route_table_public_name" {
  description = "The name for the public route table"
  type        = string
  default     = "public-route-table"
}

variable "route_table_private_name" {
  description = "The name for the private route table"
  type        = string
  default     = "private-route-table"
}
