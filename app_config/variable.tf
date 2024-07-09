variable "region_name"{
  description = "provider has a region name"
  type = string
  default = "us-east-1"
}

#aws_vpc
variable "cidr_block_id"{
  description = "this particular vpc is accessiable for one app"
  type = string
  default = "10.0.0.0/16"
  
}

#public_subnet_1
variable "availability_zone_type"{
  description = "public_subent_1"
  type = string
  default = "us-east-1a"
}

variable "cidr_block_cidr_block_id"{
  description = "public_subnet_1"
  type = string
  default = "10.0.1.0/24"
}


#public_subnet_2
variable "availability_zone_type1"{
  description = "public_subent_2"
  type = string
  default = "us-east-1b"
}

variable "cidr_block_cidr_block_id1"{
  description = "public_subnet_2"
  type = string
  default = "10.0.2.0/24"
}

#private_subent_3
variable "availability_zone_type2"{
  description = "private_subent_3"
  type = string
  default = "us-east-1c"
}

variable "cidr_block_cidr_block_id2"{
  description = "public_subnet_3"
  type = string
  default = "10.0.3.0/24"
}

#ec2_instance
variable "ami_id" {
  description = "create a ec2 instance"
  type = string
  default = "ami-06c68f701d8090592"
}

variable "instance_type" {
  description = "instance type"
  type = string
  default = "t3.micro"  
}

variable "key_name" {
  description = "ssh key for created instance"
  type = string
  default = "server.pem"
}

