variable "ami" {
  description = "The AMI to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}

variable "private_subnet_id" {
  description = "The ID of the private subnet"
  type        = string
}
