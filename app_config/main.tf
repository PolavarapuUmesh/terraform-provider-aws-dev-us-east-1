provider "aws"{
  region = var.region_name
}

#vpc
resource "aws_vpc" "app_vpc" {
  cidr_block = var.cidr_block_id
  tags = {
    Name = "app_vpc"
  }
}

#public_subnet
resource "aws_subnet" "public_subnet_1"{
  vpc_id = aws_vpc.app_vpc.id
  availability_zone = var.availability_zone_type
  cidr_block = var.cidr_block_cidr_block_id
  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id =aws_vpc.app_vpc.id
  availability_zone = var.availability_zone_type1
  cidr_block = var.cidr_block_cidr_block_id1
  tags={
    Name = "public_subnet_2"
  }
}

#private_subent 
resource "aws_subnet" "public_subnet_3" {
  vpc_id =aws_vpc.app_vpc.id
  availability_zone = var.availability_zone_type2
  cidr_block = var.cidr_block_cidr_block_id2
  tags = {
    Name = "private_subent_1"
  }
}

#internet_gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.app_vpc.id

  tags = {
    Name = "app_igw"
  }
}

#route_table
resource "aws_route_table" "rt_app" {
  vpc_id = aws_vpc.app_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

#route_table
resource "aws_main_route_table_association" "a" {
  vpc_id         = aws_vpc.app_vpc.id
  route_table_id = aws_route_table.rt_app.id
}

#security_group that allow ports 22 & 80
resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP inbound traffic"
  vpc_id      = aws_vpc.app_vpc.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_http"
  }
}

resource "aws_instance" "deploy_app"{
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "app_server"
  }
}
