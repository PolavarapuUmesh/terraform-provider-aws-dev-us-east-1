variable "instance_type"{
  type = string
  description = "type of your instance is t2.micro"
  default = "t2.micro"
}

variable "availability_zone"{
  type = string
  description = "where to host your instance is us-east-1"
  default = "us-east-1a"
}
variable "key_name"{
  type = string 
  description = "connect with server by using pem key"
  default = "server"
}

#iam users
variable "user_names"{
  type = list(string)
  description = "cresating  num of users"
  default = ["user1","user2","user3"]
}
