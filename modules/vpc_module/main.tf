
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Name = "Apache"
      ProjectName = "Webserver_Project"
      Environment = "Dev"
      ManagedBy   = "Edward Doku"
      Email       = "edwarddoku123@gmail.com"
    
    }
  }
}



resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Webserver_Vpc"  
    
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.private_subnet

}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.public_subnet

}

resource "aws_instance" "example_server" {
  ami           = "ami-05576a079321f21f8"
  instance_type = "t2.micro"

  tags = {
    Name         = "Apache_Webserver"                     
  }

}



