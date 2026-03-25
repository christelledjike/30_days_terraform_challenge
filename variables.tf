variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum number of instances"
  default     = 2
}

variable "max_size" {
  description = "Maximum number of instances"
  default     = 5
}

variable "desired_capacity" {
  description = "Desired number of instances"
  default     = 2
}

variable "server_port" {
  description = "Port for web server"
  default     = 80
}