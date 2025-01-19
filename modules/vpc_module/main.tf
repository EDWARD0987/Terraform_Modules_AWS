resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
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
    Name         = "$var.name"                      #"Apache_Webserver"  # to do
    Project      = "$var.projectname"
    Environment  = "$var.environment"
  }

}



# resource "aws_instance" "app_server_ec2" {
#   ami                    = var.ami_id    #data.aws_ami.amazon_linux.id  var.app_server_ami_id 
#   instance_type          = var.instance_type
#   subnet_id              = var.private_subnet.id
#   monitoring             = false # was true earlier
#   vpc_security_group_ids = [aws_security_group.sg.id]
#   user_data              = filebase64("user_data.sh") # file("user_data.sh") 

#   tags = merge(
#     local.common_tags,
#     {
#       "Name" = "${var.ProjectName}-${var.env}-ec2",    # to do
#     },
#   )
# }


provider "aws" {
  region = var.region
}
