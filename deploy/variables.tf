variable "prefix" {
  default = "dnxc"
}

variable "project" {
  default = "dnximageforchallengefive"
}

variable "contact" {
  default = "atilacardoso@hotmail.com"
}

variable "db_username" {
  description = "Username for the RDS mysql instance"
}

variable "db_password" {
  description = "Password for the RDS mysql instance"
}

variable "bastion_key_name" {
  default = "app-bastion"
}

variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "845052177927.dkr.ecr.us-east-1.amazonaws.com/dnximageforchallengefive:latest"
}

 