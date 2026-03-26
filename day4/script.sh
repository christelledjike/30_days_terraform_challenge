#!/bin/bash

 yum update -y
 yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo '<h1>Good Job Christelle! Your first Deployement via Terraform was successful!</h1>' | sudo tee /var/www/html/index.html
