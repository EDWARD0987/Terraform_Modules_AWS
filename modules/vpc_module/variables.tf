variable "vpc_cidr" {
  default = "10.0.0.0/16"

}

variable "private_subnet" {
  default = "10.0.1.0/24"

}

variable "public_subnet" {
  default = "10.0.2.0/24"

}

variable "region" {
  default = "us-east-1"
}

variable "ProjectName" {
  description = "Name of the project"
}

variable "env" {
  description = "Environment"
}

variable "ManagedBy" {
  description = "Who is managing this project"
}

variable "instance_type" {
  description = "t2.micro"
}

variable "ami_id" {
  description = "ami-05576a079321f21f8"
  
}


