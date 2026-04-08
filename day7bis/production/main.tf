provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0190ba1cb5ab4e9e8"
  instance_type = "t2.micro"

  tags = {
    Name        = "web-dev"
    Environment = "dev"
  }
}

