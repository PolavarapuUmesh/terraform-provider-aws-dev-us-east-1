terraform {
  backend "s3" {
    bucket = "restore-statefile-terraform11"
    region = "us-east-1"
    key = "dev/ec2/terraform.tfstate"    
  }
}