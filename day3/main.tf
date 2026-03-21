provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "my_first_deployment" {
  ami             = "ami-02dfbd4ff395f2a1b"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.my_Terraform_sg.name]
  user_data       = file("script.sh")
  tags = {

    Name = "My_First_Deployment"
  }
}
