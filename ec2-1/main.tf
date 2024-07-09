provider "aws" {
  region = "us-east-1"  
}

module "aws_instance" {
    source = "./ec2-1/module"
    ami_value = "ami-04a81a99f5ec58529"
    instance_type= "t3.micro"
    key_name = "server"
    
}
