resource "aws_instance" "dev"{
    ami = var.ami_value
    instance_type= var.instance_type
}

