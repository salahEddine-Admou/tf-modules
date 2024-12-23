resource "aws_key_pair" "public_key" {
  key_name   = "public-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "private1_key" {
  key_name   = "private1-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_key_pair" "private2_key" {
  key_name   = "private2-key"
  public_key = file("~/.ssh/id_rsa.pub")
}