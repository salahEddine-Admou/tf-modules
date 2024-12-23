module "key_pair" {
  source = "../key_pair"
}
module "vpc" {
  source = "../vpc"
}
module "security_group" {
  source = "../security_group"
  vpc_id = module.vpc.vpc_id
}

# Public EC2 instance
resource "aws_instance" "public" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = module.key_pair.public_key_name
  vpc_security_group_ids      = [module.security_group.ssh_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "public-ec2"
  }
}

# Private EC2 instance 1
resource "aws_instance" "private1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  key_name               = module.key_pair.private1_key_name
  vpc_security_group_ids = [module.security_group.ssh_group_id]

  tags = {
    Name = "private-ec2-1"
  }
}

# Private EC2 instance 2
resource "aws_instance" "private2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  key_name               = module.key_pair.private2_key_name
  vpc_security_group_ids = [module.security_group.ssh_group_id]

  tags = {
    Name = "private-ec2-2"
  }
}
