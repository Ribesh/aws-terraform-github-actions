terraform {
  backend "s3" {
    bucket         = "terraform-ribesh-state-bucket"
    key            = "dast/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
