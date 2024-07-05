resource "aws_instance" "sample_server" {
  ami = "ami-04a81a99f5ec58529"
  availability_zone = var.availability_zone
  instance_type = var.instance_type
  key_name = var.key_name
  tags ={
    Name = "test"
  }
}

#Iam_user 
resource "aws_iam_user" "user1"{
  name = "user1"
}

resource "aws_iam_user" "user2"{
  name = "user2"
}

resource "aws_iam_user" "user3"{
  name = "user3"
}




