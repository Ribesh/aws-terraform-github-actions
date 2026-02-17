terraform {
  backend "s3" {
    bucket         = "terraform-ribesh-state-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
