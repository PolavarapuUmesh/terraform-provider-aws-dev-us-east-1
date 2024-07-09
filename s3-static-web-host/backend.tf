# backend.tf
terraform {
  backend "s3" {
    bucket         = "s3-static-web-host-backend-file1"
    key            = "s3-static-web-host-terraform.tfstate"
    region         = "us-east-1"
  }
}
