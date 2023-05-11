#this file consists of code for instances and sg
provider "aws" {
region = "us-east-1"
access_key =  "AKIAZW3CTBA4EASF75VY"
secret_key = "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"
}


resource "aws_instance" "one" {
  ami             = "ami-03c7d01cf4dedc891"
  instance_type   = "t2.micro"
  key_name        = "surya"
  vpc_security_group_ids = [aws_security_group.secound.id]
  availability_zone = "us-east-1a"
    tags = {
    Name = "web-server-1"
  }
}

