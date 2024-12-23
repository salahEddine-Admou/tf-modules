# Specify the AWS provider
provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

# VPC module
module "vpc" {
  source = "./vpc"
}

# EC2 module
module "ec2" {
  source = "./ec2"

  ami               = "ami-0e2c8caa4b6378d8c" # Replace with your preferred AMI
  instance_type     = "t2.micro"
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
}

# Key Pair module
module "key_pair" {
  source = "./key_pair"
}

# Security Group module
module "security_group" {
  source = "./security_group"

  vpc_id = module.vpc.vpc_id

}
