variable "region_name"{
  type = string
  description = "provide region"
}

variable "ami_value" {
  description = "instance ami value"
  type = string
}

variable "instance_type" {
  description = "type of the instace you created instance"
  type = string
}

variable "availability_zone_type" {
  description = "availability_zone for the instance"
  type = string
}

variable "security_group_id" {
  description = "security_group_id for this instance"
  type = string
}