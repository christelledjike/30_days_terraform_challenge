variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}
variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "My_First_Deployment_day4"
}
variable "user_data_file" {
  description = "Path to the user data script"
  type        = string
  default     = "script.sh"
}
variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "my_Terraform_sg"
}
variable "ssh_port" {
  description = "Port number for SSH access"
  type        = number
  default     = 22
}
variable "http_port" {
  description = "Port number for HTTP access"
  type        = number
  default     = 80
}