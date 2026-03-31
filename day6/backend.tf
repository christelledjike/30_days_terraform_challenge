terraform {
  backend "s3" {
    bucket         = "my-terraform-bucket-christelle"
    key            = "global/30days-challenge/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-30days-locks"
    encrypt        = true
    }
}
resource "null_resource" "delay" {
  triggers = {
    always_run = timestamp()  # changes each run
  }

  provisioner "local-exec" {
    command = "sleep 30"  # slow resource to hold lock
  }
}
