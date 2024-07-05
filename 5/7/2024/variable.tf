#ec2_instance variable
variable "instance_type" {
   description = "type of your instance" 
   type = string
   default = "t3.micro" 
}
 
variable "ami_id" {
   description = "ami_id of your instance" 
   type = string
   default = "ami-06c68f701d8090592" 
}

#s3_bucket variable
variable "bucket_name" {
    description = "to store backup file in s3 bucket "
    type = string
    default = "restore-statefile-terraform11"  
}
