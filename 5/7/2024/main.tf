resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami = var.ami_id
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}
