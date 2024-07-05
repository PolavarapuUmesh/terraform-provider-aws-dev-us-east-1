variable "region_name"{
  type = string
  description = "provide region"
  default = "us-east-1"
}

variable "ami_value" {
  description = "instance ami value"
  type = string
  default = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  description = "type of the instace you created instance"
  type = string
  default = "t3.micro"
}